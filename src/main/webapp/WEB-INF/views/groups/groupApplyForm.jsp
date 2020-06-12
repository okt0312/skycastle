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
				            <td><input type="text" value="${ g.groupTitle }" readonly></td>
				            <td><input type="text" value=" | ${ g.groupCategory }" readonly></td>
				        </tr>
				        <tr>
				            <td colspan="2"><input type="text" value="${ g.groupSubtitle }" readonly></td>
				        </tr>
				        <tr>
				            <td colspan="2"><input type="text" value="${ g.groupContent }" readonly></td>
				        </tr>
				        <tr>
				            <th>신청일정</th>
				            <td><input type="text" value="${ g.startDate } ~ ${ g.endDate }" readonly></td>
				        </tr>
				        <tr>
				            <th>장소</th>
				            <td><input type="text" value="${ g.place }" readonly></td>
				        </tr>
				        <tr>
				            <th>정원</th>
				            <td><input type="text" value="${ g.memberLimit }" readonly></td>
				        </tr>
				    </tbody>
				</table>
			</c:forEach>
			<br><br><br>
			
			<h2>소모임 지원사유</h2>
			<textarea name="passion" id="passion" style="width:100%; height:150px; resize:none;"></textarea>
			<br><br>
			
			<div style="text-align:right;">
				<button class="sky_btn1" onclick="">확인</button>
	        </div>
	    </div>
	    <br><br><br><br>
	</div>
	
	
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>