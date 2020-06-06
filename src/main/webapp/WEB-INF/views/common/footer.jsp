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
</head>
<body>
 <!-- ##### Footer Area Start ##### -->
        <footer class="footer-area text-center">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                       
                        <!-- Footer Nav Area -->
                        <div class="classy-nav-container breakpoint-off">
                            <!-- Classy Menu -->
                            <nav class="classy-navbar justify-content-center">
    
                                <!-- Navbar Toggler -->
                                <div class="classy-navbar-toggler">
                                    <span class="navbarToggler"><span></span><span></span><span></span></span>
                                </div>
    
                                <!-- Menu -->
                                <div class="classy-menu">
    
                                    <!-- close btn -->
                                    <div class="classycloseIcon">
                                        <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                                    </div>
    
                                    <!-- Nav Start -->
                                    <div class="classynav">
                                        <ul>
                                            <li><a href="${pageContext.servletContext.contextPath}/">홈</a></li>
                                            <li><a href="seatMain.re">좌석예약</a></li>
                                            <li><a href="spaceMain.re?currentPage=1">공간예약</a></li>
                                            <li><a href="groupList.gr?currentPage=1&status=''">소모임</a></li>
                                            <li><a href="list.cs?currentPage=1">고객센터</a></li>
                                        </ul>
                                    </div>
                                    <!-- Nav End -->
                                </div>
                            </nav>
                        </div>
                        
                    </div>
                </div>
            </div>
    
       <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
    Copyright &copy;<script>document.write(new Date().getFullYear());</script> Sky Castle All rights reserved 
    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
    
        </footer>
            	         <!-- jQuery (Necessary for All JavaScript Plugins) -->
	    <script src="${pageContext.servletContext.contextPath}/resources/bootstrap/js/jquery/jquery-2.2.4.min.js"></script>
	    <!-- Popper js -->
	    <script src="${pageContext.servletContext.contextPath}/resources/bootstrap/js/popper.min.js"></script>
	    <!-- Bootstrap js -->
	    <script src="${pageContext.servletContext.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
	    <!-- Plugins js -->
	    <script src="${pageContext.servletContext.contextPath}/resources/bootstrap/js/plugins.js"></script>
	    <!-- Active js -->
	    <script src="${pageContext.servletContext.contextPath}/resources/bootstrap/js/active.js"></script>
	    
</body>
</html>