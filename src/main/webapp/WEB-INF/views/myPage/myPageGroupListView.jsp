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

        /* 소모임 리스트 메뉴바 */
/*         #mygroupListMenubar{
            width:80%;
            height:200px;
            margin:auto;
            margin-top:50px;
        } */
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
        
        /* 소모임메뉴바 바꿀거 */
		/* .groups_header_menu {
		    margin: auto; 
		    padding: 0; 
		    width: 1400px; 
		    font-size: 23px;
		    font-weight: bold;
		    text-align: right;
		} */
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
		.submenu li { background-color: whitesmoke; }
		#groups_header_menu > li:hover ul.submenu { display:block; }
		a {
		    text-decoration: none;
		    color: black;
		}
		a:hover { color: #fdce07; }
    </style>
</head>
<body>
	<jsp:include page="common/myPageMenubar.jsp"/>
	<div id="inner" style="width: 800px; margin: auto;">
	    <br><br><br>
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
	    <br><br>
	    <!-- 원래 메뉴바
	    <div id="mygroupListMenubar">
	        <a href="#">참가중인 소모임</a> | 
	        <a href="#" style="font-weight: 600;">찜한 소모임</a> | 
	        <a href="#">대기중인 소모임</a> | 
	        <a href="#">지난 소모임</a> 
	    </div> -->
	    
	    <!-- 이걸로 바꾸기 -->
        <div id="mygroupListMenubar">
        
            <ul id="groups_header_menu" style="margin-right: 10px;">
            
                <li><a href="groupList.gr?currentPage=1&status='Y'">참가중인 소모임</a></li>
                <li style="width:3px"> | </li>
                <li><a href="groupList.gr?currentPage=1&status=">찜한 소모임</a></li>
                <li style="width:3px"> | </li>
                <li><a href="groupList.gr?currentPage=1&status='U'">대기중인 소모임</a></li>
                <li style="width:3px"> | </li>
                <li><a href="groupList.gr?currentPage=1&status='N'">지난 소모임</a></li>
            </ul>
        </div>
		<br><br><br><br>
		
	    <c:forEach items="${ list }" var="g">
		    <div class="grouplist">
	            <input type="hidden" id="group_no" name="gno" value="${ g.groupNo }">
		        <div class="groupThumbnailArea">
		            <img src="img/${ g.thumbnail }" alt="" class="" width="150px">
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
				$(".grouplist").click(function(){
					location.href = "groupDetail.gr?gno=" + $(this).children("#group_no").val();
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
</body>
</html>