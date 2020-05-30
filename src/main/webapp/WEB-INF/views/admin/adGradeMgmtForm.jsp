<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등급 관리</title>
<style>
	/* 표내용만 줄이 생김 */
	#grTable  tr  td{
	    border:black solid 1px;
	    height: 40px;
	}
	/* 그래서 표머리도 줄 넣음 */
	#grThead{
	    border:black solid 1px;
	}
	/* 내용쪽 칸넓이와 줄 */
	#grTh{
	    border:black solid 1px;
	    width: 380px;
	    height: 40px;
	}
</style>
</head>
<body>
	<div id="layoutSidenav">
		<jsp:include page="common/adminSidebar.jsp"/>
		<div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4"><b>등급 관리</b></h1>
                        <ol class="breadcrumb mb-4" >
                            <li class="breadcrumb-item"><a href="index.html" style="color:black"><b>HOME</b></a></li>
                            <li class="breadcrumb-item active"><a style="color:black">등급 관리</a></li>
                        </ol>
                        <!-- 아래 표 div시작 -->
                        <div class="card mb-4">
                            <div class="card-body">
                                <div style="display: block;"><b style="font-size:x-large;">등급 설정</b></div><div style="display: block; float: right;">
                                    <button type="submit" class="btn btn-primary">수정</button>
                                </div>
                                    <br><br>
                                     <table class="table table-bordered" style="text-align: center;">
									    <thead>
											<tr>
                                                <th style="width: 5%">번호</th>
                                                <th style="width: 10%">등급</th>
                                                <th style="width: 10%">할인율</th>
                                                <th style="width: 20%">등급 기준(전년도 이용횟수 이상)</th>
                                                <th style="width: 20%">회원 등급 현황(명)</th>
                                            </tr>
									    </thead>
									    <tbody>
									      <tr >
                                                <td>1</td>
                                                <td>SKY</td>
                                                <td>10%</td>
                                                <td>3</td>
                                                <td>20</td>
                                            </tr>
									    </tbody>
									  </table>
                                <br><br>
                            </div>
                        </div> 
                        
                    </div>
                </main>
                </div>
	</div>
</body>
</html>