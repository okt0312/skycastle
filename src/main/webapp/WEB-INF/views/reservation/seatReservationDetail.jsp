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
        float:left; width: 30%;
         
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
#timeAdd,#addTime,#removeTime{
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

.reservation_tb{
	width:360px;
	border:1px solid #bebebe
}
.reservation_tb th{
	font-size:15px;
	padding-left:15px
}
.reservation_tb td{
	font-size:15px;
	padding:15px 10px;
}
.reservation_tb thead tr td{
	border:1px solid #FDCE07;
	background:#FDCE07;
	font-size:25px;
	text-align:center;
	font-weight:bold;
	color:#333;
	line-height:50px;
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
                      
                        <img src="${pageContext.servletContext.contextPath}/resources/images/좌석.jpg" width="600px" height="400px">
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
                	<form action="seatPayDetail.re" method="post">
                	<input type="hidden" name="userNo" value="${loginUser.userNo}">
                    <input type="hidden" name="refNo" value="${seat.seatNo}">
                    <input  type="hidden"  id="usedDate"  type="date" name="usedDate">
                	<table cellpadding="0" cellspacing="0" class="reservation_tb">
                		<thead>
                			<tr>
                				<td colspan="2">좌석 세부 선택</td>
                			</tr>
                		</thead>
                		<tbody>
                			<tr>
                				<th>
                            		이용 좌석 :
                				</th>
                				<td>
                            		${seat.seatNo}번
                				</td>
                			</tr>
                			<tr>
                				<th>
                					이용날짜 :
                				</th>
                				<td>
                					<input id="date" disabled type="date" >
                				</td>
                			</tr>
                			<tr>
                				<th  style="width:100px">
                					시작시간 : 
                				</th>
                				<td>
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
                				</td>
                			</tr>
                			<tr>
                				<th style="width:50px" colspan="2">
                					시작&nbsp;&nbsp;&nbsp;
                					<input type="hidden" id="startH" name="startTime" size="5px">
                					<input type="hidden"  id="endH" name="endTime" size="5px">
                					<input type="text" disabled id="start"style="width:100px; border:1px solid #bebebe">
                					&nbsp;&nbsp;~&nbsp;&nbsp; 종료&nbsp;&nbsp;&nbsp;
                					<input type="text" disabled id="end" style="width:100px; border:1px solid #bebebe">
                				</th>
                			</tr>
                			<tr>
                				<td colspan="2" style="padding-top: 10px ">
                					 <button type="button" id="timeAdd" style="margin-top:20px">2시간연장</button>
                				</td> 
                			</tr>
                			<tr>
                				<th colspan="2" style="padding:20px 10px; font-size:20px">총 사용시간 :<span id="totalTime"> 2 </span> 시간</th>
                			</tr>
                			<tr>
                				<th colspan="2">
                					<button id="addTime" type="button">선택</button>
                					<button id="removeTime" type="button">해제</button>
                				</th>
                			</tr>
                			<tr>
                				<td colspan="2">
                					<div align="center" id="tileList" style="border:0px ;width:100%"></div>	
                				</td>
                			</tr>
                			<tr>
                				<td colspan="2">
                					  <div id="discountDiv" style="display:none; width:338px">
				                        <p><h2>&nbsp;할인 선택</h2></p>
				                        <div style="border:0px; margin-bottom:15px ; margin-left:10px">
				                            &nbsp;&nbsp;
				                            <input type="hidden" id="couponName" name="couponName" value='선택없음'>
				                            <input type="hidden" id="couponCode" name="couponCode" value="0">
				                            <input type="hidden" id="discountRate" name="discountRate" value="0">
				                             <select id="copon" style="min-width:310px; height:30px;">
				                                <c:choose>
				                                	<c:when test="${ !empty loginUser}">
															<option>선택없음</option>
						                                		<c:forEach var="c" items="${couponList }" varStatus="status" >
															<option value="${ c.couponCode }" price="${ c.discountRate }">${c.couponName }</option>
														</c:forEach>
						                            </c:when>
						                            <c:otherwise>
						                            	<option >선택 없음</option>
						                            </c:otherwise>
				                                </c:choose>
				                            </select>
			                          </div>  
			                       </div>
                				</td>
                			</tr>
                		</tbody>
                	</table>
                        <input type="hidden" id="total" name="totalCost" value="${seat.seatPrice}">
                        <div style="background-color: #f1f1f1; width:360px">
                            <p style="font-size:30px ;width:100%; padding:15px; margin:0; color:#333" >결제금액: <span id="totalCost">${seat.seatPrice}</span>원</p>
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
		
		
		count =1;
		
		$("#date").val(new Date().toISOString().substring(0, 10));
		$("#usedDate").val(new Date().toISOString().substring(0, 10));
		
		$("#time").click(function(){
			if(count!=2){
				$("#total").val(${seat.seatPrice});
				$("#totalCost").text($("#total").val());
			}
		
			
			$("#start").val($(this).val());
			
			startTime = $(this).val().substr(0,2);
			$("#end").val(Number(startTime)+2 +':00');
			
			
			totalTime();
		});
		
		$("#timeAdd").click(function(){
			
	
			
			var end =  $("#end").val();
			var timeOption = $("#time option");
			
			
			if($("#start").val() == ''){
				alert("시작시간은 선택해주세요");
				return;
			}else if($("#end").val() != '24:00'){
				for(var i=0; i<=timeOption.length; i++){
					if(end == timeOption.eq(i).val()){
						if(timeOption.eq(i).prop("disabled")){
							alert("다음 예약으로 인해시간 연장이 불가합니다.");
							return;	
						}
					}		
				}
			}else if($("#end").val() == '24:00'){
				alert("마지막타임입니다.");
				return;
			}else if(count == 2){
				alert("선택을 해제해 주세요.");
				return;
			}
			
			endTime =  $("#end").val().substr(0,2);
			$("#end").val(Number(endTime)+2 +':00');
			totalTime();
			
			
			/* 가격계산 */
			var seatPrice = ${seat.seatPrice};
			$("#totalCost").text(Number($("#totalCost").text())+seatPrice);
			$("#total").val($("#totalCost").text());
		});

		
	
		$("#addTime").click(function(){
            if(count != 2){
                if(!$("#start").val() == ''){
				var addTime = $("<p>").text("선택 시간 : " +  $("#date").val() + " : " + $("#start").val() +" ~ " + $("#end").val());
				
				
				
				count++;
				$("#tileList").append(addTime);
				$("#discountDiv").css("display","block");
				
				$("#startH").val($("#start").val());
				$("#endH").val($("#end").val());
				
		
				}else{
					alert("시작시간을 선택해주세요");
				}
     
            }
			
			
		});
		
		$("#removeTime").click(function(){
			count=1;
			$("#start").val('');
			$("#end").val('');
			$("#totalTime").text(2);
			$("#tileList").text('');
			$("#copon").children().eq(0).attr("selected","selected")
			$("#discountDiv").css("display","none");
			$("#totalCost").text(${seat.seatPrice});
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
			if(timeSelect.eq(i).val().substring(0, 2) <= date){
				timeSelect.eq(i).attr("disabled","disabled");
			}			
		}
		
		
		
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
			}else{
				return true;
			}

	}
	
	
	// 예약된 좌석시간현황 조회 함수
	function selectSeatReservationTime(){
		timeSelect = $("#time").children();
		
		$.ajax({
			url:"selectSeatReservationTime.re",
			async: false,
			data: {seatNo:${seat.seatNo}},
			success:function(ReservationTime){
				console.log(ReservationTime);
				if(ReservationTime != ''){
					 /*console.log(ReservationTime);
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
						
				}
				showTimeSelect();
				
			},error:function(){	
				console.log("좌석예약시간 조회 ajax 통신 실패!!");
			}
		});

	}
	
	// 예약된 좌석시간현황 조회 함수 호출
	selectSeatReservationTime();
	 setInterval(function() {
		 selectSeatReservationTime();
	}, 5000); 
	 
	//사용가능한 시간옵션중 가장빠른것을 셀렉트하는 함수
		
		function showTimeSelect(){
			//$("#time option:selected").removeAttr('selected');
			var showTimeSelect = $("#time option:enabled");	
			 showTimeSelect.eq(0).attr("selected","selected");
		}
		 
	
	
</script>
</html>