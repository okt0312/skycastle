<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.servletContext.contextPath}/resources/css/styles.css" rel="stylesheet" />
<link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
	    <a class="navbar-brand" href="${pageContext.servletContext.contextPath}/"><b>SKY CASTLE</b></a>
	    
	    <!-- 상단 검색바 숨깁니다 -->
	    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
	        <div class="input-group">
	            <input class="form-control" type="hidden" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
	            <div class="input-group-append">
	                <!--검색 버튼  <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button> -->
	            </div>
	        </div>
	    </form>
	    
	    <!-- 상단 오른쪽 사용자 이모티콘-->
	    <ul class="navbar-nav ml-auto ml-md-0">
	        <li class="nav-item dropdown">
	            <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
	            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
	                <a class="dropdown-item" href="#">Home</a>
	                <div class="dropdown-divider"></div>
	                <a class="dropdown-item" href="login.html">Logout</a>
	            </div>
	        </li>
	    </ul>
	</nav>
	
	<!-- 사이드바 시작-->
	    <div id="layoutSidenav_nav">
	        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
	            <div class="sb-sidenav-menu">
	                <div class="nav">
	                    
	                    <a class="nav-link" href="adminMain.ad">
	                        <div class="sb-nav-link-icon"><i class="fas fa-home"></i></div>
	                        HOME</a>
	                        
	                    <!-- <div class="sb-sidenav-menu-heading">매뉴바 분류바</div> -->
	
	                    <!-- 회원관리-->
	                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                        <div class="sb-nav-link-icon"><i class="fas fa-user"></i></div>
                        	회원 관리
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>
                        <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="memberList.ad">회원 조회</a>
                                <a class="nav-link" href="gradeMgmt.ad">등급 관리</a>
                                <a class="nav-link" href="reportMgmt.ad">신고 관리</a>
                                <a class="nav-link" href="blackListMgmt.ad">블랙리스트 관리</a>
                            </nav>
                        </div>
	                    <!-- 소모임관리 -->
	                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseMeeting" aria-expanded="false" aria-controls="collapseLayouts">
                        <div class="sb-nav-link-icon"><i class="fas fa-users"></i></div>
             	          	 소모임 관리
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>
                        <div class="collapse" id="collapseMeeting" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="groupList.ad">소모임 조회</a>
                                <a class="nav-link" href="layout-sidenav-light.html">소모임 개설 관리</a>
                                <a class="nav-link" href="layout-sidenav-light.html">소모임 게시글 관리</a> 
                            </nav>
                        </div>
	                    <!-- 공간관리 -->
	                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSpace" aria-expanded="false" aria-controls="collapseLayouts">
	                    <div class="sb-nav-link-icon"><i class="far fa-calendar-check"></i></div>
	               		     공간관리
	                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>
                        <div class="collapse" id="collapseSpace" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="layout-static.html">공간 현황</a>
                                <a class="nav-link" href="layout-sidenav-light.html">좌석 현황</a>
                                <a class="nav-link" href="layout-sidenav-light.html">예역 현황</a> 
                            </nav>
                        </div>
	                    <!-- 결제관리-->
	                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePayment" aria-expanded="false" aria-controls="collapseLayouts">
	                    <div class="sb-nav-link-icon"><i class="fas fa-dollar-sign"></i></div>
	               		     결제 관리
	                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>
                        <div class="collapse" id="collapsePayment" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="layout-static.html">결제 현황</a>
                            </nav>
                        </div>
	                    <!-- 게시판관리 -->
	                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBoard" aria-expanded="false" aria-controls="collapseLayouts">
	                    <div class="sb-nav-link-icon"><i class="fas fa-list"></i></div>
	           		        게시판 관리
	                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>
                        <div class="collapse" id="collapseBoard" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="layout-static.html">공지사항 관리</a>
                                <a class="nav-link" href="layout-sidenav-light.html">이벤트 관리</a>
                                <a class="nav-link" href="layout-sidenav-light.html">1:1문의 관리</a> 
                            </nav>
                        </div>
	                    <!-- 매출관리 -->
	                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSales" aria-expanded="false" aria-controls="collapseLayouts">
	                    <div class="sb-nav-link-icon"><i class="fas fa-chart-line"></i></div>
	                	    매출 관리
	                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div></a>
                        <div class="collapse" id="collapseSales" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="layout-static.html">매출 조회</a> 
                            </nav>
                        </div>
	                </div>
	            </div> 
	        </nav>
	    </div>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="${pageContext.servletContext.contextPath}/resources/js/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="${pageContext.servletContext.contextPath}/resources/js/demo/chart-area-demo.js"></script>
	<script src="${pageContext.servletContext.contextPath}/resources/js/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
	<script src="${pageContext.servletContext.contextPath}/resources/js/demo/datatables-demo.js"></script>
</body>
</html>