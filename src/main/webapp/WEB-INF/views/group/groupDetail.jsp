<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<div id="inner" style="width: 800px; margin: auto;">
		<br><br><br><br><br>
		<h2>소모임</h2>
		<br><hr><br>
		
		<div id="detailSum" style="width:100%; height: 250px;">
			<div style="width: 250px; height: 250px; float: left;">
		    	<img src="img/squaresize.PNG" alt="" width="250px" height="250px">
			</div>
			<div style="width: 540px; height: 250px; vertical-align: middle; float: right; margin-left: 10px;">
		        <h2>소모임제목</h2>
		        <p>
		            카테고리 : <br>
		            소제목 : <br><br>
		            소모임 진행 일정 : <br>
		            소모임 신청 일정 : <br>
		            장소 : <br>
		            자격 : <br>
		            정원 : <br>
		        </p>
		        <br><br><br><br><br>
	    	</div>
		</div>
		<br><br><br><br>
	
		<div class="statusBar" style="width:100%; height: 50px; vertical-align: middle; border: 1px solid black;">
		<div style="text-align:right; height: 50px;">
		  	<!-- 신청하기 버튼 누르면 '신청하시겠습니까?' alert창 뜨도록 -->
			<p style="margin: 5px 5px">
				현재신청자수 : 15명 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<!-- 버튼이 위아래 가운데에 오게 -->
				<button class="sky_btn1">신청하기</button>
			</p>
			<!-- 신청자격 없으면 '신청자격없음' 위에disabled속성, 클래스 부여해서 뜰 수 있도록 -->
	    </div>
		</div>
		<br><br>
	
		<div id="groupDetail">
		    <ul>
		        <li>
		            모집마감 > 참가자 선정
		        </li>
		        <li>
		            선정 후 마이페이지 '참여중인 소모임' 메뉴에서 확인하실 수 있습니다.
		        </li>
		        <li></li>
		        <li></li>
		    </ul>
		
		    <pre style="width: 100%; text-align: left;"><!-- jsp로 넘어가면 p태그로 -->
	<이런분들에게 좋아요>
	
	    단순한 사진이 아니라 이야기가 담긴 프로필 사진을 찍으시고 싶은 분 
	    다른 사람들과 이야기 하며 프로필 사진을 남기고 싶으신 분
	    다양한 프로필 사진이 필요하나 스튜디오 까지 가기에는 비용과 시간이 부담되시는 분
	
	
	<참가비>
	
	    39,000원 (장비 대여, 조명 대여, 간단한 소품, 사진 제공)
	
	
	<준비물 >
	
	    담고 싶은 나의 모습에 대한 생각 (필수)
	    오마주를 하고 싶은 이미지, 스마트폰에 캡쳐 (필수)
	
	
	<제공사진>
	
	    당일 촬영한 촬영원본 40~50컷 (디지털)
	    추후 촬영본 선택 및 보정본 2컷 (디지털)
	
	
	<공지 및 주의 사항>
	
	    촬영은 강남점 작업실에서 이뤄집니다.
	    베스트 샷은 Insta : Kwak_de 에 업로드 됩니다.
	    * 요청시 얼굴이 안나오는 사진으로 업로드 됩니다.
	    * 이전 촬영 과정이 궁금하시다면 인스타그램 " kwak_de"  에서 확인해주세요.
			</pre>
		</div>
	</div>
</body>
</html>