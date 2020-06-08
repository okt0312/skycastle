<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
/* 서브메뉴 스타일 시작 (위에 웹폰트 링크도 복붙해주세요)*/
div {
	box-sizing: border-box;
}

.outer {
    max-width: 1700px;
	margin: auto;
    margin-bottom: 150px;
   
}

.outer * {
	font-family: 'NanumSquare';
}

.outer a {
	text-decoration: none;
}

#index-area {
	text-align: right;
	font-size: 12px;
}

#index-area a {
	color: gray
}

.sub-menu-area * {
	padding: 5px;
}

.sub-menu-area>a {
	font-size: 17px;
	color: black;
	font-weight: bolder;
}

/* 서브메뉴 스타일 끝 */
#order-info {
	width: 1000px;
	height: 200px;
	border: 1px solid rgb(76, 60, 60);
	background-color:#fdce07;
	margin: auto;
	color: black
}

.bline {
	background-color: skyblue;
	height: 2px;
	border: 0px;
	width: 370px;
	margin:auto;
	
}

/* .pagination {
            display: inline-block;
        } */
.pagination a {
	color: black;
	padding: 5px 10px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
	margin: 0 2px;
	font-size: 12px;
}

.pagination a.active {
	background-color: orange;
	color: white;
	border: 1px solid orange;
}

.pagination a:hover:not (.active ) {
	background-color: #ddd;
}

#noticeList>tbody td {
	text-align: center;
}

#noticeList * {
	height: 30px;
	font-size: 12px;
	border-bottom: 1px solid lightgray;
}

#noticeList {
	border-top: 1px solid black;
}

#noticeList>thead th {
	font-size: 14px;
	font-weight: 750;
}

#noticeList>tbody :nth-child(1) {
	cursor: pointer;
}

#middleTable td {
	margin-left: 10px;
}

/* 내용 테이블 */
input {
	border-radius: 5px;
	width: 200px;
}

th {
	height: 50px;
	width: 100px;
}

table {
	font-size: 18px;
	margin: auto;
}

#doubleCheck {
	margin-left: 20px;
}

/* 작은버튼 스타일 */
.small_btn {
	display: block;
	height: 25px;
	width: 80px;
	margin: 0 auto;
	font-size: 13px;
	font-weight: bolder;
	color: white;
	background-color: #fdce07;
	border: 0;
	border-radius: 5px;
	cursor:pointer;
}

/* 작은버튼 스타일 */
input[type=password]{font-family:'inherit';}
</style>

</head>
<body style="width: 100%; height: 100%; margin:auto;">
	<c:if test="${ !empty msg }">
		<script>
			alertify.alert("오류", "${msg}");
		</script>
		<c:remove var="msg" scope="session"/>
	</c:if>

<jsp:include page="common/myPageMenubar.jsp"/>

<div class="outer">
		<!-- 서브메뉴 타이틀 -->
      
		<!-- 서브메뉴 우측 인덱스 -->
		
		
		
		<br><br><br>
		<div class="sub-menu-area">
			<!-- 현재 페이지는 orange 로 표시 -->
			
		</div>





		<!-- inner영역에 콘텐츠 작성 -->
		<div class="inner">
			<div id="order-info">
				<table style="font-size: 16px;" width="1000px" height="200px">
					<tr>
						<th width="495px" style="padding-left: 2px; text-align: center;">
							<b style="font-weight: bold; font-size: 1.5em;"></b>개인정보보호를 위한 확인절차 단계입니다.
							<hr class="bline">
							<p style="font-size: 0.7em; color: black; margin-top: 15px;">회원정보를 수정하시려면 비밀번호를 입력해주세요.</p>
						</th>
						
					</tr>
				</table>

			</div>
		</div>

		<br><br>
		
		<div class="inner">
			<form id="updateForm" action="PwdCheckk.my" method="post">
			<input type="hidden" value="${ loginUser.userId }" name="userId">
			<table style="text-align: left;">
				<tr>
					<th>아이디</th>
					<td colspan="2">${ loginUser.userId }</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="userPwd" id="userPwd"></td>
					<td><button type="submit" class="small_btn" id="#" style="margin: 10px">확인</button></td>
                </tr>
                
			</table>
			</form>
		</div>
	</div>
	
	<div class="row">
		<div class="modal" id="modal" tabindex="-1">
			
		</div>
	</div>

<jsp:include page="../common/footer.jsp"/>

</body>
</html>