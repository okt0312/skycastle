<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.loginForm{
	  position: absolute;
	  width:300px;
	  height:70%;
	  margin: auto;
	  margin-top:180px;
	  position: relative;
	}
	.loginForm h3{
	  color:black;
	  text-align: center;
	  margin-top: 5px;
	}
	.loginForm img{
	  width:210px;
	  height:105px;
	  margin: auto;
	}
	/* input 박스 */
	#email, #userPwd{
	  box-sizing: border-box;
	  font-size: 10pt;
	  margin-top: 10px;
	  margin-bottom: 10px;
	  border-bottom-style:ridge;
	  border-top-style: none;
	  border-left-style: none;
	  border-right-style: none;
	  width:300px;
	  height:40px;
	}
	/* 로그인 버튼 관련 스타일 */
	#loginBox{
	  width:100%;
	  height:40px;
	  margin-top: 10px;
	  font-size: 14px;
	  color : #ffffff;
	  background:#fdce07;
	  cursor: pointer;
   	  border: 0;
	}
	#loginBox:hover{
	  width:100%;
	  height:40px;
	  margin-top: 10px;
	  border:1px solid#fdce07;
	  color:rgb(231, 166, 44);
	  background-color: white;
	}
	/* 비밀번호찾기,회원가입버튼 관련 스타일 */
	.loginBtn{
	  text-align: center;
	  position: relative;
	  margin-top: 10px;
	  margin-bottom: 5px;
	}
	.loginBtn button{
	  background-color: rgba(175, 175, 175);
	  color: black;
	  border-radius: 4px;
	  font-size: 12px;
	  border: rgba(0, 0, 0, 0);
	  cursor: pointer;
	}
	#searchPwd{
	  width: 120px;
	  float: left;
	}
	#enrollMember{
	  width: 120px;
	  float: right;
	}
</style>
</head>
<body>
<!-- git Test!!!-->
<!-- 로그인폼 -->
    <div class="loginForm"> 
      <h3><a><img src="images/mainlogo.jpeg"></a></h3>
        <form action="login.me" method="POST">
          <input type="email" name="userId" id="email" placeholder="이메일을 입력하세요." maxlength="20" required><br> 
          <input type="password" name="userPwd" id="userPwd" placeholder="비밀번호를 입력하세요." maxlength="12" required><br>      
          <input type="submit" id="loginBox" name="login" value="로그인"><br>
          <input type="submit" id="loginBox" name="login" value="네이버로 로그인(임시용)"><br>
          <div class="loginBtn">
            <button id="searchPwd">비밀번호 찾기</button>
            <button id="enrollMember">회원가입</button>
          </div>
        </form>
    </div>
</body>
</html>