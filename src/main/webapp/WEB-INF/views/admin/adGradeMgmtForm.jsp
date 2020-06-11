<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등급 관리</title>
<style>
/* 표내용만 줄이 생김 */
#grTable  tr  td {
	border: black solid 1px;
	height: 40px;
}
/* 그래서 표머리도 줄 넣음 */
#grThead {
	border: black solid 1px;
}
/* 내용쪽 칸넓이와 줄 */
#grTh {
	border: black solid 1px;
	width: 380px;
	height: 40px;
}
</style>
</head>
<body>
	<div id="layoutSidenav">
		<jsp:include page="common/adminSidebar.jsp" />
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">
						<b>등급 관리</b>
					</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.html"
							style="color: black"><b>HOME</b></a></li>
						<li class="breadcrumb-item active"><a style="color: black">등급관리</a></li>
					</ol>
					<!-- 아래 표 div시작 -->
					<div class="card mb-4">
						<div class="card-body">
							<div style="display: block;">
								<b style="font-size: x-large;">등급 설정</b>
							</div>
							<br> <br>
							<table id="grade_table" class="table table-hover table-condensed" style="text-align: center;">
								<thead>
									<tr>
										<th style="width: 5%">번호</th>
										<th style="width: 10%">등급</th>
										<th style="width: 10%">할인율(%)</th>
										<th style="width: 20%">등급 기준(전년도 이용횟수 이상)</th>
										<th style="width: 20%">회원 등급 현황(명)</th>
									</tr>
								</thead>
								<tbody style="cursor: pointer;">
									<c:forEach var="g" items="${ list }" varStatus="status">
										<tr>
											<td>${ g.gradeCode }</td>
											<td>${ g.gradeName }</td>
											<fmt:parseNumber var="discount" value="${ g.discount * 100}" integerOnly="true" />
											<td>${ discount}</td>
											<td>${ g.standard }</td>
											<td>${ countList[status.index].gradeCount }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<br> <br>
						</div>
					</div>
					<script type="text/javascript">
					
						$("#grade_table tr").click(function(){
							
							$("#manageModal").modal();
							
							$("#gradeCode").val($(this).children().eq(0).text());
							$("#gradeName").val($(this).children().eq(1).text());
							$("#discount").val($(this).children().eq(2).text());
							$("#standard").val($(this).children().eq(3).text());
							$("#gradeCount").val($(this).children().eq(4).text());
						});
					</script>
					
					<div class="modal fade" id="manageModal">
						<div class="modal-dialog modal-sm">
							<div class="modal-content" style="width: 70%">

								<!-- Modal Header -->
								<div class="modal-header">
									<h4 class="modal-title">등급관리</h4>
									<button type="button" class="close" data-dismiss="modal">&times;</button>
								</div>

								<form id="updateGrade_form" action="updateGrade.ad" method="post"
									class="form-horizontal" enctype="multipart/form-data">
									<input type="hidden" name="gradeCode" id="gradeCode">
									<!-- Modal Body -->
									<div class="modal-body">
										<label for="gradeName" class="mr-sm-2">등급명 :</label>
			                            <input type="text" class="form-control mb-2 mr-sm-2" id="gradeName" name="gradeName" readonly style="background: white"> <br>
			                            <label for="discount" class="mr-sm-2">할인율 :</label>
			                            <input type="text" class="form-control mb-2 mr-sm-2" id="discount" name="discount"><br>
			                            <label for="standard" class="mr-sm-2">전년도 이용 횟수 :</label>
			                            <input type="text" class="form-control mb-2 mr-sm-2" id="standard" name="standard"><br>
			                            <label for="gradeCount" class="mr-sm-2">등급현황 :</label>
			                            <input type="text" class="form-control mb-2 mr-sm-2" id="gradeCount" name="gradeCount" readonly style="background: white"><br>
									</div>
									<!-- Modal footer -->
									<div class="modal-footer">
										<button id="update_member_btn" type="button" class="btn btn-primary" onclick="$('#updateGrade_form').submit();">수정</button>
										<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>
</body>
</html>