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
          <img src="resources/images/pwd.png">
          <span>비밀번호 변경</span>
        </div>
        <form action="changePwd.me" method="POST">
        <input type="hidden" name="userId" value="${ userId }">
        <input type="password" name="pwdChange" id="pwdChange1" placeholder="새 비밀번호" maxlength="20" required><br> 
        <input type="password" id="pwdChange2" placeholder="한번 더 입력" maxlength="20" required><br>
        <button type="submit" id="changePwd" name="changePwd" onclick="return validate();">변경</button><br>
        </form>
    </div>

<script>
  	function validate() {
  		
  		var pwd1 = document.getElementById("pwdChange1"); // 비밀번호
		var pwd2 = document.getElementById("pwdChange2"); // 비밀번호 확인 	
  	
  		// 비밀번호 검사
		// 특수문자(!@#$%^&*) 영문자 숫자 포함 6글자 이상
		var regExp = /^[a-z\d!@#$%^&*]{6,}$/i;
		if (!regExp.test(pwd1.value)) {
			alert("비밀번호가 유효하지 않습니다.");
			pwd1.value = "";
			pwd1.focus();
			return false;
		}

		// 비밀번호값과 비밀번호확인값이 일치하는지 검사
		if (pwd1.value != pwd2.value) {
			alert("비밀번호가 일치하지 않습니다.");
			pwd2.value = "";
			pwd2.focus();
			return false;
		}
		
		return true;
		
  	}
</script>  	
</body>
</body>
</html>