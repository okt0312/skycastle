<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SKY CASTLE Admin Page</title>
<style>
</style>
</head>
<body>
	<div id="layoutSidenav">
		<jsp:include page="common/adminSidebar.jsp"/>
		<div id="layoutSidenav_content">
			<main>
			    <div class="container-fluid">
			        <h1 class="mt-4">Dashboard</h1>
			        <!-- 알람  -->
			        <div class="row">
			            <!-- 신규예약 -->
			            <div class="col-xl-3 col-md-6">
			                <div class="card bg-primary text-white mb-4">
			                    <div class="card-body"><div style="display: inline-block;">신규예약</div><div style="display: inline-block; float:right; font-size: large;">5</div></div>
			                    <div class="card-footer d-flex align-items-center justify-content-between">
			                        <a class="small text-white stretched-link" href="#">예약 확인</a>
			                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
			                    </div>
			                </div>
			            </div>
			            <!-- 총 예약 -->
			            <div class="col-xl-3 col-md-6">
			                <div class="card bg-warning text-white mb-4">
			                    <div class="card-body"><div style="display: inline-block;">총 예약</div><div style="display: inline-block; float:right; font-size: large;">20</div></div>
			                    <div class="card-footer d-flex align-items-center justify-content-between">
			                        <a class="small text-white stretched-link" href="#">예약 확인</a>
			                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
			                    </div>
			                </div>
			            </div>
			            <!-- 소모임 개설 -->
			            <div class="col-xl-3 col-md-6">
			                <div class="card bg-success text-white mb-4">
			                    <div class="card-body"><div style="display: inline-block;">소모임 개설 신청</div><div style="display: inline-block; float:right; font-size: large;">4</div></div>
			                    <div class="card-footer d-flex align-items-center justify-content-between">
			                        <a class="small text-white stretched-link" href="#">소모임 관리</a>
			                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
			                    </div>
			                </div>
			            </div>
			            <!-- 미확인 결제 -->
			            <div class="col-xl-3 col-md-6">
			                <div class="card bg-danger text-white mb-4">
			                    <div class="card-body"><div style="display: inline-block;">미확인 결제</div><div style="display: inline-block; float:right; font-size: large;">10</div></div>
			                    <div class="card-footer d-flex align-items-center justify-content-between">
			                        <a class="small text-white stretched-link" href="#">결제 관리</a>
			                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
			                    </div>
			                </div>
			            </div>
			            <!-- 잔여 좌석 -->
			            <div class="col-xl-3 col-md-6" >
			                <div class="card bg-primary text-white mb-4" >
			                    <div class="card-body" style="background-color: rgb(239, 160, 111);"><div style="display: inline-block;">잔여 좌석</div><div style="display: inline-block; float:right; font-size: large;">10</div></div>
			                    <div class="card-footer d-flex align-items-center justify-content-between" style="background-color: rgb(239, 160, 111);">
			                        <a class="small text-white stretched-link" href="#" >View Details</a>
			                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
			                    </div>
			                </div>
			            </div>
			            <!-- 사용중인 공간 -->
			            <div class="col-xl-3 col-md-6" >
			                <div class="card bg-primary text-white mb-4" >
			                    <div class="card-body" style="background-color:rgb(158, 158, 158);"><div style="display: inline-block;">사용중인 공간</div><div style="display: inline-block; float:right; font-size: large;">3</div></div>
			                    <div class="card-footer d-flex align-items-center justify-content-between" style="background-color: rgb(158, 158, 158);">
			                        <a class="small text-white stretched-link" href="#" >View Details</a>
			                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
			                    </div>
			                </div>
			            </div>
			            <!-- 미확인 문의 -->
			            <div class="col-xl-3 col-md-6" >
			                <div class="card bg-primary text-white mb-4" >
			                    <div class="card-body" style="background-color:rgb(142, 68, 173);"><div style="display: inline-block;">미확인 문의</div><div style="display: inline-block; float:right; font-size: large;">3</div></div>
			                    <div class="card-footer d-flex align-items-center justify-content-between" style="background-color: rgb(142, 68, 173);">
			                        <a class="small text-white stretched-link" href="#" >View Details</a>
			                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
			                    </div>
			                </div>
			            </div>
			            <!-- 새로운 신고접수 -->
			            <div class="col-xl-3 col-md-6" >
			                <div class="card bg-primary text-white mb-4" >
			                    <div class="card-body" style="background-color:rgb(250, 120, 192);"><div style="display: inline-block;">새로운 신고접수</div><div style="display: inline-block; float:right; font-size: large;">3</div></div>
			                    <div class="card-footer d-flex align-items-center justify-content-between" style="background-color: rgb(250, 120, 192);">
	                                <a class="small text-white stretched-link" href="#" >신고 확인</a>
	                                <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                               	</div>
                            </div>
                       </div>
					</div>
				</div>
			</main>
		</div>
   </div>
</body>
</html>