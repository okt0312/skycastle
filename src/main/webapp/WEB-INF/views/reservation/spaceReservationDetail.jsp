<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Document</title>
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
#timeAdd,#addTime{
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
                      
                        <img src="부스A.png" width="600px" height="400px">
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
                        <div  style="background-color:#fdce07;" align="center">
                                <h2>공간 세부 선택</h2>
                        </div>
                        <div>
                            <br>
                            &nbsp;&nbsp;&nbsp;&nbsp;이용 공간 : <span>A부스</span>
                            <br><br>
                            &nbsp;&nbsp;&nbsp;&nbsp;이용날짜 : <input id="date"  type="date" value="2020-05-22" min="2020-05-22" max="2020-07-31">
                            <br><br>
                            &nbsp;&nbsp; &nbsp;&nbsp;시작시간 : 
                            <select id="time" name="national">
                                <option>08:00</option>
                                <option>10:00</option>
                                <option>12:00</option>
                                <option>14:00</option>
                                <option>16:00</option>
                                <option>18:00</option>
                                <option>20:00</option>
                                <option>22:00</option>
                            </select>
                            <br><br>
                        <span>&nbsp;&nbsp;&nbsp;&nbsp;시작</span>
                        <input type="text" disabled id="start" size="5px">~종료<input type="text" disabled id="end" size="5px">
                        <br><br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <button type="button" id="timeAdd">2시간연장</button>
                        <br><br>
                        &nbsp;&nbsp;&nbsp;&nbsp; 총 사용시간 : <span id="totalTime">&nbsp;</span>
                        <br><br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <button id="addTime">선택</button>
                        <div align="center" id="tileList" style="border:0px ;width:100%"></div>	
                        
                        <br><br>
                        <p><h2>&nbsp;&nbsp;&nbsp;&nbsp;할인 선택</h2></p>
                        <div style="border:0px;">
                            &nbsp;&nbsp;
                             <select id="copon" name="coupon">
                                <option>선택 없음</option>
                                <option>쿠폰 1</option>
                                <option>쿠폰 2</option>
                                <option>쿠폰 3</option>
                            </select>
                        </div>
                        </div>
                        <div style="background-color: lightgray;">
                            <p style="font-size:30px ;width:100%; " >결제금액: 300,000</p>
                        </div>
                        <button id="reservationBtn">바로 예약하기</button>
                        
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
		
		$("#date").change(function(){
			$("#start").val('');
			$("#end").val('');
			$("#time").children().eq(0).prop('selected', true)
		});

		$("#time").click(function(){
			$("#start").val($(this).val());

			startTime = $(this).val().substr(0,2);
			$("#end").val(Number(startTime)+2 +':00');

			
			totalTime();
		});

		$("#timeAdd").click(function(){
			if($("#start").val() == ''){
				alert("시작시간은 선택해주세요");
				return;
			}else if($("#start").val() == '22:00'){
				alert("마지막타임입니다.");
				return;
			}else if($("#end").val() == '24:00'){
				alert("마지막타임입니다.");
				return;
			}
			endTime =  $("#end").val().substr(0,2);
			$("#end").val(Number(endTime)+2 +':00');
			totalTime();
		});

		function totalTime(){
			start = $("#start").val().substr(0,2);
			end = $("#end").val().substr(0,2);
			$("#totalTime").text(end-start);
			
		}

		count = 1;
		$("#addTime").click(function(){

			if(!$("#start").val() == ''){
				var addTime = $("<p>").text("선택시간" +count + ". " +  $("#date").val() + " : " + $("#start").val() +" ~ " + $("#end").val());
				
					
				 a= $("#tileList p")	
				

				count++;
				$("#tileList").append(addTime)


			}else{
				alert("시작시간을 선택해주세요");
			}
			
		});
	})
</script>
</html>