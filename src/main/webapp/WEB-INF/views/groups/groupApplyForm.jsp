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
		
		<c:forEach items="${ list }" var="g">
			<div id="detailSum" style="width:100%;">
				<h2 style="margin:0px;">소모임 신청하기</h2>
				<br><hr><br><br>
				
				<span style="color:gray;">
					<c:choose>
		         		<c:when test="${ g.groupCategory == 1 }">
							&nbsp;대입
		            	</c:when>
		            	<c:when test="${ g.groupCategory == 2 }">
							&nbsp;공무원임용
		            	</c:when>
		            	<c:when test="${ g.groupCategory == 3 }">
							&nbsp;어학회화
		            	</c:when>
		            	<c:when test="${ g.groupCategory == 4 }">
							&nbsp;자격증
		            	</c:when>
		            	<c:when test="${ g.groupCategory == 5 }">
							&nbsp;기타
		            	</c:when>
		            	<c:otherwise>
		            		&nbsp;카테고리가 없습니다
		            	</c:otherwise>
		            </c:choose>
				</span>
		            
				&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;${ g.groupSubtitle }
				<h2>${ g.groupTitle }</h2>
				
				<br><br>
					
				<table id="groupDetailTable">
				    <tbody>
				        <tr>
				            <th>신청일정</th>
				            <td>${ g.startDate } ~ ${ g.endDate }</td>
				        </tr>
				        <tr>
				            <th>장소</th>
				            <td>${ g.place }</td>
				        </tr>
				        <tr>
				            <th>정원</th>
				            <td>${ g.memberLimit }명</td>
				        </tr>
				    </tbody>
				</table>
				<br><br><br>
				
				<form action="groupApply.gr" method="post">
					<h2>소모임 지원사유</h2>
					<span style="color:gray;">해당 소모임에 참여하고 싶은 이유를 자유롭게 적어주세요</span>
					<textarea name="passion" id="passion" style="width:100%; height:150px; resize:none;" required></textarea>
					<br><br>
					
					<div style="text-align:right;">
						<button type="submit" class="sky_btn1">확인</button>
			        </div>
			        
					<input type="hidden" id="user_no" name="userNo" value="${ loginUser.userNo }">
					<input type="hidden" id="group_no" name="groupNo" value="${ g.groupNo }">
				</form>
		    </div>
		</c:forEach>
	    <br><br><br><br>
	</div>
	
	
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>