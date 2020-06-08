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
						<c:when test="${ loginUser != null }">
							<c:choose>
								<c:when test="${ count == 0 }">		<!-- 로그인 했고, 찜 안했을 때 -->
									<button id="dipsIn" type="button" class="sky_btn1 dipsIn" style="float: left;">찜하기</button>
								</c:when>
					        	<c:when test="${ count == 1 }">		<!-- 로그인 했고, 찜 했을 때 -->
									<button id="dipsOut" type="button" class="sky_btn1 dipsOut" style="float: left;">찜취소</button>
								</c:when>
							</c:choose>
						</c:when>
						<c:otherwise>	<!-- 로그인 안했을때 -->
							<button id="loginBtn" class="sky_btn2" style="float: left;" type="button">로그인</button>
						</c:otherwise>
					</c:choose>
					
					현재신청자수 : 15명 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<!-- 버튼이 위아래 가운데에 오게 -->
					<!-- <button class="sky_btn1" id="applyBtn">신청하기</button> -->
					<input type="hidden" id="user_no" name="uno" value="${ loginUser.userNo }">
					<input type="hidden" id="group_no" name="gno" value="${ g.groupNo }">
					<button id="apply_btn" type="button" class="sky_btn1">신청하기</button>
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
		// 비로그인시 찜 희망할 경우 로그인폼으로 이동
		$("#loginBtn").click(function(){
			location.href = "loginForm.me";
		});
		
    	$("#apply_btn").click(function(){
			
			 var userNo = "${ loginUser.userNo }";
			
			if(userNo != 0) {	// 로그인 했을때
				alertify.confirm('소모임 신청 확인', '신청하시겠습니까?', function(){ $("#apply_form").submit(); }
	            , function(){});
			} else {	// 로그인 안했을때 -> 로그인 창으로 이동
				alertify.alert("회원 전용 서비스", "회원만 신청할 수 있습니다. 로그인 페이지로 이동합니다.", function(){ location.href = "loginForm.me"; });
			} 
		});
		
/*
		// 찜하기
		$("#dipsIn").click(function(){
				location.href = "dipsIn.gr?gno=" + $(this).children("#group_no").val()
				+ "&userNo=" + "${ loginUser.userNo }";
			}
		});
		
		//찜취소
		$("#dipsOut").click(function(){
		
		      location.href = "dipsOut.gr";
		   }
		});
*/
		
		/*
    	// 위시리스트 등록 ajax
    	$(function(){
    		$('#dipsIn').click(function(){
    			
    			var pcode1 = $(this).parent().siblings([".product_img"]).children().eq(0).val();
    			console.log(pcode1);
    			
				var icon = $(this);
				
				if(icon.attr("class") == "like_icon empty"){ // 빈 하트일 경우 --> 위시리스트 등록
        			$.ajax({
        				url:"dipsIn.gr",
        				data:{pcode:pcode1},
        				success:function(result){
        					if(result > 0){
			        			 icon.removeClass("empty");
			        			 icon.addClass("full");
			        			 icon.attr("src","찬하트주소");
			        			 var bool = window.confirm("위시리스로 등록되었습니다. 위시리스트로 이동하시겠습니까?");
			        			 if(bool){
			        				 location.href="wishList.me";
			        			 }
        					} else if(result<0){
        						$("#dPcode").val(pcode1);
        						$("#duplicateDeletePcode").submit();
        						
        					} else if(result == 0){
        						window.alert("로그인이 필요한 서비스입니다.");
        					}
        				}, error:function(){
        					window.alert("통신에러1");
        				}
    				});
    			
				}else{ // 채워진 하트일 경우 --> 위시리스트 삭제
					
					$.ajax({
						url:"dipsOut.gr", 
						data:{pcode:pcode1},
						success:function(result){
							if(result > 0){
			        			 icon.removeClass("full");
			        			 icon.addClass("empty");
								 icon.attr("src","빈하트추소");
								 window.alert("위시리스트에서 삭제되었습니다.")
							}else{
								
							}
						},error:function(){
							window.alert("통신에러2");
						}
					})
				}
    		 });
    	});
		*/
    </script>

</body>
</html>