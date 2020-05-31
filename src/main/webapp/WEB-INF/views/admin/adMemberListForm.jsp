<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 조회</title>
<style>
       /* 관리버튼 - 관리 공간 소모임  css*/
       .tbBtn123{
           background-color: #343a40;;
           color: white;
           border-radius: 0.25rem;
           border: 1px solid transparent;
       }
       /* 관리버튼 - 삭제 */
       #tbBtn4{
           background-color: #dc3545;
           color: white;
           border-radius: 0.25rem;
           border: 1px solid transparent;
       }
     
      /* 공간 테이블 모달 */
      #spTable tr td {
           text-align: center;
           border:1px solid black;
           width: 250px;
           height: 100px;
       }
       #selectBox
       {
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
		<jsp:include page="common/adminSidebar.jsp"/>
		 <div id="layoutSidenav_content">

                <!--시작-->
                
                    <main>
                            <div  class="container-fluid" style="padding-right: 10px;">
                                <h1 class="mt-4"><b>회원 조회</b></h1>
                                <!--작은 회색 네모-->
                                <ol class="breadcrumb mb-4" >
                                    <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                                    <li class="breadcrumb-item active"><a style="color:black">회원 조회</a></li>
                                </ol>

                        <!-- 회원조회 테이블 -->
                        
                            <div class="card-body">
                                <div class="card mb-4">
                                    <div class="card-header" style="border-bottom: white; background-color: white;"><b style="font-size: x-large;">회원목록</b></div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <div>
                                                <!-- 테이블이 부트스트랩이라 넣을 방법을 모르겠습니다..ㅜㅜ-->
                                                <div id="selectBox">
                                                    <select>
                                                        <option value="전체보기">전체보기</option>
                                                        <option value="회원">회원</option>
                                                        <option value="비회원">비회원</option>
                                                    </select>
                                                    
                                                </div>
                                                <!-- 셀렉트 끝 -->
                                            </div>

                                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center;">
                                                <thead>
                                                    <tr>
                                                        <th>번호</th>
                                                        <th>이름</th>
                                                        <th>상태</th>
                                                        <th>이메일</th>
                                                        <th>생년월일</th>
                                                        <th>휴대폰</th>
                                                        <th>등급</th>
                                                        <th>가입일</th>
                                                        <th id="controll_btn">관리버튼</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="m" items="${ list }">
                                                    	<tr>
                                                        <td>${ m.userNo }</td>
                                                        <td>${ m.userName }</td>
                                                        <td>${ m.status }</td>
                                                        <td>${ m.userId }</td>
                                                        <td>${ m.birthday }</td>
                                                        <td>${ m.phone }</td>
                                                        <td>${ m.gradeName }</td>
                                                        <td>${ m.enrollDate }</td>
                                                        <td>
                                                        	<button id="tbBtn1" class="tbBtn123" data-toggle="modal" data-target="#manageModal">관리</button>
                                                            <button id="tbBtn2" class="tbBtn123" data-toggle="modal" data-target="#spaceModal">공간</button>
                                                            <button id="tbBtn3" class="tbBtn123" data-toggle="modal" data-target="#groupModal">소모임</button>
                                                            <c:if test="${ m.status eq '회원' }">
	                                                            <button id="tbBtn4">삭제</button>
                                                            </c:if>
                                                        </td>
                                                    </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <script>
                        	$("#dataTable tbody tr td #tbBtn4").click(function(){
                        		var num = $(this).parent("td").parent("tr").children().eq(0).text();
                        		
                        		alertify.confirm('회원 탈퇴', '해당 회원을 탈퇴처리 시키시겠습니까?', 
                        						 function()
                        						 {
                        							$.ajax({
                        								url:"deleteMember.ad",
                        								data:{"userNo" : num},
                        								type:"post",
                        								success:function(msg)
                        								{
                        									alertify.alert("회원 관리", msg, function(){ location.reload();});
                        								},
                        								error:function()
                        								{
                        									console.log("ajax통신 실패");
                        								}
                        								
                        							});
                       							 }, 
                       							 function(){});
                        		
                        	});
                       	</script>


            <!-- 관리 클릭 시 뜨는 모달 (기존에는 안보이다가 위의 a 클릭시 보임) -->
            <div class="modal fade" id="manageModal" >
                <div class="modal-dialog modal-sm">
                    <div class="modal-content" style="width: 400px;">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">회원관리</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button> 
                    </div>

                    <form action="관리폼요청받아주는서버" method="post" class="form-horizontal">
                        <!-- Modal Body -->
                        <div class="modal-body">
                            <label for="userId" class="mr-sm-2">아이디 :</label>
                            <input type="text" class="form-control mb-2 mr-sm-2" id="userId" name="userId" readonly> <br>
                            <label for="userName" class="mr-sm-2">이름 :</label>
                            <input type="text" class="form-control mb-2 mr-sm-2" id="userName"><br>
                            <label for="userGrade" class="mr-sm-2">등급 :</label>
                            <input type="text" class="form-control mb-2 mr-sm-2" id="userGrade"> <br>
                            <label for="birth" class="mr-sm-2">생년월일 :</label>
                            <input type="text" class="form-control mb-2 mr-sm-2" id="birth"><br>
                            <label for="phone" class="mr-sm-2">핸드폰 :</label>
                            <input type="text" class="form-control mb-2 mr-sm-2" id="phone">  
                        </div>
                        <div class="model-button" style="padding: 10px;">
                            	임시 비밀번호 발급
                            <button type="button">발급</button>
                            <br>
                        </div>
                        
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">수정</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
                    </div>
                    </form>
                    </div>
                </div>
            </div>
            <script>
            	$("#dataTable tbody tr td #tbBtn1").click(function(){
            		$("#userId").val($(this).parent("td").parent("tr").children().eq(3).text());
            		$("#userName").val($(this).parent("td").parent("tr").children().eq(1).text());
            		$("#userGrade").val($(this).parent("td").parent("tr").children().eq(6).text());
            		$("#birth").val($(this).parent("td").parent("tr").children().eq(4).text());
            		$("#phone").val($(this).parent("td").parent("tr").children().eq(5).text());
            	});
           	</script>

            <!-- 공간 클릭 시 뜨는 모달 (내역만 조회한다고해서 수정폼은 안넣음) -->
            <div class="modal fade" id="spaceModal" >
                <div class="modal-dialog modal-sm">
                    <div class="modal-content" style="width: 700px;">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">공간 예약 내역</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button> 
                        </div>
                            <!-- Modal Body -->
                            <div class="modal-body" align="center">
                                <table id="spTable">
                                    <tr>
                                        <td>번호</td>
                                        <td>이용날짜</td>
                                        <td>이용공간</td>
                                        <td>이용시간</td>
                                        <td>이용타입</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>2020.05.28</td>
                                        <td>2인부스</td>
                                        <td>02:00</td>
                                        <td>단기</td>
                                    </tr>
                                    </table>
                            </div>       
                        <!-- Modal footer -->
                        <div class="modal-footer">
                            
                            <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
                        </div>
                   
                    </div>
                </div>
            </div>


               <!-- 소모임 클릭 시 뜨는 모달 (내역만 조회한다고해서 수정폼은 안넣음) -->
               <div class="modal fade" id="groupModal" >
                <div class="modal-dialog modal-sm">
                    <div class="modal-content" style="width: 700px;">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">소모임 내역</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button> 
                        </div>
                            <!-- Modal Body -->
                            <div class="modal-body">
                                <table id="spTable">
                                    <tr>
                                        <td>번호</td>
                                        <td>소모임명</td>
                                        <td>이용공간</td>
                                        <td>이용시간</td>
                                        <td>이용타입</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>2020.05.28</td>
                                        <td>2인부스</td>
                                        <td>02:00</td>
                                        <td>단기</td>
                                    </tr>
                                </table>
                            </div> 
                         <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
                        </div>  
                        </div>
                    </div>
                </div>
    </main>
    <jsp:include page="common/adFooter.jsp"/>
	</div>
	</div>
</body>
</html>