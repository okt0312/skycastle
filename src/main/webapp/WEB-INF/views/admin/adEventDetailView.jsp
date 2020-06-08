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
                        <!-- 게시글 수정 시작 여기서 부터 수정하시면 됩니다 -->
                        <form id="noticeUpdateForm" action="noticeUpdate.ad">
                            <div class="contents" align="center">
                                <table class="boardList">
                                    <tr>
                                        <td style="text-align: center; font-size: x-large;"><input type="text"  name="noticeTitle" style="width: 628px; float: left;" value=""></td>
                                        <td><input type="file" id="upfile" class="form-control-file border" name="reUploadFile">
				                            
				                            <%--선생님 걸로 수정해보려다 실패...
				                             <c:if test="${ !empty n.changeName }">
				                            	현재 업로드된 파일 : 
				                            	<a href="${ pageContext.servletContext.contextPath }/resources/uploadFiles/${n.changeName}" >${n.changeName}</a>
				                            	<input type="hidden" name="changeName" value="${ n.changeName }">
				                            </c:if></td> --%>
                                    </tr>
                                    <tr>
                                        <td>                 
                                            <textarea rows=20 cols=85 name="noticeContent" id="contents" placeholder="내용"></textarea>
                                        </td>
                                    </tr>
                                </table> 
                                <div>
                                
                                <!--버튼 모음  -->
                                <p align="center">
                                    <input type="button" value="목록" onclick="history.back(-1)" class="btn btn-dark">
                                    <input type="submit" id="" value="수정" class="btn btn-primary" >
                                    <!-- <input type="submit" value="삭제" class="btn btn-danger" id="adNoDeleteBtn" > -->
                                    </p>
                                
                            </div>
                            </table>
                            <input type="hidden" name="status" id="adStatus" value="">
                           <input type="hidden" name="noticeNo" id="noticeNo" value="">
                          <%--  <input type="hidden" name="enrollDate" value="${ n.enrollDate }">
                            --%>
                        </form> 
                        
                       <!-- 값넘기는용으로 숨겨놓은 삭제용 인풋 -->
                        <form action="deleteNotice.ad">
                        <input type="hidden" name="noticeNo" id="noticeNo" value="">
                        <input type="submit" value="삭제" class="btn btn-danger" id="adNoDeleteBtn" >
                        </form> 
                        
                      
                       </div>   
                       
                    </div>
                </main>
		</div><!--이 /div지우지말것  -->
</body>
</html>