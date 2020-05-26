<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
/* 서브메뉴 스타일 시작 (위에 웹폰트 링크도 복붙해주세요)*/
div {
	box-sizing: border-box;
}
.outer {
	max-width: 1700px;
	margin: auto;
    margin-bottom: 150px;
}


#index-area {
	text-align: right;
	font-size: 12px;
}

#index-area a {
	color: gray
}

.sub-menu-area * {
	padding: 5px;
}

.sub-menu-area>a {
	font-size: 17px;
	color: black;
	font-weight: bolder;
}

/* 서브메뉴 스타일 끝 */
#order-info {
	width: 1000px;
	height: 200px;
	border: 1px solid rgb(76, 60, 60);
	background-color: #fdce07;
	margin: auto;
	color: black;
}

.bline {
	background-color: skyblue;
	height: 2px;
	border: 0px;
	width: 370px;
}


#noticeList>tbody td {
	text-align: center;
}

#noticeList * {
	height: 30px;
	font-size: 12px;
	border-bottom: 1px solid lightgray;
}

#noticeList {
	border-top: 1px solid black;
}

#noticeList>thead th {
	font-size: 14px;
	font-weight: 750;
}

.pagination a {
            color: black;
            padding: 5px 10px;
            text-decoration: none;
            transition: background-color .3s;
            border: 1px solid #ddd;
            margin: 0 2px;
            font-size:12px;
        }

        .pagination a.active {
            background-color: orange;
            color: white;
            border: 1px solid orange;
        }
        .pagination a:hover:not(.active) {background-color: #ddd;}

/* 중간버튼 스타일 */

/* 중간버튼 스타일 */
</style>

</head>
<body>

<jsp:include page="common/myPageMenubar.jsp"/>

<div class="outer">
		<!-- 서브메뉴 타이틀 -->
	
		<br>
		
	
		
		<hr>



		<!-- inner영역에 콘텐츠 작성 -->
		<div class="inner">
				
			<div id="order-info">
				
				<table style="font-size: 16px;" width="1000px" height="200px">
					<tr>
						<th width="495px" style="padding-left: 2px; text-align: center;">
							<b style="font-weight: bold; font-size: 1.5em;"></b>님께서 문의하신 내용입니다.
							<hr class="bline">
							<p style="font-size: 0.7em; color: black;">님께서 문의하신 내용은 총 1건입니다.</p>
						</th>
						
						
					</tr>

                </table>
                
                <br>
                
                <div class="sub-menu-area">
                    <!-- 현재 페이지는 yellow 로 표시 -->
                   
                  

                </div>

            </div>
            
            <br>
			
			<div class="inner">
				<br> <br>
				<table id="noticeList" align="center" width="1000px;">
					<thead>
						<tr>
							<th style="width: 20%; text-align: center;">번호</th>
                            <th style="width: 20%; text-align: center;">카테고리</th>
                            <th style="width: 20%; text-align: center;">제목</th>
							<th style="width: 20%; text-align: center;">작성자</th>
							<th style="width: 20%; text-align: center;">작성일</th>
						</tr>
					</thead>
					<tbody>
						
							<tr>

								<td>1</td>
                                <td>[기타문의]</td>
                                <td>좋아요</td>
								<td>xorud3290</td>
								<td>2020-05-16</td>
							
								
							</tr>


							
						

							
				   
							
                            <tr>
								<td>2</td>
                                <td>[기타문의]</td>
                                <td>좋아요2</td>
								<td>xorud3290</td>
								<td>2020-05-16</td>
                            </tr>
                            
                            <tr>
								<td></td>
                                <td></td>
                                <td></td>
								<td></td>
								<td></td>
                            </tr>

                            <tr>
								<td></td>
                                <td></td>
								<td></td>
								<td></td>
								<td></td>
                            </tr>

                            <tr>
								<td></td>
                                <td></td>
                                <td></td>
								<td></td>
								<td></td>
							</tr>
                            
					</tbody>
				</table>

				<br>
				<br>

				
                
                <div class="pagination" align="center">
                    <a href="#">&laquo;</a>
                    <a href="#" class="active">1</a>
                    <a href="#">&raquo;</a>
                </div>

				<!--
                <div class="pagination" align="center">
                    <a href="#">&laquo;</a>
                    <a href="#" class="active">1</a>
                    <a href="#">&raquo;</a>
                </div>
                -->
				<br>
				<br>
				<br>

				

			</div>
		</div>
		</div>

		

</body>
</html>