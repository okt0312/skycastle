<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	margin: auto;
}


 #qnoticeList>tbody td{text-align: center;}
 #qnoticeList *{
     height:30px;
     font-size:12px;
     border-bottom:1px solid lightgray;
 }
 #qnoticeList{border-top:1px solid black;margin:auto;}
 #qnoticeList>thead th{
            font-size:14px;
            font-weight:750;
        }
        
 #qnoticeList>tbody>tr:hover{
 	cursor: pointer;
 }

.pagination{margin:auto;width:200px;}

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
		
		
		
		<br><br><br>
		<!-- inner영역에 콘텐츠 작성 -->
		<div class="inner">
				
			<div id="order-info">
				
				<table style="font-size: 16px;" width="1000px" height="200px">
					<tr>
						<th width="495px" style="padding-left: 2px; text-align: center;">
							<b style="font-weight: bold; font-size: 1.5em;">${loginUser.userName}</b>님께서 문의하신 내용입니다.
							<hr class="bline">
							<p style="font-size: 0.7em; color: black;">문의하신 내용은 총 1건입니다.</p>
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
				<table id="qnoticeList" align="center" width="1000px;">
					<thead>
						<tr>
							<th style="width: 25%; text-align: center;">번호</th>
                            <th style="width: 25%; text-align: center;">제목</th>
							<th style="width: 25%; text-align: center;">작성일</th>
							<th style="width: 25%; text-align: center;">문의상태</th>
						</tr>
					</thead>
					<tbody>
						
						
						<c:forEach items="${ list }" var="y">
							<tr>

								<td>${y.qnaNo}</td>
                                <td>${y.qnaTitle}</td>
                                <td>${y.qnaDate }</td>
                                
                                <c:set var="st" value="O"/>
                                <c:choose>
                                	<c:when test="${st eq 'O'}">
								<td>처리중</td>
									</c:when>
								<c:when test="${st eq 'Y' }">
								<td>답변완료</td>
								</c:when>
								</c:choose>
								
							</tr>
						</c:forEach>

							
						

							
				   
							
                        

                        
                            
					</tbody>
				</table>
				
				<!-- 클릭 했을 때 해당 글 번호 넘겨주자  -->
				
				
				<script>
					$(function() {
						$("#qnoticeList tbody tr").click(function(){
								location.href= "qdetail.bo?qno=" + $(this).children().eq(0).text();
						});	
					}); 
				</script>
				
				
			
				
				<br>
				<br>
	
				<div class="pagination" align="center">
				
                <c:choose>
                <c:when test="${ pi.currentPage eq 1 }">
                	<a href="#" class="active disabled">&laquo;</a>
                </c:when>
                   
                <c:otherwise>
                	<a href="qlist.bo?currentPage=${ pi.currentPage-1 }" class="active">&laquo;</a>
                </c:otherwise>
                </c:choose>
                
                <c:forEach var="e" begin="${pi.startPage}" end="${ pi.endPage }">
                
                <c:choose>
                	<c:when test="${ e eq pi.currentPage }">
                    <a href="#" class="active disabled">${ e }</a>
                    </c:when>
                    <c:otherwise>
                    <a href="qlist.bo?currentPage=${ e }" class="active">${ e }</a>
                    </c:otherwise>
                    </c:choose>
                    
                    </c:forEach>
                    
                    <c:choose>
                    <c:when test="${pi. currentPage eq pi.maxPage }">
                    <a href="#" class="active disabled">&raquo;</a>
                    </c:when>
                    <c:otherwise>
                     <a href="qlist.bo?currentPage${pi.currentPage+1 }" class="active">&raquo;</a>
                    </c:otherwise>
                    </c:choose>
                </div>
				
				
				<br>
				<br>
				<br>

				

			</div>
		</div>
		</div>

		<jsp:include page="../common/footer.jsp"/>

</body>
</html>