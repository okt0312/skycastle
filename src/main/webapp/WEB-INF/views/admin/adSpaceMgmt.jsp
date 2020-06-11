<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공간 관리</title>
<style>
	 /* 목록 호버 */
     #dataTable>tbody>tr:hover{
     cursor:pointer;
      background-color: rgba(204, 199, 199, 0.699);
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
				                <div class="card-header" style="border-bottom: white; background-color: white;"><b style="font-size: x-large;">공간현황</b></div>
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
				
				                    <form id="updateSpace_form" action="" method="post" class="form-horizontal">
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
				                        <button type="button" class="btn btn-primary" id="usableSp_Btn">사용가능</button>
				                        <button type="button" class="btn btn-danger" id="unusableSp_Btn">사용불가</button>
				                        <button type="button"  id="modal_close" class="searchBtn btn btn-secondary" data-dismiss="modal">취소</button>
				                     </div>
				                </form>
				                    </div>
				                </div>
				            </div>
				           <!--모달 종료  --> 
				           <script>
				            	$("#dataTable tbody tr").click(function(){
				            		$("#spaceNo").val($(this).children().eq(0).text());
				            		$("#spaceName").val($(this).children().eq(1).text());
				            		$("#personnel").val($(this).children().eq(2).text());
				            		$("#spacePrice").val($(this).children().eq(3).text());
				            		$("#status").val($(this).children().eq(4).text());
				            		
				            	});
				            		 
				            		
				            	
				            
				            		
				            		
				    //사용불가버튼 에이작스
            		$("#unusableSp_Btn").click(function(){
           			
           			var sno = document.getElementById("spaceNo").value;
            		//var grNo= gNo.value;
            		//var grNo =$("#dataTable tbody tr").children().eq(0).text();

            		//console.log(grNo);
            		
            				alertify.confirm('공간관리', '해당 공간을 사용불가로 바꾸시겠습니까?', 
           						 function()
           						 {
           							$.ajax({
           								url:"unusableSpace.ad",
           								data:{"sno" : sno},
           								type:"post",
           								success:function(msg)
           								{
           									alertify.alert("공간 관리", msg, function(){ location.reload();});
           								},
           								error:function()
           								{
           									console.log("ajax통신 실패");
           								}
           								
           							});
          							 }, 
          							 function(){} );
           		
        					   	}); 
				    
				    
              		
				    //사용가능버튼 에이작스
            		$("#usableSp_Btn").click(function(){
           			
           			var sno = document.getElementById("spaceNo").value;
            		//var grNo= gNo.value;
            		//var grNo =$("#dataTable tbody tr").children().eq(0).text();

            		//console.log(grNo);
            		
            				alertify.confirm('공간관리', '해당 공간을 사용가능으로 바꾸시겠습니까?', 
           						 function()
           						 {
           							$.ajax({
           								url:"usableSpace.ad",
           								data:{"sno" : sno},
           								type:"post",
           								success:function(msg)
           								{
           									alertify.alert("공간 관리", msg, function(){ location.reload();});
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