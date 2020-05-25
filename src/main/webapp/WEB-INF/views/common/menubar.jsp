<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400,500,700" rel="stylesheet">	
<style>
	#main_Header
	{
	    max-width: 1700px;
	    margin: 30px auto 0;   
	}
	#header2 a
	{
	    text-decoration: none;
	    color: black;
	}
	#header1
	{
	    width: 100%;
	    height: 150px;
	    background-color: white;
	    margin: auto;
	}
	#main_logo
	{
	    display: block;
	    height: 150px;
	    margin: auto;
	}
	#header2
	{
	    margin: 20px auto 0;
	    border-top: 2px #d1d1d1 solid;
	    border-bottom: 2px #d1d1d1 solid;
	}
	.header_menu
	{
	    margin: auto; 
	    padding: 0; 
	    width: 1400px; 
	    font-size: 17px;
	    font-family: 'Noto Sans KR', sans-serif;
	    font-weight: bold;
	}
	.header_menu ul
	{  
	    list-style:none; 
	    margin: 7px 0; 
	    padding:0; 
	}
	.header_menu > li 
	{ 
	    height: 65px; 
	    display:inline-block; 
	    width:200px; 
	    margin:0 10px; 
	    text-align: center; 
	    line-height: 60px;
	}
	.header_menu > li .submenu
	{  
	    width:200px; 
	    height: 100px;
	    display:none; 
	    position: absolute; 
	}
	.submenu li
	{
	    background-color: rgba( 255, 255, 255, 0.5 );;
	}
	.header_menu > li:hover ul.submenu 
	{
		display:block;  
		transform:scale(1.1);
	}
	
	/* 로그인 버튼 */
	.sky_btn1 /* 확인 버튼 */
	{
		width: 150px;
		height: 50px;
		text-align: center;
		border-radius: 5px;
		padding: 10px;
		cursor: pointer;
		background: #fdce07;
		color: #000000;
		border: 2px solid #F79F81;
		font-size: 17px;
	    font-family: 'Noto Sans KR', sans-serif;
	    font-weight: bold;
	    color:white;
	}
</style>
</head>
<body>
	    <div id="main_Header">
        <div id="header1">
            <a href=""><img id="main_logo" src="${pageContext.servletContext.contextPath}/resources/images/logo.PNG"></a>
        </div>
        <div id="header2">
            <ul class="header_menu">
                <li><a href="">소개</a>
                    <ul class="submenu">
                        <li><a href="">CASTLE 소개</a></li>
                        <li><a href="">이용안내</a></li>
                        <li><a href="">오시는 길</a></li>
                    </ul>
                </li>
                <li><a href="">좌석 예약</a></li>
                <li><a href="">공간 예약</a></li>
                <li><a href="">소모임</a></li>
                <li><a href="">고객센터</a>
                    <ul class="submenu">
                        <li><a href="">공지사항</a></li>
                        <li><a href="">FAQ</a></li>
                        <li><a href="">1:1문의</a></li>
                    </ul>

                </li>
                
                <c:choose>
                	<c:when test="${ empty loginUser }">
		                <li><button class="sky_btn1" onclick="location.href='loginForm.me';">로그인</button>
		                    <ul class="submenu">
		                        <li><a href="">회원가입</a></li>
		                    </ul>
		                </li>
                	</c:when>
                	<c:when test="${ loginUser.userNo eq 1}">
						<li><button class="sky_btn1" onclick="">관리페이지</button>
		                    <ul class="submenu">
		                        <li><a href="logout.me">로그아웃</a></li>
		                    </ul>
		                </li>
                	</c:when>
                	<c:otherwise>
						<li><button class="sky_btn1" onclick="">마이페이지</button>
		                    <ul class="submenu">
		                        <li><a href="logout.me">로그아웃</a></li>
		                    </ul>
		                </li>
                	</c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
</body>
</html>