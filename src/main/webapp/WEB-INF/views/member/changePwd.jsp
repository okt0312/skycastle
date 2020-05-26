<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  .changePwdForm{
    width:320px;
    height:70%;
    margin: auto;
    position: relative;
    margin-top:180px;
    z-index: 1;
  }
  .changePwdForm h2{
    color:rgb(51,51,51);
    text-align: center;
    margin-top: 5px;
  }
  #pwdChange1, #pwdChange2{
    font-size: 10pt;
    margin-top: 15px;
    width:305px; 
    height:40px;
    border-style: none;
    border-bottom-style:ridge;
  }
  #changePwd{
    width:310px;
    height:40px;
    margin-top: 15px;
    color:rgb(51,51,51);
    font-size: 14px;
    font-weight: 700;
    border-radius: 4px;
    background:#fdce07;
    cursor: pointer;
  }
  #changePwd:hover{
    width:310px;
    height:40px;
    border:1px solid rgb(231, 166, 44);
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
   <!-- 비밀번호변경 -->
   <div class="changePwdForm"> 
        <div id="pwdImg">
          <img src="images/pwd.png">
          <span>비밀번호 변경</span>
        </div>
        <form action="" method="POST">
        <input type="password" name="pwdChange1" id="pwdChange1" placeholder="새 비밀번호" maxlength="20" required><br> 
        <input type="password" name="pwdChange2" id="pwdChange2" placeholder="한번 더 입력" maxlength="20" required><br>
        <input type="submit" id="changePwd" name="changePwd" value="변경"><br>
        </form>
    </div>

</body>
</body>
</html>