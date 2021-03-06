<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
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
	background-color:  rgb(13,13,13);
	margin: auto;
	color: #fdce07;
}

.bline {
	background-color: skyblue;
	height: 2px;
	border: 0px;
	width: 370px;
	margin:auto;
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
	color: black;
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
        
        
         #title1{

            width:450px; 
            height:150px;
            resize:none;
            border-radius: 2%;
            padding-left: 10px;
            padding-top: 10px;

       }
       
       #title2{

            width:450px; 
            height:150px;
            resize:none;
            border-radius: 2%;
            padding-left: 10px;
            padding-top: 10px;

        }
        
       

/* 중간버튼 스타일 */
</style>
</head>
<body style="width: 100%; height: 100%; margin:auto;">




<jsp:include page="common/myPageMenubar.jsp"/>
	
	<div class="outer">
		<!-- 서브메뉴 타이틀 -->
	
	

		<br><br><br>
		<!-- inner영역에 콘텐츠 작성 -->
		<div class="inner">
				
			<div id="order-info">
				
				<table style="font-size: 16px;" width="1000px" height="200px">
					<tr>
						<th width="495px" style="padding-left: 2px; text-align: center;">
							<b style="font-weight: bold; font-size: 1.5em;">${ loginUser.userName }</b>님께서 문의하신 내용입니다.
							<hr class="bline">
							<p style="font-size: 0.7em; color:#fdce07;  margin-top: 10px;">문의하신 내용은 총 4건입니다.</p>
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

                <hr width="50%;" style="margin: auto;">
				
                <br><br><br>

				<form id="qupdateForm" method="post" action="qqupdate.bo">
				<input type="hidden" name="qnaNo" value="${ q.qnaNo }">
                <table id="middleTable" width="900px" height="500px" align="center" style="margin:auto;">

                    <tr>
                        <td width="300px" height="30px" align="center" style="font-size: 1.2em; font-weight:bolder;  padding-left: 15px;">아이디</td>
                        <td style="padding-left: 1%; font-size: 1.3em; color: #888;">${loginUser.userId }</td>
                    </tr>
                    
                    <tr>
                        <td width="300px" height="30px" align="center" style="font-size: 1.2em; font-weight:bolder;   padding-left: 15px;">연락처</td>
                        <td style="padding-left: 1%; font-size: 1.3em; color: #888;">${ loginUser.phone }</td>
                    </tr>

                  
                    <tr>
                        <td width="300px" height="30px" align="center" style="font-size: 1.2em; font-weight:bolder;">이름</td>
                        <td style="padding-left: 1%; font-size: 1.3em; font-weight: bolder; color: #888;">${loginUser.userName }</td>
                    </tr>
   						
                   	
                    <tr>
                        <td width="300px" height="200px" align="center" valign="top" style="font-size: 1.2em; font-weight:bolder;  padding-top: 2%;">제목</td>
                        <td style="padding-left: 1%;  padding-top: 1%;" valign="top">
                        
                        <textarea  id="title1" name="qnaTitle" style=" font-weight:bolder; background-color: rag(206, 212, 218);">${ q.qnaTitle }</textarea>
                        
                        </td>
                    </tr>
                    
                   	
                    
                    <tr>
                        <td width="300px" height="200px" align="center" valign="top" style="font-size: 1.2em; font-weight:bolder;  padding-top: 2%;">내용</td>
						<td style="padding-left: 1%;  padding-top: 1%;" valign="top">
                            <textarea id="title2" name="qnaContent" style=" font-weight:bolder; background-color: rag(206, 212, 218);">${q.qnaContent}</textarea>
                       	</td>
                    </tr>
                  
                  	
                        
                </table>


                <br><br><br>
              	
               
              
                <div id="btns" style="margin: 0 auto; width: 50%; padding-left: 270px;"> 
                    
                  
                    <button type="button" style= "border:1px solid darkgray" class="sky_btn1" id="mbtn" onclick="xorud">수정하기</button>
                    <button type="button" class="sky_btn2" id="lbtn" onclick="javascript:history.go(-1);">목록</button>
					
                </div>
                
                </form>
                
             
                
                
                
             
                
              
               
                
                
           

               
    
				

				<br>
				<br>

				
				<br>
				<br>
				<br>

				

			</div>
		</div>
		</div>

		
	<jsp:include page="../common/footer.jsp"/>
	
		
	
	
	<script>
		
		function xorud() {
			if(confirm("수정하시겠습니까?") == true) {
				document.form.submit();
			} else{
				return;
			}
		} 
	</script>
	
	
	
    <script>
	
	
	$("#mbtn").click(function(){
		
		if(confirm) {	
			alertify.confirm('SKYCATLE', '수정하시겠습니까?', function(){ $("#qupdateForm").submit(); }
            , function(){});
		} else {	
			return;
		} 
	});
	
	
   </script>	
	

		

	



</body>
</html>