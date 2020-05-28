<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 조회</title>
<style>
            /* 관리버튼 - 관리 공간 소모임  css*/
            #tbBtn{
                background-color: #343a40;;
                color: white;
                border-radius: 0.25rem;
                border: 1px solid transparent;
            }
            /* 관리버튼 - 삭제 */
            #tbBtn2{
                background-color: #dc3545;
                color: white;
                border-radius: 0.25rem;
                border: 1px solid transparent;
            }
          
           /* 공간 테이블 모달 */
           #spTable tr td {
                text-align: center;
                border:1px solid black;
                width: 250px;
                height: 100px;
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
                                <h1 class="mt-4"><b>회원 조회</b></h1>
                                <!--작은 회색 네모-->
                                <ol class="breadcrumb mb-4" >
                                    <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                                    <li class="breadcrumb-item active"><a style="color:black">회원 조회</a></li>
                                </ol>

                        <!-- 회원조회 테이블 -->
                        
                            <div class="card-body">
                                <div class="card mb-4">
                                    <div class="card-header" style="border-bottom: white; background-color: white;"><b style="font-size: x-large;">회원목록</b></div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <div>
                                                <!-- 테이블이 부트스트랩이라 넣을 방법을 모르겠습니다..ㅜㅜ-->
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
                                                        <th>이름</th>
                                                        <th>상태</th>
                                                        <th>이메일</th>
                                                        <th>생년월일</th>
                                                        <th>휴대폰</th>
                                                        <th>등급</th>
                                                        <th>가입일</th>
                                                        <th>관리버튼</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Tiger Nixon</td>
                                                        <td>System Architect</td>
                                                        <td>Edinburgh</td>
                                                        <td>61</td>
                                                        <td>2011/04/25</td>
                                                        <td>$320,800</td>
                                                        <td>61</td>
                                                        <td>2011/04/25</td>
                                                        <td><button id="tbBtn" data-toggle="modal" data-target="#manageModal">관리</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#spaceModal">공간</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#groupModal">소모임</button>
                                                            <button id="tbBtn2">삭제</button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Garrett Winters</td>
                                                        <td>Accountant</td>
                                                        <td>Tokyo</td>
                                                        <td>63</td>
                                                        <td>2011/07/25</td>
                                                        <td>$170,750</td>
                                                        <td>61</td>
                                                        <td>2011/04/25</td>
                                                        <td><button id="tbBtn" data-toggle="modal" data-target="#manageModal">관리</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#spaceModal">공간</button>
                                                            <button id="tbBtn"  data-toggle="modal" data-target="#groupModal">소모임</button>
                                                            <button id="tbBtn2">삭제</button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Ashton Cox</td>
                                                        <td>Junior Technical Author</td>
                                                        <td>San Francisco</td>
                                                        <td>66</td>
                                                        <td>2009/01/12</td>
                                                        <td>$86,000</td>
                                                        <td>61</td>
                                                        <td>2011/04/25</td>
                                                        <td><button id="tbBtn" data-toggle="modal" data-target="#manageModal">관리</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#spaceModal">공간</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#groupModal">소모임</button>
                                                            <button id="tbBtn2">삭제</button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Cedric Kelly</td>
                                                        <td>Senior Javascript Developer</td>
                                                        <td>Edinburgh</td>
                                                        <td>22</td>
                                                        <td>2012/03/29</td>
                                                        <td>$433,060</td>
                                                        <td>61</td>
                                                        <td>2011/04/25</td>
                                                        <td><button id="tbBtn" data-toggle="modal" data-target="#manageModal">관리</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#spaceModal">공간</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#groupModal">소모임</button>
                                                            <button id="tbBtn2">삭제</button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Airi Satou</td>
                                                        <td>Accountant</td>
                                                        <td>Tokyo</td>
                                                        <td>33</td>
                                                        <td>2008/11/28</td>
                                                        <td>$162,700</td>
                                                        <td>61</td>
                                                        <td>2011/04/25</td>
                                                        <td><button id="tbBtn" data-toggle="modal" data-target="#manageModal">관리</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#spaceModal">공간</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#groupModal">소모임</button>
                                                            <button id="tbBtn2">삭제</button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Brielle Williamson</td>
                                                        <td>Integration Specialist</td>
                                                        <td>New York</td>
                                                        <td>61</td>
                                                        <td>2012/12/02</td>
                                                        <td>$372,000</td>
                                                        <td>61</td>
                                                        <td>2011/04/25</td>
                                                        <td><button id="tbBtn" data-toggle="modal" data-target="#manageModal">관리</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#spaceModal">공간</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#groupModal">소모임</button>
                                                            <button id="tbBtn2">삭제</button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Herrod Chandler</td>
                                                        <td>Sales Assistant</td>
                                                        <td>San Francisco</td>
                                                        <td>59</td>
                                                        <td>2012/08/06</td>
                                                        <td>$137,500</td>
                                                        <td>61</td>
                                                        <td>2011/04/25</td>
                                                        <td><button id="tbBtn" data-toggle="modal" data-target="#manageModal">관리</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#spaceModal">공간</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#groupModal">소모임</button>
                                                            <button id="tbBtn2">삭제</button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Rhona Davidson</td>
                                                        <td>Integration Specialist</td>
                                                        <td>Tokyo</td>
                                                        <td>55</td>
                                                        <td>2010/10/14</td>
                                                        <td>$327,900</td>
                                                        <td>61</td>
                                                        <td>2011/04/25</td>
                                                        <td><button id="tbBtn" data-toggle="modal" data-target="#manageModal">관리</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#spaceModal">공간</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#groupModal">소모임</button>
                                                            <button id="tbBtn2">삭제</button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Colleen Hurst</td>
                                                        <td>Javascript Developer</td>
                                                        <td>San Francisco</td>
                                                        <td>39</td>
                                                        <td>2009/09/15</td>
                                                        <td>$205,500</td>
                                                        <td>61</td>
                                                        <td>2011/04/25</td>
                                                        <td><button id="tbBtn" data-toggle="modal" data-target="#manageModal">관리</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#spaceModal">공간</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#groupModal">소모임</button>
                                                            <button id="tbBtn2">삭제</button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Sonya Frost</td>
                                                        <td>Software Engineer</td>
                                                        <td>Edinburgh</td>
                                                        <td>23</td>
                                                        <td>2008/12/13</td>
                                                        <td>$103,600</td>
                                                        <td>61</td>
                                                        <td>2011/04/25</td>
                                                        <td><button id="tbBtn" data-toggle="modal" data-target="#manageModal">관리</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#spaceModal">공간</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#groupModal">소모임</button>
                                                            <button id="tbBtn2">삭제</button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Jena Gaines</td>
                                                        <td>Office Manager</td>
                                                        <td>London</td>
                                                        <td>30</td>
                                                        <td>2008/12/19</td>
                                                        <td>$90,560</td>
                                                        <td>61</td>
                                                        <td>2011/04/25</td>
                                                        <td><button id="tbBtn" data-toggle="modal" data-target="#manageModal">관리</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#spaceModal">공간</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#groupModal">소모임</button>
                                                            <button id="tbBtn2">삭제</button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Quinn Flynn</td>
                                                        <td>Support Lead</td>
                                                        <td>Edinburgh</td>
                                                        <td>22</td>
                                                        <td>2013/03/03</td>
                                                        <td>$342,000</td>
                                                        <td>61</td>
                                                        <td>2011/04/25</td>
                                                        <td><button id="tbBtn" data-toggle="modal" data-target="#manageModal">관리</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#spaceModal">공간</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#groupModal">소모임</button>
                                                            <button id="tbBtn2">삭제</button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Charde Marshall</td>
                                                        <td>Regional Director</td>
                                                        <td>San Francisco</td>
                                                        <td>36</td>
                                                        <td>2008/10/16</td>
                                                        <td>$470,600</td>
                                                        <td>61</td>
                                                        <td>2011/04/25</td>
                                                        <td><button id="tbBtn" data-toggle="modal" data-target="#manageModal">관리</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#spaceModal">공간</button>
                                                            <button id="tbBtn" data-toggle="modal" data-target="#groupModal">소모임</button>
                                                            <button id="tbBtn2">삭제</button>
                                                        </td>
                                                    </tr>
                           
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        


            <!-- 관리 클릭 시 뜨는 모달 (기존에는 안보이다가 위의 a 클릭시 보임) -->
            <div class="modal fade" id="manageModal" >
                <div class="modal-dialog modal-sm">
                    <div class="modal-content" style="width: 400px;">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">회원관리</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button> 
                    </div>

                    <form action="관리폼요청받아주는서버" method="post" class="form-horizontal">
                        <!-- Modal Body -->
                        <div class="modal-body">
                            <label for="userId" class="mr-sm-2">아이디 :</label>
                            <input type="text" class="form-control mb-2 mr-sm-2" id="userId"> <br>
                            <label for="userName" class="mr-sm-2">이름 :</label>
                            <input type="text" class="form-control mb-2 mr-sm-2" id="userName"><br>
                            <label for="userGrade" class="mr-sm-2">등급 :</label>
                            <input type="text" class="form-control mb-2 mr-sm-2" id="userGrade"> <br>
                            <label for="birth" class="mr-sm-2">생년월일 :</label>
                            <input type="text" class="form-control mb-2 mr-sm-2" id="birth"><br>
                            <label for="phone" class="mr-sm-2">핸드폰 :</label>
                            <input type="text" class="form-control mb-2 mr-sm-2" id="phone">  
                        </div>
                            <div class="model-button" style="padding: 10px;">
                                임시 비밀번호 발급
                                <button type="button">발급</button>
                                <br>
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

            <!-- 공간 클릭 시 뜨는 모달 (내역만 조회한다고해서 수정폼은 안넣음) -->
            <div class="modal fade" id="spaceModal" >
                <div class="modal-dialog modal-sm">
                    <div class="modal-content" style="width: 700px;">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">공간 예약 내역</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button> 
                        </div>
                            <!-- Modal Body -->
                            <div class="modal-body" align="center">
                                <table id="spTable">
                                    <tr>
                                        <td>번호</td>
                                        <td>이용날짜</td>
                                        <td>이용공간</td>
                                        <td>이용시간</td>
                                        <td>이용타입</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>2020.05.28</td>
                                        <td>2인부스</td>
                                        <td>02:00</td>
                                        <td>단기</td>
                                    </tr>
                                    </table>
                            </div>       
                        <!-- Modal footer -->
                        <div class="modal-footer">
                            
                            <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
                        </div>
                   
                    </div>
                </div>
            </div>


               <!-- 소모임 클릭 시 뜨는 모달 (내역만 조회한다고해서 수정폼은 안넣음) -->
               <div class="modal fade" id="groupModal" >
                <div class="modal-dialog modal-sm">
                    <div class="modal-content" style="width: 700px;">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">소모임 내역</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button> 
                        </div>
                            <!-- Modal Body -->
                            <div class="modal-body">
                                <table id="spTable">
                                    <tr>
                                        <td>번호</td>
                                        <td>소모임명</td>
                                        <td>이용공간</td>
                                        <td>이용시간</td>
                                        <td>이용타입</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>2020.05.28</td>
                                        <td>2인부스</td>
                                        <td>02:00</td>
                                        <td>단기</td>
                                    </tr>
                                </table>
                            </div> 
                         <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
                        </div>  
                        </div>
                    </div>
                </div>
                            




             
                        
    
    </main>
	</div>
</body>
</html>