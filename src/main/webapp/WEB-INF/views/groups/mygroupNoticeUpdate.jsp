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
    <title>mygroupNoticeDetail</title>
    <style>
        .sky_btn1 {
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
        }
        /* 소모임내용 */
        #mygroupContent{
            width: 75%;
            margin-top: 100px;
            float: left;
        }
        .noticeTitle{
            border-bottom:1px solid #dddddd;
        }
        #groupNoticeForm th{width: 100px;}
        #groupNoticeForm tr{height:50px;}
    </style>
  
</head>
<body>
	<jsp:include page="../myPage/common/myPageMenubar.jsp" />
	<div id="mygroup">
		<jsp:include page="common/mygroupMenubar.jsp" />

		<!-- mygroupContent 영역에 콘텐츠 작성 -->
		<div style="width:100%; height:1000px;">
			<div id="mygroupContent">
				<h2>공지사항</h2>
				<hr><br><br>
	
				<div id="noticeTitle">
					<form id="mygroupNoticeupdateForm" method="post" action="mygroupNoticeUpdate.gr">
						<input type="hidden" name="gnoticeNo" value="${ gn.gnoticeNo }">
						<table id="groupNoticeForm">
							<tr>
								<th style="width: 100px; height:50px;">제목</th>
								<td style="width: 850px; font-weight: 600;"><input type="text" name="gnoticeTitle" value="${ gn.gnoticeTitle }" style="width: 600px;" required></td>
							</tr>
							<tr>
								<th colspan="2"><label for="content">내용</label></th>
							</tr>
							<tr style="height:200px;">
								<th></th>
								<td><textarea cols="80" rows="10" required name="gnoticeContent">${ gn.gnoticeContent }</textarea></td>
							</tr>
						</table>
						<br><br><br>
						<div>
		                    <button type="submit" class="sky_btn1" style="margin-left:300px">수정하기</button>&nbsp;&nbsp;&nbsp;&nbsp;
		                    <button type="button" class="sky_btn2" onclick="javascript:history.go(-1);">이전으로</button>
		                </div>
		            </form>
				</div>
				<hr><br><br><hr><br>
	
			</div>
		</div>
	</div>

	<jsp:include page="../common/footer.jsp" />

</body>
</html>