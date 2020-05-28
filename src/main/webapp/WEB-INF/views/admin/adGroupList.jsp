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
        /* 제일위에 th부분 제외하고.. 넣는 방법 모르겠습니다.. */
        tr:hover{
            background-color: rgba(204, 199, 199, 0.699);
            cursor:pointer;
        }
    </style>

</head>
<body>
	<div id="layoutSidenav"> 
	<jsp:include page="common/adminSidebar.jsp"/>
	</div>
	<main>
        <div  class="container-fluid" style="padding-right: 10px;">
            <h1 class="mt-4"><b>소모임 조회</b></h1>
            <!--작은 회색 네모-->
            <ol class="breadcrumb mb-4" >
                <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                <li class="breadcrumb-item active"><a style="color:black">소모임 조회</a></li>
            </ol>

    <!-- 회원조회 테이블 -->
    
        <div class="card-body">
            <div class="card mb-4">
                <div class="card-header" style="border-bottom: white; background-color: white;"><b style="font-size: x-large;">소모임 조회</b></div>
                <div class="card-body">
                    <div class="table-responsive">
                        <div>
                            <!-- 테이블-->
                            <div clss="slecet" >
                                <select >
                                    <option value="전체보기">전체보기</option>
                                    <option value="회원">회원</option>
                                    <option value="비회원">비회원</option>
                                </select>
                                
                            </div>
                            <!-- 셀렉트 끝 -->
                        </div>

                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center;">
                            <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>모임명</th>
                                    <th>카테고리</th>
                                    <th>시작일</th>
                                    <th>종료일</th>
                                    <th>장소</th>
                                    <th>인원</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr  data-toggle="modal" data-target="#groupLiModal">
                                    <td>Tiger Nixon</td>
                                    <td>System Architect</td>
                                    <td>Edinburgh</td>
                                    <td>61</td>
                                    <td>2011/04/25</td>
                                    <td>$320,800</td>
                                    <td>61</td> 
                                </tr>
                                <tr  data-toggle="modal" data-target="#groupLiModal">
                                    <td>Garrett Winters</td>
                                    <td>Accountant</td>
                                    <td>Tokyo</td>
                                    <td>63</td>
                                    <td>2011/07/25</td>
                                    <td>$170,750</td>
                                    <td>61</td>
                                </tr>
                                <tr  data-toggle="modal" data-target="#groupLiModal">
                                    <td>Ashton Cox</td>
                                    <td>Junior Technical Author</td>
                                    <td>San Francisco</td>
                                    <td>66</td>
                                    <td>2009/01/12</td>
                                    <td>$86,000</td>
                                    <td>61</td>
                                </tr>
                                <tr  data-toggle="modal" data-target="#groupLiModal">
                                    <td>Cedric Kelly</td>
                                    <td>Senior Javascript Developer</td>
                                    <td>Edinburgh</td>
                                    <td>22</td>
                                    <td>2012/03/29</td>
                                    <td>$433,060</td>
                                    <td>61</td>
                                </tr>
                                <tr  data-toggle="modal" data-target="#groupLiModal">
                                    <td>Airi Satou</td>
                                    <td>Accountant</td>
                                    <td>Tokyo</td>
                                    <td>33</td>
                                    <td>2008/11/28</td>
                                    <td>$162,700</td>
                                    <td>61</td>
                                </tr>
                                <tr  data-toggle="modal" data-target="#groupLiModal">
                                    <td>Brielle Williamson</td>
                                    <td>Integration Specialist</td>
                                    <td>New York</td>
                                    <td>61</td>
                                    <td>2012/12/02</td>
                                    <td>$372,000</td>
                                    <td>61</td>
                                </tr>
                                <tr  data-toggle="modal" data-target="#groupLiModal">
                                    <td>Herrod Chandler</td>
                                    <td>Sales Assistant</td>
                                    <td>San Francisco</td>
                                    <td>59</td>
                                    <td>2012/08/06</td>
                                    <td>$137,500</td>
                                    <td>61</td>
                                </tr>
                                <tr  data-toggle="modal" data-target="#groupLiModal">
                                    <td>Rhona Davidson</td>
                                    <td>Integration Specialist</td>
                                    <td>Tokyo</td>
                                    <td>55</td>
                                    <td>2010/10/14</td>
                                    <td>$327,900</td>
                                    <td>61</td>
                                </tr>
                                <tr  data-toggle="modal" data-target="#groupLiModal">
                                    <td>Colleen Hurst</td>
                                    <td>Javascript Developer</td>
                                    <td>San Francisco</td>
                                    <td>39</td>
                                    <td>2009/09/15</td>
                                    <td>$205,500</td>
                                    <td>61</td>
                                </tr>
                                <tr  data-toggle="modal" data-target="#groupLiModal">
                                    <td>Sonya Frost</td>
                                    <td>Software Engineer</td>
                                    <td>Edinburgh</td>
                                    <td>23</td>
                                    <td>2008/12/13</td>
                                    <td>$103,600</td>
                                    <td>61</td>
                                </tr>
                                <tr  data-toggle="modal" data-target="#groupLiModal">
                                    <td>Jena Gaines</td>
                                    <td>Office Manager</td>
                                    <td>London</td>
                                    <td>30</td>
                                    <td>2008/12/19</td>
                                    <td>$90,560</td>
                                    <td>61</td>
                                </tr>
                                <tr  data-toggle="modal" data-target="#groupLiModal">
                                    <td>Quinn Flynn</td>
                                    <td>Support Lead</td>
                                    <td>Edinburgh</td>
                                    <td>22</td>
                                    <td>2013/03/03</td>
                                    <td>$342,000</td>
                                    <td>61</td>
                                </tr>
                                <tr data-toggle="modal" data-target="#groupLiModal">
                                    <td>Charde Marshall</td>
                                    <td>Regional Director</td>
                                    <td>San Francisco</td>
                                    <td>36</td>
                                    <td>2008/10/16</td>
                                    <td>$470,600</td>
                                    <td>61</td>
                                </tr>
       
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
                        

                        
            <!-- 관리 클릭 시 뜨는 모달 (기존에는 안보이다가 위의 a 클릭시 보임) -->
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
                            <label>&nbsp;&nbsp;모임명&nbsp;  :&nbsp; </label><input type="text" ><br><br>
                            <div clss="slecet" >
                                처리유형 선택 &nbsp;&nbsp;
                                <select >
                                    <option value="1">선택하기</option>
                                    <option value="2">토크</option>
                                    <option value="3">스터디</option>
                                    <option value="4">토스</option>
                                </select>
                           </div><br>
                           <label>&nbsp;&nbsp;시작일&nbsp;  :&nbsp; </label><input type="text" ><br><br>
                            <label>&nbsp;&nbsp;장소&nbsp;  :&nbsp; </label><input type="text" ><br><br>
                                <label>&nbsp;&nbsp;정원&nbsp;  :&nbsp; </label><input type="text" ><br><br>
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
                
               <%--  <jsp:include page="../common/footer.jsp"/> --%>
	
</body>
</html>