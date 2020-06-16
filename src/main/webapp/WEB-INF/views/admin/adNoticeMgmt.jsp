<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 관리</title>
<style>
 /* 목록 호버 */
     #dataTable>tbody>tr:hover{
     cursor:pointer;
      background-color: rgba(204, 199, 199, 0.699);
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
                           <h1 class="mt-4"><b>공지사항 관리</b></h1>
                           <!--작은 회색 네모-->
                           <ol class="breadcrumb mb-4" >
                               <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                               <li class="breadcrumb-item active"><a style="color:black">공지사항 관리</a></li>
                           </ol>

                   <!-- 회원조회 테이블 -->
                   
                       <div class="card-body">
                           <div class="card mb-4">
                               <div class="card-header" style="border-bottom: white; background-color: white;"><b style="font-size: x-large;">공지사항 조회</b></div>
                               <div class="card-body">
                                   <div class="table-responsive">
                                      

	                                      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center;">
					                            <thead>
					                                <tr>
					                                    <th>공지사항 번호</th>
					                                    <th>제목</th>
					                                    <th>등록일</th>
					                                    <th>상태</th>
					                                </tr>
					                            </thead>
					                            <tbody>
					                               <c:forEach var="n" items="${ list }">
					                               	<tr onclick="adNoticeDetail(${ n.noticeNo });">
					                                    <td>${ n.noticeNo }</td>
					                                    <td>${ n.noticeTitle }</td>
					                                    <td>${ n.enrollDate }</td>
					                                    <td>${ n.status }</td>
					                                </tr>
					                               </c:forEach>
					                            </tbody>
					                        </table>
					                   <!--  <input type="button" value="등록" class="btn btn-primary" id="adNoEnroll"> -->
					                    <a class="btn btn-secondary"  href="noticeEnrollForm.ad">등록</a>
			                        <script>
						            //테이블 tr눌러서 상세 불러오기
						            	$(function(){
						            		
						            		$("#dataTable tbody tr").click(function(){
						            			location.href ="noticeDetail.ad?bno=" + $(this).children().eq(0).text() //eq(0)은 첫번째 글 	
						            		
						            		});
						            	});
						            
						            
						            </script>
						            
                                      
                                       
                                   </div>
                               </div>
                           </div>
                       </div>
                   </div>
                   
                    
                </main>
                <jsp:include page="common/adFooter.jsp"/>
                </div>
	

</body>
</html>