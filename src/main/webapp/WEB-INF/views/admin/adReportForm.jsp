<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고 관리</title>
<style type="text/css">

</style>
</head>
<body>
	<div id="layoutSidenav">
		<jsp:include page="common/adminSidebar.jsp"/>
		<div id="layoutSidenav_content">
                <!--시작-->
                
                    <main>
                            <div  class="container-fluid" style="padding-right: 10px;">
                                <h1 class="mt-4"><b>신고 관리</b></h1>
                                <!--작은 회색 네모-->
                                <ol class="breadcrumb mb-4" >
                                    <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                                    <li class="breadcrumb-item active"><a style="color:black">신고 관리</a></li>
                                </ol>

                        <!-- 회원조회 테이블 -->
                        
                            <div class="card-body">
                                <div class="card mb-4">
                                    <div class="card-header" style="border-bottom: white; background-color: white;"><b style="font-size: x-large;">신고 조회</b></div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <div>
                                                <!-- 테이블이 부트스트랩이라 넣을 방법을 모르겠습니다..ㅜㅜ-->
                                                <div id="selectBox" >
                                                    <select >
                                                        <option value="처리상태">처리상태</option>
                                                        <option value="미완료">미완료</option>
                                                        <option value="완료">완료</option>
                                                    </select>
                                                    
                                                </div>
                                                <!-- 셀렉트 끝 -->
                                            </div>

                                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center;">
                                                <thead>
                                                    <tr>
                                                        <th>신고 번호</th>
                                                        <th>피신고인</th>
                                                        <th>댓글 번호</th>
                                                        <th>누적 신고 횟수</th>
                                                        <th>신고일</th>
                                                        <th>처리상태</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                	<c:forEach var="i" items="${ list }">
	                                                    <tr data-toggle="modal" data-target="#reportModal">
	                                                        <td>${ i.reportNo }</td>
	                                                        <td>${ i.replyWriter }</td>
	                                                        <td>${ i.replyNo }</td>
	                                                        <td>${ i.redcard }</td>
	                                                        <td>${ i.reportDate }</td>
	                                                        <td>
	                                                        	<c:choose>
	                                                        		<c:when test="${ i.status eq 'O'}">
	                                                        			처리 대기중
	                                                        		</c:when>
	                                                        		<c:when test="${ i.status eq 'Y'}">
	                                                        			완료
	                                                        		</c:when>
	                                                        		<c:when test="${ i.status eq 'N'}">
	                                                        			반려
	                                                        		</c:when>
	                                                        	</c:choose>
                                                        	</td>
	                                                    </tr>
                                                	</c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                      


		              <!--버튼이없어서.. 어떻게 넣어야할지..(data-toggle="modal" data-target="#reportModal")  클릭 시 뜨는 모달  -->
		              <div class="modal fade" id="reportModal" >
		                <div class="modal-dialog modal-sm">
		                    <div class="modal-content" style="width: 350px;">
		
		                        <!-- Modal Header -->
		                        <div class="modal-header">
		                            <h4 class="modal-title">신고 상세 내용</h4>
		                            <button type="button" class="close" data-dismiss="modal">&times;</button> 
		                        </div>
		                            <!-- Modal Body -->
		                            <form action="신고요청받아주는서버" method="post" class="form-horizontal"   >
		                              	<input type="hidden" id="reportNo" name="reportNo">
		                                <div class="modal-body" disply="inline-block">
		                                    <label>작성 회원&nbsp;  :&nbsp; </label>
		                                    <input id="reporterId" class="form-control mb-2 mr-sm-2" type="text" readonly="readonly"><br>
		                                    <label>피신고인 :&nbsp; </label>
		                                    <input type="text" id="replyWriter" name="userId" class="form-control mb-2 mr-sm-2" readonly="readonly"><br>
		                               		     누적신고 횟수 :&nbsp;&nbsp;<span id="redcard" style="font-weight: bold"></span>
		                                    <br><br>
                      						<label>신고 내용 :&nbsp;&nbsp; </label>
											  <textarea id="reportContent" class="form-control" rows="5" cols="5" id="comment" style="resize: none; background: white;"readonly="readonly"></textarea><br>
		                                    <div>
		                                    		    신고게시글 확인 :&nbsp;&nbsp;
		                                        <button type="button" class="btn btn-outline-dark" id="reBtn" style="height: 30px; line-height: 1px;">내용 보기</button> 
		                                    </div><br>  
		                                    <div id="select_result" >
		                                   		     처리유형 선택 &nbsp;&nbsp;
		                                   		     <p style="height: 1px;"></p>
		                                        <select id="report_apply" name="report_apply" class="form-control">
		                                            <option value="1" selected="selected">선택하기</option>
		                                            <option value="2">신고 누적 추가</option>
		                                            <option value="3">신고 취소</option>
		                                        </select>
		                                   </div>
		                                </div>
		                                   
				                        <!-- Modal footer -->
				                        <div class="modal-footer">
				                            <button type="button" id="modal_modify_btn" class="btn btn-primary">수정</button>
				                            <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
				                        </div>
				                   </form>
				                   
				                   <script>
				                   		$("#modal_modify_btn").click(function(){
				                   			if($("#report_apply").val() == 1)
			                   				{
				                   				alertify.alert('오류', '처리유형을 선택해주세요.');		
			                   				}
				                   			else
			                   				{
				                   				var reportNo = $("#reportNo").val();
				                   				var redcard = $("#redcard").text();
				                   				var userId = $("#replyWriter").val();
				                   				var selNo = $("#report_apply").val();
				                   				
				                   				$.ajax({
				                   					url:"updateReport.ad",
				                   					data:{"reportNo" : reportNo,
				                   						  "redCard":redcard,
				                   						  "userId" : userId,
				                   						  "selNo" : selNo},
		                   						  	type:"post",
		                   						  	success:function(result)
		                   						  	{
			                   						  	if(result > 0)
		                   						  		{
			                   						  		alertify.alert('신고 관리', '신고처리 완료', function(){ location.reload(); });
		                   						  		}
			                   						  	else
		                   						  		{
			                   						  		alertify.alert('신고 관리', '신고처리 실패', function(){ location.reload(); });
		                   						  		}
		                   						  	},
		                   						  	error:function()
		                   						  	{
		                   						  		console.log("ajax 통신 실패");
		                   						  	}
				                   				});
			                   				}
				                   		});
				                   
				                   		$("#dataTable tbody tr").click(function(){
				                   			var num = $(this).children().eq(0).text();
				                   			<c:forEach var="n" items="${ list }">
				                   				if(${ n.reportNo } == num)
			                   					{
				                   					$("#reportNo").val("${n.reportNo}");
				                   					$("#replyWriter").val("${n.replyWriter}");
				                   					$("#reporterId").val("${n.reporterId}");
				                   					$("#reportContent").val("${n.reportContent}");
				                   					$("#redcard").text(${n.redcard});
			                   					}
						                   </c:forEach>
				                   		});
				                   		
				                   		$('#reportModal').on('hidden.bs.modal', function () {
				                    		$("#report_apply option").attr("selected", false);
				                    		$("#report_apply option:eq(0)").attr("selected", true);
			                    		});
				                   </script>
		                    </div>
		                </div>
		            </div>
                </main>
                <jsp:include page="common/adFooter.jsp"/>
            </div>
            </div>
</body>
</html>