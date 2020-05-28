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
		

.container {
  width: 100%;
  text-align: center;
  padding-top: 100px;

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
.use_status_list {
    border-top: 2px solid #222;
}
.use_status_item:first-child {
    border-top: none;
}
ol, ul, li {
    list-style: none;
}
.use_status_item a>span.col1 {
    width: 230px;
}
.use_status_item a>span {
    float: left;
    padding: 25px 15px;
}
element.style {
    width: 200px;
    height: 126px;
}
.use_status_item a>span.col2 {
    width: 500px;
    padding-top: 50px;
    font-size: 20px;
    font-weight: bolder;
    color: black;
}
.use_status .tb1 .room_info .t1 {
    font-size: 19px;
    color: #222;
    margin-bottom: 10px;
}
.use_status .tb1 .room_info .t3 {
    font-size: 13px;
    color: #666;
}
p {
    line-height: 100%;
}
.use_status_item a>span.col3 {
    width: 500px;
    padding-top: 78px;
}
.align_center {
    text-align: center !important;
}
.use_status .tb1 .room_type .reserve_type {
    font-weight: 400;
    font-size: 17px;
    color: #222;
    margin-bottom: 10px;
    display: block;
}
.use_status_item span.col4 {
    float: left;
    width: 138px;
    padding-top: 115px;
}
.use_status .tb1 .reserve_status {
    font-weight: 400;
    font-size: 17px;
    color: #dd0330;
    /* margin-bottom: 10px; */
    display: block;
}
.tips {
    margin-top: 20px;
    float: left;
}
.tips_title {
    margin-bottom: 20px;
    font-size: 25px;
    font-weight: bolder;
}
.tips_list {
    clear: both;
  
}
.tips_item {
    padding-left: 15px;
    font-size: 15px;
    color: #666;
    line-height: 170%;
    position: relative;
    
    
}
.paging {
    border-top: 1px solid black;
}
.paging {
    text-align: center;
    overflow: hidden;
    font-size: 0;
    margin-top: 20px;
    padding-top: 20px;
}
.reserve_status {
    font-weight: bolder;
    font-size: 20px;
    color: #dd0330;
    /* margin-bottom: 10px; */
    display: block;
    
}
.default_tabs {
    max-width: 1700px;
    margin: 0 auto 70px;
    border-left: 1px solid #d5d5d5;
}
.default_tabs ul {
    overflow: hidden;
    padding-left: 0px;
}
.default_tabs.t3 li {
    width: 50%;
}
.default_tabs li {
    float: left;
}
.default_tabs a.active {
    border: 1px solid #222;
    background: #222;
    color: #fff;
}
.default_tabs a {
    display: block;
    height: 54px;
    line-height: 57px;
    text-align: center;
    background: #f8f8f8;
    font-size: 17px;
    color: #222;
    border: 1px solid #d5d5d5;
    border-left: 0;
}
a:link, a:visited, a:hover, a:active, a:focus {
    text-decoration: none;
}
.use_status_comment {
    margin-bottom: 45px;
    font-size: 14px;
    color: #888;
    padding: 20px;
    line-height: 21px;
}
.use_status_comment li {
    padding-left: 10px;
    position: relative;
}
.use_status_comment li:after {
    content: '*';
    position: absolute;
    left: 0;
    top: 0;
}




</style>

</head>
<body>

<jsp:include page="common/myPageMenubar.jsp"/>
	
	<div class="outer">
        <!-- 서브메뉴 타이틀 -->
        
      
		

		<!-- inner영역에 콘텐츠 작성 -->
		<div class="container">

               <div class="default_tabs t3">

                    <ul>

                        <li>
                            <a href="myPage.bo" class="">공간예약</a>
                        </li>

                        <li>
                            <a href="seat.bo" class="active">좌석예약</a>
                        </li>

                    </ul>


               </div>
		

        <ul class="use_status_comment">
            <li style="float: left;">
                지점 방문 및 전화로 토즈 통합 아이디가 아닌 이름과 연락처만으로 예약하셨거나 이용하신 내역은 개인정보보호를 위해 리스트에 보이지 않을 수 있습니다.
               
            </li>
        </ul>

       

        <div>

            <ul class="use_status_list">
                <li class="use_status_item  clr">
                    <a href="">
                        <span class="col1 thumb align_center">
                            <img href="">
                        </span>
                        <span class="col2 room_info">
                                   <p class="t1"></p>
                                   <p class="t2"></p>
                                   <p class="t3"></p>
                        </span>
                        <span class="col3 room_type align_center">
                            <strong class="reserve_type">

                            </strong>
                        </span>
                    </a>

                        <span class="col4 align_center">
                            <span class="reserve_status" style="float: right;">
                               
                            </span>
                        </span>
                </li>
            </ul>

        </div>

        <br><br><br><br><br><br><br><br><br><br>
     

       <!-- 페이징바 -->

       <div class="paging">
        
       </div>

       <!-- 페이징바 끝 -->

		<br><br><br>
		

		<div class="tips">
            <p class="tips_title" style="float: left;">꼭 확인하세요!</p>

            <ul class="tips_list" style="padding-left: 0px;">
                <li class="tips_item" style="float: left; padding-left: 0px;">
                    * 통합회원 계정 없이 지점 방문 및 전화로 예약하거나 이용하신 내역은 리스트에 보이지 않을 수 있습니다. 
                </li><br>
                <li class="tips_item" style="float: left; padding-left: 0px;">
                    * 이용 중, 기간변경이나 자리이동, 환불 등은 이용 지점으로 문의해주세요 
                </li><br>
                <li class="tips_item" style="float: left; padding-left: 0px;"> 
                    * 사전 예약과 무료체험의 경우 신청완료 및 취소 내역만 확인하실 수 있습니다. 
                </li>
            </ul>
        </div>

		</div>

        </div>


        <br><br><br><br><br><br><br><br><br><br>

       <jsp:include page="../common/footer.jsp"/>
        

               

	
		
	


</body>
</html>