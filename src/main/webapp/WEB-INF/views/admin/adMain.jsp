<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SKY CASTLE Admin Page</title>

<!-- FullCalendar -->
<link
	href='${pageContext.servletContext.contextPath}/resources/css/fullcalendar/core/main.css'
	rel='stylesheet' />
<link
	href='${pageContext.servletContext.contextPath}/resources/css/fullcalendar/list/main.css'
	rel='stylesheet' />

<script
	src='${pageContext.servletContext.contextPath}/resources/js/fullcalendar/core/main.js'></script>
<script
	src='${pageContext.servletContext.contextPath}/resources/js/fullcalendar/list/main.js'></script>
<script>
	<jsp:useBean id="toDay" class="java.util.Date" />
	<fmt:formatDate value='${toDay}' pattern='yyyy-MM-dd' var="nowDate"/>
  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'list' ],

      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'listDay,listWeek,dayGridMonth'
      },

      // customize the button names,
      // otherwise they'd all just say "list"
      views: {
        listDay: { buttonText: 'list day' },
        listWeek: { buttonText: 'list week' }
      },

      defaultView: 'listDay',
      defaultDate: '${nowDate}',
      navLinks: true, // can click day/week names to navigate views
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
          <c:forEach var="cList" items="${ calList }" varStatus="i">
			<c:choose>
				<c:when test="${ i.last }">
					{
			       	   title: '${ cList.spaceName }\n${ cList.userId }(${ cList.userName })',
			           start: '${ cList.usedDate } ${ cList.startTime }',
			           end: '${ cList.usedDate } ${ cList.endTime }'
			         }
				</c:when>
				<c:otherwise>
			    	{
			       	   title: '${ cList.spaceName }\n${ cList.userId }(${ cList.userName })',
			           start: '${ cList.usedDate } ${ cList.startTime }',
			           end: '${ cList.usedDate } ${ cList.endTime }'
			         },
				</c:otherwise>
			</c:choose>
 		 </c:forEach>
      ]
    });

    calendar.render();
  });
  
</script>
</head>
<body>
	<div id="layoutSidenav">
		<jsp:include page="common/adminSidebar.jsp" />
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid" style="">
					<h1 class="mt-4">Dashboard</h1>
					<!-- 알람  -->
					<div class="row" style="margin: 0 auto;">
						<!-- 신규예약 -->
						<div class="col-xl-3-custom col-md-6">
							<div class="card bg-primary text-white mb-4">
								<div class="card-body">
									<div style="display: inline-block;">새로운 결제</div>
									<div
										style="display: inline-block; float: right; font-size: large;">${ c.reservation }</div>
								</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<a class="small text-white stretched-link" href="reservation.ad">예약 확인</a>
									<div class="small text-white">
										<i class="fas fa-angle-right"></i>
									</div>
								</div>
							</div>
						</div>
						<!-- 소모임 개설 -->
						<div class="col-xl-3-custom col-md-6">
							<div class="card bg-success text-white mb-4">
								<div class="card-body">
									<div style="display: inline-block;">소모임 개설 신청</div>
									<div
										style="display: inline-block; float: right; font-size: large;">${ c.groups }</div>
								</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<a class="small text-white stretched-link" href="groupConfirm.ad">소모임 관리</a>
									<div class="small text-white">
										<i class="fas fa-angle-right"></i>
									</div>
								</div>
							</div>
						</div>
						<!-- 잔여 좌석 -->
						<div class="col-xl-3-custom col-md-6">
							<div class="card bg-primary text-white mb-4">
								<div class="card-body"
									style="background-color: rgb(239, 160, 111);">
									<div style="display: inline-block;">잔여 좌석</div>
									<div
										style="display: inline-block; float: right; font-size: large;">${ c.seat }</div>
								</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between"
									style="background-color: rgb(239, 160, 111);">
									<a class="small text-white stretched-link" href="seatMgmt.ad">좌석 현황</a>
									<div class="small text-white">
										<i class="fas fa-angle-right"></i>
									</div>
								</div>
							</div>
						</div>
						<!-- 사용중인 공간 -->
						<div class="col-xl-3-custom col-md-6">
							<div class="card bg-primary text-white mb-4">
								<div class="card-body"
									style="background-color: rgb(158, 158, 158);">
									<div style="display: inline-block;">사용중인 공간</div>
									<div
										style="display: inline-block; float: right; font-size: large;">${ c.space }</div>
								</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between"
									style="background-color: rgb(158, 158, 158);">
									<a class="small text-white stretched-link" href="reservation.ad?selNo=2">공간 현황</a>
									<div class="small text-white">
										<i class="fas fa-angle-right"></i>
									</div>
								</div>
							</div>
						</div>
						<!-- 미확인 문의 -->
						<div class="col-xl-3-custom col-md-6">
							<div class="card bg-primary text-white mb-4">
								<div class="card-body"
									style="background-color: rgb(142, 68, 173);">
									<div style="display: inline-block;">미확인 문의</div>
									<div
										style="display: inline-block; float: right; font-size: large;">${ c.qna }</div>
								</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between"
									style="background-color: rgb(142, 68, 173);">
									<a class="small text-white stretched-link" href="adQnaForm.ad">문의 관리</a>
									<div class="small text-white">
										<i class="fas fa-angle-right"></i>
									</div>
								</div>
							</div>
						</div>
						<!-- 새로운 신고접수 -->
						<div class="col-xl-3-custom col-md-6">
							<div class="card bg-primary text-white mb-4">
								<div class="card-body"
									style="background-color: rgb(250, 120, 192);">
									<div style="display: inline-block;">새로운 신고접수</div>
									<div
										style="display: inline-block; float: right; font-size: large;">${ c.report }</div>
								</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between"
									style="background-color: rgb(250, 120, 192);">
									<a class="small text-white stretched-link" href="reportMgmt.ad">신고 확인</a>
									<div class="small text-white">
										<i class="fas fa-angle-right"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id='calendar' style="width: 90%; margin: 70px auto 0"></div>
			</main>

			<jsp:include page="common/adFooter.jsp" />

		</div>
	</div>
</body>
</html>