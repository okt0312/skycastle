<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>mygroupListView</title>
    <style>
		body {
		    max-width: 1700px;
		    margin: auto;
		}
        .inner{
            width: 100%;
        }
        
        /* 버튼스타일 */
		.sky_btn1 /* 확인 버튼 */
		{
				
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
		    margin: 0px auto;
		}
		
		.sky_btn2   /* 취소, 첨부파일 버튼 */
		{
			width: 50px;
			height: 30px;
			text-align: center;
			font-size: 15px;
			font-weight: bold;
			padding: 5px;
			
			cursor: pointer;
			background: #333333;
			color: white;
			border: 0;
		    margin: 0px auto;
		}

		.sky_btn3   /* 취소, 첨부파일 버튼 */
		{
			width: 80px;
			height: 30px;
			text-align: center;
			font-size: 15px;
			font-weight: bold;
			
			
			cursor: pointer;
			background: #333333;
			color: white;
			border: 0;
		    margin: 0px auto;
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
        #mygroupListMenubar{
            width:100%;
            height:20%;
            border-top:1px solid lightgray;
            border-bottom:1px solid lightgray;
        }
        #mygroupListMenubar{ padding-left:50px; }
        #mygroupListMenubar a{
            text-decoration:none;
            margin:10px;
            line-height: 40px;
            color: black;
        }
        /* 여기서부터 */
        /* 소모임메뉴바 */
		#groups_header_menu ul {
		    list-style:none; 
		    margin: 7px 0; 
		    padding:0; 
		    text-align: right;
		}
		#groups_header_menu > li { 
		    height: 60px; 
		    display:inline-block; 
		    width:150px; 
		    padding:5px 0px;
		    text-align: center; 
		    line-height: 60px;
		}
		#groups_header_menu > li .submenu {
		    width:200px; 
		    height: 100px;
		    display:none; 
		    position: absolute; 
		}
		#groups_header_menu > li:hover ul.submenu { display:block; }
		a:hover { color: #fdce07; }
		a {
		    text-decoration: none;
		    color: black;
		}
		/* 여기까지 지우면 500에러뜸 */
		
		/*  */
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
	<jsp:include page="common/myPageMenubar.jsp"/>
	<div id="inner" style="width: 800px; margin: auto;">
	    <br><br><br>
	    <h2>소모임</h2>
	    <button style="float:right;" class="sky_btn1" onclick="window.open('groupEnrollForm.gr?userNo=${ loginUser.userNo }','Sky Castle','width=1000, height=1000, toolbar=no, menubar=no, scrollbars=no, resizable=yes');">소모임 개설 신청</button>
	    <br><br><hr><br>
		
	    <div align="center">
	        <form action="" method="POST" style="margin:0 auto">
	            <select class="sky_btn3" style="height: 26px; padding-bottom: 3px;">
	                <option value="title" selected>모임명</option>
	                <option value="content">내용</option>
	            </select>
	            <input type="text" name="search">
	            <button type="submit" class="sky_btn2">검색</button>
	        </form>
	    </div>
	    <br><br>
	    
        <div id="mygroupListMenubar">
        
            <ul id="groups_header_menu" style="margin-right: 10px;">
            
                <li><a href="mygroupList.gr?currentPage=1&status=Y">참가중인 소모임</a></li>
                <li style="width:3px"> | </li>
                <li><a href="mygroupDipsList.gr?currentPage=1">찜한 소모임</a></li>
                <li style="width:3px"> | </li>
                <li><a href="mygroupList.gr?currentPage=1&status=U">대기중인 소모임</a></li>
                <li style="width:3px"> | </li>
                <li><a href="mygroupList.gr?currentPage=1&status=N">지난 소모임</a></li>
            </ul>
        </div>
		<br><br><br><br>
		
	    <c:forEach items="${ list }" var="g">
		    <div class="grouplist">
	            <input type="hidden" id="group_no" name="gno" value="${ g.groupNo }">
	            <input type="hidden" id="user_no" name="userNo" value="${ loginUser.userNo }">
	            
		        <div class="groupThumbnailArea">
		            <img src="resources/uploadFiles/groups/${ g.changeName }" width="150px">
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
				location.href = "mygroupNoticeList.gr?currentPage=1&gno=" + $(this).children("#group_no").val() 
								+ "&userNo=" + "${ loginUser.userNo }";
			});
		</script>
		<br>

	    <c:choose>
	    	<c:when test="${status eq 'Y'}">
	    	
				<!-- 페이징바 -->
				<div class="paging" align="center">
					<c:choose>
						<c:when test="${ pi.currentPage eq 1 }">          
							<a href="#" class="btn_arr prev"><span class="hide">Prev</span></a>
						</c:when>
						<c:otherwise>	  
							<a href="mygroupList.gr?currentPage=${ pi.currentPage-1 }&status=Y" class="btn_arr prev"><span class="hide">Prev</span></a>
						</c:otherwise>	
					</c:choose>    
						
					<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
						<c:choose>
							<c:when test="${ p eq pi.currentPage }">
								<a href="#" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
							</c:when>
							<c:otherwise>
								<a href="mygroupList.gr?currentPage=${ p }&status=Y" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
							</c:otherwise>
						</c:choose>
					</c:forEach>
					
					<c:choose>   
						<c:when test="${ pi.currentPage eq pi.maxPage }">
							<a href="#" class="btn_arr next"><span class="hide">Next</span></a>  
						</c:when>
						<c:otherwise>
							<a href="mygroupList.gr?currentPage=${ pi.currentPage+1 }}&status=Y" class="btn_arr next"><span class="hide">Next</span></a>  
						</c:otherwise> 	
					</c:choose>
		</div>
	    	</c:when>
	    	<c:when test="${status eq 'U'}">
	    		  	 <!-- 페이징바 -->
				<div class="paging" align="center">
					<c:choose>
						<c:when test="${ pi.currentPage eq 1 }">          
							<a href="#" class="btn_arr prev"><span class="hide">Prev</span></a>
						</c:when>
						<c:otherwise>	  
							<a href="mygroupList.gr?currentPage=${ pi.currentPage-1 }&status=U" class="btn_arr prev"><span class="hide">Prev</span></a>
						</c:otherwise>	
					</c:choose>    
						
					<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
						<c:choose>
							<c:when test="${ p eq pi.currentPage }">
								<a href="#" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
							</c:when>
							<c:otherwise>
								<a href="mygroupList.gr?currentPage=${ p }&status=U" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
							</c:otherwise>
						</c:choose>
					</c:forEach>
					
					<c:choose>   
						<c:when test="${ pi.currentPage eq pi.maxPage }">
							<a href="#" class="btn_arr next"><span class="hide">Next</span></a>  
						</c:when>
						<c:otherwise>
							<a href="mygroupList.gr?currentPage=${ pi.currentPage+1 }}&status=U" class="btn_arr next"><span class="hide">Next</span></a>  
						</c:otherwise> 	
					</c:choose>
	    	</c:when>
	    	<c:when test="${status eq 'N'}">
	    		  	 <!-- 페이징바 -->
				<div class="paging" align="center">
					<c:choose>
						<c:when test="${ pi.currentPage eq 1 }">          
							<a href="#" class="btn_arr prev"><span class="hide">Prev</span></a>
						</c:when>
						<c:otherwise>	  
							<a href="mygroupList.gr?currentPage=${ pi.currentPage-1 }&status=N" class="btn_arr prev"><span class="hide">Prev</span></a>
						</c:otherwise>	
					</c:choose>    
						
					<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
						<c:choose>
							<c:when test="${ p eq pi.currentPage }">
								<a href="#" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
							</c:when>
							<c:otherwise>
								<a href="mygroupList.gr?currentPage=${ p }&status=N" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
							</c:otherwise>
						</c:choose>
					</c:forEach>
					
					<c:choose>   
						<c:when test="${ pi.currentPage eq pi.maxPage }">
							<a href="#" class="btn_arr next"><span class="hide">Next</span></a>  
						</c:when>
						<c:otherwise>
							<a href="mygroupList.gr?currentPage=${ pi.currentPage+1 }&status=N" class="btn_arr next"><span class="hide">Next</span></a>  
						</c:otherwise> 	
					</c:choose>
	    	
	    	</c:when>
	    	<c:otherwise>
	    		  	 <!-- 페이징바 -->
				<div class="paging" align="center">
					<c:choose>
						<c:when test="${ pi.currentPage eq 1 }">          
							<a href="#" class="btn_arr prev"><span class="hide">Prev</span></a>
						</c:when>
						<c:otherwise>	  
							<a href="mygroupDipsList.gr?currentPage=${ pi.currentPage-1 }" class="btn_arr prev"><span class="hide">Prev</span></a>
						</c:otherwise>	
					</c:choose>    
						
					<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
						<c:choose>
							<c:when test="${ p eq pi.currentPage }">
								<a href="#" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
							</c:when>
							<c:otherwise>
								<a href="mygroupDipsList.gr?currentPage=${ p }" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
							</c:otherwise>
						</c:choose>
					</c:forEach>
					
					<c:choose>   
						<c:when test="${ pi.currentPage eq pi.maxPage }">
							<a href="#" class="btn_arr next"><span class="hide">Next</span></a>  
						</c:when>
						<c:otherwise>
							<a href="mygroupDipsList.gr?currentPage=${ pi.currentPage+1 }" class="btn_arr next"><span class="hide">Next</span></a>  
						</c:otherwise> 	
					</c:choose>
	    	</c:otherwise>
	    	
	    </c:choose>
       
	</div>
	
	<jsp:include page="../common/footer.jsp"/>
	
</body>
</html>