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
	height: 260px;
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
/* 중간버튼 스타일 */
#middleTable td {
	margin-left: 10px;
}

/* 내용 테이블 */
.aa {
	margin: auto;
	margin-left: 25px;
	margin-bottom: 30px;
}
</style>
</head>
<body style="width: 100%; height: 100%; margin:auto;">

<jsp:include page="common/myPageMenubar.jsp"/>

<div class="outer">
        <!-- 서브메뉴 타이틀 -->
        
		
		<br><br><br><br><br><br>
		<!-- 서브메뉴 우측 인덱스 -->
		
		<div class="sub-menu-area">
			<!-- 현재 페이지는 orange 로 표시 -->
			
		</div>
		
		
		
		

		<!-- inner영역에 콘텐츠 작성 -->
		<div class="inner">
			<div id="order-info">
				<img src="resources/images/withdrawal.jpg" style="height: 100%; width: 100%; object-fit: cover;">
			</div>
  			
        
        <br><br>

        <h3 style="text-align: center;">SKY CASTLE  통합 멤버쉽  회원 탈퇴를  하시면  아래의 정보와  혜택은 모두 삭제되며, <br>
            삭제된 정보는 복구가 불가하오니 신중히 결정해 주십시오.</h3>

        <br><br><br><br><br>

        <h2 style="text-align: center;">Q. 서비스에 불편함이 있으셨나요?</h2> 
        <h4 style="text-align: center;">탈퇴 이유를 남겨주시면 다시 SKY CASTLE를 찾아주셨을 때 좀 더 만족스러운 서비스를 제공할 수 있도록 노력하겠습니다.</h4>
            
		
			
		
			<form id="postForm" action="delete.me" method="post">
			<input type="hidden" value="${ loginUser.userNo }" name="userNo">
			<table id="middleTable" style="margin: auto;">
                
				<tr>
					
					<td style="padding-top: 3%; width: 100%; padding-right: 30px;" colspan="3">
						<textarea class="aa" name="leaveReason" id="leaveReason" cols="100" rows="10"
							style="resize:none;"></textarea>
					</td>
				</tr>
			</table>
			
			<div id="btns">
				<button type="reset" style="background: white; color: black; border: 1px solid darkgray"
					class="middle_btn" id="cbtn">취소</button>
                <button type="submit" class="middle_btn" id="mbtn">탈퇴</button>
			</div>
			</form>
			
			
		</div>
		
		</div>
		
		
		<!-- <form id="postForm" action="delete.me" method="post">
			<input type="hidden" name="userId" value="${ loginUser.userId }">
		 </form>
		-->
		
		
	<jsp:include page="../common/footer.jsp"/>

</body>
</html>