<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매출 현황</title>
<style>
	#chTable input, #chTable select
	{
		height: 40px;
		text-align: center;
	}
</style>
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
                <!-- 매출통계표 -->
                <h2 style="font-weight: bold; color: gray;">&nbsp;매출 통계</h2>
                <form id="salesListForm" action="selectSalesList.ad" method="post">
                	<table id="chTable" style=" background: #e9ecef; text-align:center; width: 100%; height: 50px;">
	                    <tr>
	                        <td style="font-weight: bold; width: 25%;">예약일</td>
	                        <td style="width: 30%;">
	                        	<input type="date" id="startDate" name="startDate" value="${ adr.startDate }">&nbsp;~&nbsp;
             					<input type="date" id="endDate" name="endDate" value="${ adr.endDate }">
           					</td>
	                        <td style="font-weight: bold; width: 25%;">예약 공간</td>
	                        <td>
	                        	<select class="form-control" name="category" style="width: 50%; margin: auto 0;">
	                        		<option value="0">전체보기</option>
	                        		<option value="1">좌석</option>
	                        		<option value="2">공간</option>
	                        	</select>
	                        </td>
	                    </tr>
	                </table>
                </form>
                
                <br>
                
                <div align="center">
                    <button class="searchBtn btn btn-secondary" id="searchBtn">검색</button>
                </div>
                
                <script>
                	$("#searchBtn").click(function(){
                		if($("#startDate").val() == "")
               			{
                			alertify.alert('오류', '날짜를 선택해주세요.');
               			}
                		else if($("#endDate").val() == "")
               			{
                			alertify.alert('오류', '날짜를 선택해주세요.');
               			}
                		else
               			{
               				$("#salesListForm").submit();
               			}
                	});
                </script>
                <br><br>
				<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="text-align: center;">
	                <thead>
	                    <tr>
                            <td>번호</td>
                            <td>결제 공간</td>
                            <td>결제 금액</td>
                            <td>결제 일시</td>
                        </tr>
	                </thead>
	                <tbody>
	                	<c:choose>
	                		<c:when test="${ list ne null }">
	                			<c:forEach var="i" items="${ list }">
				                 	<tr>
			                            <td>${ i.bookNo }</td>
		                            	<c:choose>
		                            		<c:when test="${ i.category eq '1'}">
		                            			<td>${ i.refNo }번 좌석</td>
		                            		</c:when>
		                            		<c:when test="${ i.category eq '2'}">
		                            			<td>${ i.refNo }번 공간</td>
		                            		</c:when>
	                            		</c:choose>
			                            <td>${ i.totalCost }</td>
			                            <td>${ i.bookEnrollDate }</td>
			                        </tr>
	                			</c:forEach>
	                		</c:when>
	                		<c:when test="${ list eq null }">
	                			<tr>
	                				<td>조회된 데이터가 없습니다.</td>
	                			</tr>
	                		</c:when>
	                		<c:otherwise>
		                        <tr>
		                        	<td colspan="4">조회 기간을 선택해주세요.</td>
		                        </tr>
	                		</c:otherwise>
	                	</c:choose>
	                </tbody>
	                <tfoot>
	                	<tr  style="background: #F6F6F6">
	                		<td colspan="2">소계</td>
	                		<c:choose>
	                			<c:when test="${ list ne null }">
			                		<td colspan="2">${ sumCost }원</td>
	                			</c:when>
	                			<c:otherwise>
	                				<td colspan="2">0원</td>
	                			</c:otherwise>
	                		</c:choose>
	                	</tr>
	                </tfoot>
	            </table>
                
                <br><br><br>
	        
	        <!-- 막대그래프 -->
	            <h2 style="font-weight: bold; color: gray;">최근 7일 매출 현황</h2>
	            
	            <br>
	        
	               <div class="row"  align="center" >
	                <div class="col-lg-6">
	                    <div class="card mb-4"> 
	                        <div class="card-header"><i class="fas fa-chart-bar mr-1"></i>최근 7일 매출 현황</div>
	                        <div class="card-body"><canvas id="myBarChart" width="100%" height="50" ></canvas></div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <script>
				var ctx = document.getElementById("myBarChart");
				var today = new Date(); 
				today.setDate(today.getDate());
				today = today.toISOString().substring(0, 10);
				var day1 = new Date();  
				day1.setDate(day1.getDate() - 1);
				day1 = day1.toISOString().substring(0, 10);
				var day2 = new Date();  
				day2.setDate(day2.getDate() - 2);
				day2 = day2.toISOString().substring(0, 10);
				var day3 = new Date();  
				day3.setDate(day3.getDate() - 3);
				day3 = day3.toISOString().substring(0, 10);
				var day4 = new Date();  
				day4.setDate(day4.getDate() - 4);
				day4 = day4.toISOString().substring(0, 10);
				var day5 = new Date();  
				day5.setDate(day5.getDate() - 5);
				day5 = day5.toISOString().substring(0, 10);
				var day6 = new Date();  
				day6.setDate(day6.getDate() - 6);
				day6 = day6.toISOString().substring(0, 10);
				
				
				var myBarChart = new Chart(ctx, {
				    type: 'bar',
				    data: {
				        labels: [day6, day5, day4, day3, day2, day1, today],
				        datasets: [{
				            label: '매출 금액(원)',
				            data: [${ chartList[6].sumCost }, ${ chartList[5].sumCost }, ${ chartList[4].sumCost }, 
				            	   ${ chartList[3].sumCost }, ${ chartList[2].sumCost }, ${ chartList[1].sumCost }, ${ chartList[0].sumCost }],
				            backgroundColor: [
				                'rgba(255, 99, 132, 0.2)',
				                'rgba(54, 162, 235, 0.2)',
				                'rgba(255, 206, 86, 0.2)',
				                'rgba(75, 192, 192, 0.2)',
				                'rgba(153, 102, 255, 0.2)',
				                'rgba(23, 23, 23, 0.2)',
				                'rgba(255, 159, 64, 0.2)'
				            ],
				            borderColor: [
				                'rgba(255,99,132,1)',
				                'rgba(54, 162, 235, 1)',
				                'rgba(255, 206, 86, 1)',
				                'rgba(75, 192, 192, 1)',
				                'rgba(153, 102, 255, 1)',
				                'rgba(23, 23, 23, 1)',
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

	           </main>
		<jsp:include page="common/adFooter.jsp"/>
	    </div>
	</div>
</body>
</html>