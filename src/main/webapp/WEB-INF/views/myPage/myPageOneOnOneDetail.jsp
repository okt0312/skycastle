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

.bline {
	background-color: skyblue;
	height: 2px;
	border: 0px;
	width: 370px;
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

td {

    padding-bottom: 20px;
   

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
    margin: 0px auto;
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
    margin: 0px auto;
}

/* 중간버튼 스타일 */

.middle_btn{
                display: block;
                height:40px;
                width:150px;
                margin: 0 auto;
                font-size: 15px;
                font-weight: bolder;
                color:white;
                background-color: rgb(76, 60, 60);
                border:0;
                border-radius: 5px;
            }

#contentArea{
            width:450px; 
            height:150px;
            resize:none;
            border-radius: 2%;
            padding-left: 10px;
            padding-top: 10px;
        }

        #btns{
            display: flex;
        }

        #dbtn{margin-right: 3%; margin-right: 2%; box-sizing:border-box;}
        #mbtn{margin-left: 3%; margin-right: 2%; box-sizing:border-box;} 
        #lbtn{margin-left: 3%; box-sizing:border-box;} 

/* 중간버튼 스타일 */
</style>

</head>
<body>

<jsp:include page="common/myPageMenubar.jsp"/>
	
	<div class="outer">
		<!-- 서브메뉴 타이틀 -->
	
		<br>
		
	
		
		<hr>



		<!-- inner영역에 콘텐츠 작성 -->
		<div class="inner">
				
			<div id="order-info">
				
				<table style="font-size: 16px;" width="1000px" height="200px">
					<tr>
						<th width="495px" style="padding-left: 2px; text-align: center;">
							<b style="font-weight: bold; font-size: 1.5em;"></b>님께서 문의하신 내용입니다.
							<hr class="bline">
							<p style="font-size: 0.7em; color: black;">님께서 문의하신 내용은 총 1건입니다.</p>
						</th>
						
						
					</tr>

                </table>
                
                <br>
                
                <div class="sub-menu-area">
                    <!-- 현재 페이지는 yellow 로 표시 -->
                   
                  

                </div>

            </div>
            
            <br>
			
			<div class="inner">
                <br> <br>

                <hr width="50%">

                <br><br><br>

                <table id="middleTable" width="900px" height="500px" align="center">

                    <tr>
                        <td width="300px" height="30px" align="center" style="font-size: 1.2em; color:gray;">이름</td>
                        <td style="padding-left: 1%; font-size: 1.3em;">이태경</td>
                    </tr>

                  
                    
                    <tr>
                        <td width="300px" height="30px" align="center" style="font-size: 1.2em; color:gray;">아이디</td>
                        <td style="padding-left: 1%; font-size: 1.3em;">xorud3290@naver.com</td>
                    </tr>
   
                    <tr>
                        <td width="300px" height="30px" align="center" style="font-size: 1.2em; color:gray;">문의유형</td>
                        <td style="padding-left: 1%; font-size: 1.3em;">단순문의</td>
                    </tr>
                    <tr>
                        <td width="300px" height="30px" align="center" style="font-size: 1.2em; color:gray;">제목</td>
                        <td style="padding-left: 1%; font-size: 1.3em;">왜 이렇게 맛있나요??</td>
                    </tr>
                    <tr>
                        <td width="300px" height="200px" align="center" valign="top" style="font-size: 1.2em; color:gray; padding-top: 2%;">내용</td>
                        <td style="padding-left: 1%; font-size: 1.3em; padding-top: 1%;" valign="top">
                            <textarea id="contentArea" style="font-size: 1.1em; background-color: white;" disabled>스터디하기 너무 좋네요</textarea>
                        </td>
                    </tr>
                    <tr>
                        <td width="300px" height="200px" align="center" valign="top" style="font-size: 1.2em; color:gray; padding-top: 2%;">답변</td>
                        <td style="padding-left: 1%; font-size: 1.3em; padding-top: 1%;" valign="top">
                            <textarea id="contentArea" style="font-size: 1.0em; color:cornflowerblue; background-color: white;" disabled>감사합니다</textarea>
                        </td>
                    </tr>
                  
                        
                </table>


                <br><br><br>
                
                <div id="btns"> 
                    
                    <button class="sky_btn1" id="dbtn">삭제</button>
                    <button style="background:white; color:black; border:1px solid darkgray" class="sky_btn1" id="mbtn">수정</button>
                    <button class="sky_btn2" id="lbtn">목록</button>

                </div>

               
    
				

				<br>
				<br>

				<!--
                <div class="pagination" align="center">
                    <a href="#">&laquo;</a>
                    <a href="#" class="active">1</a>
                    <a href="#">&raquo;</a>
                </div>
                -->
				<br>
				<br>
				<br>

				

			</div>
		</div>
		</div>

		
	
	


</body>
</html>