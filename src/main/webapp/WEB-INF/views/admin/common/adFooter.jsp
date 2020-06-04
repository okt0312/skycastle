<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<body>
<jsp:useBean id="today" class="java.util.Date"/>
<fmt:formatDate value="${today }" pattern="yyyy" var="today"/>

	<div style="height: 100px"></div>
	<footer id="adFooter" class="py-4 bg-light mt-auto">
		<div class="container-fluid">
		    <div class="d-flex align-items-center justify-content-between small">
		        <div class="text-muted">Copyright &copy; Sky Castle ${ today }</div>
		        <div>
		            <a href="#">Privacy Policy</a>
		            &middot;
		            <a href="#">Terms &amp; Conditions</a>
		        </div>
		    </div>
		</div>
	</footer>
</body>
</html>