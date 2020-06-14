<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>mygroupMenubar</title>
	
	<style>
		#mainTitle{
			padding:10px;
			font-size: 32px;
			font-weight:300;
			color:#333333;
		}
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
		.subMenu:hover{
			 text-decoration: underline;
			 color: rgb(216, 64, 38);
			 cursor: pointer;		
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
		    margin-bottom:15px;
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
		<p id="mainTitle">소모임명</p>

		<table id="groupMenuTable">
			<tr class="subMenu">
				<td style="width: 100px; height: 40px; text-align:left;"
					onclick="location.href = 'mygroupNoticeList.gr?currentPage=1&gno=${ listGno }'">* 공지사항</td>
			</tr>
			<tr class="subMenu">
				<td style="width: 100px; height: 40px; text-align:left;"
					onclick="location.href='mygroupCalendar.gr';">* 캘린더</td>
			</tr>
		</table>

		<div>
			<button id="chat-btn" class="sky_btn1"
			onclick="window.open('chatForm.gr?gno=${param.gno}','Sky Castle','width=600, height=500, toolbar=no, menubar=no, scrollbars=no, resizable=yes');">채팅</button>
		</div>
		
		<!-- <br><br> 
		<div id="option-btn">
			<button id="deleteConfirm" class="sky_btn2" onclick="deleteConfirm();">소모임 탈퇴</button>
		</div>
		--!>
		
		<!-- 방장에게만 보여지는 버튼-->
		<c:if test="${ param.userNo == list[0].leaderNo }">
			<div id="option-btn" style="margin-top: 100px;">
				<button class="sky_btn2" onclick="postFormSubmit(1);">공지작성</button>
				<br>
				<button class="sky_btn2" type="button" onclick="postFormSubmit(2);">회원관리</button>
			</div>

			<form action="" id="postForm" method="post">
				<%-- <input type="hidden" name="groupNo" value="${ listGno.groupNo }"> --%>
				<input type="hidden" name="userNo" value="${ loginUser.userNo }">
			</form>
			
			<form action="groupDropOut.gr" id="dropOutForm" method="post">
				<input type="hidden" name="groupNo" value="${ g.groupNo }">
				<input type="hidden" name="userNo" value="${ loginUser.userNo }">
			</form>
		</c:if>
		
		<div id="option-btn">
			<button id="deleteConfirm" class="sky_btn2" onclick="deleteConfirm();">소모임 탈퇴</button>
		</div>
	</div>
	
	<script>
		function postFormSubmit(num){
			if(num == 1){	// 공지작성 클릭시
				$("#postForm").attr("action", "mygroupNoticeEnrollForm.gr");
			}else {			// 회원관리 클릭시
				$("#postForm").attr("action", "mygroupMemMg.gr?groupNo=" + ${listGno});
			}
			$("#postForm").submit();
		}
    	
    	$("#deleteConfirm").click(function(){
			
			var userNo = "${ loginUser.userNo }";
			
			if(userNo == "${ list[0].leaderNo }") {	// 소모임 탈퇴를 원하는 회원이 방장일 경우
				alertify.alert("소모임 탈퇴 확인", "방장의 소모임탈퇴는 관리자가 처리합니다. 관리자에게 연락바랍니다.", function(){});
			} else {	// 소모임 탈퇴를 원하는 회원이 방장일 경우
				alertify.confirm('소모임 탈퇴 확인', '해당 소모임을 탈퇴하시겠습니까?', function(){ $("#dropOutForm").submit(); }
	            , function(){});
			}
		});
	</script>
</body>
</html>