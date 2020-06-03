<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
  #sendBtn{
    width:150px;
    height:50px;
    background:#fdce07;
    border-radius: 4px;
    font-size: 14px;
  }
  #sendBtn a{
    color: rgb(51, 51, 51) ;
    font-weight: 900;
  }
  </style>
</head>
<body>
<body data-spy="scroll" data-target="#navbar-example">

    <!-- 메일보내기 -->
    <div class="insertMember"> 
      <div class="title"><center>SKY CASTLE</center></div>
        <center><p>인증메일 발송 이메일주소</p></center><br>
        	<input type="email" id="email" name="receiver" value="${userId}" readonly="readonly">
        <br><br>
        <center><button id="sendBtn">메일 발송</button></center>
    </div>
    
    <script>
    
    	email = document.getElementById("email");
    	$(function(){
    		$("#sendBtn").click(function(){
    			email.removeAttribute("readonly");
    		});
    	}
    </script>
</body>
</body>
</html>