<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 공지사항 등록</title>
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
<div id="layoutSidenav"> 
	<jsp:include page="common/adminSidebar.jsp"/>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4"><b>공지사항  관리</b></h1>
                        <ol class="breadcrumb mb-4" >
                            <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                            <li class="breadcrumb-item active"><a style="color:black">공지사항 등록</a></li>
                        </ol>
                        <!-- 게시글  시작 -->
                        <form id="noticeEnrollForm" action="noticeInsert.ad">
                            <div class="contents" align="center">
                                <table class="boardList">
                                    <tr>
                                        <td style="text-align: center; font-size: x-large;"><input type="text"  style="width: 628px; float: left;" name="noticeTitle" placeholder="제목"></>
                                    </tr>
                                    <tr>
                                        <td>                 
                                            <textarea rows=20 cols=85 name="noticeContent" id="contents" placeholder="내용"></textarea>
                                        </td>
                                    </tr>
                                </table>    
                                <p align="center">
                                    <input type="button" value="취소" onclick="history.back(-1)" class="btn btn-dark">
                                    <input type="submit" id="" value="등록" class="btn btn-primary" >
                                   
                                </p>
                            </div>
                            </table>
                          
                        </form> 
                       
                       
                    </div>
                </main>
		</div>





</body>
</html>