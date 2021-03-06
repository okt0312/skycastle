<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
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
    width: 450px;
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
    width: 200px;
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

ul{
    display: flex;
    align-content: flex-start;
   
    flex-wrap: wrap;
    overflow: auto;
}

.use_status_item {
    border-top: 1px solid #d5d5d5;
   
    overflow: hidden;
}

/* 페이징바 css */
.paging{
    padding:19px;
    text-align:center;
    border-top: 1px solid black;
}
.paging a{
    width:23px;
    height:23px;
    padding-top:2px;
    display:inline-block;
    vertical-align:middle;
    text-decoration: none;
    color: #333333;
}
.paging a:hover{text-decoration:underline;}
.paging .btn_arr{text-decoration:none;}
.paging .btn_arr{
    margin:0 3px;
    padding-top:0;
    border:1px solid #ddd;
    background: #fdce07;
    border-radius:30px;
    font-size: 9px;
    line-height: 20px;
}
.paging .on{
    padding-top:1px;
    height:22px;
    border-radius:30px;
    font-weight:bold;
    text-decoration: underline;
}
.paging .on:hover{text-decoration:none;}





</style>

</head>
<body style="width: 100%; height: 100%; margin:auto;">

<jsp:include page="common/myPageMenubar.jsp"/>
	
	<div class="outer">
        <!-- 서브메뉴 타이틀 -->
        
      	
		
		
		<!-- inner영역에 콘텐츠 작성 -->
		<div class="container">

               <div class="default_tabs t3">

                    <ul>

                        <li>
                            <a href="rlist.bo?currentPage=1" class="">공간예약</a>
                        </li>

                        <li>
                            <a href="seat.my?currentPage=1" class="active">좌석예약</a>
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
            
            	<c:forEach items="${ slist }" var="s"> 
                <li class="use_status_item  clr">
                    <a href="">
                    	
                     	<span class="col1 thumb align_center" style="padding-top: 50px;">
                            <p style="font-size: larger; margin-bottom: 5px; color:purple;"> 좌석번호 </p>
                            <p style="font-size:50px; font-weight: 900; margin-top: 0px; color:purple;">${ s.seatNo }</p>
                        </span>
                        <fmt:parseDate var="dateString" value="${s.usedDate}" pattern="yyyy-MM-dd HH:mm:ss" /> 
                        <span class="col2 room_info">
                              <p class="t1"><fmt:formatDate value="${dateString}" pattern="yyyy-MM-dd" /></p>
                              <%-- <p class="t1">${ s.usedDate }</p> --%>
                              <p class="t2">${ s.startTime } ~ ${ s.endTime }</p>
                              <p class="t3">지점문의: 010-8738-3290</p>
                        </span>
                        <span class="col3 room_type align_center">
                            <strong class="reserve_type">

                            </strong>
                        </span>
                    </a>
                    
                    
						 <c:set var="current" value="<%= new java.util.Date() %>"/>									
				  		 <fmt:formatDate var="date" value='${current }' type='date'  pattern='yyyy-MM-dd'/>
                       	 <fmt:formatDate var="currentHours" value='${current }' type='both' pattern='HH'/>
                        <c:set var="endTime" value="${s.endTime}"/>		
                        <c:set var="endHourse" value="${fn:substring(endTime,0,2)}"/>
                        <c:set var="usedDate" value="${s.usedDate}"/>	
                        <c:set var="usedDay" value="${fn:substring(s.usedDate,0,10)}"/>
                       
                       
                       
                        <span class="col4 align_center" style="padding-top:90px;">
                            <span class="reserve_status" style="float: right;">
                               	 <c:choose>
                               		<c:when test="${ (usedDay eq date and endHourse < currentHours) or usedDay < date}">                        
		                               	이용완료
                               		</c:when>
                               		<c:otherwise>
                               			이용예정
                               		</c:otherwise>
                            	</c:choose>
                            </span>
                        </span>
                </li>
                </c:forEach>  
            </ul>

        </div>

        
     

       <!-- 페이징바 -->
	
		<div class="paging" align="center" style="padding-top: 20px;">
        
        <c:choose>
        	<c:when test="${ pi.currentPage eq 1 }">          
            	<a href="#" class="btn_arr prev"><span class="hide">Prev</span></a>
            </c:when>
            <c:otherwise>	  
            	<a href="seat.my?currentPage=${ pi.currentPage-1 }" class="btn_arr prev"><span class="hide">Prev</span></a>
            </c:otherwise>	
        </c:choose>    
            
        <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
        	<c:choose>
        		<c:when test="${ p eq pi.currentPage }">
            		<a href="#" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
            	</c:when>
            	<c:otherwise>
            		<a href="seat.my?currentPage=${ p }" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
            	</c:otherwise>
            </c:choose>
        </c:forEach>    			
         <!--    <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a> -->
         <c:choose>   
         	<c:when test="${ pi.currentPage eq pi.maxPage }">
            	<a href="#" class="btn_arr next"><span class="hide">Next</span></a>  
            </c:when>
            <c:otherwise>
             	<a href="seat.my?currentPage=${ pi.currentPage+1 }" class="btn_arr next"><span class="hide">Next</span></a>  
            </c:otherwise> 	
         </c:choose>               
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
        
	
	
  
   <script>

		
		<!-- 현재 시간을 가져옴  -->
		var day = new Date().toISOString().substring(0, 10)
		var Hours = new Date().getHours();
		
		
		

	
	</script>
	


</body>
</html>