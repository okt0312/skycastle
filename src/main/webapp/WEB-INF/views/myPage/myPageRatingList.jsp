<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
/* 서브메뉴 스타일 시작 (위에 웹폰트 링크도 복붙해주세요)*/
div {
	box-sizing: border-box;
}
.outer {
	max-width: 1700px;
	margin: auto;
    margin-bottom: 150px;
}


#index-area {
	text-align: right;
	font-size: 12px;
}

#index-area a {
	color: gray
}

.sub-menu-area * {
	padding: 5px;
}

.sub-menu-area>a {
	font-size: 17px;
	color: black;
	font-weight: bolder;
}

/* 서브메뉴 스타일 끝 */
#order-info {
	width: 1000px;
	height: 200px;
	border: 1px solid rgb(76, 60, 60);
	background-color: #fdce07;
	margin: auto;
	color: black;
}

.xo{
    width:0;
    height:150px;
}

.bline {
background-color: skyblue;
height: 2px;
border:0px;
             
         }



#noticeList>tbody td {
	text-align: center;
}

#noticeList * {
	height: 30px;
	font-size: 12px;
	border-bottom: 1px solid lightgray;
}

#noticeList {
	border-top: 1px solid black;
}

#noticeList>thead th {
	font-size: 14px;
	font-weight: 750;
}

.inner{

    width: 1000px;
	height: 200px;
	border: 1px solid rgb(76, 60, 60);
	background-color: #fdce07;
	margin: auto;
	color: black;

}

.coupon-wrap {
    margin: 80px 0 0;
}

.coupon-wrap .title-wrap2 {
    padding-bottom: 0;
}

.title-wrap2 {
    padding-bottom: 5px;
    border-bottom: 2px solid #111;
}

.coupon-wrap .title-wrap2 .title-type {
    font-size: 25px;
    font-weight: 600;
    padding: 0 0 12px;
    line-height: 1;
}
.coupon-wrap .coupon-list {
    border-bottom: 1px solid #111111;
}
.coupon-wrap .coupon-list ul {
    font-size: 0;
    display: table;
    width: 100%;
}
ol, ul {
    list-style: none;
}
.coupon-wrap .coupon-list ul li {
    display: table-cell;
    font-size: 14px;
    text-align: center;
    vertical-align: top;
}
.coupon-wrap .coupon-list ul li a {
    display: block;
    width: 100%;
    font-size: 20px;
    line-height: 32px;
    padding: 50px 0;
    position: relative;
}
a {
    color: #333;
    text-decoration: none;
}

.mem_block03 .lv_box {
    display: table;
    width: 100%;
}

.mem_block03 {
    text-align: center;
}

.mem_block03 {
    padding: 25px 4% 0 4%;
    overflow: hidden;
}
.mem_block03 .max {
    width: 100%;
    max-width: 1180px;
    margin: 0 auto;
}
.mem_block03 .ts {
    padding-bottom: 30px;
    
}
.members_tt {
    margin: 25px 0;
    color: #293996;
    font-weight: 900;
    font-size: 22px;
    line-height: 1.3em;
    text-align: center;
    font-family: '나눔스퀘어', NanumSquare, NS, '맑은 고딕', MalgunGothic, '돋움', Dotum;
}
.mem_block03 .members_txt {
    width: 90%;
    margin: 0 auto 40px;
}
.members_txt {
    margin-bottom: 40px;
    text-align: center;
    font-size: 16px;
    line-height: 1.4em;
    color: #202023;
}
.mem_block03 .lv_box {
    display: table;
    width: 100%;
}


.mem_block03 .members_lv {
    background: #eeeff0;
    text-align: center;
    padding: 20px;
    margin-bottom: -20px;
}
ul, ol, dl {
    list-style-type: none;
}
.mem_block03 .members_lv dt {
    padding-top: 142px;
    margin-bottom: 15px;
    background: url(../images/members/members_lebel_family.png) no-repeat center top;
    font-size: 25px;
    color: #59606b;
    font-weight: 700;
}

.mem_block03 .members_lv dd {
    font-size: 15px;
}
.mem_block03 .members_lv dd {
    font-size: 16px;
    line-height: 1.3em;
    color: #59606b;
}
.mem_block03 .members_lv dd span {
    display: inline-block;
    padding: 5px;
    margin-right: 10px;
    border-radius: 3px;
    background: #d8dadc;
    font-weight: 500;
}

.mem_block03 .members_lv {
    float: left;
    width: 50%;
    margin-bottom: 0;
    box-sizing: border-box;
}
.mem_block03 .blue {
    background: #e9f4fd;
}
.mem_block03 .members_lv {
    background: #eeeff0;
    text-align: center;
    padding: 20px;
    margin-bottom: 10px;
}


.mem_block03 .members_lv {
    width: 24.5%;
    margin-right: 0.3%;
    margin-bottom: 0;
}
.mem_block03 .members_lv dd span {
    display: block;
    width: 70px;
    line-height: 26px;
    margin: 0 auto 15px;
    padding: 0;

}
.mem_block03 .guide {
    padding: 30px;
    background-color: #f5f5f5;
    margin-top: 26px;
    margin-bottom: 0;
}
.mem_block03 .guide {
    padding: 15px;
    background-color: #f5f5f5;
    margin-top: 10px;
    text-align: left;
}
.mem_block03 .guide dt {
    color: #202023;
    margin-bottom: 15px;
}


</style>

</head>
<body>

<jsp:include page="common/myPageMenubar.jsp"/>

<div class="outer">
		<!-- 서브메뉴 타이틀 -->
	
		<br>
		
        
		
        <hr>
        
        <!-- 서브메뉴 타이틀 -->
        
        <br>
        <!-- 서브메뉴 우측 인덱스 -->
        <div id="index-area"></div>
        <div class="sub-menu-area">
            <!-- 현재 페이지는 orange 로 표시 -->
           
        </div>
        



		<!-- inner영역에 콘텐츠 작성 -->
		<div class="inner">
				
			<div id="order-info">
				
                <table style="font-size: 16px;" width="1000px;" height="200px;">
                    <tr>
                        <th width="400px" style="padding-left: 2px;">
                            <p>
                                <b style="font-weight:bold; font-size: 1.5em;">이태경</b>님 멤버십 등급내역
                                <hr class="bline" style="width: 180px;">
                               
                            </p>
                        </th>
                        <th width="10px"><hr class="xo"></th>
                        <th>
                            <p >
                                현재 멤버쉽 등급 <br><br> <b style="font-weight:bold; font-size: 1.5em;">브론즈</br>
                            </p>
                        </th>
                        <th width="10px"><hr class="xo"></th>
                        <th style="padding-right: 5%;">
                            <p >
                                전년도 이용횟수 <br><br> <b style="font-weight:bold; font-size: 1.5em;">8회</br>
                            </p>
                        </th>
                    </tr>
                    
                </table>
				

                
                <br>
                
                <div class="sub-menu-area">
                    <!-- 현재 페이지는 yellow 로 표시 -->
                   
                    <a href="" style="color: black; text-decoration: none;"><span>쿠폰함</span></a> 
                    <span style="color: lightgray; font-size: 17px;">|</span> 
                    <a href="" style="color: black; text-decoration: none;"><span>나의 등급 내역</span></a>
                    

                </div>

                
                <hr>

               
            </div>
            
            <br>

            

			
				<br> <br> <br>
                
                <div class="coupon-wrap">

                    <div class="title-wrap2">
                        <div class="title-type">나의 멤버십 혜택</div>

                    </div>
                    <div class="coupon-list">
                        <ul>
                            <li>
                                <a href="">스터디 룸 20% 할인쿠폰 2매</a>
                            </li>
                        </ul>
                    </div>

                </div>

                <br><br><br><br>
                <div class="mem_block03">
                    <div class="max">
                        <h3 class="members_tt ts">등급 및 혜택</h3>
                        <p class="members_txt">
                            스카이캐슬은 이용횟수를 적립할 때마다 혜택도 차곡차곡 쌓입니다.
                            <br>
                            사용할수록 모이는 스카이캐슬만의 특별한 혜택, 스카이캐슬 회원 등급을 소개합니다.

                        </p>
                        <div class="lv_box">
                            <dl class="members_lv family" style="margin-bottom: -20px;">
                                
                                <dt>Family</dt>
                                <dd style="margin-right: 0px; margin-left: 0px;">
                                    <span>승급조건</span>
                                    스카이캐슬  가입 시
                                </dd>
                            </dl>
                            <dl class="members_lv blue">
                                <dt>Blue</dt>
                                <dd style="margin-right: 0px; margin-left: 0px;">
                                    <span>승급조건</span>
                                    이용횟수 24번 이상 
                                </dd>
                            </dl>
                            <dl class="members_lv gold">
                                <dt>Gold</dt>
                                <dd style="margin-right: 0px; margin-left: 0px;">
                                    <span>승급조건</span>
                                    이용횟순 48번 이상
                                </dd>
                            </dl>
                            <dl class="members_lv vip">
                                <dt>Vip</dt>
                                <dd style="margin-right: 0px; margin-left: 0px;">
                                    <span>승급조건</span>
                                    이용횟수 60번 이상 
                                </dd>
                            </dl>
                        </div>

                        <dl class="guide" style="margin-right: 10px;">
                            <dt>혜택안내</dt>
                            <dd style="margin-left: 0px;">
                                - 스탬프 12개 적립 시, 아메리카노(R) FREE쿠폰 증정 
                                <br>
                                - 등급별 다양한 프로모션 및 이벤트 참여기회 제공
                            </dd>
                        </dl>
                        <dl class="guide" style="margin-right: 10px;">
                            <dt>이용안내</dt>
                            <dd style="margin-left: 0px;">
                                
                                - 스탬프 유효기간은 스탬프 별 1년이며, 쿠폰 유효기간은 발행일 기준 1개월입니다.
                                <br>
                                
                                - 등급상승 : 해당 승급조건 충족 시 익일부터 적용됩니다.
                                <br>
                                
                                - 등급기간 : 승급 일자로부터 1년간 유효합니다.
                                <br>
                                
                                - 등급변경 : 승급 일자로부터 1년간 등급 유지 후 승급조건에 해당하는 등급으로 변경됩니다.
                                <br>
                                
                                - 회원 전용 프로모션은 운영에 따라 변경될 수 있습니다.
                                <br>
              
                            </dd>
                        </dl>


                    </div>


                </div>

               
			
		</div>
		</div>
		
		<jsp:include page="../common/footer.jsp"/>


</body>
</html>