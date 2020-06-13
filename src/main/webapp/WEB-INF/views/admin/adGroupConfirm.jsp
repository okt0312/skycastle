<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소모임 개설 관리</title>

<style>
#selectBox {
	position: absolute;
	float: left;
	margin-left: 170px;
	display: block;
	z-index: 100;
}
</style>

</head>
<body>
	<div id="layoutSidenav">
		<jsp:include page="common/adminSidebar.jsp" />
		<div id="layoutSidenav_content">

			<!--시작-->
			<main>
				<div class="container-fluid" style="padding-right: 10px;">
					<h1 class="mt-4">
						<b>소모임 개설 관리</b>
					</h1>
					<!--작은 회색 네모-->
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.html"
							style="color: black"><b>HOME</b></a></li>
						<li class="breadcrumb-item active"><a style="color: black">소모임
								개설 관리</a></li>
					</ol>

					<!-- 회원조회 테이블 -->

					<div class="card-body">
						<div class="card mb-4">
							<div class="card-header"
								style="border-bottom: white; background-color: white;">
								<b style="font-size: x-large;">소모임 개설 목록</b>
							</div>
							<div class="card-body">
								<div class="table-responsive">

									<!-- 테이블이 부트스트랩이라 넣을 방법을 모르겠습니다..ㅜㅜ-->
									<div id="selectBox">
										<select>
											<option value="전체보기">전체보기</option>
											<option value="회원">회원</option>
											<option value="비회원">비회원</option>
										</select>

									</div>
									<!-- 셀렉트 끝 -->


									<!-- 일단 보류 나중에 채워넣기 -->
									<table class="table table-bordered" id="dataTable" width="100%"
										cellspacing="0" style="text-align: center;">
										<thead>
											<tr>
												<th>
													<div>
														<label><input class="checkbox " type="checkbox"
															name="grCoCheck" id="th_checkAll" value=""
															style="vertical-align: middle; transform: scale(1.4);"
															onclick="checkAll();"></label>
													</div>
												</th>
												<th>번호</th>
												<th>소모임명</th>
												<th>소제목</th>
												<th>카테고리</th>
												<th>신청일</th>
												<th>종료일</th>
												<th>장소</th>
												<th>정원</th>
												<th>상태</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="g" items="${ list }">
												<tr>
													<td>
														<div>
															<label><input class="checkbox " type="checkbox"
																name="grCoCheck" value="${g.groupNo }"
																style="vertical-align: middle; transform: scale(1.4);"></label>
														</div>
													</td>
													<td>${ g.groupNo }</td>
													<td>${ g.groupTitle }</td>
													<td>${ g.groupSubtitle }</td>
													<td>${ g.groupCategory }</td>
													<td>${ g.startDate }</td>
													<td>${ g.endDate }</td>
													<td>${ g.place }</td>
													<td>${ g.memberLimit }</td>
													<td>${ g.status }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>

									<script>
										//맨위 체크박스 전체클릭 전체해제 기능
										function checkAll() {
											console.log("클릭함");
											if ($("#th_checkAll").is(':checked')) {
												$("input[name=grCoCheck]").prop("checked", true);

											} else {
												$("input[name=grCoCheck]").prop("checked", false);
											}
										}

										//수락버튼클릭시
										function confirmGroup() {
											//클릭한 소모임번호 배열로 담음
											var grCoCheck = new Array();

											$("input[name=grCoCheck]:checked").each(function(i) {grCoCheck.push($(this).val());});

											//console.log(grCoCheck);

											//배열값 넘기려고함
											if (grCoCheck == ""){
												alertify.alert("소모임 개설 관리","소모임을 선택해주세요");
											} else {
												alertify.confirm("소모임 개설 관리", "해당 소모임을 수락하시겠습니까?",function(){
														$.ajax({
															url : "confirmGroup.ad",
															data :{"grCoCheck" : grCoCheck},
															traditional : true,
															type : "post",
															success : function(list){
																//console.log(list);
																		var value = "";
																		for ( var i in list){
																			value += "<tr>"
																						+ "<td>"
																							+ "<div>"
																								+ "<label><input class='checkbox ' type='checkbox' name='grCoCheck' value='"
																									+ list[i].groupNo+ "' style='vertical-align: middle; transform: scale(1.4);'></label>"
																							+ "</div>"
																						+ "</td>"
																						+ "<td>"+ list[i].groupNo+ "</td>"
																						+ "<td>"+ list[i].groupTitle+ "</td>"
																						+ "<td>"+ list[i].groupSubtitle+ "</td>"
																						+ "<td>"+ list[i].groupCategory+ "</td>"
																						+ "<td>"+ list[i].startDate+ "</td>"
																						+ "<td>"+ list[i].endDate+ "</td>"
																						+ "<td>"+ list[i].place+ "</td>"
																						+ "<td>"+ list[i].memberLimit+ "</td>"
																						+ "<td>"+ list[i].status+ "</td>"
																				  + "</tr>"
																		       				}
		
																		$("#dataTable tbody").html(value);
		
																		
																			alertify.alert("소모임 개설 관리", "개설 완료되었습니다", function(){ location.reload();});
																		
																
															},error : function() {
																console.log("ajax통신실패");
															}

														});
												
													},function(){} );

										}
											};

										//개설 거절버튼 클릭시
										function rejectionGroups() {
											//클릭한 소모임번호 배열로 담음
											var grCoCheck = new Array();

											$("input[name=grCoCheck]:checked").each(function(i) {grCoCheck.push($(this).val());});

											console.log(grCoCheck);

											//배열값 넘기려고함
											if (grCoCheck == "") {
												alertify.alert("소모임 개설 관리","소모임을 선택해주세요.");
											} else {
												//	if(alertify.confirm("수락 처리하시겠습니까?")){
												alertify.confirm('소모임 개설 관리', '해당 소모임을 거절하시겠습니까?',function(){
													  $.ajax({
															url : "rejectionGroup.ad",
															data : {
																	"grCoCheck" : grCoCheck
																	},
															traditional : true,
															type : "post",
															success : function(list) {
																console.log(list);

																var value = "";
																for ( var i in list) {
																	value += "<tr>"
																				+ "<td>"
																					+ "<div>"
																						+ "<label><input class='checkbox ' type='checkbox' name='grCoCheck' value='"
																							+ list[i].groupNo+"' style='vertical-align: middle; transform: scale(1.4);'></label>"
																					+ "</div>"
																				+ "</td>"
																				+ "<td>"
																					+ list[i].groupNo
																				+ "</td>"
																				+ "<td>"
																					+ list[i].groupTitle
																				+ "</td>"
																				+ "<td>"
																					+ list[i].groupSubtitle
																				+ "</td>"
																				+ "<td>"
																					+ list[i].groupCategory
																				+ "</td>"
																				+ "<td>"
																					+ list[i].startDate
																				+ "</td>"
																				+ "<td>"
																					+ list[i].endDate
																				+ "</td>"
																				+ "<td>"
																					+ list[i].place
																				+ "</td>"
																				+ "<td>"
																					+ list[i].memberLimit
																				+ "</td>"
																				+ "<td>"
																					+ list[i].status
																				+ "</td>"
																			+ "</tr>"
																}

																$("#dataTable tbody").html(value);

																alertify.alert("소모임 개설 관리", "거절 완료되었습니다", function(){ location.reload();});

															},
															error : function() {
																console.log("ajax통신실패");
															}

														});
												
											},function(){} );

										}
											};

									</script>
									<div>
										<button id="confirmBtn" class="btn btn-primary"onclick="confirmGroup();">승인</button>
										<button id="tbBtn2" class="btn btn-danger"onclick="rejectionGroups();">거절</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


			</main>
		</div>
</body>
</html>