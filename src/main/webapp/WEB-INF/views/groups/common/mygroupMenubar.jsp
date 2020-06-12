<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>mygroupMenubar</title>
	
	<style>
		/* 마이소모임 메뉴바 */
		#mygroupMenubar{
		    width: 25%;
		    margin-top: 100px;
		    float: left;
		    text-align: center;
		}
		/* 메뉴바 표 */
		#groupMenuTable{
		    width: 130px;
		    margin: auto;
		}
		/* 버튼스타일 */
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
		.sky_btn2 {
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
		/* 채팅버튼 */
		#chat-btn{
		    margin-top: 50px;
		}
	</style>
	
</head>
<body>
	<div id="mygroupMenubar">
		<h2>소모임명</h2>

		<table id="groupMenuTable" border="1">
			<tr>
				<th style="width: 100px; height: 40px;"
					onclick="location.href='mygroupNoticeList.gr';">공지사항</th>
			</tr>
			<tr>
				<td style="width: 100px; height: 40px; text-align: center;"
					onclick="location.href='';">캘린더</td>
			</tr>
		</table>

		<div id="chat-btn">
			<button class="sky_btn1" onclick="location.href='chatForm.gr'">채팅</button>
		</div>

		<div id="option-btn" style="margin-top: 300px;">
			<button class="sky_btn2" onclick="deleteConfirm();">소모임 나가기</button>
		</div>

		<!-- 방장에게만 보여지는 버튼-->
		<c:if test="${ loginUser.userNo == leaderNo }">
			<!-- <a class="btn btn-secondary" style="float:right" href="enrollForm.bo">글쓰기</a> -->
			<div id="option-btn" style="margin-top: 300px;">
				<button class="sky_btn2"
					onclick="location.href='mygroupNoticeEnrollForm.gr';">공지작성</button>
				<br>
				<button class="sky_btn2" onclick="postFormSubmit(2);">회원관리</button>
			</div>

			<form action="" id="postForm" method="post">
				<input type="hidden" name="gnno" value="${ gn.gnoticeNo }">
				<input type="hidden" name="fileName" value="${ b.changeName }">
			</form>
		</c:if>
	</div>
</body>
</html>