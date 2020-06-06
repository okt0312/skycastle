<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.servletContext.contextPath}/resources/bootstrap/img/core-img/favicon.ico">

    <!-- Style CSS -->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/bootstrap/style.css">

    <style>
        .classynav li
        {
            margin-right: 50px;
        }
    </style>
</head>
<body>

<!-- Preloader -->
        <div id="preloader">
            <div class="preload-content">
                <div id="original-load"></div>
            </div>
        </div>
        <!-- ##### Header Area Start ##### -->
        <header class="header-area">
    
            <!-- Top Header Area -->
            <div class="top-header">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <!-- Breaking News Area -->
                        <div class="col-12 col-sm-8">
                            <div class="breaking-news-area">
                                <div id="breakingNewsTicker" class="ticker">
                                    <ul>
                                        <li><a href="#">Hello World!</a></li>
                                        <li><a href="#">Hello Universe!</a></li>
                                        <li><a href="#">Hello Original!</a></li>
                                        <li><a href="#">Hello Earth!</a></li>
                                        <li><a href="#">Hello Colorlib!</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
    
            <!-- Logo Area -->
            <div class="logo-area text-center">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <a href="${pageContext.servletContext.contextPath}/" class="original-logo"><img src="${pageContext.servletContext.contextPath}/resources/bootstrap/img/core-img/로고2.JPG" alt="" style="height: 70px;"></a>
                        </div>
                    </div>
                </div>
            </div>
    
            <!-- Nav Area -->
            <div class="original-nav-area" id="stickyNav">
                <div class="classy-nav-container breakpoint-off">
                    <div class="container">
                        <!-- Classy Menu -->
                        <nav class="classy-navbar justify-content-between">
                                <!-- Nav Start -->
                                <div class="classynav">
                                    <ul>
                                        <li><a href="${pageContext.servletContext.contextPath}/" style='font-weight: 600;'>홈</a></li>
                                        <li><a href="seatMain.re" style="font-weight: 600;">좌석예약</a></li>
                                        <li><a href="spaceMain.re?currentPage=1" style="font-weight: 600;">공간예약</a></li>
                                        <li><a href="groupList.gr?currentPage=1&status=''" style="font-weight: 600;">소모임</a></li>
                                        <li><a href="list.cs?currentPage=1" style="font-weight: 600;">고객센터</a>
                                            <ul class="dropdown">
                                                <li><a href="list.cs?currentPage=1" style="font-weight: bold;">공지사항</a></li>
                                                <li><a href="faq.cs">FAQ</a></li>
	                                            <c:choose>
								               		<c:when test="${ empty loginUser }">         
								                        <li><a href="insertForm.cs" style="font-weight: 600;">1:1문의</a></li>
								               		</c:when>
													<c:otherwise>                
								                        <li><a href="meminsertForm.cs" style="font-weight: 600;">1:1문의</a></li>
								               		</c:otherwise>         
								               </c:choose>         
                                            </ul>
                                        </li>
                                    </ul>
                                    <ul>
                                    	<c:choose>
                                    		<c:when test="${ empty loginUser }">
                                    			<li></li>
                                    		</c:when>
                                    		<c:when test="${ loginUser.userNo eq 1 }">
		                                    	<li><a href="adminMain.ad" style="font-weight: 600;">관리페이지</a></li>
                                    		</c:when>
                                    		<c:otherwise>
                                    			<li><a href="rlist.bo?currentPage=1" style="font-weight: 600;">마이페이지</a></li>
                                    		</c:otherwise>
                                    	</c:choose>
                                    </ul>
    
                                </div>
                                <!-- Nav End -->
                          
    
                            <!-- Navbar Toggler -->
                            <div class="classy-navbar-toggler">
                                <span class="navbarToggler"><span></span><span></span><span></span></span>
                            </div>
    
                            <!-- Menu -->
                            <div class="classy-menu" id="originalNav">
                                <!-- close btn -->
                                <div class="classycloseIcon">
                                    <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                                </div>
    
    
                                  <!-- Subscribe btn -->
                            <div class="subscribe-btn">
                            	<c:choose>
                            		<c:when test="${ empty loginUser }">
		                                <a href="loginForm.me" class="btn subscribe-btn">로그인</a>
                            		</c:when>
                            		<c:otherwise>
                            			    <a href="logout.me" class="btn subscribe-btn">로그아웃</a>
                            		</c:otherwise>
                            	</c:choose>
                            </div>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- ##### Header Area End ##### -->
</body>
</html>