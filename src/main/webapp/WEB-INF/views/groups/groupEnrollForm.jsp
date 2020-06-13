<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>groupEnrollForm</title>
    <style>
        .inner{
            width: 100%;
        }
        /* 표 스타일 */
        #groupDetailTable th{
            width: 200px;
            height: 40px;
        }
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
            /* 두줄 넣으면서서히 그림자 생김 */
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
        }
        .sky_btn1:hover { box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19); }
        input { height:20px; border-radius: 2px; }
    </style>
    
	<!-- include summernote css/js-->
	<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
</head>
<body>
    <jsp:include page="../common/menubar.jsp"/>
	<div id="inner" style="width: 800px; margin: auto;">
		<br><br><br><br><br>
		<h2>소모임</h2>
		<br><hr><br>
		
		<form action="insertGroup.gr">
			<div id="detailSum" style="width: 100%;">
				<h1>소모임 개설 신청</h1>
	
				<table id="groupDetailTable">
					<tbody>
						<tr>
							<th>카테고리</th>
							<td>
								<select style="width: 150px; height: 25px;">
									<option value="1">대입</option>
									<option value="2">공무원,임용</option>
									<option value="3">어학,회화</option>
									<option value="4">자격증</option>
									<option value="5">기타</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>제목</th>
							<td><input type="text" style="width: 200px; height: 20px;"
								name="groupTitle" placeholder="제목 아래에 보여질 소제목 작성"></td>
						</tr>
						<tr>
							<th>소제목</th>
							<td><input type="text" style="width: 200px; height: 20px;"
								name="groupSubtitle" placeholder="제목 아래에 보여질 소제목 작성"></td>
						</tr>
						<tr>
							<th>진행일정</th>
							<td><input type="date" name="startDate"> ~ <input type="date" name="endDate"></td>
						</tr>
						<tr>
							<th>장소</th>
							<td>
								<select style="width: 100px; height: 25px;">
									<option>장소1</option>
									<option>장소2</option>
									<option>장소3</option>
								</select>
							</td>
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
				<textarea name="passion" id="summernote" style="width:100%; height:150px; resize:none;"></textarea>
				<br><br>
				<div style="text-align: right;">
					<button type="submit" class="sky_btn1">개설신청</button>
				</div>
			</div>
		</form>
		<br><br><br><br>
	</div>
	
	<script>
		$(document).ready(function() {
			$('#summernote').summernote({
				height: 300,                 // set editor height
				minHeight: null,             // set minimum height of editor
				maxHeight: null,             // set maximum height of editor
				focus: true                  // set focus to editable area after initializing summernote
			});
		});
	</script>
	
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>