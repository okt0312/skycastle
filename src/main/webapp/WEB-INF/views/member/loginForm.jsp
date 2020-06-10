<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<!-- jQuery 라이브러리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- alertify CDN -->
<!-- JavaScript -->
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

<!-- CSS -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
<!-- Default theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
<!-- Semantic UI theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
<!-- Bootstrap theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
<!-- alertify CDN 종료 -->
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
	  height:55px;
	  margin-top: 10px;
	  font-size: 14px;
	  color : #ffffff;
	  background:#fdce07;
	  cursor: pointer;
   	  border: 0;
	}
	#loginBox:hover{
	  width:100%;
	  height:55px;
	  margin-top: 10px;
	  border:1px solid#fdce07;
	  color:rgb(231, 166, 44);
	  background-color: white;
	}
	#naverLogin{
	  width:300px;
	  height:55px;
	  margin-top: 10px;
	  font-size: 14px;	
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
	  height:25px;
	  float: left;
	}
	#enrollMember{
	  width: 120px;
	  height:25px;
	  float: right;
	}
</style>
</head>
<body>
	<!-- 로그인폼 -->
    <div class="loginForm"> 
      <h3><a href="${pageContext.servletContext.contextPath}"><img src="resources/images/logo.PNG"></a></h3>
        <form action="login.me" id="postForm" method="POST">
          <input type="email" name="userId" id="email" placeholder="이메일을 입력하세요." maxlength="20" required><br> 
          <input type="password" name="userPwd" id="userPwd" placeholder="비밀번호를 입력하세요." maxlength="12" required><br>      
          <input type="submit" id="loginBox" name="login" value="로그인"><br>
          <!-- 네이버로 로그인 버튼 노출 영역 -->
          <div>
        	<a href="${url}"><img id="naverLogin" src="resources/images/naverlogo.PNG"></a>
          </div>	
          <div class="loginBtn">
            <button id="searchPwd" type="button" onclick="postFormSubmit(2);">비밀번호 찾기</button>
            <button id="enrollMember" type="button" onclick="postFormSubmit(1);">회원가입</button>
          </div>
        </form>
    </div>
    
	<c:if test="${ !empty msg }">
		<script>
			alertify.alert("${msg}");  
		</script>
		<c:remove var="msg" scope="session"/>
	</c:if>
    
    <c:if test="${ !empty loginFail }">
		<script>
			alertify.alert("${loginFail}");  
		</script>
		<c:remove var="loginFail" scope="session"/>
	</c:if>
	
	<script>
		function postFormSubmit(num){
			if(num == 1){ // 회원가입
				$("#postForm").attr("action", "enrollForm.me");
			}else{ // 비번찾기 클릭시
				$("#postForm").attr("action", "searchPwd.me");
			}
			
			$("#postForm").submit();
		}
	</script>	
</body>
</html>