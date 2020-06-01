<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소모임관리</title>
 
 <!-- jQuery 라이브러리 (선생님것)-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <!-- 부트스트랩에서 제공하고 있는 스타일 -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

        <!-- alertify라이브러리 -->
    <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>


    <style>
        /* 목록 호버 */
        #dataTable>tbody>tr:hover{
        cursor:pointer;
         background-color: rgba(204, 199, 199, 0.699);
         }
      
         #selectBox{
           position: absolute;
           float: left;
           margin-left: 170px;
           display: block;
           z-index: 100;
       }
    </style>

</head>
<body>
<!--for 부트스트랩,, 닫지않는것이 포인트,,  -->
	<div id="layoutSidenav"> 
	<jsp:include page="common/adminSidebar.jsp"/>
	<div id="layoutSidenav_content">
	
	<!-- 시작 -->
	<main>
        <div  class="container-fluid" style="padding-right: 10px;">
            <h1 class="mt-4"><b>소모임 조회</b></h1>
            <!--작은 회색 네모-->
            <ol class="breadcrumb mb-4" >
                <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                <li class="breadcrumb-item active"><a style="color:black">소모임 조회</a></li>
            </ol>

    <!-- 소모임 조회 테이블 -->
    
        <div class="card-body">
            <div class="card mb-4">
                <div class="card-header" style="border-bottom: white; background-color: white;"><b style="font-size: x-large;">소모임 조회</b></div>
                <div class="card-body">
                    <div class="table-responsive">
                        
                            <!-- 테이블 위에 띄워놓은 셀렉박스-->
                               <div id="selectBox">
                                   <select>
                                       <option value="전체보기">전체보기</option>
                                       <option value="1">대입</option>
                                       <option value="2">공무원임용</option>
                                       <option value="3">어학회화</option>
                                       <option value="4">자격증</option>
                                       <option value="5">기타</option>
                                   </select>
                               </div>
                            <!-- 셀렉트 끝 -->
                        

                       <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center;">
                            <thead>
                                <tr>
                                    <th>모임 번호</th>
                                    <th>카테고리</th>
                                    <th>모임명</th>
                                    <th>장소</th>
                                    <th>신청등급</th>
                                    <th>회원번호</th>
                                    <th>정원</th>
                                    <th>시작일</th>
                                    <th>종료일</th>
                                    <th>상태</th>
                                </tr>
                            </thead>
                            <tbody>
                               <c:forEach var="g" items="${ list }">
                               	<tr  onclick="groupLiModal( ${ g.groupNo });">
                                    <td>${ g.groupNo }</td>
                                    <td>${ g.groupCategory }</td>
                                    <td>${ g.groupTitle }</td>
                                    <td>${ g.place }</td>
                                    <td>${ g.gradeLimit }</td>
                                    <td>${ g.leaderNo }</td>
                                    <td>${ g.memberLimit }</td>
                                    <td>${ g.startDate }</td>
                                    <td>${ g.endDate }</td>
                                    <td>${ g.status }</td>
                                </tr>
                               </c:forEach>
                            </tbody>
                        </table>
            <script>
             function groupLiModal(){
   			 $('#groupLiModal').modal({
		       
		  	  });
			};
				             
			</script>                  
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
                        
									
                        
            <!-- 소모임 tr 클릭 시 뜨는 모달 -->
            <div class="modal fade" id="groupLiModal" >
                <div class="modal-dialog modal-sm">
                    <div class="modal-content" style="width: 400px;">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">소모임 관리</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button> 
                    </div>

                    <form action="관리폼요청받아주는서버" method="post" class="form-horizontal">
                        <!-- Modal Body -->
                        <div class="modal-body">
                            <label>&nbsp;&nbsp;모임명&nbsp;  :&nbsp; </label><input type="text" id="groupTitle"><br><br>
                            <label>&nbsp;&nbsp;회원명&nbsp;  :&nbsp; </label><input type="text" id="memberNo"><br><br>
                            <div class="slecet" >
                             	  카테고리 &nbsp;&nbsp;
                                <select id="groupCategory" name="groupCategory">
                                    <option value="1">대입</option>
                                    <option value="2">공무원임용</option>
                                    <option value="3">어학회화</option>
                                    <option value="4">자격증</option>
                                    <option value="5">기타</option>
                                    
                                </select>
                           </div><br>
                           <label>&nbsp;&nbsp;시작일&nbsp;  :&nbsp; </label><input type="text" id="startDate"><br><br>
                           <label>&nbsp;&nbsp;종료일&nbsp;  :&nbsp; </label><input type="text" id="endDate"><br><br>
                            <label>&nbsp;&nbsp;장소&nbsp;  :&nbsp; </label><input type="text" id="place"><br><br>
                            <label>&nbsp;&nbsp;정원&nbsp;  :&nbsp; </label><input type="text" id="memberLimit"><br><br>
                            <label>&nbsp;&nbsp;상태&nbsp;  :&nbsp; </label><input type="text" id="status" ><br><br>
                        </div>
                            
                        
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">수정</button>
                        <button type="button" class="btn btn-danger" >삭제</button>
                        <button type="button"  class="searchBtn btn btn-secondary" data-dismiss="modal">취소</button>
                     </div>
                </form>
                    </div>
                </div>
            </div>
           <!--모달 종료  --> 
           <script>
            	$("#dataTable tbody tr").click(function(){
            		$("#groupTitle").val($(this).children().eq(2).text());
            		$("#memberNo").val($(this).children().eq(5).text());
            		$("#startDate").val($(this).children().eq(7).text());
            		$("#endDate").val($(this).children().eq(8).text());
            		$("#place").val($(this).children().eq(3).text());
            		$("#memberLimit").val($(this).children(6).eq(5).text());
            		$("#status").val($(this).children().eq(9).text());
            		$("#groupCategory").val($(this).children().eq(1).text());
            		
            		var category = $(this).children().eq(1).text();
            		var selnum = "";
            		
            		switch(category)
            		{
            		case "대입":
            			selnum = 1;
            			break;
            		case "공무원임용":
            			selnum = 2;
            			break;
            		case "어학회화":
            			selnum = 3;
            			break;
            		case "자격증":
            			selnum = 4;
            			break;
            		case "기타": 
            			selnum = 5;
            			break;
            		}
            		console.log(selnum);
            		$("#groupCategory option[value="+ selnum + "]").attr("selected", true);
            	});
           	</script> 
                </main>
                </div>
               
	
</body>
</html>