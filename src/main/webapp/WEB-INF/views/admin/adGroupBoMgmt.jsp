<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소모임 게시판 관리</title>
<style>
	 #boardList>tbody>tr:hover{
			 cursor:pointer;
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
                                <h1 class="mt-4"><b>소모임 게시글 관리</b></h1>
                                <!--작은 회색 네모-->
                                <ol class="breadcrumb mb-4" >
                                    <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                                    <li class="breadcrumb-item active"><a style="color:black">소모임 게시글 관리</a></li>
                                </ol>

                        <!-- 소모임게시글관리테이블 -->
                        
                            <div class="card-body">
                                <div class="card mb-4">
                                    <div class="card-header" style="border-bottom: white; background-color: white;"><b style="font-size: x-large;">소모임 게시글 조회</b></div>
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
				                                    <th>공지사항 번호</th>
				                                    <th>소모임명</th>
				                                    <th>제목</th>
				                                    <th>등록일</th>
				                                    <th>상태</th>
				                                </tr>
				                            </thead>
				                            <tbody>
				                               <c:forEach var="g" items="${ list }">
								            	<tr>
				                                    <td>${ g.gnoticeNo }</td>
				                                    <td>${ g.groupName }</td>
				                                    <td>${ g.groupTitle }</td>
				                                    <td>${ g.status }</td>
				                                </tr>
				                               </c:forEach>
				                            </tbody>
				                        </table>
				                        
			            <script>
			            //테이블 tr눌러서 상세 불러오기
			            	$(function(){
			            		
			            		$("#dataTable tbody tr").click(function(){
			            			location.href ="adDetail.bo?bno=" + $(this).children().eq(0).text() //eq(0)은 첫번째 글 	
			            		
			            		});
			            	});
			            </script>
				                        
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    
                </main>
                </div>

</body>
</html>