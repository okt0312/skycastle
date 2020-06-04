<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>groupDetail</title>
    <style>
        .inner{
            width: 100%;
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
        .sky_btn2   /* 취소, 첨부파일 버튼 */
        {
            width: 130px;
            height: 40px;
            text-align: center;
            font-size: 15px;
            font-weight: bold;
            border-radius: 5px;
            padding: 10px;
            cursor: pointer;
            background: #333333;
            color: white;
            border: 0;
            /* 두줄 넣으면서서히 그림자 생김 */
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
        }
        .sky_btn1:hover {
            
            box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
        }
        .disabled {
            opacity: 0.6;
            cursor: not-allowed;
        }
    </style>
</head>
<body>
    <jsp:include page="../common/menubar.jsp"/>
	<div id="inner" style="width: 800px; margin: auto;">
		<br><br><br><br><br>
		<h2>소모임</h2>
		<br><hr><br>
		
		<div id="detailSum" style="width:100%; height: 250px;">
			<div style="width: 250px; height: 250px; float: left;">
		    	<img src="img/squaresize.PNG" alt="" width="250px" height="250px">
			</div>
			<div style="width: 540px; height: 250px; vertical-align: middle; float: right; margin-left: 10px;">
		        <h2>${ g.groupTitle }</h2>
				<p>
					<c:choose>
		         		<c:when test="${ g.groupCategory == 1 }">
							대입
		            	</c:when>
		            	<c:when test="${ g.groupCategory == 2 }">
							공무원임용
		            	</c:when>
		            	<c:when test="${ g.groupCategory == 3 }">
							어학회화
		            	</c:when>
		            	<c:when test="${ g.groupCategory == 4 }">
							자격증
		            	</c:when>
		            	<c:when test="${ g.groupCategory == 5 }">
							기타
		            	</c:when>
		            	<c:otherwise>
		            		카테고리가 없습니다
		            	</c:otherwise>
		            </c:choose>
					
					&nbsp;|&nbsp;${ g.groupSubtitle }<br><br>
					소모임 신청 일정 : ${ g.startDate } ~ ${ g.endDate }<br>
					장소 : ${ g.place }<br>
					<c:choose>
		         		<c:when test="${ g.gradeLimit == 1 }">
							자격 : VVIP만 신청 가능<br>
		            	</c:when>
		            	<c:when test="${ g.gradeLimit == 2 }">
							자격 : VIP 이상 신청 가능<br>
		            	</c:when>
		            	<c:when test="${ g.gradeLimit == 3 }">
							자격 : GOLD 이상 신청 가능<br>
		            	</c:when>
		            	<c:when test="${ g.gradeLimit == 4 }">
							자격 : SILVER 이상 신청 가능<br>
		            	</c:when>
		            	<c:when test="${ g.gradeLimit == 5 }">
							자격 : BRONZE 이상 신청 가능<br>
		            	</c:when>
		            	<c:otherwise>
		            		자격 : 신청 자격 제한이 없습니다.<br>
		            	</c:otherwise>
		            </c:choose>
					정원 : ${ g.memberLimit }명<br>
				</p>
		        <br><br><br><br><br>
	    	</div>
		</div>
		<br><br><br><br>
	
		<div class="statusBar" style="width:100%; height: 60px; vertical-align: middle; border: 1px solid black;">
			<div style="text-align:right; height: 60px;">
				<form id="apply_form" action="groupApplyForm.gr" method="post" style="margin: 5px 5px;">	
					<c:choose>
						<c:when test="${ count == 0 }">
							<button class="sky_btn1" style="float: left;">찜하기</button>
						</c:when>
			        	<c:when test="${ count == 1 }">
							<button class="sky_btn1" style="float: left;">찜취소</button>
						</c:when>
						<c:otherwise>
							<button class="sky_btn2" style="float: left;" disabled>로그인</button>
						</c:otherwise>
					</c:choose>
					
					현재신청자수 : 15명 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<!-- 버튼이 위아래 가운데에 오게 -->
					<!-- <button class="sky_btn1" id="applyBtn">신청하기</button> -->
					<input type="hidden" id="user_no" name="uno" value="${ loginUser.userNo }">
					<input type="hidden" id="group_no" name="gno" value="${ g.groupNo }">
					<input id="apply_btn" type="button" value="신청하기" class="sky_btn1">
				</form>
			  	<!-- 신청하기 버튼 누르면 '신청하시겠습니까?' alert창 뜨도록 -->
				<!-- 신청자격 없으면 '신청자격없음' 위에 disabled속성, 클래스 부여해서 뜰 수 있도록 -->
		    </div>
		</div>
		<br><br>
		
		<div id="groupDetail">
			<!-- pre태그 수정할것 -->
		    <pre style="width: 100%; text-align: left;">${ g.groupContent }</pre>
		</div>
	</div>
    <jsp:include page="../common/footer.jsp"/>
    
    <script>
/* 		function applyBtn(){
			
	    	var result = confirm('신청하시겠습니까?');
			
			if(result){ //확인 클릭시
				
				location.href = "groupApplyForm.gr?groupNo=" + $(this).children("#group_no").val() + "&userNo=" + $(this).children("#user_no").val();
			}
		} */
		
		$("#apply_btn").click(function(){
			
			var userNo = "${ loginUser.userNo }";
			
			if(userNo != "") {	// 로그인 했을때
				alertify.confirm('소모임 신청 확인', '신청하시겠습니까?', function(){ $("#apply_form").submit(); }
	            , function(){});
			} else {	// 로그인 안했을때 -> 로그인 창으로 이동
				location.href = "groupDetail.gr?gno=" + $(this).children("#group_no").val()
								+ "&userNo=0";
			}
		});
    </script>

</body>
</html>