<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소모임 개설 관리</title>

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

                <!--시작-->
                <main>
                    <div  class="container-fluid" style="padding-right: 10px;">
                        <h1 class="mt-4"><b>소모임 개설 관리</b></h1>
                        <!--작은 회색 네모-->
                        <ol class="breadcrumb mb-4" >
                            <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                            <li class="breadcrumb-item active"><a style="color:black">소모임 개설 관리</a></li>
                        </ol>

                <!-- 회원조회 테이블 -->
                
                    <div class="card-body">
                        <div class="card mb-4">
                            <div class="card-header" style="border-bottom: white; background-color: white;"><b style="font-size: x-large;">소모임 개설 목록</b></div>
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
                      				  
						<!-- 일단 보류 나중에 채워넣기 -->
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center;">
                            <thead>
                                <tr>
                                    <th>개설신청번호</th>
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
                            <!-- <tbody>
                               <c:forEach var="g" items="${ list }">
                               	<tr  onclick="groupLiModal( ${ g.groupNo });">
                                     <td>
                                    	<div class="" >
                   							 <label><input class="checkbox " type="checkbox" name="uNo" value="1" style="vertical-align: middle; transform: scale(1.4);"></label>
                  						</div></td>
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
                            </tbody> -->
                        </table>
                                    <div><button id="tbBtn" class="btn btn-primary">승인</button><button id="tbBtn2" class="btn btn-danger">거절</button></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            
        </main>
	</div>

</body>
</html>