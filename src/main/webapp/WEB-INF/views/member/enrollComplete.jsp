<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 성공</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
    border-style:none;
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
        <center><p>환영합니다.</p></center><br>
        <center><span><p>SKY CASTLE의 회원이 되셨습니다.</p>
        <br><br>
        <center><button id="mainBtn"><a href="${pageContext.servletContext.contextPath}">메인으로가기</a></button></center>
    </div>
    
</body>
</body>
</html>