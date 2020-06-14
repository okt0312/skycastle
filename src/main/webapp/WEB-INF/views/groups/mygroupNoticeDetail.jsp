<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <title>mygroupNoticeDetail</title>
    <style>
    	/* 바깥쪽 div */
    	#mygroup{
    		/* margin:auto; */
    		max-width:1700px;
    		height:1000px;
    	}
        .sky_btn1 {
            width: 130px;
            height: 40px;
            text-align: center;
            font-size: 15px;
            font-weight: bold;
            border-radius: 5px;
            padding: 10px;
            cursor: pointer;
            background: #fdce07;
            color: #000000;
            border: 0;
        }
        .sky_btn11 /* 댓글달기 버튼 */
        {
            width: 100px;
            height: 35px;
            text-align: center;
            font-size: 15px;
            font-weight: bold;
            border-radius: 5px;
            padding: 10px;
            cursor: pointer;
            background: #fdce07;
            color: #000000;
            border: 0;
        }
        .sky_btn2   /* 취소, 첨부파일 버튼 */
        {
            width: 130px;
            height: 40px;
            text-align: center;
            font-size: 15px;
            font-weight: bold;
            border-radius: 5px;
            padding: 10px;
            cursor: pointer;
            background: #333333;
            color: white;
            border: 0;
        }
        .sky_btn22   /* 신고 버튼 */
        {
            width: 100px;
            height: 35px;
            text-align: center;
            font-size: 15px;
            font-weight: bold;
            border-radius: 5px;
			padding: 10px;
            cursor: pointer;
            background: #333333;
            color: white;
            border: 0;
        }
        /* 소모임내용 */
        #noticeTitle{
		padding:10px;
		font-size: 32px;
		font-weight:300;
		color:#333333;
		}
        #mygroupContent{
        	margin:auto;
            width: 75%;
            height:800px;
            margin-top: 80px;
            margin-right:35px;
        }
        #mygroupNoticeTable{
            margin: auto;
        }
        #mygroupNoticeTable>thead>tr{
            height: 50px;
        }
        #mygroupNoticeTable>tbody>tr{
            height: 34px;
        }

        /* 공지사항 테이블 css */
        #mygroupNoticeTable{
            width: 80%;
            height: 450px;
            text-align:left;
            align-self: center;                  
            border-collapse: collapse; 
            box-sizing: border-box;
            margin: auto;
        }
        #mainNotice{
            height:50px;
            font-size: 13px;
            color: #333333;
            border-bottom:2px solid #dddddd;
        }
        #mainNotice button{
            width:50px;
            height:25px;
            margin-right: 5px;
            border-radius: 4px;
            background:#fdce07;
            color: #333333;
            font-weight: bold;
        }
        .title{
            height:34px;
            text-align: left;
            padding-top: 5px;
            padding-bottom: 5px;
            font-size: 13px;
            font-weight: 400;
        }
        .enrollDate{
            font-size: 13px;
            font-weight: 400;
            text-align: right;
        }
        .noticeTitle{
            border-bottom:1px solid #dddddd;
        }
        #mygroupNoticeTable tr:hover{
            text-decoration: underline;
            color: rgb(216, 64, 38);
            cursor: pointer;
        }
		/* 댓글 스타일 */
		.replyList tr{
			width:320px;
		} 
		
        /* 페이징바 css */
        .paging{
            padding:19px;
            text-align:center;
        }
        .paging a{
            width:23px;
            height:23px;
            padding-top:2px;
            display:inline-block;
            vertical-align:middle;
            text-decoration: none;
            color: #333333;
        }
        .paging a:hover{text-decoration:underline;}
        .paging .btn_arr{text-decoration:none;}
        .paging .btn_arr{
            margin:0 3px;
            padding-top:0;
            border:1px solid #ddd;
            border-radius:30px;
            font-size: 9px;
            line-height: 20px;
        }
        .paging .on{
            padding-top:1px;
            height:22px;
            border-radius:30px;
            font-weight:bold;
            text-decoration: underline;
        }
        .paging .on:hover{text-decoration:none;}
    </style>
</head>
<body>
	<jsp:include page="../myPage/common/myPageMenubar.jsp" />
	<div id="mygroup">
		<jsp:include page="common/mygroupMenubar.jsp" />

		<%-- <c:forEach items="${g}" var="gn">
		<c:forEach items="${list}" var="r">  --%>
		
		<!-- mygroupContent 영역에 콘텐츠 작성 -->
		<div id="mygroupContent">
			<p id="noticeTitle">공지사항</p>
			<hr>

			<div id="noticeTitle">
				<table>
					<tr>
						<td style="width: 850px; font-weight: 400; font-size: 20px;">${ gn.gnoticeTitle }</td>
						<td style="width: 100px; text-align: center; font-size: 16px;">${ gn.enrollDate }</td>
						<td style="width: 70px; text-align: center; font-size: 16px;">${ gn.count }</td>
					</tr>
				</table>
			</div>
			<hr>

			<!-- 공지사항 개행 추가 -->
			<% pageContext.setAttribute("line", "."); %>
			<div id="noticeContent" style="width:1050px; margin-top: 30px; padding-left:20px; word-break:break-all;">
				${fn:replace(gn.gnoticeContent, line, "<br/>")}
			</div>
			<br><br><br><br>
			
			<!-- 방장에게만 보이는 버튼 -->
			<c:if test="${ loginUser.userNo eq gn.leaderNo }">
	            <div>
	                <button class="sky_btn11" onclick="postFormSubmit(1);" style="margin-left:300px;">수정하기</button>
	                <button class="sky_btn22" onclick="postFormSubmit(2);">삭제하기</button>
	            </div>
	            
	            <form action="" id="postForm" method="post">
	            	<input type="hidden" name="gnoticeNo" value="${ g.gnoticeNo }">
	            	<input type="hidden" name="noticeNo" value="${ r.noticeNo }"><!-- 댓글 ajax에서만 스는데... -->
	            </form>
	            
	            <script>
	            	function postFormSubmit(num){
	            		if(num == 1){	// 수정하기 클릭시
	            			$("#postForm").attr("action", "mygroupNoticeUpdate.gr");
	            		}else {			// 삭제하기 클릭시
	            			$("#postForm").attr("action", "mygroupNoticedelete.gr");
	            		}
	            		$("#postForm").submit();
	            	}
	            </script>
			</c:if>
			
			
			<table id="replyArea" class="table"><!-- 수업때한거 -->
                <thead class="replyList">
                
                </thead>
                <tbody class="replyList">
                    <tr>
                       <td colspan="5">댓글 (<span id="replyCount"></span>) </td> 
                    </tr>
                    <tr>
                        <th colspan="4">
                            <textarea class="form-control" id="replyContent" cols="70" rows="2" style="resize:none; width:600px;"></textarea>
                        </th>
                        <th style="vertical-align: middle"><button class="btn btn-secondary" id="insertReply">등록하기</button></th>
                    </tr>
                </tbody>
            </table>
			<br><br><br>
			
			
			<div>
				<button class="listBtn sky_btn2" onclick="javascript:history.go(-1);" style="margin-left:370px;">목록</button>
			</div>
			
			<br><br><br><br><br>


		</div>
		<%-- </c:forEach> 
		</c:forEach> --%>
	</div>


	<!-- 모달 시작 -->
	<form action="">
	<div class="modal fade" id="reportModal">
		<!-- modal별 id 변경해주세요-->
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title" style="margin: auto; padding: 0;">댓글
						신고하기</h4>
					<button type="button" class="close" data-dismiss="modal"
						style="margin: 0; padding: 0;">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<table style="width: 400px;">
						<tr>
							<input type="hidden" id="userNo" name="userNo" value="${loginUser.userNo}">
							<input type="hidden" name="replyNo" id="replyNo" value="">
							<th style="width: 80px;">작성자</th>
							<td style="width: 320px;">${loginUser.userId} (${loginUser.userName})</td>
						</tr>

						<tr>
							<th>댓글내용</th>
							<td><textarea cols="40" rows="10" style="resize: none;" id="content"
									readonly>${list.replyContent }</textarea></td>
						</tr>
						<tr>
							<th>신고사유</th>
							<td><textarea id ="reportContent" name="reportContent" cols="40" rows="10" 
									style="resize: none;" required></textarea></td>
						</tr>
					</table>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer" style="margin: auto;">
					<!-- 하단버튼 영역-->
					<button type="button"  id="reportSubmit" class="btn btn-danger sky_btn1"
						style="width: 200px; height: 50px;">신고</button>
					<button type="button" class="btn btn-danger sky_btn2"
						data-dismiss="modal" style="width: 200px; height: 50px;">취소</button>
				</div>
			</div>
		</div>
	</div>
	</form>
	<!-- 모달 끝 -->

	<script>
        function deleteConfirm() {
            var result = window.confirm("소모임을 나가시겠습니까?");
            var memStatus = "";

            if(result){
                memStatus = "N";
            }else{
                memStatus = "Y";
            }
            console.log(memStatus);
        }
        
        
    	$(function(){
    		selectReplyList();
    		
    		$("#insertReply").click(function(){

    			$.ajax({
        			url:"replyInsert.gr",
        			data:{replyContent:$("#replyContent").val(),
        				  noticeNo:${gn.gnoticeNo},
        				  userNo:"${loginUser.userNo}"
        				  },
        			type:"post",
        			success:function(status){

        				if(status == "success"){
        					$("#replyContent").val("");
        					selectReplyList();
        				}else{
        					alertify.alert("skycastle 내용:", "댓글 등록 실패");
        				}
        			}, error:function(){
        				console.log("댓글 작성용 ajax 통신 실패!!");
        			}
        		});
    		});
    	});
    	
    	// 해당 게시글의 댓글 리스트 조회해서 출력
    	function selectReplyList(){
    		
    		$.ajax({
    			url:"replylist.gr",
    			data:{noticeNo:${gn.gnoticeNo}},
    			success:function(list){

    				$("#replyCount").text(list.length);	// 댓글개수
    				
    				var value = "";
    				
    				for(var i in list){
    					value += "<tr>" +
    								"<th style='width:100px;'>" + list[i].userName + "</th>" +
    								"<td>"+ "<input type='hidden' id='rno' value='"+list[i].replyNo+"'>" + "</td>"+
    								"<td>"+ "<input type='hidden' id='userNo' value='"+list[i].userNo+"'>" + "</td>"+
    								"<td style='width:630px; text-align:left;'>" + list[i].replyContent + "</td>" +
    								"<td>" + list[i].uploadDate + "</td>" +
    								"<td><input type='button' value='신고하기' onclick='reportModal();' rno='"+list[i].replyNo+"' content='"+list[i].replyContent+"' name='report_btn' id='report_btn' class='btn btn-danger'></td>" +
    							 "</tr>";
    				}
    				$("#replyArea tbody").html(value);
    				
    			}, error:function(){
    				console.log("댓글리스트 조회용 ajax 통신 실패!!");
    			}
    		});
    	};
    	
    	//클릭시 모달 실행
      	 function reportModal(){
      		 content = window.event.target.getAttribute("content");
      		 replyNo = window.event.target.getAttribute("rno");
     			 $('#reportModal').modal({
   		       
   		  	  });
     			 $("#content").text(content);
     			 $("#replyNo").val(replyNo);
     			
   			};
   			
   		
   		$("#reportSubmit").click(function(){
   		  var userNo = $("#userNo").val();
   		  var replyNo = $("#replyNo").val();
   		  var reportContent = $("#reportContent").val();
   		  if(reportContent==''){
   			alertify.alert("skycastle 내용:", "신고 내용을 작성하세요!");
   			return;
   		  }else{
   			$("#reportContent").val('');
   			$.ajax({
    			url:"insertReport.rp",
    			data:{reporterNo:userNo,replyNo:replyNo,reportContent:reportContent},
    			success:function(status){
					if(status == '성공'){
						
						alertify.alert("skycastle 내용:", "신고 완료!");
					}
    				
    			}, error:function(){
    				console.log("신고하기 ajax 통신 실패!!");
    			}
    		});
   		  }
   		  
   		  
   			
   		});	
      	
    
   	
   	
    </script>
      <br><br><br><br>
	<jsp:include page="../common/footer.jsp" />

</body>
</html>