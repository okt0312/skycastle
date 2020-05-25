<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>groupApply</title>
    <style>
        .inner{
            width: 100%;
        }
        /* 표 스타일 */
        #groupDetailTable th{
            width: 200px;
            height: 40px;
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
            /* 두줄 넣으면서서히 그림자 생김 */
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
        }
        .sky_btn1:hover {
            box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
        }
        input{border-radius: 2px;}
    </style>
</head>
<body>
    <jsp:include page="../common/menubar.jsp"/>
	<div id="inner" style="width: 800px; margin: auto;">
		<br><br><br><br><br>
		<h2>소모임</h2>
		<br><hr><br>

		<div id="detailSum" style="width: 100%;">
			<h1>소모임 개설 신청</h1>

			<table id="groupDetailTable">
				<tbody>
					<tr>
						<th>카테고리</th>
						<td><select style="width: 150px; height: 25px;">
								<option>대입</option>
								<option>공무원,임용</option>
								<option>어학,회화</option>
								<option>자격증</option>
								<option>기타</option>
						</select></td>
					</tr>
					<tr>
						<th>소제목</th>
						<td><input type="text" style="width: 200px; height: 20px;"
							placeholder="제목 아래에 보여질 소제목 작성"></td>
					</tr>
					<tr>
						<th>진행일정</th>
						<td><input type="date"> ~ <input type="date"></td>
					</tr>
					<tr>
						<th>신청일정</th>
						<td><input type="date"> ~ <input type="date"></td>
					</tr>
					<tr>
						<th>장소</th>
						<td><select style="width: 100px; height: 25px;">
								<option>장소1</option>
								<option>장소2</option>
								<option>장소3</option>
						</select></td>
					</tr>
					<tr>
						<th>자격</th>
						<!-- 자격은 사용자가 입력할 필요 없으니까 지우는게 어때 -->
						<td><input type="text" style="width: 150px; height: 20px;"></td>
					</tr>
					<tr>
						<th>정원</th>
						<td><input type="number" style="width: 150px; height: 20px;"
							min="3" max="10"></td>
					</tr>
				</tbody>
			</table>
			<br><br><br>
			<h2>소모임 개설 사유</h2>
			<textarea style="width: 100%; height: 150px; resize: none;"></textarea>
			<br><br>
			<div style="text-align: right;">
				<button class="sky_btn1" onclick="">개설신청</button>
			</div>
		</div>
		<br><br><br><br>
	</div>
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>