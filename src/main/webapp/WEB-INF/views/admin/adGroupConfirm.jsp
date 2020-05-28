<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소모임 개설 관리</title>

	<style>
   /* 관리버튼 - 승인 css*/
        #tbBtn{
            width: 80px;
            height: 40px;
            text-align: center;
            font-size: 15px;
            font-weight: bold;
            border-radius: 5px;
            padding: 10px;
            cursor: pointer;
            background: #fdce07;
            color: #000000;
            border: 0;
      		  }
        
        /* 관리버튼 - 거절 */
        #tbBtn2{
            width: 80px;
            height: 40px;
            text-align: center;
            font-size: 15px;
            font-weight: bold;
            border-radius: 5px;
            padding: 10px;
            cursor: pointer;
            background: #333333;
            color: white;
            border: 0;
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


                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center;">
                                        <thead>
                                            
                                            <tr>
                                                <th><input type="checkbox" name="xxx" value="yyy"></th>
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
                                            <tr>
                                                <th><input type="checkbox" name="xxx" value="yyy"></th>
                                                <td>Tiger Nixon</td>
                                                <td>System Architect</td>
                                                <td>Edinburgh</td>
                                                <td>61</td>
                                                <td>2011/04/25</td>
                                                <td>$320,800</td>
                                                <td>61</td> 
                                            </tr>
                                            <tr>
                                                <th><input type="checkbox" name="xxx" value="yyy"></th>
                                                <th>dfdsa</th>
                                                <td>Accountant</td>
                                                <td>Tokyo</td>
                                                <td>63</td>
                                                <td>2011/07/25</td>
                                                <td>$170,750</td>
                                                <td>61</td>
                                            </tr>
                                            <tr>
                                                <th><input type="checkbox" name="xxx" value="yyy"></th>
                                                <td>Ashton Cox</td>
                                                <td>Junior Technical Author</td>
                                                <td>San Francisco</td>
                                                <td>66</td>
                                                <td>2009/01/12</td>
                                                <td>$86,000</td>
                                                <td>61</td>
                                            </tr>
                                            <tr>
                                                <th><input type="checkbox" name="xxx" value="yyy"></th>
                                                <td>Cedric Kelly</td>
                                                <td>Senior Javascript Developer</td>
                                                <td>Edinburgh</td>
                                                <td>22</td>
                                                <td>2012/03/29</td>
                                                <td>$433,060</td>
                                                <td>61</td>
                                            </tr>
                                            <tr>
                                                <th><input type="checkbox" name="xxx" value="yyy"></th>
                                                <td>Airi Satou</td>
                                                <td>Accountant</td>
                                                <td>Tokyo</td>
                                                <td>33</td>
                                                <td>2008/11/28</td>
                                                <td>$162,700</td>
                                                <td>61</td>
                                            </tr>
                                            <tr>
                                                <th><input type="checkbox" name="xxx" value="yyy"></th>
                                                <td>Brielle Williamson</td>
                                                <td>Integration Specialist</td>
                                                <td>New York</td>
                                                <td>61</td>
                                                <td>2012/12/02</td>
                                                <td>$372,000</td>
                                                <td>61</td>
                                            </tr>
                                            <tr>
                                                <th><input type="checkbox" name="xxx" value="yyy"></th>
                                                <td>Herrod Chandler</td>
                                                <td>Sales Assistant</td>
                                                <td>San Francisco</td>
                                                <td>59</td>
                                                <td>2012/08/06</td>
                                                <td>$137,500</td>
                                                <td>61</td>
                                            </tr>
                                            <tr>
                                                <th><input type="checkbox" name="xxx" value="yyy"></th>
                                                <td>Rhona Davidson</td>
                                                <td>Integration Specialist</td>
                                                <td>Tokyo</td>
                                                <td>55</td>
                                                <td>2010/10/14</td>
                                                <td>$327,900</td>
                                                <td>61</td>
                                            </tr>
                                            <tr>
                                                <th><input type="checkbox" name="xxx" value="yyy"></th>
                                                <td>Colleen Hurst</td>
                                                <td>Javascript Developer</td>
                                                <td>San Francisco</td>
                                                <td>39</td>
                                                <td>2009/09/15</td>
                                                <td>$205,500</td>
                                                <td>61</td>
                                            </tr>
                                            <tr>
                                                <th><input type="checkbox" name="xxx" value="yyy"></th>
                                                <td>Sonya Frost</td>
                                                <td>Software Engineer</td>
                                                <td>Edinburgh</td>
                                                <td>23</td>
                                                <td>2008/12/13</td>
                                                <td>$103,600</td>
                                                <td>61</td>
                                            </tr>
                                            <tr>
                                                <th><input type="checkbox" name="xxx" value="yyy"></th>
                                                <td>Jena Gaines</td>
                                                <td>Office Manager</td>
                                                <td>London</td>
                                                <td>30</td>
                                                <td>2008/12/19</td>
                                                <td>$90,560</td>
                                                <td>61</td>
                                            </tr>
                                            <tr>
                                                <th><input type="checkbox" name="xxx" value="yyy"></th>
                                                <td>Quinn Flynn</td>
                                                <td>Support Lead</td>
                                                <td>Edinburgh</td>
                                                <td>22</td>
                                                <td>2013/03/03</td>
                                                <td>$342,000</td>
                                                <td>61</td>
                                            </tr>
                                            <tr>
                                                <th><input type="checkbox" name="xxx" value="yyy"></th>
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
                                    <div><button id="tbBtn">승인</button><button id="tbBtn2">거절</button></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            
        </main>
	</div>

</body>
</html>