<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소모임 게시판 상세글</title>
<style>
   .menuTitle{
        width: 100%;
        height: 80px;
        margin: 5px;
        padding-left: 10px;
        box-sizing: border-box;
        font-size: 24px;
        font-weight: 500;
        color: #333333;
    }
    .subMenu{
        padding: 10px;
        font-size: 14px;
        font-weight: 400;
        background: #dddddd;
        border-radius: 4px;
        border-style: none;
    }
    .subMenu a{
        text-decoration: none;
        color: #333333;
    }
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
    /* 댓글 css */
    .reply{
        margin: auto;
        width:700px;
        height: 170px;
        text-align: left;
        padding-top: 10px;
        font-size: 18px;
        font-weight: bold;
    }
    .reply p, label{
        font-size: 14px;
        font-weight: 400;
        color:gray;
    }
    #deleteReply{
        width:55px;
        height: 25px;
        font-size: 12px;
        font-weight: bold;
        padding: 5px;
        line-height: 10px;
        float: right;
    }
</style>
</head>
<body>
<div id="layoutSidenav">
		<jsp:include page="common/adminSidebar.jsp"/>
		 <div id="layoutSidenav_content">
		 
		
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4"><b>소모임 게시글 관리</b></h1>
                        <ol class="breadcrumb mb-4" >
                            <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                            <li class="breadcrumb-item active"><a style="color:black">소모임 게시글 관리</a></li>
                        </ol>
                        <!-- 게시글 삭제 수정 시작 -->
                        <form action="">
                            <div class="contents" align="center">
                                <table class="boardList">
                                    <tr>
                                        <td><p>${ g.gnoticeTitle}</p></td>
                                    </tr>
                                    <tr>
                                        <td>                 
                                            <textarea rows=20 cols=85 name="gnoticeContent" id="gnoticeContent">${ g.gnoticeContent}</textarea>
                                        </td>
                                    </tr>
                                </table>    
                                <p align="center">
                                    <input type="button" value="취소" onclick="history.back(-1)" class="btn btn-dark">
                                   <!--  <input type="submit" value="수정" class="btn btn-primary"> -->
                                    <input type="submit" value="삭제" class="btn btn-danger">
                                </p>
                            </div>
                            </table>
                            <input type="hidden" name="gnoticeNo" value="${ g.gnoticeNo}">
                        </form> 
                        <!-- 댓글관리 -->
                        <div class="reply" align="center">
                            댓글 
                            <div>
                            	
                                <p>(번호로 이름소환)</p>
                                <p>2020.04.25</p>
                                <label>아ㅠㅠ5월에도 꼭 열어주세요</label>
                                <button id="deleteReply" class="btn btn-danger">삭제</button></>
                            </div>
                        </div>
                        
                        
                        
                    </div>
                </main>
		</div>

</body>
</html>