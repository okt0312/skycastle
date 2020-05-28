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

.outer * {
	font-family: 'NanumSquare';
}

input[type=password]{
	font-family: 'inherit';
}



.outer a {
	text-decoration: none;
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
    width: 320px;
	height: 50px;
	border: 1px solid rgb(76, 60, 60);
	background-color:#fdce07;
	margin: auto;
	color: black
}

.bline {
	background-color: skyblue;
	height: 2px;
	border: 0px;
	width: 300px;
	margin-left: 0;
	margin: 50px;
	margin-bottom: 12px;
}

/* .pagination {
	        display: inline-block;
	    } */
.pagination a {
	color: black;
	padding: 5px 10px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
	margin: 0 2px;
	font-size: 12px;
}

.pagination a.active {
	background-color: orange;
	color: white;
	border: 1px solid orange;
}

.pagination a:hover:not (.active ) {
	background-color: #ddd;
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

#noticeList>tbody :nth-child(1) {
	cursor: pointer;
}

#middleTable td {
	margin-left: 10px;
}

/* 내용 테이블 */

/* input{ border-radius: 5px; width: 150px;} */

table{
	table-layout: fixed;
}

tr{
	table-layout: fixed;
}

td, th{
    border: 1px solid black;
	text-align: left;
	padding-left: 50px;
	table-layout: fixed;
   
}

th{

    background-color:  #bbdefb;


}

td{

    background-color: #e3f2fd;;
	text-align: left;
	padding-left: 20px;
}

table {
	font-size: 18px;
	margin: auto;
}

#doubleCheck {
	margin-left: 20px;
}

/* 작은버튼 스타일 */

/* 작은버튼 스타일 */

/* 중간버튼 스타일 */

#btns{
	text-align: center;
}


.faqBtns {
			margin-left: 5px;
			padding-top: 20px;
			padding-bottom: 20px;
           
		}

        .faqBtns button {
			background-color: lightgray;
			border: none;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 14px;
			margin: 4px 2px;
			cursor: pointer;
			width: 270px;
			height: 40px;
		}

        .faqBtns button.active {
			background-color: rgb(76, 60, 60);
			color: white;
			border: 1px solid rgb(76, 60, 60);
		}
		

.inner {
  width: 100%;
  text-align: center;

}

.faqBtns {
    display: inline-block;
    width: 50%;

}

.inputs input {
    width: 100%;
    height: 53px;
    font-size: 23px;
    color: #222;
    border: 0;
    outline: none;
}

.inputs {
    position: relative;
    display: block;
    border-bottom: 1px solid #181819;
    height: 53px;
    overflow: hidden;
}

.jb-th-1{

    width: 150px;
    height: 70px;

}

.sky_btn1 /* 확인 버튼 */
{
	width: 230px;
	height: 60px;
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
.sky_btn2   /* 취소, 첨부파일 버튼 */
{
	width: 230px;
	height: 60px;
	text-align: center;
	font-size: 15px;
	font-weight: bold;
	border-radius: 5px;
	padding: 10px;
	cursor: pointer;
	background: #333333;
	color: white;
	border: 0;
}








</style>
</head>
<body>

<jsp:include page="common/myPageMenubar.jsp"/>

<div class="outer">
        <!-- 서브메뉴 타이틀 -->
        
        
		
		<!-- 서브메뉴 우측 인덱스 -->
		
		<div class="sub-menu-area">
			<!-- 현재 페이지는 orange 로 표시 -->
			
		
		</div>

		

		<!-- inner영역에 콘텐츠 작성 -->
		<div class="inner">
			
              
            <br> <br> <br> <br> <br> <br> 

			<h1>SKY CASTLE 공간예약이 완료되었습니다.</h1>
			<span style="color: #888; line-height: 22px;">공간 이용과 관련된 문의는 예약하신 지점으로 해주시면 정확한 답변을 받으실 수 있습니다.</span>
			
			<br><br>
            <hr style="width: 50%;">

            <br><br>

            <h3 style="width: 50%; margin-left: 38px;">예약정보</h3>

            <br>

            <table style= "width: 50%; border:1px solid black;">

                <thead>

                    <tr>

                        <th class="jb-th-1">예약공간</th>
                        <td colspan="2"></td>
                        
                        
                        
                        
                      

                    </tr>


                </thead>

                <tbody>

                    <tr>

                        <th class="jb-th-1">예약날짜</th>
                        <td colspan="2"></td>
                        
                        
                       


                    </tr>

                    <tr>

                        <th class="jb-th-1">예약인원</th>
                        <td colspan="2"></td>
                        
                        
                        


                    </tr>

                    <tr>

                        <th class="jb-th-1">취소사유</th>
                        <td colspan="2"></td>
                        
                        
                        


					</tr>
					

					

                   

                    
                 

                   






                </tbody>



            </table>
               


               
		

		<br><br><br>

		<h3 style="width: 50%; margin-left: 55px;">예약자정보</h3>

		<br>

		<table style= "width: 50%; border:1px solid black;">

			<thead>

				<tr>

					<th class="jb-th-1">모임명</th>
					<td colspan="2"></td>
					
					
					
					
				  

				</tr>


			</thead>

			<tbody>

				<tr>

					<th class="jb-th-1">예약자 명</th>
					<td colspan="2"></td>
					
					
				   


				</tr>

				<tr>

					<th class="jb-th-1">연락처</th>
					<td colspan="2"></td>
					
					
					


				</tr>

				<tr>

					<th class="jb-th-1">이메일</th>
					<td colspan="2"></td>
					
					
					


				</tr>
				

				

			   

				
			 

			   






			</tbody>



		</table>
		   



		

        
      
			
		




			

		</div>
				
			
		<br><br><br><br><br>

               
		<div id="btns" style="padding-left: 20px;">
				
            <button type="submit" class="sky_btn2" id="" >예약취소</button> &nbsp;&nbsp;&nbsp;
			<button type="submit" class="sky_btn1" id="" onclick="location.href='${pageContext.servletContext.contextPath}/'" >홈으로></button>

        </div>

	
         
		
					
			
            
			
			<br><br><br>

			
		
		</div>
		
		
		<jsp:include page="../common/footer.jsp"/>

</body>
</html>