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

.inputs input {
    width: 100%;
    height: 53px;
    font-size: 23px;
    color: #222;
    border: 0;
    outline: none;
}

.inputs {
    position: relative;
    display: block;
    border-bottom: 1px solid #181819;
    height: 53px;
    overflow: hidden;
}








</style>

</head>
<body>

<jsp:include page="common/myPageMenubar.jsp"/>

<div class="outer">
        <!-- 서브메뉴 타이틀 -->
        
        <br>
		
	
		
		<hr>
		
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

		<table>
			<tr>
				<td></td>
				<td>
					
					<span class="inputs">

					<input type="password" size="80" placeholder="현재비밀번호" style="font-size: 10px;">
				
					</span>
				
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<span class="inputs">
					<input type="password" size="80" placeholder="새 비밀번호(6자리 이상 영문,숫자,특수문자를 사용"  style="font-size: 10px;">
				   </span>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<span class="inputs">
					<input type="password" size="80" placeholder="비밀번호 재확인"  style="font-size: 10px;">
				    </span>
				</td>
				
			</tr>
		</table>
			
		




			

		</div>
				
			
				

               

         

					
			
            
			
			<br><br><br>

			<div id="btns">
				
                <button type="submit" class="middle_btn" id="mbtn">변경</button>

			</div>
			

			<table>
				<tr>
					<th>
				    <a href="" data-toggle="modal" data-target="#myModal" style="color: #888;"> <span
							style="text-decoration: none; font-size: 15px; padding-left: 10px;">회원탈퇴</span></a>
					</th>
				</tr>
			</table>
		</div>
		</div>
	
		
		<jsp:include page="../common/footer.jsp"/>

</body>
</html>