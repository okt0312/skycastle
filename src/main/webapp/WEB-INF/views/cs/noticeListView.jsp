<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>
/* div{border:1px solid black} */
#outer{
    max-width: 1700px;
    height: 750px;
    margin: auto;
    margin-top: 65px;
    box-sizing: border-box;
}
.mainTitle{
    width: 100%;
    font-size: 30px;
    font-weight: 600;
    color: #333333;
    margin-bottom: 40px;
    text-align: center;
}
.subTitle{
    margin-top:10px;
    padding-bottom: 10px;
    border-bottom:1px solid #333333;
    font-size: 16px;
    font-weight: 350;
    color:rgb(216, 64, 38);
}
/* 공지사항 테이블 css */
#noticeTable{
    margin:auto;      
    width: 700px;
    height: 450px;
    text-align:left;
    align-self: center;                  
    border-collapse: collapse; 
    box-sizing: border-box;         
}
/* #mainNotice{
    width: 620px;
    height:40px;
    font-size: 12px;
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
} */
.title{
    width:620px;
    height:20px;
    text-align: left;
    padding-top: 5px;
    padding-bottom: 5px;
    font-size: 12px;
    font-weight: 400;
}
.enrollDate{
    font-size: 12px;
    font-weight: 400;
    text-align: right;
}
.noticeTitle{
    border-bottom:1px solid #dddddd;
}
#noticeTable tr:hover{
    text-decoration: underline;
    color: rgb(216, 64, 38);
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
 
 	<!-- 공지사항 테이블 -->
    <div id="outer">
        <div class="mainTitle">공지사항
            <div class="subTitle">SKYCASTLE 새소식</div>
        </div>
        
        <table id="noticeTable">
            <!-- <thead>
                <tr id="mainNotice">
                    <th><button>필독</button>공간 예약 운영 안내</th>
                    <th align="right">2020.05.20</th>
                </tr>
            </thead> -->
            <tbody>
            	<c:forEach items="${ list }" var="n">
	                <tr class="noticeTitle">
	                	<td style="display:none">${ n.noticeNo }</td>
	                    <td class="title">${ n.noticeTitle }</td>
	                    <td class="enrollDate">${ n.enrollDate }</td>
	                </tr>
                </c:forEach>
            </tbody>    
        </table>
        
        <script>
           	$(function(){
           		$("#noticeTable tbody tr").click(function(){
           			location.href = "detail.cs?nno=" + $(this).children().eq(0).text();
           		});
           	});
        </script>
            
        <!-- 페이징바 -->    
        <div class="paging" align="center">
        
        <c:choose>
        	<c:when test="${ pi.currentPage eq 1 }">          
            	<a href="#" class="btn_arr prev"><span class="hide">Prev</span></a>
            </c:when>
            <c:otherwise>	  
            	<a href="list.cs?currentPage=${ pi.currentPage-1 }" class="btn_arr prev"><span class="hide">Prev</span></a>
            </c:otherwise>	
        </c:choose>    
            
        <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
        	<c:choose>
        		<c:when test="${ p eq pi.currentPage }">
            		<a href="#" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
            	</c:when>
            	<c:otherwise>
            		<a href="list.cs?currentPage=${ p }" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
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
             	<a href="list.cs?currentPage=${ pi.currentPage+1 }" class="btn_arr next"><span class="hide">Next</span></a>  
            </c:otherwise> 	
         </c:choose>               
        </div>
            
    </div>
    <br><br>
    
    <jsp:include page="../common/footer.jsp"/>
    
    
</body>
</html>