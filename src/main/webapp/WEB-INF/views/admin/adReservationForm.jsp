<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SKY CASTLE Admin Page</title>
</head>
<body>
	<c:if test="${ !empty msg }">
		<script>
			alertify.alert("${msg}");
		</script>
		<c:remove var="msg" scope="session" />
	</c:if>

	<div id="layoutSidenav">
		<jsp:include page="common/adminSidebar.jsp" />
		<div id="layoutSidenav_content">

			<!--시작-->

			<main>
				<div class="container-fluid" style="padding-right: 10px;">
					<h1 class="mt-4">
						<b>회원 조회</b>
					</h1>
					<!--작은 회색 네모-->
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.html" style="color: black"><b>HOME</b></a></li>
						<li class="breadcrumb-item active"><a style="color: black">회원
								조회</a></li>
					</ol>

					<!-- 회원조회 테이블 -->

					<div class="card-body">
						<div class="card mb-4">
							<div class="card-header" style="border-bottom: white; background-color: white;">
								<b style="font-size: x-large;">회원목록</b>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<div>
										<!-- 테이블이 부트스트랩이라 넣을 방법을 모르겠습니다..ㅜㅜ-->
										<div id="selectBox">
											<select id="selNo" name="selNo">
												<option value="0">전체보기</option>
												<option value="1">좌석</option>
												<option value="2">공간</option>
											</select>
										</div>
									</div>
									<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center;">
										<thead>
											<tr>
												<th>예약번호</th>
												<th>회원 아이디</th>
												<th>카테고리</th>
												<th>좌석번호</th>
												<th>사용쿠폰</th>
												<th>총결제금액</th>
												<th>결제일</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="m" items="${ list }">
												<tr>
													<td>${ m.bookNo }</td>
													<td>${ m.userId }</td>
													<c:choose>
														<c:when test="${ m.category eq 1 }">
															<td>좌석</td>
														</c:when>
														<c:otherwise>
															<td>공간</td>
														</c:otherwise>
													</c:choose>
													<c:choose>
														<c:when test="${ m.category eq 1 }">
															<td>${ m.refNo }번</td>
														</c:when>
														<c:otherwise>
															<td>${ m.spaceName }</td>
														</c:otherwise>
													</c:choose>
													<c:choose>
														<c:when test="${ empty m.couponName }">
															<td>쿠폰 사용 안함</td>
														</c:when>
														<c:otherwise>
															<td>${ m.couponName }</td>
														</c:otherwise>
													</c:choose>
													<td>${ m.totalCost }원</td>
													<td>${ m.bookEnrollDate }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
			</main>
			<jsp:include page="common/adFooter.jsp" />
		</div>
	</div>
</body>
</html>