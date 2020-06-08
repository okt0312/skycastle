<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버 로그인 성공</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js"></script>
<style>
  .insertMember{
    box-sizing: border-box;
    width:550px;
    height:400px;
    margin: auto;
    margin-top:200px;
  }
  .title{
   height:50px; 
   font-size: 30px;
   font-weight: 700;
   padding-bottom: 10px;
   border-bottom-style: ridge;
   color:rgb(51, 51, 51);
  }
  .insertMember p{
    color:rgb(51,51,51);
    margin-top: 30px;
    font-size: 18px;
    font-weight: 400;
  }
  #mainBtn{
    width:150px;
    height:50px;
    background:#fdce07;
    border-radius: 4px;
    font-size: 14px;
  }
  #mainBtn a{
    color: rgb(51, 51, 51) ;
    text-decoration:none;
    font-weight: 900;
  }
  </style>
</head>
<body>
<body data-spy="scroll" data-target="#navbar-example">

    <!-- 3.회원가입완료 -->
    <div class="insertMember"> 
      <div class="title"><center>SKY CASTLE</center></div>
        <center><p id="name"></p></center><br>
        <center><span><p>네이버로 로그인 하셨습니다.</p>
        <br><br>
        <center><button id="mainBtn"><a href="${pageContext.servletContext.contextPath}">메인으로가기</a></button></center>
    </div>
    
    <script>
    	$(function(){
    		var name = ${result}.resonse.name;
    		$("#name").html("환영합니다. " + name + "님");
    	});
    </script>
</body>
</body>
</html>