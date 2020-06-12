<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/resources/chat/css/custom.css">
<link rel="stylesheet"
	href="${pageContext.servletContext.contextPath}/resources/chat/css/bootstrap.css">
<title>채팅 테스트</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/resources/chat/js/bootstrap.js"></script>
<script type="text/javascript">
	var lastId = 0;
	function submitFunction() {
		var chatName = $("#chatName").val();
		var chatContent = $("#chatContent").val();
		$.ajax({
			type : "post",
			url : "chatSubmit.gr",
			data : {
				chatName : chatName,
				chatContent : chatContent
			},
			success : function(result) {
				if (result == 1) {
					autoClosingAlert("#successMessage", 2000);
				} else if (result == 0) {
					autoClosingAlert("#dangerMessage", 2000);
				} else {
					autoClosingAlert("#warningMessage", 2000);
				}
			},
			error : function() {
				console.log("ajax통신 실패");
			}
		});
		$("#chatContent").val('');
	}
	function autoClosingAlert(selector, delay) {
		var alert = $(selector).alert();
		alert.show();
		window.setTimeout(function(){alert.hide()}, delay);
	}
	
	function chatListFunction(type)
	{
		$.ajax({
			type : "post",
			url : "chatList.gr",
			data : {
				listType: type,
			},
			success : function(data) {
				if(data == "") return;
				var parsed = JSON.parse(data);
				var result = parsed.result;
				for(var i = 0; i < result.length; i++)
				{
					addChat(result[i][0].value, result[i][1].value, result[i][2].value);
				}
				lastId = Number(parsed.last);
			},
			error : function() {
				console.log("ajax통신 실패");
			}
		});
	}
	
	function addChat(chatName, chatContent, chatTime)
	{
		$('#chatList').append('<div class="row"' + 
									'<div class="col-lg-12">' +
										'<div class="media">' +
											'<div class="media-body">' +
												'<h4 class="margin_15" style="font-weight: bold;">' +
												chatName +
													'<span class="small pull-right">' +
													chatTime +
													'</span>' +
												'</h4>' +
												'<p class="margin_15">' + 
												chatContent + 
												'</p>' +
											'</div>' +
										'</div>' +
									'</div>' +
								'</div>' +
								'<hr>'
							 );
		$("#chatList").scrollTop($("#chatList")[0].scrollHeight);
	}
	
	function getInfiniteChat()
	{
		setInterval(function(){
			chatListFunction(lastId);
		}, 1000);
	}
</script>
</head>
<body>
	<div class="container">
		<div class="container bootstrap snippet">
			<div class="row">
				<div class="col-xs-12">
					<div class="portlet portlet-default">
						<div class="portlet-heading">
							<div class="portlet-title">
								<h4>
									<i class="fa title_style">SKY CASTLE</i> 
								</h4>
							</div>
							<div class="clearfix"></div>
						</div>
						<div id="chat" class="panel-collapse collapse in">
								<div id="chatList" class="portlet-body chat-widget" style="overflow-y: auto; width: auto; height: 300px;">
								</div>
							<div class="portlet-footer">
								<div class="row">
									<div class="form-group col-xs-4">
										<input style="height: 40px;" type="hidden" id="chatName" class="form-control" placeholder="이름" maxlength="8">
									</div>
									<div class="form-group col-xs-10">
										<textarea style="height: 90px; resize: none" id="chatContent" class="form-control" placeholder="메세지를 입력해주세요." maxlength="100"></textarea>
									</div>
									<div class="form-group col-xs-2" style="height: 90px;">
										<button type="button" style="margin-top: 25px;margin-right: 15px;" class="btn btn-default pull-right" onclick="submitFunction();">보내기</button>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.col-md-4 -->
			</div>
		</div>
		<!-- <div class="alert alert-success" id="successMessage" style="display: none;">
			<strong>메세지 전송에 성공하였습니다.</strong>
		</div>
		<div class="alert alert-danger" id="dangerMessage" style="display: none;">
			<strong>이름과 내용을 모두 입력해주세요.</strong>
		</div>
		<div class="alert alert-warning" id="warningMessage" style="display: none;">
			<strong>데이터베이스 오류 발생</strong>
		</div> -->
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#chatName").val("${loginUser.userName}");
			chatListFunction('today');
		getInfiniteChat();
		});
	</script>
</body>
</html>