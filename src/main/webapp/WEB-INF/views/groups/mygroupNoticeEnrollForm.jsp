<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <title>mygroupNoticeEnrollForm</title>
    <style>
    	/* div{border:1px solid red;} */
    	#mygroup{
    		width:100%;
    		height:1000px;
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
        }
        /* 소모임내용 */
        #mygroupContent{
            width: 75%;
            margin-top: 100px;
            float: left;
        }
    </style>
</head>
<body>
	<jsp:include page="../myPage/common/myPageMenubar.jsp"/>
	<div id="mygroup">
		<jsp:include page="common/mygroupMenubar.jsp"/>
		
		
		<!-- mygroupContent 영역에 콘텐츠 작성 -->
		<div id="mygroupContent">
		    <h2>공지사항</h2>
		    <hr><br><br>
		    
		    <form action="groupNoticeInsert.gr">
		        <div id="noticeTitle">
		        	<input type="hidden" name="groupNo" value="${groupNo}">
		            <input type="text" name="gnoticeTitle" style="width: 595px;" placeholder="제목을 입력하세요">
		        </div>
		        <hr>
		        <div id="noticeContent" style="margin-top: 50px;">
		            <textarea cols="78" name="gnoticeContent" rows="10" placeholder="내용을 입력하세요"></textarea>
				</div>
			
				<br><br>
			
		        <div align="center">
		            <button type="submit" class="listBtn sky_btn1">등록하기</button>
		        </div>
		    </form>
		    
			<br><br><br><br><br>
		</div>
	</div>
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>