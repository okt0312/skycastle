<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>좌석예약</title>
    <style>
    div{
        /* border: 1px solid red; */
        box-sizing: border-box;
     }
     .content{
         max-width: 1700px;
         margin:auto;
         margin-bottom:200px;
     }
     
     .inner{
         max-width: 1200px;
         margin:auto;
     }
     #title{
        width: 100%; 
        border-top: 2px solid gray;
        border-bottom: 2px solid gray;
        height: 70px;
        font-size: 20px;
        font-weight: bold;
        line-height: 55px;
     }

     #introdution{
        width:100%;
     }
     #space{
        margin-top: 50px;
        margin-left: 100px;
      
     }
     #content_1{
         width: 70%;
     }
     #content_2{
         width: 30%;
         
     }

     .inner div{
         float: left;
     }
     #detail{
         width: 100%;
     }
     #facilities{
         width:100%;
     }
     
#facilities_ul {
    list-style:none;
    margin:0;
    padding:0;
}

#facilities_ul li {
    margin: 0 0 0 0;
    padding: 0 0 0 0;
    border : 0;
    float: left;
}
#detail{
    margin-left: 100px;
}
#detail input{
    border-radius: 1px;
}
#detail div{
    border: 1px solid lightgray;
    width: 90%;
}
#reservationBtn{
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
}
#timeAdd,#addTime,#removeTime,#final{
    width: 90px;
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
}

#reservationBtn{
    margin-top: 20px;
    margin-left: 100px;
}

    </style>
</head>
<body>
<jsp:include page="../common/menubar.jsp"/>
    <div class="content">

        <div class="inner">
            <p style="font-size: 20px; color:red">PASSION MoimCenter</p>
           <div id="content_1">
                <div id="introdution">
                    <div id="title">
                        &nbsp;&nbsp;&nbsp; 소개
                    </div>
                    <div id="space" align="center">
                      
                        <img src="${pageContext.servletContext.contextPath}/resources/uploadFiles/space/${space.changeName}" width="600px" height="400px">
                        <p style="color:gray">
                            <small>
                            안녕하세요 스카이캐슬 입니다.<br>
                            코로나19(우한폐렴)에 관련하여<br>
                            매일 아침 점심 저녁 총 3회에 걸쳐<br>
                            지점 내부 소독 진행하고 있으며,<br>
                            모임 이용 전 , 후 부스 내부 전체 소독 진행하고 있습니다.<br>
                            고객님의 안전한 모임을 위해 항상 노력하는<br>
                            토즈강남점(강남컨퍼런스점)이 되겠습니다.<br>
                            고맙습니다.<br>
                            <br>
                            <br>
                            2018년 1월 새롭게 찾아온 스카이캐슬 입니다.<br>
                            강남역 10번출구 도보 5분, 신논현역 6번출구 도보 5분<br>

                            세미나/워크샵/강의/회의/모임<br>

                            *건물측 사정으로 도시락 등의 음식물 반입은 어렵습니다.<br>
                            이용시간 평일,주말 - 09:00 ~ 24:00<br>
                            휴무일없음<br>
                            </small>
                        </p>
                    </div>
                </div>
           </div>
           
            <div id="content_2" >
                <div id="detail">
                	<form action="spacePayDetail.re" method="post">
                        <div  style="background-color:#fdce07;" align="center">
                                <h2>공간 세부 선택</h2>
                        </div>
                        <div>
                            <br>
                            <input type="hidden" name="userNo" value="${loginUser.userNo}">
                            <input type="hidden" name="refNo" value="${space.spaceNo}">
                        	<input type="hidden" name="spaceName" value="${space.spaceName}">
                        	<input type="hidden" name="changeName" value="${space.changeName}">
                            &nbsp;&nbsp;&nbsp;&nbsp;이용 공간 : <span>${space.spaceName}</span>
                            <br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;이용날짜 : <input id="date"  type="date" value="" min="" max="">
                            <br><br>
                            &nbsp;&nbsp; &nbsp;&nbsp;시작시간 : 
                            <select id="time" name="national">
                                <option class="time" value="08:00">08:00</option>
                                <option class="time" value="10:00">10:00</option>
                                <option class="time" value="12:00">12:00</option>
                                <option class="time" value="14:00">14:00</option>
                                <option class="time" value="16:00">16:00</option>
                                <option class="time" value="18:00">18:00</option>
                                <option class="time" value="20:00">20:00</option>
                                <option class="time" value="22:00">22:00</option>
                            </select>
                            <br><br>
                        <span>&nbsp;&nbsp;&nbsp;&nbsp;시작</span>
                       
                        <input type="text" disabled id="start" size="5px">~종료<input type="text" disabled id="end" size="5px">
                        <br><br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <button type="button" id="timeAdd">2시간연장</button>
                        <br><br>
                        &nbsp;&nbsp;&nbsp;&nbsp; 총 사용시간 : <span id="totalTime">2</span>
                        <br><br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <button id="addTime" type="button">선택</button>
                        <button id="removeTime" type="button">해제</button><br><br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <button id="final" type="button" style="width:180px">최종선택</button>
						<br><br>                     
                        <div align="center" id="tileList" style="border:0px ;width:100%"></div>	
                        
                        <br><br>
                        <div id="discountDiv" style="display:none">
	                        <p><h2>&nbsp;&nbsp;&nbsp;&nbsp;할인 선택</h2></p>
	                        <div style="border:0px;">
	                            &nbsp;&nbsp;
	                            <input type="hidden" id="couponName" name="couponName" value='선택없음'>
	                            <input type="hidden" id="couponCode" name="couponCode" value="0">
	                            <input type="hidden" id="discountRate" name="discountRate" value="0">
	                             <select id="copon">
	                                <c:choose>
	                                	<c:when test="${ !empty loginUser}">
												<option>선택없음</option>
			                                <c:forEach var="c" items="${couponList }" varStatus="status" >
												<option value="${ c.couponCode }" price="${ c.discountRate }">${c.couponName }</option>
											</c:forEach>
			                            </c:when>
			                            <c:otherwise>
			                            	<option>선택 없음</option>
			                            </c:otherwise>
	                                </c:choose>
	                            </select>
                          </div>  
                            <br><br>
                        </div>
                        </div>
                        <input type="hidden" id="total" name="totalCost" value="${space.spacePrice}">
                        <div style="background-color: lightgray;">
                            <p style="font-size:30px ;width:100%; " >결제금액: <span id="totalCost">${space.spacePrice}</span>원</p>
                        </div> 
                        <button id="reservationBtn" type="submit" onclick="return reservation();">바로 예약하기</button>
                	</form> 
                </div>
               
            </div>

            <br clear="both">
           <div id="facilities">
               <p style="font-weight: bold;">편의시설 및 시설</p>
              
                    <ul id="facilities_ul">									
                        <li><img src="https://s3.ap-northeast-2.amazonaws.com/ones.cloud/images/2017/8/2/11/101324_1501640945689.png" alt="" style="width: 42px;height: 42px;">
                            <span>주차시설 </span><i class="icon_pack icon-won"></i></li>
                    
                        <li><img src="https://s3.ap-northeast-2.amazonaws.com/ones.cloud/images/2017/9/18/11/894778_1505700481751.png" alt="" style="width: 42px;height: 42px;">
                            <span>음료제공 </span></li>
                    
                        <li><img src="https://s3.ap-northeast-2.amazonaws.com/ones.cloud/images/2017/8/2/11/68329_1501641157352.png" alt="" style="width: 42px;height: 42px;">
                            <span>견적서, 세금계산서 발급 </span></li>
                    
                        <li><img src="https://s3.ap-northeast-2.amazonaws.com/ones.cloud/images/2017/12/13/15/826670_1513147589625.png" alt="" style="width: 42px;height: 42px;">
                            <span>무선Wi-Fi </span></li>
                    
                        <li><img src="https://s3.ap-northeast-2.amazonaws.com/ones.cloud/images/2017/12/13/15/838815_1513147885960.png" alt="" style="width: 42px;height: 42px;">
                            <span>노트북/탭 제공 </span></li>
                    
                        <li><img src="https://s3.ap-northeast-2.amazonaws.com/ones.cloud/images/2017/12/13/15/941333_1513148198048.png" alt="" style="width: 42px;height: 42px;">
                            <span>복합기 </span><i class="icon_pack icon-won"></i></li>
                    
                        <li><img src="https://s3.ap-northeast-2.amazonaws.com/ones.cloud/images/2017/9/15/16/761549_1505459131213.png" alt="" style="width: 42px;height: 42px;">
                            <span>다중보안시스템 </span></li>
                    </ul>
           </div>
         
            
        </div>

    </div>
    <br clear="both">
    <jsp:include page="../common/footer.jsp"/>
</body>
<script>
	$(function(){
		var spacePrice=${space.spacePrice};

		//날짜선택 범위 지정
		$("#date").val(new Date().toISOString().substring(0, 10));
        $("#date").attr("min",new Date().toISOString().substring(0, 10));
        var date = new Date();
        date.setMonth(date.getMonth()+2);
        $("#date").attr("max",date.toISOString().substring(0, 10));
       
        
        
        $("#date").change(function(){
			$("#start").val('');
			$("#end").val('');
			showTimeSelect();

		});
        
        
		
		
		var addflag = false;
		
		$("#time").click(function(){
			spacePrice = ${space.spacePrice};
			$("#start").val($(this).val());
			
			startTime = $(this).val().substr(0,2);
			$("#end").val(Number(startTime)+2 +':00');
			totalTime();
		});
		
		
		$("#timeAdd").click(function(){
			
			var nextDisabled = $("#time option:selected").next().prop("disabled");
			
			if($("#start").val() == ''){
				alert("시작시간은 선택해주세요");
				return;
			}else if($("#start").val() == '22:00'){
				alert("마지막타임입니다.");
				return;
			}else if($("#end").val() == '24:00'){
				alert("마지막타임입니다.");
				return;
			}else if(nextDisabled == true){
				alert("시간 연장이 불가합니다.");
				return;
			}
			endTime =  $("#end").val().substr(0,2);
			$("#end").val(Number(endTime)+2 +':00');
			totalTime();
			
			
			/* 가격계산 */
			spacePrice +=${space.spacePrice} ;
			//console.log(spacePrice);
			
		});

		
		count = 0;
		finalChoose = false;
		$("#addTime").click(function(){
           	if(finalChoose == false){
           		
                if(!$("#start").val() == '' ){
				var addTimeNode = $("<p>").text("선택 시간 : " +  $("#date").val() + " : " + $("#start").val() +" ~ " + $("#end").val());
				var addTimeText ="선택 시간 : " +  $("#date").val() + " : " + $("#start").val() +" ~ " + $("#end").val(); 
				var usedDate = '<input  type="hidden"  name="usedDate" value='+$("#date").val()+'>';
				var startTime = '<input  type="hidden" name="startTime" value='+$("#start").val()+'>';
				var endTime = '<input  type="hidden" name="endTime" value='+$("#end").val()+'>';
				addflag = true;
				
				var addTimeList = $("#tileList p");
				//console.log(addTimeList.eq(0).text().substr(29,2));
				console.log($("#start").val().substr(0,2));
				for(var i=0; i<addTimeList.length; i++){
					var includeDay = addTimeList.eq(i).text().substr(8,10);
					var includeStartTime = addTimeList.eq(i).text().substr(21,2);
					var includeEndTime = addTimeList.eq(i).text().substr(29,2);
					
					if(addTimeList.eq(i).text() == addTimeText){
						alert("이미 선택되었습니다.");	
						return;
					}else if((includeDay == $("#date").val() && includeStartTime <= $("#start").val().substr(0,2) 
							&& includeEndTime > $("#start").val().substr(0,2)) || (includeDay == $("#date").val() &&
							 $("#start").val().substr(0,2) <= includeStartTime && $("#end").val().substr(0,2) > includeStartTime)){
						alert("선택 시간이 중첩되었습니다.");
						return;
					}
				}
				
				$("#tileList").append(addTimeNode);
				$("#tileList").append(usedDate);
				$("#tileList").append(startTime);
				$("#tileList").append(endTime);
				
				$("#start").val('');
				$("#end").val('');
				$("#totalTime").text(2);
					if(count == 0){
						count++;
						$("#totalCost").text(spacePrice);
					}else{
						$("#totalCost").text(Number($("#totalCost").text())+spacePrice);					
					}
				
				}else{
					alert("시작시간을 선택해주세요");
				}
           	}else{
           		alert("최종선택을 해제해주세요.");
           	}
 
		});
		
		$("#final").click(function(){
			if(addflag == true){
				finalChoose = true;
				$("#total").val($("#totalCost").text());
				$("#discountDiv").css("display","block");
				console.log($("#total").val());
			}else{
				alert("시간 선택을 해주세요.")
			}
			
		});
		
		
		$("#removeTime").click(function(){
			addflag=false;
			finalChoose = false;
			$("#start").val('');
			$("#end").val('');
			$("#totalTime").text(2);
			$("#tileList").text('');
			$("#copon").children().eq(0).attr("selected","selected")
			$("#discountDiv").css("display","none");
			$("#totalCost").text(${space.spacePrice});
			$("#couponName").val(couponName);
			$("#couponCode").val(0);
			$("#discountRate").val(0);
		});
		
		
		
		
		 $("#copon").change(function(){
				
			 	var couponName =  $(this).find(":selected").text();
			 	var couponCode =  $(this).find(":selected").val();
				var discountRate = $(this).find(":selected").attr("price");
			 	
				if(couponName == '선택없음'){
					//console.log(couponName);
					$("#couponName").val(couponName);
					$("#couponCode").val(0);
					$("#discountRate").val(0);
			 	}else{
			 		//console.log(couponName);
			 		$("#couponName").val(couponName);
					$("#couponCode").val(couponCode);
					$("#discountRate").val(Number(discountRate));
			 	}
			 	
			 	
				if(discountRate != undefined){
					$("#totalCost").text($("#total").val()-$("#total").val() * discountRate);
				} else{
					$("#totalCost").text($("#total").val());
				}

			
		});
		
	});
	
	timeCheck();
	//현재 시간을 가져와 이미 지난시간은 선택불가능하게 조정
	function timeCheck(){
		var date = new Date().getHours();
		timeSelect = $("#time").children();
		
		for(var i=0; i<timeSelect.length; i++){
			if(timeSelect.eq(i).val().substring(0, 2) < date){
				timeSelect.eq(i).attr("disabled","disabled");
			}			
		}
		
		showTimeSelect();
		
		
	}
	
	
	function totalTime(){
		start = $("#start").val().substr(0,2);
		end = $("#end").val().substr(0,2);
		$("#totalTime").text(end-start);
		
	}

	
	/* 예약 버튼클릭 */
	function reservation(){
			var loginUser = '${loginUser}';
			if(loginUser == ''){
				alert("로그인이 필요한 서비스입니다.");
				return false;
			}else if($("#tileList").text()==''){
				alert("시간 선택을 확인해주세요.");
				return false;
			}else if(finalChoose != true){
				alert("최종선택을 해주세요.");
				return false;
			}
	}
	
	
	// 예약된 좌석시간현황 조회 함수
	function selectspaceReservationTime(){
		timeSelect = $("#time").children();
		
		$.ajax({
			url:"selectspaceReservationTime.re",
			async: false,
			data: {spaceNo:${space.spaceNo}},
			success:function(ReservationTime){
				if(ReservationTime != ''){
					/* console.log(ReservationTime);
					console.log(ReservationTime[0].startTime.substring(0, 2));
					console.log(ReservationTime[0].endTime.substring(0, 2));
					console.log(timeSelect.eq(0).val().substring(0, 2)); */
					  for(var i=0; i<ReservationTime.length; i++){
							for(var j=0; j<timeSelect.length; j++){
								if(ReservationTime[i].startTime.substring(0, 2) <= timeSelect.eq(j).val().substring(0, 2)
										&& timeSelect.eq(j).val().substring(0, 2) < ReservationTime[i].endTime.substring(0, 2) ){
									timeSelect.eq(j).attr("disabled","disabled");
								}			
							}
						} 
					  showTimeSelect();
				}
				
	
			},error:function(){	
				console.log("좌석예약시간 조회 ajax 통신 실패!!");
			}
		});

	}
	
	// 예약된 좌석시간현황 조회 함수 호출
	/* selectspaceReservationTime();
	 setInterval(function() {
		selectspaceStatusList();
	}, 5000);  */
	
	//사용가능한 시간옵션중 가장빠른것을 셀렉트하는 함수
	function showTimeSelect(){
		var showTimeSelect = $("#time option:enabled");	
		 showTimeSelect.eq(0).attr("selected","selected");
	}
	 
	
	
</script>
</html>