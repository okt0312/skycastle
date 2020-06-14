<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>mygroupMemMg</title>

    <!-- 모달 부트스트랩-->
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <!-- 모달 부트스트랩 -->

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
        .sky_btn11 {
            width: 100px;
            height: 30px;
            text-align: center;
            font-size: 15px;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
            background: #fdce07;
            color: #000000;
            border: 0;
        }
        /* 소모임내용 */
        #mygroupContent{
            width: 75%;
            margin-top: 50px;
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

        /* 회원 목록 테이블 css */
        #mygroupMemberTable{
            width: 100%;
            height: 450px;
            text-align:left;
            align-self: center;                  
            font-size: 13px;
            border-collapse: collapse; 
            box-sizing: border-box;
            margin: auto;
        }
        .registerName{
            height:34px;
            text-align: left;
            padding-top: 5px;
            padding-bottom: 5px;
            font-weight: 400;
        }
        .registerDate{
            font-weight: 400;
            text-align: center;
        }
        .register{border-bottom:1px solid #dddddd;}
        /* .registerId:hover{
            text-decoration: underline;
            color: rgb(216, 64, 38);
            cursor: pointer;
        } */

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

        /* 모달 스타일 시작*/
        .modal-body{
            margin:10px;
        }
        #modalTh{
        	width:150px;
        }
        /* 모달 스타일 끝*/
    </style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp" />
	<div style="width:100%; height:1000px;">
	<div id="mygroup">
		<jsp:include page="common/mygroupMenubar.jsp" />

		<div id="mygroupContent">
			<h2>회원관리</h2>
			<hr>

			<table id="mygroupMemberTable" border="1">
				<thead>
					<tr class="register">
						<th class="registerId" style="width: 20%;">아이디</th>
						<th class="registerName" style="width: 40%;">회원명</th>
						<th class="registerStatus" style="width: 10%;">상태</th>
						<th class="registerButton" style="width: 20%; text-align: center;">수락/거절</th>
					</tr>
				</thead>
				<tbody>
	             <c:forEach items="${ list }" var="m" >
					<tr class="register">
						<td class="registerId" style="width: 20%;">${ m.userId }</td>
						<!--아이디 누르면 모달창-->
						<td class="registerName" style="width: 40%;">${ m.userName }</td>
						<td class="registerStatus" style="text-align: center; width: 10%;">${ m.status }</td>
						<td class="registerButton" style="text-align: center; width: 10%;">	
							<button type="button" class="sky_btn11" id="r_Btn" onclick="modal();" userId="${ m.userId }" content="${m.passion }" >상세보기</button>
						</td>
					</tr>
				  </c:forEach>	
				  	
				</tbody>
			</table>

			<!-- 페이징바 -->
			<div class="paging" align="center">
				<a href="#" class="btn_arr prev"><span class="hide">Prev</span></a>
				<a href="#" class="on">1</a>
				<!-- D : 활성화페이지일 경우 : on 처리 -->
				<a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
				<a href="#" class="btn_arr next"><span class="hide">Next</span></a>
			</div>
			<br>
			<br>
			<br>
			<br>
			<br>

			<!-- 모달 시작 -->
			<div class="modal fade" id="enrollDetailModal">
				<!-- modal별 id 변경해주세요-->
				<div class="modal-dialog">
					<div class="modal-content">

						<!-- Modal Header -->
						<div class="modal-header">
							<h4 class="modal-title" style="margin: auto; padding: 0;">소모임
								신청회원 관리</h4>
							<button type="button" class="close" data-dismiss="modal"
								style="margin: 0; padding: 0;">&times;</button>
						</div>
							<form action="" id="postForm">
						<!-- Modal body -->
						<div class="modal-body">
							<table style="width: 400px;">
								<tr style="width: 400px;">
									<th id="modalTh">아이디</th>
									<td id="modalId"> </td>
								</tr>
								
								<tr>
									<th>신청사유</th>
									<td><textarea cols="40" rows="10" style="resize: none;"
											readonly id="modalContent"></textarea></td>
									<!--서머노트쓸까?-->
								</tr><input type="hidden" id="modaluserNo" name="modaluserNo">
							</table>
						</div>

						<!-- Modal footer -->
						<div class="modal-footer" style="margin: auto;">
							<!-- 하단버튼 영역-->
							<button type="" class="btn btn-danger sky_btn1"
								style="width: 200px; height: 50px;" onclick="postFormSubmit(1);">수락</button>
							<button type="button" class="btn btn-danger sky_btn2"
								data-dismiss="modal" style="width: 200px; height: 50px;" onclick="postFormSubmit(2);">거절</button>
						</div>
						</form>
						<script>
						function postFormSubmit(num){
							if(num == 1){ // 회원가입
								$("#postForm").attr("action", "grSubmit.gr");
							}else{ // 비번찾기 클릭시
								$("#postForm").attr("action", "grRejection.gr");
							}
							
							$("#postForm").submit();
						}
						</script>
					</div>
				</div>
			</div>
			<!-- 모달 끝 -->
			
			<script>
		
		  	//클릭시 모달 실행
	      	 function modal(){
	      		content = window.event.target.getAttribute("content");
	      		 userId = window.event.target.getAttribute("userId");
	      		 //console.log(userId);
	      		//console.log(content);
	      		 $("#modaluserNo").text(userNo);
	      		 $("#modalId").text(userId);
	      		 $("#modalContent").text(content);
	     		 $("#enrollDetailModal").modal({
	   		       
	   		  	  });
	
	   		};
			</script>
		</div>
	</div>
	</div>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>