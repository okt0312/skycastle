<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 공지사항 상세페이지</title>
	<style>
           
    
 
    /* 테이블 css */
    .contents{
        margin: auto;
        width:100%;
    }
    .boardList{
        margin: auto;
        border-top:1px solid rgb(175, 175, 175);
        margin:10px;
    }
    .boardList td{
        margin: 5px;
        padding: 5px;
        border-bottom: 1px solid rgb(175, 175, 175);
    }

  
   
        </style>

</head>
<body>
<script>
/* $("#update_Btn").click(function() 
		{
		    alertify.confirm("Are you sure you want to commit your reservation?", function (e) 
		    {
		        if (e) {
		            // user clicked "ok"
		            alertify.success("You've confirmed your reservation.");
		            $("#noticeUpdateForm").submit();
		            return true;
		        } else {
		            // user clicked "cancel"
		            alertify.error("You did not confirm your reservation.");
		            return false;
		        }
		    });
		});
		
		
		 $("#noticeUpdateForm").submit(function(event){
			   /*  event.preventDefault(); // cancel submit 
			    alertify.confirm("Are you sure you want to commit your reservation?", function (e) {
			        if (e) {
			            // user clicked "ok"
			            alertify.success("You've confirmed your reservation.");
			            $("#noticeUpdateForm")[0].submit(); // submit form skipping jQuery bound handler
			        } else {
			            // user clicked "cancel"
			            alertify.error("You did not confirm your reservation.");
			        }
			    });
			});
		 */
</script>

 <!-- 메뉴와 푸터는 인클루드 할거니 내용만 수정하겠음-->
<div id="layoutSidenav"> 
	<jsp:include page="common/adminSidebar.jsp"/>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4"><b>공지사항  관리</b></h1>
                        <ol class="breadcrumb mb-4" >
                            <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                            <li class="breadcrumb-item active"><a style="color:black">공지사항 관리</a></li>
                        </ol>
                        <!-- 게시글 수정 시작 -->
                        <form id="noticeUpdateForm" name="noticeUpdateForm" action="noticeUpdate.ad">
                            <div class="contents" align="center">
                                <table class="boardList">
                                    <tr>
                                        <td style="text-align: center; font-size: x-large;"><input type="text"  name="noticeTitle" style="width: 628px; float: left;" value="${ n.noticeTitle }"></>
                                    </tr>
                                    <tr>
                                        <td>                 
                                            <textarea rows=20 cols=85 name="noticeContent" id="contents" placeholder="내용">${ n.noticeContent }</textarea>
                                        </td>
                                    </tr>
                                </table> 
                                <div>
                                <p align="center">
                                    <input type="button" value="목록" onclick="history.back(-1)" class="btn btn-dark">
                                    <input type="button" id="update_Btn" name="update_Btn" value="수정" class="btn btn-primary" >
                                     <input type="button" value="삭제" class="btn btn-danger" id="forDeleteBtn" > 
                                    </p>
                                
                            </div>
                            </table>
                            <input type="hidden" name="status" id="adStatus" value="${ n.status }">
                           <input type="hidden" name="noticeNo" id="noticeNo" value="${ n.noticeNo }">
                          <%--  <input type="hidden" name="enrollDate" value="${ n.enrollDate }">
                            --%>
                        </form> 
                     
                       <div id="delete_Hidden">
                        <form action="deleteNotice.ad">
                        <input type="hidden" name="noticeNo" id="noticeNo" value="${ n.noticeNo }">
                        <input type="submit" value="삭제" class="btn btn-danger" id="adNoDeleteBtn" >
                        </form> 
                        </div>
                        
                        <script>
                      
                        
                        
                        
                        $(function(){
                    		$("#delete_Hidden").hide();
                    		$("#forDeleteBtn").click(function(){
                    			$("#adNoDeleteBtn").click();
                    			
                    		});
                        });
                       
                       

                           
                        
                   
                        </script>
                      
                       </div>   
                       
                    </div>
                    
                </main>
		</div>
</body>
</html>