<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
     div{
     /* border: 1px solid red; */
     box-sizing: border-box;
     }
     .content{
         max-width: 1700px;
         margin:auto;
     }

     #complate{
         
         width: 600px;
         height: 400px;
     }

     #complate1{
         background-color:#fdce07 ;
         font-size: 25px;
         font-weight: bold;
     }
     #complate2{
         font-size: 25px;
         font-weight: bold;
         border: 1px solid lightgray;
     }

     .sky_btn1 /* 확인 버튼 */
{
	width: 150px;
	height: 40px;
	text-align: center;
	font-size: 15px;
	font-weight: bold;
	border-radius: 5px;
	padding: 10px;
	cursor: pointer;
	background: #fdce07;
	color: white;
	border: 0;
    margin: 15px;
}
    </style>
</head>
<body>
<jsp:include page="../common/menubar.jsp"/>
    <div class="content" align="center">
        <div style="height: 50px;">
        </div>
        <div id="complate">
          
            <div id="complate1" align="center">
                예약결제가 완료 되었습니다.
            </div>
            <div id="complate2" align="center">
                <p>이용해 주셔서 감사합니다</p>
                <p>3초뒤 홈으로 이동합니다.</p>
            </div>
            <div  align="center">
                <button class="sky_btn1">홈으로 바로가기</button>
                <button class="sky_btn1">예약현황 바로가기</button>
            </div>
            
        </div>

    </div>
       <jsp:include page="../common/footer.jsp"/>
</body>
</html>