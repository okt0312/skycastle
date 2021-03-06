<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>groupListView</title>

	<style>
		body{
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
		.grouplist:hover{
		    text-decoration: underline;
		    color: #fdce07;
		    cursor: pointer;
		}
		/* 페이징바 css */
		.paging{
		    padding:19px;
		    text-align:center;
		}
		.paging a{
		    width:23px;
		    height:23px;
		    padding-top:2px;
		    display:inline-block;
		    vertical-align:middle;
		    text-decoration: none;
		    color: #333333;
		}
		.paging a:hover{text-decoration:underline;}
		.paging .btn_arr{text-decoration:none;}
		.paging .btn_arr{
		    margin:0 3px;
		    padding-top:0;
		    border:1px solid #ddd;
		    background: #fdce07;
		    border-radius:30px;
		    font-size: 9px;
		    line-height: 20px;
		}
		.paging .on{
		    padding-top:1px;
		    height:22px;
		    border-radius:30px;
		    font-weight:bold;
		    text-decoration: underline;
		}
		.paging .on:hover{text-decoration:none;}
	</style>
</head>
<body>

    <jsp:include page="../common/menubar.jsp"/>
    
	<div id="inner" style="width: 800px; margin: auto;">
	    <br><br><br><br><br>
	    <h2>소모임</h2>
	    <br><hr><br>
	
	    <div align="center">
	        <form action="groupSearchList.gr" method="Get" style="margin:0 auto">	           
	                <span>모임명</span>      
            	    <input type="text" name="groupTitle" placeholder="모임명을 입력해주세요.">
            	    <input type="hidden" name="currentPage" value="1">
	            <button type="submit">검색</button>
	        </form>
	    </div>
	    <br><br><br><br><br><br>
	    
	    
	    <c:forEach items="${ list }" var="g">
		    <div class="grouplist">
	            <input type="hidden" id="group_no" name="gno" value="${ g.groupNo }">
		        <div class="groupThumbnailArea">
		            <img src="resources/uploadFiles/groups/${ g.changeName }" style="width:150px;">
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
			$(".grouplist").click(function(){
				
				var userNo = "${ loginUser.userNo }";
				
				if(userNo != "") {	// 로그인 했을때
					location.href = "groupDetail.gr?gno=" + $(this).children("#group_no").val() 
									+ "&userNo=" + "${ loginUser.userNo }";
				} else {	// 로그인 안했을때
					location.href = "groupDetail.gr?gno=" + $(this).children("#group_no").val()
									+ "&userNo=0";
				}
			});
		</script>
		<br>
	    
	    
	    <c:choose>	
	    	<c:when test="${empty searchKeyword}">
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
					
					<c:choose>   
						<c:when test="${ pi.currentPage eq pi.maxPage }">
							<a href="#" class="btn_arr next"><span class="hide">Next</span></a>  
						</c:when>
						<c:otherwise>
							<a href="groupList.gr?currentPage=${ pi.currentPage+1 }" class="btn_arr next"><span class="hide">Next</span></a>  
						</c:otherwise> 	
					</c:choose>
				</div>
	    	</c:when>
	    	<c:otherwise>
			    <!-- 페이징바 -->
				<div class="paging" align="center">
					<c:choose>
						<c:when test="${ pi.currentPage eq 1 }">          
							<a href="#" class="btn_arr prev"><span class="hide">Prev</span></a>
						</c:when>
						<c:otherwise>	  
							<a href="groupSearchList.gr?currentPage=${ pi.currentPage-1 }&groupTitle=${searchKeyword}" class="btn_arr prev"><span class="hide">Prev</span></a>
						</c:otherwise>	
					</c:choose>    
						
					<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
						<c:choose>
							<c:when test="${ p eq pi.currentPage }">
								<a href="#" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
							</c:when>
							<c:otherwise>
								<a href="groupSearchList.gr?currentPage=${ p }&groupTitle=${searchKeyword}" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
							</c:otherwise>
						</c:choose>
					</c:forEach>
					
					<c:choose>   
						<c:when test="${ pi.currentPage eq pi.maxPage }">
							<a href="#" class="btn_arr next"><span class="hide">Next</span></a>  
						</c:when>
						<c:otherwise>
							<a href="groupSearchList.gr?currentPage=${ pi.currentPage+1 }&groupTitle=${searchKeyword}" class="btn_arr next"><span class="hide">Next</span></a>  
						</c:otherwise> 	
					</c:choose>
				</div>
	    	</c:otherwise>
	    
	    </c:choose>
      
	</div>
	<br><br><br>
	
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>