<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
  




</head>
<body>
	<div id="inner" style="width: 800px; margin: auto;">
		<br><hr><br>
		
		<form action="insertGroup.gr" method="post" enctype="multipart/form-data">
			<div id="detailSum" style="width: 100%;">
				<h1>소모임 개설 신청</h1>
	
				<table id="groupDetailTable">
					<tbody>
						<tr>
							<th>카테고리</th>
							<td>
								<select name="groupCategory" style="width: 150px; height: 25px;">
									<option value="1">대입</option>
									<option value="2">공무원,임용</option>
									<option value="3">어학,회화</option>
									<option value="4">자격증</option>
									<option value="5">기타</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>대표사진</th>
							<td><input type="file" style="width: 200px; height: 20px;"
								name="thumbnailImg" required></td>
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
							<td><input type="date" name="startDate" required> ~ <input type="date" name="endDate" required></td>
						</tr>
						<tr>
							<th>장소</th>
							<td>
						        <input type="text" name="place" placeholder="직접입력 또는 방선택" name="color" list="space" required>
						        <datalist id="space">
							        <c:forEach var="s" items="${spaceList }">
							            <option>${s.spaceName}</option>									
									</c:forEach>
						        </datalist>

							</td>
						</tr>
						<tr>
							<th>정원</th>
							<td><input type="number" name="memberLimit" style="width: 150px; height: 20px;"
								min="3" max="10" required></td>
						</tr>
					</tbody>
				</table>
				<br><br><br>
				<h2>소모임 내용</h2>
				<textarea name="groupContent" id="summernote" style="width:100%; height:150px;  resize:none;"></textarea>
				<br><br>
				<div style="text-align: center;">
					<button type="submit" class="sky_btn1">개설신청</button>
				</div>
			</div>
		</form>
		<br><br><br><br>
	</div>
	
	
	
</body>
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
</html>