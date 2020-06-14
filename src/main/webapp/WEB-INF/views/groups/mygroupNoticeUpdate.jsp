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
        .sky_btn11 /* 댓글달기 버튼 */
        {
            width: 100px;
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
        .sky_btn22   /* 신고 버튼 */
        {
            width: 80px;
            height: 30px;
            text-align: center;
            font-size: 15px;
            font-weight: bold;
            border-radius: 5px;

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
        #mygroupNoticeTable{
            margin: auto;
        }
        #mygroupNoticeTable>thead>tr{
            height: 50px;
        }
        #mygroupNoticeTable>tbody>tr{
            height: 34px;
        }

        /* 공지사항 테이블 css */
        #mygroupNoticeTable{
            width: 80%;
            height: 450px;
            text-align:left;
            align-self: center;                  
            border-collapse: collapse; 
            box-sizing: border-box;
            margin: auto;
        }
        #mainNotice{
            height:50px;
            font-size: 13px;
            color: #333333;
            border-bottom:2px solid #dddddd;
        }
        #mainNotice button{
            width:50px;
            height:25px;
            margin-right: 5px;
            border-radius: 4px;
            background:#fdce07;
            color: #333333;
            font-weight: bold;
        }
        .title{
            height:34px;
            text-align: left;
            padding-top: 5px;
            padding-bottom: 5px;
            font-size: 13px;
            font-weight: 400;
        }
        .enrollDate{
            font-size: 13px;
            font-weight: 400;
            text-align: right;
        }
        .noticeTitle{
            border-bottom:1px solid #dddddd;
        }
        #mygroupNoticeTable tr:hover{
            text-decoration: underline;
            color: rgb(216, 64, 38);
            cursor: pointer;
        }

        /* 페이징바 css */
        .paging{
            padding:19px;
            text-align:center;
        }
        .paging a{
            width:23px;
            height:23px;
            padding-top:2px;
            display:inline-block;
            vertical-align:middle;
            text-decoration: none;
            color: #333333;
        }
        .paging a:hover{text-decoration:underline;}
        .paging .btn_arr{text-decoration:none;}
        .paging .btn_arr{
            margin:0 3px;
            padding-top:0;
            border:1px solid #ddd;
            border-radius:30px;
            font-size: 9px;
            line-height: 20px;
        }
        .paging .on{
            padding-top:1px;
            height:22px;
            border-radius:30px;
            font-weight:bold;
            text-decoration: underline;
        }
        .paging .on:hover{text-decoration:none;}
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
						<table>
							<tr>
								<th>제목</th>
								<td style="width: 850px; font-weight: 600;"><input type="text" name="gnoticeTitle" value="${ gn.gnoticeTitle }" required></td>
							</tr>
							<tr>
								<th colspan="2"><label for="content">내용</label></th>
							</tr>
							<tr>
								<th colspan="2"><textarea rows="10" required name="gnoticeContent">${ gn.gnoticeContent }</textarea></th>
							</tr>
						</table>
						<div align="center">
		                    <button type="submit" class="sky_btn1">수정하기</button>&nbsp;&nbsp;&nbsp;&nbsp;
		                    <button type="button" class="sky_btn2" onclick="javascript:history.go(-1);">이전으로</button>
		                </div>
		            </form>
				</div>
				<hr>
	
				<br><br><hr><br>
	
			</div>
		
	</div>

	<jsp:include page="../common/footer.jsp" />

</body>
</html>