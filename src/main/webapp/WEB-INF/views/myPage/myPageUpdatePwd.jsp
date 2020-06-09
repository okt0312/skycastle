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
	background-color:rgb(13,13,13);
	margin: auto;
	color: #fdce07;
	
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

.info_modify .steps {
    position: relative;
    width: 420px;
    margin: 0 auto 30px auto;
    height: 24px;
    text-align: center;
    text-indent: -9999px;
}

.info_modify .step1 {
    width: 450px;
    margin: 0 auto;
    text-align: center;
}

.info_modify .step1 .t1 {
    font-size: 17px;
    color: #666;
}

p {
    line-height: 100%;
}

.info_modify .step1 .t2 {
    font-size: 21px;
    color: #222;
    margin: 20px 0 50px 0;
}

.info_modify .step1 .t2 strong {
    color: #db0436;
    font-weight: 400;
}

.info_modify .step1 label {
    margin: 0 60px;
    display: block;
}

.info_modify .step1 table {
    margin: 0 60px;
    display: block;
}


label {
    font-family: 'Nanum Barun Gothic', sans-serif;
    font-weight: 400;
}

.inputs {
    position: relative;
    display: block;
    border-bottom: 1px solid #181819;
    height: 53px;
    overflow: hidden;
}

.inputs input {
    width: 100%;
    height: 53px;
    font-size: 17px;
    color: #222;
    border: 0;
    outline: none;
}

input, textarea, select, td, th {
    vertical-align: middle;
}

.info_modify .step1 .bts {
    width: 380px;
    margin: 20px auto 0 auto;
}

.bts button.dark {
    background: #222;
	cursor:pointer;
}

.bts button {
    display: block;
    height: 56px;
    line-height: 56px;
    text-align: center;
    font-size: 19px;
    color: #fff;
}




</style>

</head>
<body style="width: 100%; height: 100%; margin:auto;">

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
			<div id="order-info">
				<table style="font-size: 16px;" width="1000px" height="200px">
					<tr>
						<th width="495px" style="padding-left: 2px; text-align: center;">
							<b style="font-weight: bold; font-size: 1.5em;"></b>개인정보보호를 위한 확인절차 단계입니다.
							<hr class="bline">
							<p style="font-size: 0.7em; color: #fdce07; margin-top: 15px;">회원정보를 수정하시려면 비밀번호를 입력해주세요.</p>
						</th>
						
					</tr>
				</table>

			</div>
		</div>

		<br><br>
		
		<div id="content" class="content">
           
            <div class="my_tozs">
                <div class="info_modify">
                    <div class="steps s01">01</div>
                    <div class="step1" style="width: 500px;">
                        <p class="t1" style="font-weight: bolder; color: #888">개인정보보호를 위한 확인절차단계입니다. </p>
                        <p class="t2" style="font-weight:bolder; color: #888">회원정보를 수정하시려면 
                            <strong style="font-weight: bolder; color: #888">비밀번호</strong>를
                            		입력해주세요.
                        </p>
                  		
						<br>
						<form id="updateForm" action="PwdCheckkk.my" method="post">
						<input type="hidden" value="${ loginUser.userId }" name="userId">
                        <table>
                            <tr class="inputs" style="text-align: left;">
                                <th style="width: 75px;">아이디 : </th>
                                <td style="padding-bottom: 5px;">${ loginUser.userId }</td>
                            </tr>
                            <tr class="inputs">
                               
                                <td><input type="password" name="userPwd" id="userPwd" placeholder="비밀번호 입력"></td>
                                

                            </tr>

                            <tr>
                                <td class="bts">
                                    <button type="submit" class="dark" id="#" style="width: 383px; margin-top: 20px;">확인</button>
                                </td>
                            </tr>

                        </table>
                        </form>
                    </div>
                </div>
               
            </div>
			
		</div>
	</div>


	<jsp:include page="../common/footer.jsp"/>

</body>
</html>