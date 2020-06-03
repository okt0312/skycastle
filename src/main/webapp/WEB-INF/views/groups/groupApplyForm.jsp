<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>groupApplyForm</title>
    <style>
        .inner{
            width: 100%;
        }
        /* 표 스타일 */
        #groupDetailTable th{
            width: 200px;
            height: 40px;
        }
        .sky_btn1 /* 확인 버튼 */
        {
            width: 130px;
            height: 40px;
            text-align: center;
            font-size: 15px;
            font-weight: bold;
            border-radius: 5px;
            padding: 10px;
            cursor: pointer;
            background: #fdce07;
            color: #000000;
            border: 0;
            /* 두줄 넣으면서서히 그림자 생김 */
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
        }
        .sky_btn1:hover {
            box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
        }
    </style>
    
    <!-- include libraries(jQuery, bootstrap) -->
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
	
	<!-- include summernote css/js-->
	<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
    
</head>
<body>
    <jsp:include page="../common/menubar.jsp"/>
	<div id="inner" style="width: 800px; margin: auto;">
		<br><br><br><br><br>
		<h2>소모임</h2>
		<br><hr><br>
		
		<div id="detailSum" style="width:100%;">
			<h1>소모임 신청하기</h1>
			<br><br><br>
			
			<c:forEach items="${ list }" var="g">
				<table id="groupDetailTable">
				    <tbody>
				        <tr>
				            <th>카테고리</th>
				            <td><input type="text" value="${ g.groupCategory }" readonly></td>
				        </tr>
				        <tr>
				            <th>소제목</th>
				            <td><input type="text" value="${ g.groupSubtitle }" readonly></td>
				        </tr>
				        <tr>
				            <th>진행일정</th>
				            <td><input type="text"></td>
				        </tr>
				        <tr>
				            <th>신청일정</th>
				            <td><input type="text"></td>
				        </tr>
				        <tr>
				            <th>장소</th>
				            <td><input type="text"></td>
				        </tr>
				        <tr>
				            <th>자격</th>
				            <td><input type="text"></td>
				        </tr>
				        <tr>
				            <th>정원</th>
				            <td><input type="text"></td>
				        </tr>
				    </tbody>
				</table>
			</c:forEach>
			<br><br><br>
			<h2>소모임 지원사유</h2>
			<textarea name="content" id="summernote" style="width:100%; height:150px; resize:none;"></textarea>
			<br><br>
			
			<div style="text-align:right;">
				<button class="sky_btn1" onclick="">확인</button>
	        </div>
	    </div>
	    <br><br><br><br>
	</div>
	
	<script>
		$(document).ready(function() {
			$('#summernote').summernote({
				height: 300,                 // set editor height
				minHeight: null,             // set minimum height of editor
				maxHeight: null,             // set maximum height of editor
				focus: true                  // set focus to editable area after initializing summernote
			});
		});
	</script>
	
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>