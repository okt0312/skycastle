<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        /**/
        #groupMenuTable{margin: auto;}
        #groupMenuTable td{
            width: 130px;
            height: 40px;
            border-top: 1px solid;
            border-right: 1px solid;
            border-left: 1px solid;
        } 
        /* 마이소모임 메뉴바 */
        #mygroupMenubar{
            width: 25%;
            margin-top: 100px;
            float: left;
            text-align: center;
        }
        /* 메뉴바 표 */
        
        .sky_btn1 /* 확인 버튼 */
        {
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
            width: 80px;
            height: 30px;
            text-align: center;
            font-size: 15px;
            font-weight: bold;
            border-radius: 5px;

            cursor: pointer;
            background: #333333;
            color: white;
            border: 0;
        }
        /* 채팅버튼 */
        #chat-btn{
            margin-top: 50px;
        }
        /* 소모임내용 */
        #mygroupContent{
            width: 75%;
            margin-top: 100px;
            float: left;
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
	<jsp:include page="../myPage/common/myPageMenubar.jsp"/>
            <div id="mygroup">
                <div id="mygroupMenubar">
                    <h2>소모임명</h2>

                    <table id="groupMenuTable" style="border-collapse:collapse;">
                        <tr>
                            <td>공지사항</td>
                        </tr>
                        <tr>
                            <td style="border-bottom: 1px solid;">캘린더</td>
                        </tr>
                    </table>

                    <div id="chat-btn">
                        <button class="sky_btn1">채팅</button>
                    </div>
                    <div id="option-btn" style="margin-top: 300px;">
                        <button class="sky_btn2" onclick="deleteConfirm();">소모임 나가기</button>
                    </div>
                    
		            <!-- 방장에게만 보여지는 버튼-->
		            <c:if test="${ loginUser.userNo == leaderNo }">
			            <!-- <a class="btn btn-secondary" style="float:right" href="enrollForm.bo">글쓰기</a> -->
			            <div id="option-btn" style="margin-top: 300px;">
		                	<button class="sky_btn2" onclick="location.href='mygroupNoticeEnrollForm.gr';">공지작성</button><br>
		                	<button class="sky_btn2" onclick="postFormSubmit(2);">회원관리</button>
		                </div>
		                
			            <form action="" id="postForm" method="post">
			            	<input type="hidden" name="gnno" value="${ gn.gnoticeNo }">
			            	<input type="hidden" name="fileName" value="${ b.changeName }">
			            </form>
			        </c:if>
			        
                </div>


                <!-- mygroupContent 영역에 콘텐츠 작성 -->
                <div id="mygroupContent">
                    <h2>공지사항</h2>
                    <hr><br><br>
                    
                        <div id="noticeTitle">
                            <table>
                                <tr>
                                    <td style="width:850px; font-weight:600;">${ gn.gnoticeTitle }</td>
                                    <td style="width:70px; text-align:center; font-size:12px;">${ gn.enrollDate }</td>
                                    <td style="width:70px; text-align:center; font-size:12px;">조회수 23</td>
                                </tr>
                            </table>
                        </div>
                        <hr>
                        <div id="noticeContent" style="margin-top: 50px;">
							<textarea rows="" cols="">${ gn.gnoticeContent }</textarea>
                        </div>

                        <br><br>
                        <hr>
                        <br>

                        <div align="right" style="margin-right:60px">
                            <!-- <button class="listBtn">좋아요</button> -->
                            <button class="listBtn sky_btn22" data-toggle="modal" data-target="#reportModal">신고</button>
                        </div>

                        <div id="replyArea">
                            <div id="existReply">
                                
                            </div>
                            <h2>댓글</h2>
                            <p>
                                조연화<br>
                                2020-10-11<br>
                                열공합시다아아아아아아아
                            </p>
                            <br><br>
                            <h2>댓글달기</h2>
                            <textarea style="width: 700px; height: 100px;"></textarea>&nbsp;&nbsp;<button class="sky_btn11">댓글달기</button>

                        </div>
                        <br><br><br>
                        <div align="center">
                            <button class="listBtn sky_btn2">목록</button>
                        </div>
                        <br><br><br><br><br>

                            
                </div>
            </div>
            
            
    <!-- 모달 시작 -->
    <div class="modal fade" id="reportModal"> <!-- modal별 id 변경해주세요-->
        <div class="modal-dialog">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header">
                <h4 class="modal-title" style="margin:auto;padding:0;">댓글 신고하기</h4>
                <button type="button" class="close" data-dismiss="modal" style="margin:0;padding:0;">&times;</button>
                </div>
            
                <!-- Modal body -->
                <div class="modal-body">
                    <table style="width: 400px;">
                        <tr>
                            <th style="width: 80px;">작성자</th>
                            <td style="width: 320px;">user01</td>
                        </tr>
                        <tr>
                            <th>회원명</th>
                            <td>조연화</td>
                        </tr>
                        <tr>
                            <th>댓글내용</th>
                            <td><textarea cols="40" rows="10" style="resize: none;" readonly>열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ열심히공부할게요 ㅠㅜㅠㅜㅠㅜ</textarea></td>
                            <!--서머노트쓸까?-->
                        </tr>
                        <tr>
                            <th>신고사유</th>
                            <td><textarea name="reportContent" cols="40" rows="10" style="resize: none;"></textarea></td>
                            <!--서머노트쓸까?-->
                        </tr>
                    </table>
                </div>
            
                <!-- Modal footer -->
                <div class="modal-footer" style="margin:auto;">
                    <!-- 하단버튼 영역-->
                    <button type="button" class="btn btn-danger sky_btn1" style="width:200px; height:50px;">신고</button>
                    <button type="button" class="btn btn-danger sky_btn2" data-dismiss="modal" style="width:200px; height:50px;">취소</button>
                </div>
            </div>
        </div>
    </div>
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
    		
    		$("#addReply").click(function(){
    			
    			$.ajax({
        			url:"rinsert.gr",
        			data:{replyContent:$("#content").val(),
        				  refBoardNo:${gn.groupNoticeNo},
        				  replyWriter:"${loginUser.userId}"},
        			type:"post",
        			success:function(status){

        				if(status == "success"){
        					
        					$("#content").val("");
        					
        					selectReplyList();
        					
        				}else{
        					alert("댓글 등록 실패");
        				}
        			}, error:function(){
        				console.log("댓글 작성용 ajax 통신 실패!!");
        			}
        		});
    		});
    	});
    	
    	// 해당 게시글에 딸려있는 댓글 리스트 ajax로 조회해서 화면에 뿌려주는
    	function selectReplyList(){
    		
    		$.ajax({
    			url:"replylist.bo",
    			data:{gnno:${gn.groupNoticeNo}},
    			success:function(list){

//    				console.log(list);
    				
    				// 댓글개수
    				$("#rcount").text(list.length);
    				
    				var value = "";
    				
    				for(var i in list){
    					value += "<tr>" +
    								"<th>" + list[i].replyWriter + "</th>" +
    								"<td>" + list[i].replyContent + "</td>" +
    								"<td>" + list[i].createDate + "</td>" +
    							 "</tr>";
    				}
    				$("#replyArea tbody").html(value);
    				
    			}, error:function(){
    				console.log("댓글리스트 조회용 ajax 통신 실패!!");
    			}
    		});
    	}
    </script>
        <jsp:include page="../common/footer.jsp"/>
    
</body>
</html>