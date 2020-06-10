<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공간 관리</title>
<style>
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
		 <!-- 시작 -->
                
                    <main>
                            <div  class="container-fluid" style="padding-right: 10px;">
                                <h1 class="mt-4"><b>공간 현황</b></h1>
                                <!--작은 회색 네모-->
                                <ol class="breadcrumb mb-4" >
                                    <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                                    <li class="breadcrumb-item active"><a style="color:black">공간 현황</a></li>
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
				                                    <th>공간번호</th>
				                                    <th>공간명</th>
				                                    <th>인원</th>
				                                    <th>가격</th>
				                                    <th>상태</th>
				                                </tr>
				                            </thead>
				                            <tbody>
				                               <c:forEach var="s" items="${ list }">
				                               	<tr onclick="spaceLiModal( ${ s.spaceNo });">
				                                    <td>${ s.spaceNo }</td>
				                                    <td>${ s.spaceName }</td>
				                                    <td>${ s.personnel }</td>
				                                    <td>${ s.spacePrice }</td>
				                                    <td>${ s.status }</td>
				                                </tr>
				                               </c:forEach>
				                            </tbody>
				                        </table>
				                        
				                       <script>
						             function spaceLiModal(){
						   			 $('#spaceLiModal').modal({
								       
								  	  });
									};
									</script>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
				            <!-- 소모임 tr 클릭 시 뜨는 모달 -->
				            <div class="modal fade" id="spaceLiModal" >
				                <div class="modal-dialog modal-sm">
				                    <div class="modal-content" style="width: 400px;">
				
				                    <!-- Modal Header -->
				                    <div class="modal-header">
				                        <h4 class="modal-title">공간 관리</h4>
				                        <button type="button" class="close" data-dismiss="modal">&times;</button> 
				                    </div>
				
				                    <form id="updateGroups_form" action="" method="post" class="form-horizontal">
				                        <!-- Modal Body -->
				                        <div class="modal-body">
				                        <label>&nbsp;&nbsp;공간 번호&nbsp;  :&nbsp; </label><input type="number" id="spaceNo" name="spaceNo" readonly><br><br>
				                            <label>&nbsp;&nbsp;공간명&nbsp;  :&nbsp; </label><input type="text" id="spaceName" name="spaceName"><br><br>
				                            <label>&nbsp;&nbsp;인원&nbsp;  :&nbsp; </label><input type="text" id="personnel" name="personnel" ><br><br>
				                           <label>&nbsp;&nbsp;가격&nbsp;  :&nbsp; </label><input type="text" id="spacePrice" name="spacePrice"><br><br>
				                            <label>&nbsp;&nbsp;상태&nbsp;  :&nbsp; </label><input type="text" id="status" name="status"><br><br>
				                        </div>
				                            
				                        
				                    <!-- Modal footer -->
				                    <div class="modal-footer">
				                        <button type="button" class="btn btn-primary" id="updateGroupList_Btn">수정</button>
				                        <button type="button" class="btn btn-danger" id="deleteGroupList_Btn">삭제</button>
				                        <button type="button"  id="modal_close" class="searchBtn btn btn-secondary" data-dismiss="modal">취소</button>
				                     </div>
				                </form>
				                    </div>
				                </div>
				            </div>
				           <!--모달 종료  --> 
				           <script>
				            	$("#dataTable tbody tr").click(function(){
				            		$("#groupNo").val($(this).children().eq(0).text());
				            		$("#groupTitle").val($(this).children().eq(2).text());
				            		$("#leaderNo").val($(this).children().eq(5).text());
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
				            		$("#groupCategory option[value="+ selnum + "]").attr("selected", true);
				            	});
				            	
				            	$('#groupLiModal').on('hidden.bs.modal', function () {
				            		$("#groupCategory option").attr("selected", false);
				            		})
				            	
				            		
				            		
				    //삭제버튼 에이작스
            		$("#deleteGroupList_Btn").click(function(){
           			
           			var grNo = document.getElementById("groupNo").value;
            		//var grNo= gNo.value;
            		//var grNo =$("#dataTable tbody tr").children().eq(0).text();

            		//console.log(grNo);
            		
            				alertify.confirm('소모임 삭제', '해당 소모임을 삭제하시겠습니까?', 
           						 function()
           						 {
           							$.ajax({
           								url:"deleteGroups.ad",
           								data:{"grNo" : grNo},
           								type:"post",
           								success:function(msg)
           								{
           									alertify.alert("소모임 관리", msg, function(){ location.reload();});
           								},
           								error:function()
           								{
           									console.log("ajax통신 실패");
           								}
           								
           							});
          							 }, 
          							 function(){} );
           		
        					   	}); 
				            	
				            	</script>
                    
                </main>
                </div>



</body>
</html>