<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>groupApplySuccess</title>
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
    </style>
</head>
<body>
    <jsp:include page="../common/menubar.jsp"/>
	<div id="inner" style="width: 800px; margin: auto;">
	    <br><br><br><br><br>
	    <h2>소모임</h2>
	    <br><hr><br>
	
	    <div id="detailSum" style="width:100%; height: 250px;">
	        <img src="" alt=""><!--어떤사진넣지-->
	        <h1 style="text-align: center;">소모임 신청이 완료되었습니다</h1>
	        <p style="text-align: center;">
	            소모임 개설자의 승인 후<br>
	            마이페이지 '참가중인 소모임' 메뉴에서 확인하실 수 있습니다
	        </p>
	        <br><br>
	        <div style="text-align:center;">
	            <button class="sky_btn1" onclick="">확인</button>
	        </div>
	    </div>
	
	    <br><br><br><br>
	</div>
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>