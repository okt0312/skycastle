<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인증번호 입력</title>
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
  #authCode{
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
    border:1px solid#fdce07;
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

<body data-spy="scroll" data-target="#navbar-example">
   <!-- 인증번호 입력 -->
   <div class="findPwdForm"> 
        <div id="pwdImg">
          <img src="resources/images/pwd.png">
          <span>인증번호 확인</span>
        </div>
        <form action="pwdChange.me" method="POST"> 
        <input type="hidden" value="${authCode}" name="authCode">
        <input type="hidden" value="${userId}" name="userId">
        <label style="color:red; font-size:0.8em; align:center;">${userId}로 인증번호를 발송하였습니다.</label>
        <input type="text" name="passCode" id="authCode" placeholder="인증번호를 입력하세요" maxlength="20" required><br>
        <button type="submit" id="findPwd" name="findPwd">확인</button><br>
        </form>
    </div>

</body>
</html>