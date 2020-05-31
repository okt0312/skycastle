<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>groupListView</title>

	<style>
		body
		{
		    margin: 0px;
		    background-color: #ffffff;
		    color: #000000;
		}
		.inner{
		    width: 100%;
		}
		/* 소모임별 */
		.grouplist{
		    width: 800px;
		    height: 200px;
		    margin: auto;
		}
		.groupThumbnailArea{
		    width: 150px; height: 200px; float: left;
		}
		.groupTextArea{
		    width: 650px;
		    float: right;
		    height: 200px;
		    padding-left: 30px;
		    box-sizing: border-box;
		}
	</style>
</head>
<body>

    <jsp:include page="../common/menubar.jsp"/>
    
	<div id="inner" style="width: 800px; margin: auto;">
	    <br><br><br><br><br>
	    <h2>소모임</h2>
	    <br><hr><br>
	
	    <div align="center">
	        <form action="" method="POST" style="margin:0 auto">
	            <select>
	                <option value="title" selected>모임명</option>
	                <option value="content">내용</option>
	            </select>
	            <input type="text" name="search">
	            <button type="submit">검색</button>
	        </form>
	    </div>
	    <br><br><br><br><br><br>
	    
	    <!-- 수업때 쓴 검색 폼 -->
		<form id="searchForm" action="" method="Get" align="center">
			<div class="select">
				<select class="custom-select" name="condition">
					<option value="writer">작성자</option>
					<option value="title">제목</option>
					<option value="content">내용</option>
				</select>
			</div>
			<div class="text">
				<input type="text" class="form-control" name="keyword">
			</div>
			<button type="submit" class="searchBtn btn btn-secondary">검색</button>
		</form>
	    
	    
	    
	    
	    <c:forEach items="${ list }" var="g">
		    <div class="grouplist">
		        <div class="groupThumbnailArea">
		            <img src="img/squaresize.PNG" alt="" class="" width="150px">
		        </div>
		        <div class="groupTextArea">
		            <h3 style="margin: 4px 0px;">${ g.groupTitle }</h3>
		            <p style="margin: 0px 0px;">
		            
		         	<c:choose>
		         		<c:when test="${ g.groupCategory == 1 }">
		         대입 | ${ g.groupSubtitle }<br>
		         		</c:when>
		         		<c:when test="${ g.groupCategory == 2 }">
		         공무원,임용 | ${ g.groupSubtitle }<br>
		         		</c:when>
		         		<c:when test="${ g.groupCategory == 3 }">
		         어학,회화 | ${ g.groupSubtitle }<br>
		         		</c:when>
		         		<c:when test="${ g.groupCategory == 4 }">
		         자격증 | ${ g.groupSubtitle }<br>
		         		</c:when>
		         		<c:when test="${ g.groupCategory == 5 }">
		         기타 | ${ g.groupSubtitle }<br>
		         		</c:when>
		         		<c:otherwise>
		         없음 | ${ g.groupSubtitle }<br>
		         		</c:otherwise>
		         	</c:choose>
		                신청일정 : ${ g.startDate } ~ ${ g.endDate }<br>
		                장소 : ${ g.place }<br>
		                정원 : ${ g.memberLimit }명
		            </p>
		            <br><br><br>
		        </div>
		    </div>
	    </c:forEach>
	    
	    
		<script>
			$(function(){
				$("#boardList tbody tr").click(function(){
					location.href = "detail.bo?bno=" + $(this).children().eq(0).text();
				});
			});
		</script>
		<br>
	    
	    
	    
        <!-- 페이징바 -->
		<div class="paging" align="center">          
			<c:choose>
				<c:when test="${ pi.currentPage eq 1 }">          
					<a href="#" class="btn_arr prev"><span class="hide">Prev</span></a>
				</c:when>
				<c:otherwise>	  
					<a href="groupList.gr?currentPage=${ pi.currentPage-1 }" class="btn_arr prev"><span class="hide">Prev</span></a>
				</c:otherwise>	
			</c:choose>    
				
			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
				<c:choose>
					<c:when test="${ p eq pi.currentPage }">
						<a href="#" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
					</c:when>
					<c:otherwise>
						<a href="groupList.gr?currentPage=${ p }" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
					</c:otherwise>
				</c:choose>
			</c:forEach>    			
					<!--    <a href="#">2</a>
					   <a href="#">3</a>
					   <a href="#">4</a>
					   <a href="#">5</a> -->
			<c:choose>   
				<c:when test="${ pi.currentPage eq pi.maxPage }">
					<a href="#" class="btn_arr next"><span class="hide">Next</span></a>  
				</c:when>
				<c:otherwise>
					<a href="groupList.gr?currentPage=${ pi.currentPage+1 }" class="btn_arr next"><span class="hide">Next</span></a>  
				</c:otherwise> 	
			</c:choose>
		</div>
	    
	</div>
	<br><br><br>
	
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>