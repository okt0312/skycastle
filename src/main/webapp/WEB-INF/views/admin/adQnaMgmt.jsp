<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="layoutSidenav">
		<jsp:include page="common/adminSidebar.jsp"/>
            <div id="layoutSidenav_content">

                <!--시작-->
                
                    <main>
                            <div  class="container-fluid" style="padding-right: 10px;">
                                <h1 class="mt-4"><b>1:1문의 관리</b></h1>
                                <!--작은 회색 네모-->
                                <ol class="breadcrumb mb-4" >
                                    <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                                    <li class="breadcrumb-item active"><a style="color:black">1:1문의 관리</a></li>
                                </ol>

                        <!-- 문의 테이블 -->
                        
                            <div class="card-body">
                                <div class="card mb-4">
                                    <div class="card-header" style="border-bottom: white; background-color: white;"><b style="font-size: x-large;">이벤트 조회</b></div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <div>
                                              
                                            </div>

                                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center;">
                                                <thead>
                                                    <tr>
                                                        <th>번호</th>
                                                        <th>제목 </th>
                                                        <th>작성일</th>
                                                        <th>상태</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                   
                                                    <tr data-toggle="modal" data-target="#askManageModal">
                                                        <td>Garrett Winters</td>
                                                        <td>Accountant</td>
                                                        <td>Tokyo</td>
                                                        <td>Tokyo</td>
                                                    </tr>
                                                    <tr data-toggle="modal" data-target="#askManageModal">
                                                        <td>Ashton Cox</td>
                                                        <td>Junior Technical Author</td>
                                                        <td>San Francisco</td>
                                                        <td>Tokyo</td>
                                                    </tr>
                                                    <tr data-toggle="modal" data-target="#askManageModal">
                                                        <td>Cedric Kelly</td>
                                                        <td>Senior Javascript Developer</td>
                                                        <td>Edinburgh</td>
                                                        <td>Tokyo</td>
                                                    </tr>
                                                    <tr data-toggle="modal" data-target="#askManageModal">
                                                        <td>Airi Satou</td>
                                                        <td>Accountant</td>
                                                        <td>Tokyo</td>
                                                        <td>Tokyo</td>
                                                    </tr>
                                                    <tr data-toggle="modal" data-target="#askManageModal">
                                                        <td>Brielle Williamson</td>
                                                        <td>Integration Specialist</td>
                                                        <td>New York</td>
                                                        <td>Tokyo</td>
                                                    </tr>
                                                    <tr data-toggle="modal" data-target="#askManageModal">
                                                        <td>Herrod Chandler</td>
                                                        <td>Sales Assistant</td>
                                                        <td>San Francisco</td>
                                                        <td>Tokyo</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 클릭 시 뜨는 모달  -->
            <div class="modal fade" id="askManageModal" >
                <div class="modal-dialog modal-sm">
                    <div class="modal-content" style="width: 600px; height: 800px;">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">1:1문의 관리</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button> 
                    </div>

                    <form action="폼요청받아주는서버" method="post" class="form-horizontal">
                        <!-- Modal Body -->
                        <div class="modal-body">
                            <label for="userId" class="mr-sm-2">제목 :</label>
                            <input type="text" class="form-control mb-2 mr-sm-2" id="" readonly> <br>
                            <label for="userId" class="mr-sm-2">내용 :</label>
                            <textarea rows=10 cols=75 name="contents" id="contents" placeholder="내용" readonly></textarea><br>
                            <label for="userId" class="mr-sm-2">답변 :</label>
                            <textarea rows=7 cols=75 name="contents" id=""  ></textarea><br>
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
                </main>
            </div>
         </div>
</body>
</html>