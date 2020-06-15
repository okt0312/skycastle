<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소모임관리</title>
 
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
	<!-- 알럴트 문자 -->
    <c:if test="${ !empty msg }">
		<script>
			alertify.alert("${msg}");
		</script>
		<c:remove var="msg" scope="session"/>
	</c:if>


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
                                <form id ="selGrNoForm" action="groupList.ad" method="post">
                                   <select id="selNo" name="selNo">
                                       <option value="0" <c:if test="${selNo == '0'}">selected</c:if>>전체보기</option>
                                       <option value="1" <c:if test="${selNo == '1'}">selected</c:if>>대입</option>
                                       <option value="2" <c:if test="${selNo == '2'}">selected</c:if>>공무원임용</option>
                                       <option value="3" <c:if test="${selNo == '3'}">selected</c:if>>어학회화</option>
                                       <option value="4" <c:if test="${selNo == '4'}">selected</c:if>>자격증</option>
                                       <option value="5" <c:if test="${selNo == '5'}">selected</c:if>>기타</option>
                                   </select>
                               </div>
                               <script>
                               $("#selNo").on("change", function(){
									
									$("#selGrNoForm").submit();
									
								});
                               </script>
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

                   <form id="updateGroups_form" action="" method="post" class="form-horizontal">
                        <!-- Modal Body -->
                        <div class="modal-body"  disply="inline-block">
                         <label>소모임 번호&nbsp;  :&nbsp; </label>
                          <input id="groupNo" name="groupNo" class="form-control mb-2 mr-sm-2" type="number" readonly="readonly">
                          <label>모임명&nbsp;  :&nbsp; </label>
                           <input id="groupTitle" name="groupTitle" class="form-control mb-2 mr-sm-2" type="text" >
                            <label>회원명&nbsp;  :&nbsp; </label>
                           <input id="leaderNo" name="leaderNo" class="form-control mb-2 mr-sm-2" type="text" readonly="readonly">
                            
                            <div class="slecet" >
                             	  카테고리 &nbsp;&nbsp;
                                <select id="groupCategory" name="groupCategory" class="form-control">
                                    <option value="1">대입</option>
                                    <option value="2">공무원임용</option>
                                    <option value="3">어학회화</option>
                                    <option value="4">자격증</option>
                                    <option value="5">기타</option>
                                    
                                </select>
                           </div>
                           <label>시작일&nbsp;  :&nbsp; </label>
                           <input id="startDate" name="startDate" class="form-control mb-2 mr-sm-2" type="text">
                           <label>종료일&nbsp;  :&nbsp; </label>
                           <input id="endDate" name="endDate" class="form-control mb-2 mr-sm-2" type="text">
                          <label>장소&nbsp;  :&nbsp; </label>
                           <input id="place" name="place" class="form-control mb-2 mr-sm-2" type="text" >
                           <label>정원&nbsp;  :&nbsp; </label>
                           <input id="memberLimit" name="memberLimit" class="form-control mb-2 mr-sm-2" type="text" >
                            <label>상태&nbsp;  :&nbsp; </label>
                           <input id="status" name="status" class="form-control mb-2 mr-sm-2" type="text" readonly="readonly">
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
            		$("#memberLimit").val($(this).children().eq(6).text());
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
            	});
            	
            		
            		
            		//수정버튼 에이작스
            		$("#updateGroupList_Btn").click(function(){
            		var formData = $("#updateGroups_form").serialize();
            		console.log(formData); //테스트과정
            		
            		alertify.confirm('소모임 수정', '해당 소모임을 수정하시겠습니까?',function(){
						            		$.ajax({
							            		url:"updateGroups.ad",
							            		data: $("#updateGroups_form").serialize(),
							            		type:"post",
							            		success : function(msg)
							            		{
							            			
							            			alertify.alert("소모임 관리", "수정성공!", function(){ location.reload();});
							            		},
							            		error: function()
							            		{
							            			console.log("ajax통신 실패");
							            		}
							            	   }); 
						            		},
						            		function(){} );
                  					}); 
            	
            	
            		//삭제버튼 에이작스
            		$("#deleteGroupList_Btn").click(function(){
           			
           			var grNo = document.getElementById("groupNo").value;
            		//var grNo= gNo.value;
            		//var grNo =$("#dataTable tbody tr").children().eq(0).text();

            		//console.log(grNo);
            		
            				alertify.confirm('소모임 삭제', '해당 소모임을 삭제하시겠습니까?', function(){
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
                <jsp:include page="common/adFooter.jsp"/>
                </div>
             </div>

</body>
</html>