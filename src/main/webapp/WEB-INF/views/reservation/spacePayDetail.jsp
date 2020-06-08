<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>예약 세부페이지</title>
<style>
div {
	/* border: 1px solid red; */
	box-sizing: border-box;
}

.content {
	max-width: 1700px;
	margin: auto;
	margin-bottom: 200px;
}

.content_1 {
	max-width: 1200px;
	margin: auto;
}

#title {
	width: 100%;
	border-top: 2px solid gray;
	border-bottom: 2px solid gray;
	height: 70px;
	font-size: 20px;
	font-weight: bold;
	line-height: 55px;
}

#detail div {
	float: left;
}
</style>

<!-- 좌석 표 css-->
<style type="text/css">
.Style1 {
	border: 1px;
	border-style: solid;
	color: black;
	background-color: lightgray;
	font-weight: bold;
}

.Style9 {
	border: 1px;
	border-style: solid;
	color: black;
	background-color: lightgray;
	font-weight: bold;
}
</style>

<style>
.sky_btn1 /* 확인 버튼 */ {
	width: 450px;
	height: 40px;
	text-align: center;
	font-size: 25px;
	font-weight: bold;
	border-radius: 5px;
	padding: 10px;
	cursor: pointer;
	background: #fdce07;
	color: #000000;
	border: 0;
	line-height: 1px;
	color: white;
}

#payTable {
	background-color: lightgray;
	width: 100%;
	height: 80spx;
	font-size: 25px;
	text-align: center;
}

#space {
	width: 600px;
	height: 500px;
}

#payD {
	width: 600px;
}
</style>


</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
	<div class="content">
		<div class="content_1">
			<div style="height: 50px;"></div>
			<div id="title">&nbsp;&nbsp;&nbsp; 예약하기</div>

			<br>
			<p style="font-size: 20px; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp선택공간
				세부사항</p>
			<div id="seat">
				<div style="font-weight: bold; font-size: 18px;">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span>${reservation.spaceName }</span>
				</div>
				<div>
					<center>
						<img id="space"
							src="${pageContext.servletContext.contextPath}/resources/uploadFiles/space/${reservation.changeName}">
					</center>
				</div>
			</div>
			<br>
			<br>
			<center>
				<div id="payD">
					<div>
						<div align="left">
							<span>선택사항</span>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<span>사용쿠폰</span>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>등급할인</span>
						</div>
						<br>
						<div id="detail">
							<div>
								<c:forEach var="i" begin="0" end="${fn:length(usedDate)}">
									<p>${usedDate[i]} &nbsp;&nbsp;${startTime[i]}~${endTime[i]}</p>
								</c:forEach>
							</div>
							<div>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<sapn style="font-size: 15px;">${coupon.couponName}</sapn>
							</div>
							<div>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<sapn style="font-size: 15px;">${grade.gradeName }</sapn>
							</div>
						</div>
					</div>
					<br clear="both">

					<table id="payTable">
						<tr style="font-size: 10px;">
							<td colspan="3"></td>
							<td>쿠폰할인</td>
							<td></td>
							<td>등급할인</td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>최종결제금액 :</td>
							<td><span id="total">${reservation.totalCost}</span>원</td>
							<td>-</td>
							<td><span id="couponDiscount"></span>원</td>
							<td>-</td>
							<td><span id="gradeDiscount"></span>원</td>
							<td>=</td>
							<td><span id="totalCost"></span>원</td>
						</tr>
					</table>

					<br>
					<button class="sky_btn1" id="pay">바로 결제 하기</button>
				</div>
			</center>
		</div>
	</div>
	<form action="reservSpaceInsert.re" method="post" id="reservSpaceInsert">
		<input type="hidden" name="userNo" value="${reservation.userNo}">
		<input type="hidden" name="refNo" value="${reservation.refNo}">
		<input type="hidden" name="couponCode"value="${reservation.couponCode}"> 
		<input type="hidden" id="finalTotal" name="totalCost"> 
		<input type="hidden" name="gradeDiscount" value="${grade.discount}"> 
		<input type="hidden" name="usedDate" value="${reservation.usedDate}">
		<input type="hidden" name="startTime" value="${reservation.startTime}">
		<input type="hidden" name="endTime" value="${reservation.endTime}">

	</form>
	<jsp:include page="../common/footer.jsp" />
</body>

<script>
		$(function(){
			var total = $("#total").text();
			var couponDisCountRate = ${coupon.discountRate};
			var gradeDiscountRate = ${grade.discount};
			
			var couponDisCount = $("#couponDiscount").text(total * couponDisCountRate).text();
			var gradeDiscount = $("#gradeDiscount").text(total *  gradeDiscountRate).text();
			
			
			$("#totalCost").text(total-couponDisCount-gradeDiscount);
			$("#finalTotal").val($("#totalCost").text());
			//console.log(gradeDiscount);
			//console.log(couponDisCount);
			
				
			 
	            
	          $("#pay").click(function(){
	        	  $("#reservSpaceInsert").submit();
	          });  
	            
		});
	</script>
</html>