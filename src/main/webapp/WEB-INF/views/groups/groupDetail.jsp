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
	<c:forEach var="g" items="${ list }">
		<div id="inner" style="width: 800px; margin: auto;">
			<br><br><br><br><br>
			<h2>소모임</h2>
			<br><hr><br>
				<div id="detailSum" style="width:100%; height: 250px;">
					<div style="float: left;">
				    	<img src="resources/uploadFiles/groups/${ g.changeName }" style="width:250px;">
					</div>
					
					<div style="width: 515px; height: 220px; vertical-align: middle; float: right; margin-left: 35px; margin-top:30px;">
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
							
	<%--
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
	--%>
							정원 : ${ g.memberLimit }명<br>
						</p>
				        <br><br><br><br><br>
			    	</div>
				</div>
			<br><br><br><br>
		
			<div class="statusBar" style="width:100%; height: 60px; vertical-align: middle; border: 1px solid black;">
				<div style="text-align:right; height: 60px;">
					<form id="applyform" action="groupApplyForm.gr" method="post" style="margin: 5px 5px;">
						
						<c:choose>
							<c:when test="${ !empty loginUser }">	<!-- 로그인 했을때 -->
								<button id="dips" type="button" class="sky_btn1 dipsIn" style="float: left; margin-top:5px; margin-left: 5px;">찜하기</button>
							</c:when>
							<c:otherwise>	<!-- 로그인 안했을때 -->
								<button id="loginBtn1" class="sky_btn2" style="float: left; margin-top:5px; margin-left: 5px;" type="button">찜하기</button>
							</c:otherwise>
						</c:choose>
						
						현재신청자수 : 15명	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="hidden" id="user_no" name="userNo" value="${ loginUser.userNo }">
						<input type="hidden" id="group_no" name="gno" value="${ g.groupNo }">
						<c:choose>
							<c:when test="${ loginUser != null }">	<!-- 로그인 했을때 -->
								<button id="apply_btn" type="button" class="sky_btn1" style="margin-top:5px; margin-right: 5px;">신청하기</button>
							</c:when>
							<c:otherwise>	<!-- 로그인 안했을때 -->
								<button id="loginBtn2" class="sky_btn2" type="button"  style="margin-top:5px; margin-right: 5px;">신청하기</button>
							</c:otherwise>
						</c:choose>
					</form>
			    </div>
			</div>
			<br><br>
			
			<div id="textContent">
			</div>
		</div>
		
		<script type="text/javascript">
			$("#textContent").html('${g.groupContent}');
		</script>
	</c:forEach>
	
    <jsp:include page="../common/footer.jsp"/>
	
		
    <script>
		// 로그인폼으로 이동
		$("#loginBtn1").click(function(){	// 비로그인시 찜 희망할 경우
			location.href = "loginForm.me";
		});
		$("#loginBtn2").click(function(){	// 비로그인시 신청 희망할 경우
			location.href = "loginForm.me";
		});
		
    	$("#apply_btn").click(function(){
			
			var userNo = "${ loginUser.userNo }";
			
			if(userNo != 0) {	// 로그인 했을때
				alertify.confirm('소모임 신청 확인', '신청하시겠습니까?', function(){ $("#applyform").submit(); }
	            , function(){});
			} else {	// 로그인 안했을때 -> 로그인 창으로 이동
				alertify.alert("회원 전용 서비스", "회원만 신청할 수 있습니다. 로그인 페이지로 이동합니다.", function(){ location.href = "loginForm.me"; });
			} 
		});

    	$(function(){
    		selectDipsList();
    	});
    	
    	function selectDipsList(){
   			if(${loginUser ne null}){
   				$.ajax({
   					url:"selectDipsList.gr",
   					data:{"userNo":'${loginUser.userNo}', "groupNo":$("#group_no").val()},
   					success:function(result){
   						
						if(result>0){
							$("#dips").removeClass("dipsIn");
							$("#dips").addClass("dipsOut");
							$("#dips").text("찜취소");
   						}			// 버튼이 찜취소로 보여지고 아니면 찜하기로 보여진다.
   					}, error:function(){
   						console.log("찜목록 조회 실패");
   					}
   				});
   			}
    	}
    	
    	// 위시리스트 등록 ajax
    	$(function(){
    		$('#dips').click(function(){
    			
				var gno = $("#group_no").val();
				
				if( $("#dips").attr("class")=="sky_btn1 dipsIn"){ // 버튼의 글자가 찜하기 일떄. 빈 하트일 경우 --> 위시리스트 등록
				
					$.ajax({
	     				url:"dipsIn.gr",
	     				data:{"groupNo":gno, "userNo":'${ loginUser.userNo }'},
	     				success:function(result){	// insert 성공 --> result 1 
	     					if(result>0){
	     						$("#dips").removeClass("dipsIn"); 	
	        					$("#dips").addClass("dipsOut");		// 찜취소로 변경
		     					$("#dips").text("찜취소");	
								alertify.alert("소모임", "찜목록 추가 완료");
	     					}
        				}, error:function(){
        					window.alert("통신에러1");
        				}
    				});
				} else { // 채워진 하트일 경우 --> 위시리스트 삭제
					
					$.ajax({
						url:"dipsOut.gr", 
						data:{"groupNo":gno, "userNo":'${ loginUser.userNo }'},
						type:"post",
						success:function(result){
							if(result > 0){
								$("#dips").removeClass("dipsOut"); 	
	        					$("#dips").addClass("dipsIn");		// 찜하기로 변경
		     					$("#dips").text("찜하기");	
								alertify.alert("소모임", "찜목록 삭제 완료");
							}
						},error:function(){
							window.alert("통신에러2");
						}
					});
				}
    		 });
    	});
    </script>

</body>
</html>