<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

input[type=password]{
	font-family: 'inherit';
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
    width: 320px;
	height: 50px;
	border: 1px solid rgb(76, 60, 60);
	background-color:#fdce07;
	margin: auto;
	color: black
}

.bline {
	background-color: skyblue;
	height: 2px;
	border: 0px;
	width: 300px;
	margin-left: 0;
	margin: 50px;
	margin-bottom: 12px;
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

/* input{ border-radius: 5px; width: 150px;} */
th {
	height: 55px;
	width: 200px;
}

table {
	font-size: 18px;
	margin: auto;
}

#doubleCheck {
	margin-left: 20px;
}

/* 작은버튼 스타일 */

/* 작은버튼 스타일 */

/* 중간버튼 스타일 */
#btns {
	text-align: center;
}

.middle_btn {
	/* display: block; */
	height: 40px;
	width: 270px;
	margin: 0 auto;
	font-size: 15px;
	font-weight: bolder;
	color:black;
	background-color:#fdce07;
	border: 0;
	border-radius: 5px;
	margin-left: 10px;
}

.faqBtns {
			margin-left: 5px;
			padding-top: 20px;
			padding-bottom: 20px;
           
		}

        .faqBtns button {
			background-color: lightgray;
			border: none;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 14px;
			margin: 4px 2px;
			cursor: pointer;
			width: 270px;
			height: 40px;
		}

        .faqBtns button.active {
			background-color: rgb(76, 60, 60);
			color: white;
			border: 1px solid rgb(76, 60, 60);
		}
		

.inner {
  width: 100%;
  text-align: center;

}

.faqBtns {
    display: inline-block;
    width: 50%;

}

.sky_btn1 /* 확인 버튼 */
{
	width: 200px;
	height: 40px;
	text-align: center;
	font-size: 15px;
	font-weight: bold;
	border-radius: 5px;
	padding: 10px;
	cursor: pointer;
	background: #fdce07;
	color: #000000;
	border: 0;
}

.sky_btn2 /* 확인 버튼 */
{
	width: 130px;
	height: 30px;
	text-align: center;
	font-size: 15px;
	font-weight: bold;
	border-radius: 5px;
	
	cursor: pointer;
	background: #fdce07;
	color: #000000;
	border: 0;
}

.sky_btn3 /* 확인 버튼 */
{
	width: 130px;
	height: 30px;
	text-align: center;
	font-size: 15px;
	font-weight: bold;
	border-radius: 5px;
	
	cursor: pointer;
	background: #fdce07;
	color: #000000;
	border: 0;
}






/* 중간버튼 스타일 */

/* 모달 스타일 시작*/

/* 모달 스타일 끝*/
</style>
</head>
<body>

<jsp:include page="common/myPageMenubar.jsp"/>

<div class="outer">
        <!-- 서브메뉴 타이틀 -->
        
      
		<br><br><br>
		<!-- 서브메뉴 우측 인덱스 -->
		
		<div class="sub-menu-area">
			<!-- 현재 페이지는 orange 로 표시 -->
		
		</div>

		<!-- inner영역에 콘텐츠 작성 -->
		<div class="inner">
			
               <div class="faqBtns">

                <button id="active1" style="background-color:#fdce07;">회원정보변경</button>
				<button id="active2">비밀번호변경</button>


               </div>
		

		<br><br>
			
            <form action="update.me" method="post" onsubmit="">
            <input type="hidden" value="${ loginUser.userId }" name="userId">
            <input type="hidden" value="${ loginUser.userName }" name="userName">
            <input type="hidden" value="${ loginUser.birthday }" name="birthday">
			<table style="text-align: left;">
				<tr>
					<th>아이디</th>
					<td colspan="2" style="width: 430px;">${ loginUser.userId }</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>${ loginUser.userName}</td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td>${ loginUser.birthday}</td>
				</tr>
				</table>
				
				
				
				
				<table style="text-align: left; padding-right: 135px">
				
				<tr>
					<th>휴대전화</th>
					<td colspan="2">
						<select id="txtMobile1" name="phone1" style="height:25px; width:80px;">
							<option value="010">010</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="019">019</option>
							<option value="011">011</option>
						</select> - 
						<input type="text" name="phone2" id="pel1" size="10" value="" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"> - 
						<input type="text" name="phone3" id="pel2" size="10" value="" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
					</td>
					
				</tr>
				

              
			</table>
			
			<br><br><br>

			<div id="btns">
				
                <button type="submit" class="sky_btn1" id="mbtn">변경</button>

			</div>
			</form>

			<table>
				<tr>
					<th>
					<a href="" data-toggle="modal" data-target="#myModal" style="color: #888; text-decoration: none;"> 
						<span style="text-decoration: none; font-size: 15px;">회원탈퇴</span>
					</a>
					</th>
				</tr>
			</table>
		</div>
		</div>
	
			<jsp:include page="../common/footer.jsp"/>
		

</body>
</html>