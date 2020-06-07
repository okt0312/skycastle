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
<body style="width: 100%; height: 100%; margin:auto;">

<jsp:include page="common/myPageMenubar.jsp"/>

	<div class="outer">
		<!-- 서브메뉴 타이틀 -->
	
		
	

	<br><br><br>
		<!-- inner영역에 콘텐츠 작성 -->
		<div class="inner" style="width: 100%; height: 100%; margin:auto;">
				
			<div id="order-info">
				
				<table style="font-size: 16px;" width="1000px" height="200px">
					<tr>
						<th width="495px" style="padding-left: 2px; text-align: center;">
							<b style="font-weight: bold; font-size: 1.5em;">${loginUser.userName}</b>님께서 보유하고있는 할인쿠폰 내역입니다.
							<hr class="bline">
							<p style="font-size: 0.7em; color: black;">쿠폰을 사용하여 스터디룸을 예약하세요.</p>
						</th>
						
						
					</tr>

                </table>
                
                <br>
                
                <div class="sub-menu-area">
                    <!-- 현재 페이지는 yellow 로 표시 -->
                   
                    <a href="">쿠폰함</a> 
                    <span style="color: lightgray; font-size: 17px;">|</span> 
                    <a href="">나의 등급 내역</a>
                    
		
                </div>

            </div>
            
            <br>

			<div class="inner">
				<br> <br>
				<table id="noticeList" align="center" width="1000px;" style="margin:auto;" >
					<thead>
						<tr>
							<th style="width: 30%; text-align: center;">쿠폰명</th>
                            <th style="width: 30%; text-align: center;">유효기간</th>
                            <th style="width: 30%; text-align: center;">사용여부</th>
						</tr>
					</thead>
					<tbody>
					
						<c:forEach items="${ list }" var="o">
							
							<tr>
								<td>${o.couponName}</td>
                                <td>${o.expirationPeriod}</td>
                                <td></td>
                            </tr>
                            
                         </c:forEach>
                           
                            
                           

                            
					</tbody>
				</table>


				<br>
				<br>
				
				
                
               <!-- 페이징바 -->    
        <div class="paging" align="center">
        
        <c:choose>
        	<c:when test="${ pi.currentPage eq 1 }">          
            	<a href="#" class="btn_arr prev"><span class="hide">Prev</span></a>
            </c:when>
            <c:otherwise>	  
            	<a href="list.bo?currentPage=${ pi.currentPage-1 }" class="btn_arr prev"><span class="hide">Prev</span></a>
            </c:otherwise>	
        </c:choose>    
            
        <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
        	<c:choose>
        		<c:when test="${ p eq pi.currentPage }">
            		<a href="#" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
            	</c:when>
            	<c:otherwise>
            		<a href="list.bo?currentPage=${ p }" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
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
             	<a href="list.bo?currentPage=${ pi.currentPage+1 }" class="btn_arr next"><span class="hide">Next</span></a>  
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