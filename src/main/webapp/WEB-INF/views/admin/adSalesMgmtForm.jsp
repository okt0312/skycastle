<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매출 현황</title>
</head>
<body>
	<div id="layoutSidenav">
		<jsp:include page="common/adminSidebar.jsp"/>
		            <div id="layoutSidenav_content">
                <main >

                    <div class="container-fluid">
                        <h1 class="mt-4"><b>매출 조회</b></h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                            <li class="breadcrumb-item active">매출 조회</li>
                        </ol>
                        
                       <!-- 막대그래프 -->
                       <div class="row"  align="center" >
                        <div class="col-lg-6">
                            <div class="card mb-4"> 
                                <div class="card-header"><i class="fas fa-chart-bar mr-1"></i>최근 7일 매출 현황</div>
                                <div class="card-body"><canvas id="myBarChart" width="100%" height="50" ></canvas></div>
                                <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                            </div>
                        </div>
                    </div>
                </div>
                <script>
					var ctx = document.getElementById("myBarChart");
					var myBarChart = new Chart(ctx, {
					    type: 'bar',
					    data: {
					        labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
					        datasets: [{
					            label: '# of Votes',
					            data: [12, 19, 3, 5, 2, 3],
					            backgroundColor: [
					                'rgba(255, 99, 132, 0.2)',
					                'rgba(54, 162, 235, 0.2)',
					                'rgba(255, 206, 86, 0.2)',
					                'rgba(75, 192, 192, 0.2)',
					                'rgba(153, 102, 255, 0.2)',
					                'rgba(255, 159, 64, 0.2)'
					            ],
					            borderColor: [
					                'rgba(255,99,132,1)',
					                'rgba(54, 162, 235, 1)',
					                'rgba(255, 206, 86, 1)',
					                'rgba(75, 192, 192, 1)',
					                'rgba(153, 102, 255, 1)',
					                'rgba(255, 159, 64, 1)'
					            ],
					            borderWidth: 1
					        }]
					    },
					    options: {
					        scales: {
					            yAxes: [{
					                ticks: {
					                    beginAtZero:true
					                }
					            }]
					        }
					    }
					});
					</script>
                <br><br>

                <!-- 매출통계표 -->
                <h3  >매출 통계</h3>
                <table id="chTable"   >
                    <tr>
                        <td style="background-color: rgb(224, 216, 216); font-weight: bold;">예약일</td>
                        <td><input type="text" style="width: 100px;">~<input type="text" style="width: 100px;"></td>
                        <td style="background-color: rgb(224, 216, 216); font-weight: bold;">예약 공간</td>
                        <td>
                            <div clss="slecet" >
                                <select >
                                    <option value="전체보기">전체보기</option>
                                    <option value="회원">회원</option>
                                    <option value="비회원">비회원</option>
                                </select>
                            </div>
                        </td>
                    </tr>
                </table>
                <br>
                <!-- 버튼 가운데 정렬이 안먹습니다.. -->
                <div align=center;>
                    <button class="searchBtn btn btn-secondary" >검색</button>
                </div>
                <br><br>

                <table id="chTable">
                    <thead style="background-color: rgb(224, 216, 216); font-weight: bold;">
                        <tr>
                            <td>번호</td>
                            <td>결제 공간</td>
                            <td>결제 금액</td>
                            <td>결제 일시</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>좌석1번</td>
                            <td>10000</td>
                            <td>2020.04.20</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>공간1번</td>
                            <td>30000</td>
                            <td>2020.03.20</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>공간2번</td>
                            <td>40000</td>
                            <td>2020.03.25</td>
                        </tr>
                    </tbody>
                    <tfoot style="background-color: rgb(224, 216, 216); font-weight: bold;">
                        <tr>
                            <td colspan="2">소계</td>
                            <td colspan="2">80000</td>
                        </tr>
                    </tfoot>
                    
                </table>
                </main>
				<jsp:include page="common/adFooter.jsp"/>
            </div>
	</div>
</body>
</html>