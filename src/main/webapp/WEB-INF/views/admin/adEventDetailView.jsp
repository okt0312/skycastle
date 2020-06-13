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
/* div{border:1px solid black;} */
.contents{
    margin: auto;
    width:100%;
    margin-bottom:25px;
}
.boardList{
	width:1280px;
    margin: auto;
    border-top:1px solid rgb(175, 175, 175);
    margin:10px;
    margin-right:20px;
}
.boardList td{
    margin: 5px;
    padding: 5px;
    border-bottom: 1px solid rgb(175, 175, 175);
}
/* 이벤트 이미지 */
.infoContent{
   margin: auto;
   width:100%;
   margin-top: 15px;
   margin-bottom: 15px;
   border:1px solid #dddddd;
   align:center;
}
.infoContent img{
	margin:auto;
	width:450px;
	height:580px;
	margin-top: 15px;
    margin-bottom: 15px;
    align:center;
}
</style>
</head>
<body>


 <!-- 메뉴와 푸터는 인클루드 할거니 내용만 수정하겠음-->
<div id="layoutSidenav"> 
	<jsp:include page="common/adminSidebar.jsp"/>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4"><b>이벤트 관리</b></h1>
                        <ol class="breadcrumb mb-4" >
                            <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                            <li class="breadcrumb-item active"><a style="color:black">이벤트 관리</a></li>
                        </ol>
                        <!-- 게시글 수정 시작 여기서 부터 수정하시면 됩니다 -->
                        <!-- <form id="noticeUpdateForm" action="noticeUpdate.ad"> -->
                            <div class="contents" align="center">
                              
                                <div class="infoContent">
                                	 <table class="boardList">
						                <tr>
						                    <td style="text-align: center; font-size: 16px; font-weight:bold;">
                                        		<input type="text" name="eventTitle" style="border-style:none; float:left;" value="${list[0].eventTitle}">	
                                        	</td> 
                                        </tr>
                                        <tr>	
						                    <td>${list[0].eventOpenTime} ~ ${list[0].eventCloseTime}</td>
						                </tr>
								             
	                                    <tr> 
	                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                        	썸네일 : <input type="file" id="upfile" style="border-style:none;" name="reUploadFile" placeholder="썸네일">
		                                        	
		                                        	<c:if test="${ !empty list[0].changeName }">
							                            <span style="float:right">첨부 파일 : 
							                            	<a href="${ pageContext.servletContext.contextPath }/resources/uploadFiles/event/${list[0].changeName}">${list[0].changeName}</a>
							                            </span>	
						                            </c:if>
					                        </td>
	                                    </tr>
	                                    <tr>
					                        <td>    
		                                        	상세 이미지 : <input type="file" id="upfile" style="border-style:none;" name="reUploadFile" placeholder="상세이미지">
		                                        	
		                                        	<c:if test="${ !empty list[1].changeName }">
							                            <span style="float:right">첨부 파일 : 
							                            	<a href="${ pageContext.servletContext.contextPath }/resources/uploadFiles/event/${list[1].changeName}">${list[1].changeName}</a>
							                            </span>	
						                            </c:if>
                                        	</td> 
	                                    </tr>
                                	</table>
                            		<img src="${pageContext.servletContext.contextPath}/resources/uploadFiles/event/${list[0].changeName}">
                            	</div>
                            	
                            	<!--버튼 모음  -->
	                            <div align="center">
                                    <input type="button" value="목록" onclick="location.href='eventMgmt.ad';" class="btn btn-dark">
                                    <input type="button" value="수정" onclick="postFormSubmit(1);" class="btn btn-primary">
                                    <input type="button" value="삭제" onclick="postFormSubmit(2);" class="btn btn-danger">
	                            </div>
                            </div>
                            
                        <!--</form>-->
                        
                        <form action="" id="postForm" method="post">
                        	<input type="hidden" name="eventNo" value="${list[0].eventNo}">
                         	
                        <%--
                        	<input type="hidden" name="changeName" value="${ e.changeName }">
                        	<input type="hidden" name="fileNo" value=${ at.fileNo }>   
                        --%>
                        	
                        </form> 
                       
                       <script>
                       		function postFormSubmit(num){
                       			if(num == 1){ // 수정하기 
        	            			$("#postForm").attr("action", "updateEvent.ad");
        	            		}else{ // 삭제하기
        	            			$("#postForm").attr("action", "deleteEvent.ad");
        	            		}
        	            		
        	            		$("#postForm").submit();
                       		}
                       </script>
                      
                       </div>   
                       
                    </div>
                </main>
		</div><!--이 /div지우지말것  -->
</body>
</html>