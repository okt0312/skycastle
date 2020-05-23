<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/* ===== footer ===== */
	.footer
	{
	    max-width: 1700px;
	    height: 300px;
	    background-color: #333333;
	    margin: auto;
	}
	#footer_left, #footer_right
	{
	    display: inline-block;
	    color: white;
	}
	#footer_left
	{
	    float: left;
	    width: 600px;
	    height: 150px;
	    margin-top: 75px;
	    margin-left: 80px;
	}
	#footer_right
	{
	    float: right;
	    width: 400px;
	    margin-top: 160px;
	}
</style>
</head>
<body>
	<div class="footer">
        <div id="footer_left">
			(주) 열정 <br><br>
			대표이사 : 김열정       |       사업자번호 000-00-00000 <br>
			본사주소 : 서울시 강남구 열정로 00-0 <br>
            TEL . 본사 : 010-0000-0000       |       가맹문의 : 070-0000-0000 <br>
			FAX : 02-000-0000       |       E-MAIL : skycastle0504@gmail.com <br>
        </div>
        <div id="footer_right">
			통신판매업 신고 : 제 2020-서울강남-0000호<br>
			copyright @ sky castle all rights reserved
        </div>
	</div>
</body>
</html>