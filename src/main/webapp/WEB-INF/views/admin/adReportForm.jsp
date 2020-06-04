<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고 관리</title>
<style type="text/css">

</style>
</head>
<body>
	<div id="layoutSidenav">
		<jsp:include page="common/adminSidebar.jsp"/>
		<div id="layoutSidenav_content">

                <!--시작-->
                
                    <main>
                            <div  class="container-fluid" style="padding-right: 10px;">
                                <h1 class="mt-4"><b>신고 관리</b></h1>
                                <!--작은 회색 네모-->
                                <ol class="breadcrumb mb-4" >
                                    <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                                    <li class="breadcrumb-item active"><a style="color:black">신고 관리</a></li>
                                </ol>

                        <!-- 회원조회 테이블 -->
                        
                            <div class="card-body">
                                <div class="card mb-4">
                                    <div class="card-header" style="border-bottom: white; background-color: white;"><b style="font-size: x-large;">신고 조회</b></div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <div>
                                                <!-- 테이블이 부트스트랩이라 넣을 방법을 모르겠습니다..ㅜㅜ-->
                                                <div id="selectBox" >
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
                                                        <th>게시글 번호</th>
                                                        <th>유형</th>
                                                        <th>신고인</th>
                                                        <th>피신고인</th>
                                                        <th>누적 신고 횟수</th>
                                                        <th>신고일</th>
                                                        <th>처리상태</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                   
                                                    <tr data-toggle="modal" data-target="#reportModal">
                                                        <td>Garrett Winters</td>
                                                        <td>Accountant</td>
                                                        <td>Tokyo</td>
                                                        <td>63</td>
                                                        <td>2011/07/25</td>
                                                        <td>$170,750</td>
                                                        <td>61</td>
                                                    </tr>
                                                    <tr data-toggle="modal" data-target="#reportModal">
                                                        <td>Ashton Cox</td>
                                                        <td>Junior Technical Author</td>
                                                        <td>San Francisco</td>
                                                        <td>66</td>
                                                        <td>2009/01/12</td>
                                                        <td>$86,000</td>
                                                        <td>61</td>
                                                    </tr>
                                                    <tr data-toggle="modal" data-target="#reportModal">
                                                        <td>Cedric Kelly</td>
                                                        <td>Senior Javascript Developer</td>
                                                        <td>Edinburgh</td>
                                                        <td>22</td>
                                                        <td>2012/03/29</td>
                                                        <td>$433,060</td>
                                                        <td>61</td>
                                                    </tr>
                                                    <tr data-toggle="modal" data-target="#reportModal">
                                                        <td>Airi Satou</td>
                                                        <td>Accountant</td>
                                                        <td>Tokyo</td>
                                                        <td>33</td>
                                                        <td>2008/11/28</td>
                                                        <td>$162,700</td>
                                                        <td>61</td>
                                                    </tr>
                                                    <tr data-toggle="modal" data-target="#reportModal">
                                                        <td>Brielle Williamson</td>
                                                        <td>Integration Specialist</td>
                                                        <td>New York</td>
                                                        <td>61</td>
                                                        <td>2012/12/02</td>
                                                        <td>$372,000</td>
                                                        <td>61</td>
                                                    </tr>
                                                    <tr data-toggle="modal" data-target="#reportModal">
                                                        <td>Herrod Chandler</td>
                                                        <td>Sales Assistant</td>
                                                        <td>San Francisco</td>
                                                        <td>59</td>
                                                        <td>2012/08/06</td>
                                                        <td>$137,500</td>
                                                        <td>61</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                      


              <!--버튼이없어서.. 어떻게 넣어야할지..(data-toggle="modal" data-target="#reportModal")  클릭 시 뜨는 모달  -->
              <div class="modal fade" id="reportModal" >
                <div class="modal-dialog modal-sm">
                    <div class="modal-content" style="width: 350px;">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">신고 상세 내용</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button> 
                        </div>
                            <!-- Modal Body -->
                            <form action="신고요청받아주는서버" method="post" class="form-horizontal"   >
                              
                                <div class="modal-body" disply="inline-block">
                                    <label>&nbsp;&nbsp;신고인&nbsp;  :&nbsp; </label><input type="text" ><br><br>
                                    <label>피신고인 :&nbsp; </label><input type="text" ><br><br>
                                    <label>누적신고 횟수 :&nbsp; </label><input type="text" style="width: 40px;" ><br><br>
                                    <div>
                                        신고내용 확인
                                        <button type="button" id="reBtn" >내용 보기</button> 
                                    </div><br>  
                                    <div clss="slecet" >
                                        처리유형 선택 &nbsp;&nbsp;
                                        <select >
                                            <option value="1">선택하기</option>
                                            <option value="2">신고 누적 추가</option>
                                            <option value="3">블랙리스트 처리</option>
                                            <option value="4">신고 취소</option>
                                        </select>
                                   </div>
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


                    
                </main>
                <jsp:include page="common/adFooter.jsp"/>
            </div>
            </div>
</body>
</html>