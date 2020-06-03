<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>블랙리스트 관리</title>
</head>
<body>
	<div id="layoutSidenav">
	            <div id="layoutSidenav_content">

                <!--시작-->
                
                    <main>
                            <div  class="container-fluid" style="padding-right: 10px;">
                                <h1 class="mt-4"><b>블랙리스트 관리</b></h1>
                                <!--작은 회색 네모-->
                                <ol class="breadcrumb mb-4" >
                                    <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                                    <li class="breadcrumb-item active"><a style="color:black">블랙리스트 관리</a></li>
                                </ol>

                        <!-- 회원조회 테이블 -->
                        
                            <div class="card-body">
                                <div class="card mb-4">
                                    <div class="card-header" style="border-bottom: white; background-color: white;"><b style="font-size: x-large;">블랙리스트 조회</b></div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <div>
                                                <!-- 테이블이 부트스트랩이라 넣을 방법을 모르겠습니다..ㅜㅜ블랙값은뭘로할지..-->
                                                <div class="selectBox" >
                                                    <select >
                                                        <option value="처리상태">처리상태</option>
                                                        <option value="미완료">미완료</option>
                                                        <option value="완료">완료</option>
                                                    </select>
                                                    
                                                </div>
                                                <!-- 셀렉트 끝 -->
                                            </div>

                                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center;">
                                                <thead>
                                                    <tr>
                                                        <th>번호</th>
                                                        <th>회원 아이디</th>
                                                        <th>이름</th>
                                                        <th>누적 신고 횟수</th>
                                                        <th>블랙리스트 이력</th>
                                                        <th>블랙 처리 일짜</th> 
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr data-toggle="modal" data-target="#blackListModal">
                                                        <td>Garrett Winters</td>
                                                        <td>Accountant</td>
                                                        <td>Tokyo</td>
                                                        <td>63</td>
                                                        <td>2011/07/25</td>
                                                        <td>$170,750</td>
                                                    </tr>
                                                    <tr  data-toggle="modal" data-target="#blackListModal">
                                                        <td>Ashton Cox</td>
                                                        <td>Junior Technical Author</td>
                                                        <td>San Francisco</td>
                                                        <td>66</td>
                                                        <td>2009/01/12</td>
                                                        <td>$86,000</td> 
                                                    </tr>
                                                    <tr data-toggle="modal" data-target="#blackListModal">
                                                        <td>Cedric Kelly</td>
                                                        <td>Senior Javascript Developer</td>
                                                        <td>Edinburgh</td>
                                                        <td>22</td>
                                                        <td>2012/03/29</td>
                                                        <td>$433,060</td>
                                                    </tr>
                                                    <tr data-toggle="modal" data-target="#blackListModal">
                                                        <td>Airi Satou</td>
                                                        <td>Accountant</td>
                                                        <td>Tokyo</td>
                                                        <td>33</td>
                                                        <td>2008/11/28</td>
                                                        <td>$162,700</td>
                                                    </tr>
                                                    <tr data-toggle="modal" data-target="#blackListModal">
                                                        <td>Brielle Williamson</td>
                                                        <td>Integration Specialist</td>
                                                        <td>New York</td>
                                                        <td>61</td>
                                                        <td>2012/12/02</td>
                                                        <td>$372,000</td>
                                                    </tr>
                                                    <tr data-toggle="modal" data-target="#blackListModal">
                                                        <td>Herrod Chandler</td>
                                                        <td>Sales Assistant</td>
                                                        <td>San Francisco</td>
                                                        <td>59</td>
                                                        <td>2012/08/06</td>
                                                        <td>$137,500</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                <!-- 클릭 시 뜨는 모달  -->
              <div class="modal fade" id="blackListModal" >
                <div class="modal-dialog modal-sm">
                    <div class="modal-content" style="width: 350px;">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">블랙리스트 정보</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button> 
                        </div>
                            <!-- Modal Body -->
                                 <div class="modal-body" disply="inline-block" >
                                    <label>&nbsp;&nbsp;&nbsp;&nbsp;아이디 :&nbsp; </label><input type="text" value="user01" readonly ><br><br>
                                    <label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이름 :&nbsp; </label><input type="text" value="일경택" readonly ><br><br>
                                    <label>누적신고 횟수 :&nbsp; </label><input type="text" style="width: 150px;"><br><br>
                                    <label>블랙리스트 일자 :&nbsp;</label><input type="text" >
                                </div>
                                   
                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button"  class="searchBtn btn btn-secondary">삭제</button>
                            <button type="button" class="btn btn-danger"  data-dismiss="modal" >취소</button>
                        </div>
                   
                    </div>
                </div>
            </div>  

                    
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2019</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
		<jsp:include page="common/adminSidebar.jsp"/>
	</div>
</body>
</html>