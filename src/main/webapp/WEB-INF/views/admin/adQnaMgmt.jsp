<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SKY CASTLE admin Page</title>
<style>
	#dataTable:hover
	{
		cursor: pointer;
	}
</style>
</head>
<body>
	
	<div id="layoutSidenav">
		<jsp:include page="common/adminSidebar.jsp" />
		
			<c:if test="${ !empty msg }">
				<script>
					alertify.alert("1:1문의관리", "${msg}");
				</script>
				<c:remove var="msg" scope="session"/>
			</c:if>
		
		<div id="layoutSidenav_content">

			<!--시작-->

			<main>
				<div class="container-fluid" style="padding-right: 10px;">
					<h1 class="mt-4">
						<b>1:1문의 관리</b>
					</h1>
					<!--작은 회색 네모-->
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="index.html" style="color: black"><b>HOME</b></a></li>
						<li class="breadcrumb-item active"><a style="color: black">1:1문의 관리</a></li>
					</ol>

					<!-- 문의 테이블 -->

					<div class="card-body">
						<div class="card mb-4">
							<div class="card-header"
								style="border-bottom: white; background-color: white;">
								<b style="font-size: x-large;">이벤트 조회</b>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<div></div>

									<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center;">
										<thead>
											<tr>
												<th>문의번호</th>
												<th>회원여부</th>
												<th>이름</th>
												<th>제목</th>
												<th>문의날짜</th>
												<th>상태</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="li" items="${ list }">
												<tr data-toggle="modal" data-target="#askManageModal">
													<td>${ li.qnaNo }</td>
													<c:choose>
														<c:when test="${ li.memberYn eq 'Y' }">
															<td>회원</td>
														</c:when>
														<c:when test="${ li.memberYn eq 'N' }">
															<td>비회원</td>
														</c:when>
													</c:choose>
													<td>${ li.userName }</td>
													<td>${ li.qnaTitle }</td>
													<td>${ li.qnaDate }</td>
													<c:choose>
														<c:when test="${ li.status eq 'O' }">
															<td>답변 대기중</td>
														</c:when>
														<c:when test="${ li.status eq 'Y' }">
															<td>답변 완료</td>
														</c:when>
														<c:when test="${ li.status eq 'N' }">
															<td>삭제</td>
														</c:when>
													</c:choose>
												</tr>
											</c:forEach>
										</tbody>
									</table>

								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 클릭 시 뜨는 모달  -->
				<div class="modal fade" id="askManageModal">
					<div class="modal-dialog modal-sm">
						<div class="modal-content" style="width: 600px; height: 800px;">

							<!-- Modal Header -->
							<div class="modal-header">
								<h4 class="modal-title">1:1문의 관리</h4>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>

							<form id="update_qna" action="" method="post" class="form-horizontal">
								<input type="hidden" name="qnaNo" id="qnaNo">
								<input type="hidden" name="memberYn" id="memberYn">
								<input type="hidden" name="qanReply" id="qanReply">
								<input type="hidden" name="email" id="email">
								<!-- Modal Body -->
								<div class="modal-body">
									<label for="qnaTitle" class="mr-sm-2">제목 :</label> <input
										type="text" class="form-control mb-2 mr-sm-2" id="qnaTitle" name="qnaTitle" readonly style="background: white;">
									<br> <label for="qnaContent" class="mr-sm-2">내용 :</label>
									<textarea class="form-control" rows=10 cols=60 name="qnaContent" id="qnaContent" placeholder="내용" readonly style="resize: none;"></textarea>
									<br> <label for="qanReply" class="mr-sm-2">답변 :</label>
									<textarea class="form-control" rows=7 cols=75 name="qnaReply" id="qnaReply" style="resize: none;"></textarea>
									<br>
								</div>
								<!-- Modal footer -->
								<div class="modal-footer" style="padding: 0">
									<button id="qna_insert_btn" type="button" class="btn btn-primary">답변등록</button>
									<button id="qna_delete_btn" type="button" class="btn btn-danger">삭제</button>
									<button type="button" class="searchBtn btn btn-secondary" data-dismiss="modal">취소</button>
								</div>
							</form>
							<script>
								$("#dataTable tbody tr").click(function(){
									var qnaNo = $(this).children().eq(0).text();
									<c:forEach var="lc" items="${ list }">
										if(qnaNo == ${lc.qnaNo})
										{
											$("#qnaNo").val("${lc.qnaNo}");
											$("#qnaTitle").val("${lc.qnaTitle}");
											$("#qnaContent").val("${lc.qnaContent}");
											$("#memberYn").val("${lc.memberYn}");
											$("#qnaReply").val("${lc.qnaReply}");
											$("#email").val("${lc.email}");
										}
									</c:forEach>
								});
								
								$("#qna_insert_btn").click(function(){
									$("#update_qna").attr("action", "answerQna.ad").submit();
								});
								
								$("#qna_delete_btn").click(function(){
									$("#update_qna").attr("action", "deleteQna.ad").submit();
								});
							</script>
							
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>
</body>
</html>