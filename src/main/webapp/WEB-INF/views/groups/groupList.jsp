<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>groupList</title>

	<style>
		body
		{
		    margin: 0px;
		    background-color: #ffffff;
		    color: #000000;
		}
		.inner{
		    width: 100%;
		}
		/* 소모임별 */
		.grouplist{
		    width: 800px;
		    height: 200px;
		    margin: auto;
		}
		.groupThumbnailArea{
		    width: 150px; height: 200px; float: left;
		}
		.groupTextArea{
		    width: 650px;
		    float: right;
		    height: 200px;
		    padding-left: 30px;
		    box-sizing: border-box;
		}
	</style>
</head>
<body>

    <jsp:include page="../common/menubar.jsp"/>
    
	<div id="inner" style="width: 800px; margin: auto;">
	    <br><br><br><br><br>
	    <h2>소모임</h2>
	    <br><hr><br>
	
	    <div align="center">
	        <form action="" method="POST" style="margin:0 auto">
	            <select>
	                <option value="title" selected>모임명</option>
	                <option value="content">내용</option>
	            </select>
	            <input type="text" name="search">
	            <button type="submit">검색</button>
	        </form>
	    </div>
	    <br><br><br><br><br><br>
	    <div class="grouplist">
	        <div class="groupThumbnailArea">
	            <img src="img/squaresize.PNG" alt="" class="" width="150px">
	        </div>
	        <div class="groupTextArea">
	            <h3 style="margin: 4px 0px;">소모임 제목</h3>
	            <p style="margin: 0px 0px;">
	                카테고리 | 소제목소제목소제목소제목소제목<br>
	                진행일정 : 2020-11-20 ~ 2020-12-20<br>
	                신청일정 : 2020-11-20 ~ 2020-12-20<br>
	                장소 : 예서방<br>
	                정원 : 8명
	            </p>
	            <br><br><br>
	        </div>
	    </div>
	    <div class="grouplist">
	        <div class="groupThumbnailArea">
	            <img src="img/squaresize.PNG" alt="" class="" width="150px">
	        </div>
	        <div class="groupTextArea">
	            <h3 style="margin: 4px 0px;">소모임 제목</h3>
	            <p style="margin: 0px 0px;">
	                카테고리 | 소제목소제목소제목소제목소제목<br>
	                진행일정 : 2020-11-20 ~ 2020-12-20<br>
	                신청일정 : 2020-11-20 ~ 2020-12-20<br>
	                장소 : 예서방<br>
	                정원 : 8명
	            </p>
	            <br><br><br>
	        </div>
	    </div>
	    <div class="grouplist">
	        <div class="groupThumbnailArea">
	            <img src="img/squaresize.PNG" alt="" class="" width="150px">
	        </div>
	        <div class="groupTextArea">
	            <h3 style="margin: 4px 0px;">소모임 제목</h3>
	            <p style="margin: 0px 0px;">
	                카테고리 | 소제목소제목소제목소제목소제목<br>
	                진행일정 : 2020-11-20 ~ 2020-12-20<br>
	                신청일정 : 2020-11-20 ~ 2020-12-20<br>
	                장소 : 예서방<br>
	                정원 : 8명
	            </p>
	            <br><br><br>
	        </div>
	    </div>
	</div>
	<br><br><br>
	
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>