<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mygroupNoticeListView</title>
<style>	
	/* div{border:1px solid black;} */
	#mygroup {
		width: 100%;
		height: 1000px;
	}
	.sky_btn1 {
	    width: 130px;
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
	}
	.sky_btn2 {
	    width: 130px;
	    height: 40px;
	    text-align: center;
	    font-size: 15px;
	    font-weight: bold;
	    border-radius: 5px;
	    padding: 10px;
	    cursor: pointer;
	    background: #333333;
	    color: white;
	    border: 0;
	}
	/* 소모임내용 */
	#mygroupContent{
	    width: 75%;
	    margin-top: 100px;
	    float: left;
	}
	
	/* 공지사항 테이블 css */
	.tableArea{
		margin-top:80px;
		width:97%;
		border:2px solid #dddddd;
	}
	#noticeTitle{
		padding:10px;
		font-size: 32px;
		font-weight:300;
		color:#333333;
	}
	#mygroupNoticeTable{
	    width: 100%;
	    height: 450px;
	    text-align:left;
	    align-self: center;                  
	    border-collapse: collapse; 
	    box-sizing: border-box;
	    margin: auto;
	}
	#mygroupNoticeTable>thead>tr{
	    height: 50px;
	}
	#mygroupNoticeTable>tbody>tr{
	    height: 34px;
	}
	#mainNotice{
	    height:50px;
	    font-size: 13px;
	    color: #333333;
	    border-bottom:2px solid #dddddd;
	}
	#mainNotice button{
	    width:50px;
	    height:25px;
	    margin-right: 5px;
	    border-radius: 4px;
	    background:#fdce07;
	    color: #333333;
	    font-weight: bold;
	}
	.gnoticeNo{
		width:10%;
		padding-left:20px; 
	    padding-top: 5px;
	    padding-bottom: 5px;
		font-size: 14px;
		font-weight: 400;
		text-align:left;
	}
	.title{
		width:60%;
	    height:34px;
	    text-align: left;
	    padding-left:25px;
	    padding-top: 5px;
	    padding-bottom: 5px;
	    font-size: 14px;
	    font-weight: 400;
	}
	.enrollDate{
		width:20%;
	    font-size: 14px;
	    font-weight: 400;
	    text-align: center;
	    padding-right: 15px;
	}
	.count{
		width:10%;
	    font-size: 14px;
	    font-weight: 400;
	    text-align: center;
	    padding-right: 15px;
	}
	.noticeTitle{
	    border-bottom:1px solid #dddddd;
	}
	#mygroupNoticeTable tr:hover{
	    text-decoration: underline;
	    color: rgb(216, 64, 38);
	    cursor: pointer;
	}
	#searchArea{
		text-align: center;
	}
	
	/* 페이징바 css */
	.paging{
		width:97%;
		align:center;
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
	<jsp:include page="../myPage/common/myPageMenubar.jsp"/>
    <div id="mygroup">
    	<jsp:include page="common/mygroupMenubar.jsp"/>

        <div id="mygroupContent">
            <p id="noticeTitle">공지사항<p>
            <hr>
            
            <div class="tableArea">
	            <table id="mygroupNoticeTable">
	            	<thead>
	            		<tr>
		            		<th class="gnoticeNo">글번호</th>
		            		<th class="title" style="text-align:center;">제목</th>
		            		<th class="enrollDate" style="text-align:center;">등록일</th>
		            		<!-- <th class="count" style="text-align:center;">조회수</th> -->
	            		</tr>
	            	</thead>
	                <tbody>
	                	<c:forEach items="${ list }" var="gn">
		                    <tr class="groupNoticeTitle">
		                        <td class="gnoticeNo">${ gn.gnoticeNo }</td>
		                        <td class="title">${ gn.gnoticeTitle }</td>
		                        <td class="enrollDate">${ gn.enrollDate }</td>
		                       <%--  <td class="count">${ gn.count }</td> --%>
		                    </tr>
		                </c:forEach>
	                </tbody>    
	            </table>
            </div>
            
            <script>
            	$(function(){
            		$("#mygroupNoticeTable tbody tr").click(function(){
            			location.href = "mygroupNoticeDetail.gr?gnoticeNo=" + $(this).children().eq(0).text() +"&groupNo=${listGno}";
            							/* + "&userNo=" + "${ loginUser.userNo } "*/;
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
						<a href="mygroupNoticeList.gr?currentPage=${ pi.currentPage-1 }&gno=${gno}" class="btn_arr prev"><span class="hide">Prev</span></a>
					</c:otherwise>	
				</c:choose>    
					
				<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
					<c:choose>
						<c:when test="${ p eq pi.currentPage }">
							<a href="#" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
						</c:when>
						<c:otherwise>
							<a href="mygroupNoticeList.gr?currentPage=${ p }&gno=${gno}" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
						</c:otherwise>
					</c:choose>
				</c:forEach>
				
				<c:choose>   
					<c:when test="${ pi.currentPage eq pi.maxPage }">
						<a href="#" class="btn_arr next"><span class="hide">Next</span></a>  
					</c:when>
					<c:otherwise>
						<a href="mygroupNoticeList.gr?currentPage=${ pi.currentPage+1 }&gno=${gno}" class="btn_arr next"><span class="hide">Next</span></a>  
					</c:otherwise> 	
				</c:choose>
			</div>
            <br><br><br><br><br>
        </div>
    </div>
    
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>