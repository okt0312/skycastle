<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<!-- jQuery 라이브러리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
  .findPwdForm{
    width:320px;
    height:70%;
    margin: auto;
    position: relative;
    margin-top:180px;
    z-index: 1;
  }
  .findPwdForm h2{
    color:rgb(51,51,51);
    text-align: center;
    margin-top: 5px;
  }
  .findPwdForm p{
    color:black;
    text-align: center;
    margin-top: 10px;
    padding-top: 5px;
    margin: auto;
    font-size: 11px;
    font-weight: bold;
  }
  #email, #phone{
    font-size: 10pt;
    margin-top: 15px;
    width:305px; 
    height:40px;
    border-style: none;
    border-bottom-style:ridge;
  }
  #findPwd{
    width:310px;
    height:40px;
    margin-top: 15px;
    color:rgb(51,51,51);
    font-size: 14px;
    font-weight: 700;
    border-radius: 4px;
   	border-style:none;
    background:#fdce07;
    cursor: pointer;
  }
  #findPwd:hover{
    width:310px;
    height:40px;
    border:1px solid rgb(231, 166, 44);
    border-style:none;
    color:rgb(51,51,51);
    background-color:white;
  }
  #pwdImg{
    width:100%;
    height:60px;
  }
  #pwdImg img{
    width:40px;
    height:40px;
    margin-left: 30px;
    padding-top: 10px;
    vertical-align: middle;
  }
  #pwdImg span{
    height: 60px;
    font-size: 24px;
    font-weight: 700;
    margin-left: 25px;
    margin-right: 25px;
    vertical-align: middle;
  }
  </style>
</head>
<body>
<body data-spy="scroll" data-target="#navbar-example">
   <!-- 비밀번호찾기 -->
   <div class="findPwdForm"> 
        <div id="pwdImg">
          <img src="resources/images/pwd.png">
          <span>비밀번호 찾기</span>
        </div>
        <form action="sendPwdMail.me" method="POST">
        <input type="email" name="userId" id="email" placeholder="이메일을 입력하세요" maxlength="20" required><br> 
        <input type="text" name="phone" id="phone" placeholder="휴대폰번호를 입력하세요" maxlength="20" required><br>
        <button type="submit" id="findPwd" name="findPwd">비밀번호찾기</button><br>
        </form>
    </div>

<script>
	$(function(){
		
		$("#findPwd").on("click", function(){
			
			if($("#email").val()==""){
				alert("아이디(이메일)를 입력해주세요.");
				$("#email").focus();
				return false;
			}
			if($("#phone").val()==""){
				alert("휴대폰 번호를 입력해주세요.");
				$("#phone").focus();
				return false;
			}
		});
	});
</script>
</body>
</body>
</html>