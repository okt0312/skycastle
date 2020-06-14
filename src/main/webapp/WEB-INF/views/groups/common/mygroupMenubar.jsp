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
					onclick="location.href = 'mygroupNoticeList.gr?currentPage=1&gno=${ listGno }'">공지사항</th>
			</tr>
			<tr>
				<td style="width: 100px; height: 40px; text-align: center;"
					onclick="location.href='mygroupCalendar.gr';">캘린더</td>
			</tr>
		</table>

		<div>
			<button id="chat-btn" class="sky_btn1"
			onclick="window.open('chatForm.gr?gno=${param.gno}','Sky Castle','width=600, height=500, toolbar=no, menubar=no, scrollbars=no, resizable=yes');">채팅</button>
		</div>
		<div id="option-btn" style="margin-top: 300px;">
			<button class="sky_btn2" onclick="deleteConfirm();">소모임 탈퇴</button>
		</div>

		<!-- 방장에게만 보여지는 버튼-->
		<c:if test="${ loginUser.userNo == leaderNo }">
<!--		<a class="btn btn-secondary" style="float:right" href="enrollForm.bo">글쓰기</a> -->
			<div id="option-btn" style="margin-top: 300px;">
				<button class="sky_btn2"
					onclick="location.href='mygroupNoticeEnrollForm.gr';">공지작성</button>
				<br>
				<button class="sky_btn2" onclick="postFormSubmit(2);">회원관리</button>
			</div>

			<form action="" id="postForm" method="post">
				<input type="hidden" name="groupNo" value="${ g.groupNo }">
				<input type="hidden" name="userNo" value="${ loginUser.userNo }">
			</form>
		</c:if>
	</div>
	
	<script>
		function postFormSubmit(num){
			if(num == 1){	// 공지작성 클릭시
				$("#postForm").attr("action", "updateForm.bo");
			}else {			// 회원관리 클릭시
				$("#postForm").attr("action", "delete.bo");
			}
			$("#postForm").submit();
		}
		
        function deleteConfirm() {
            var result = window.confirm("소모임을 나가시겠습니까?");
            var memStatus = "";

            if(result){
                memStatus = "N";
            }else{
                memStatus = "Y";
            }
            console.log(memStatus);
        }
	</script>
</body>
</html>