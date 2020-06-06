<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공간 현황</title>
<style>
/* 서브메뉴 스타일 시작 (위에 웹폰트 링크도 복붙해주세요)*/


fieldset {
    border: 0;
    vertical-align: top;
}

legend {
    overflow: hidden;
    position: absolute;
    width: 1px;
    height: 1px;
    clip: rect(1px, 1px, 1px, 1px);
}


table {

    border-collapse: collapse;
    border-spacing: 0;
    
}

div {
	box-sizing: border-box;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    background: transparent;
}
.content{
         max-width: 1700px;
         margin:auto;
     }

.inner{
         max-width: 1200px;
         margin:auto;
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

.srching_tbl>table>tbody>tr>td {
    font-size: 20px;
    color: #888;
}

.srching_tbl>table>tbody>tr>th, .srching_tbl>table>tbody>tr>td {

    padding: 9px 20px;
    border-bottom: 1px solid #f1f1f1;
    letter-spacing: -0.05em;

}

.srching_tbl_list .btn_opt {
    border-bottom: 1px solid #fff;
}

.btn_opt {
    margin-right: 35px;
}

.btn_opt {
    display: inline-block;
    margin: 8px 40px 8px 0;
    line-height: 1;
    letter-spacing: -0.02em;
    cursor: pointer;
}


.result_groups {
    width: 1180px;
    margin: 0 auto;
}

.result_groups .group:last-child {
    padding-bottom: 0;
}

.result_tab {
        margin-bottom: 20px;
        width: 100%; 
        border-top: 2px solid gray;
        border-bottom: 2px solid gray;
        height: 70px;
        font-size: 20px;
        font-weight: bold;
        line-height: 55px;
     
}

.result_tab_list {
    border-top: 2px solid #888;
    border-right: 1px solid #e1e1e1;
    border-left: 1px solid #e1e1e1;
}

ol, ul, li {
    list-style: none;
}

.result_tab_item.on {
    background: #fff;
    border-bottom: 1px solid #fff;
}

.result_tab_item {
    float: left;
    width: 25%;
    height: 50px;
    line-height: 50px;
    font-size: 16px;
    text-align: center;
    background: #f5f5f5;
    border-bottom: 1px solid #e1e1e1;
    cursor: pointer;
}




.ls_result.on {
	width:1200px;
    display: block;
}

.ls_result {
    display: none;
    position: relative;
}

.ls_result {
    width: 1500px;
    margin: 0 auto 0 auto;
}





.inp {
    display: inline-block;
    border: 1px solid #ccc;
}

.inp input, .inp_txt {
    color: #333;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    cursor: pointer;
    color: #333;
}


.btn_compact {
    padding: 0 12px;
    font-size: 13px;
    height: 28px;
    line-height: normal;
    background: #222;
    color: #fff;
}

.ls_result .list {
    padding-top: 20px;
}

.ls_result ul {
    overflow: hidden;
}

.ls_result .list_item {
    position: relative;
    margin: 0 19px 40px 19px;
    float: left;
    min-height: 280px;
}

.ls_result .list_item .thumb {
    position: relative;
    display: block;
    margin-bottom: 10px;
    width: 255px;
    height: 173px;
    background: #fff;
    border: 1px solid #efefef;
}

a:link, a:visited, a:hover, a:active, a:focus {
    text-decoration: none;
}

a {
    margin: 0;
    padding: 0;
    border: 0;
    background: transparent;
    text-decoration: none;
    font-size: 100%;
    color: #000;
}

.list_srching_title {
    padding-left: 20px;
    height: 48px;
    line-height: 48px;
    font-size: 20px;
    color: #fff;
    background: #fdce07;
}

.sub .srching {
    margin: 0 0 70px 0;
}

.srching {
    position: relative;
    width: 1500px;
    margin: 0 auto;
}

.sky_btn1 /* 확인 버튼 */
{
	width: 130px;
	height: 30px;
	text-align: center;
	font-size: 15px;
	font-weight: bold;
	border-radius: 5px;
	
	cursor: pointer;
	background: #fdce07;
	color: #000000;
	border: 0;
}

.sky_btn2   /* 취소, 첨부파일 버튼 */
{
	width: 130px;
	height: 30px;
	text-align: center;
	font-size: 15px;
	font-weight: bold;
	border-radius: 5px;
    padding:5px;
	cursor: pointer;
	background: #333333;
	color: white;
	border: 0;
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


/* 중간버튼 스타일 */

/* 중간버튼 스타일 */
</style>
</head>
<body>
	
	<jsp:include page="../common/menubar.jsp"/>
	<div class="content">
		<!-- 서브메뉴 타이틀 -->
	
		<br>
		

		<!-- inner영역에 콘텐츠 작성 -->
		<div class="inner">

            <h2 class="list_srching_title">공간찾기</h2>

            <div class="srching">

                <div class="opts">
                    <fieldset >
                        <legend>공간찾기</legend>
                        <div class="srching_tbl srching_tbl_list">
                            <table>
                                <colgroup>
                                    <col width="120px">
                                    <col width="300px">
                                    <col width="120px">
                                    <col width="*">
                                </colgroup>
                               
                                <tr>
                                    <th>인원</th>
                                    <td id="userCntOpt" class="opt" colspan="3" style="text-align: center;">
                                        <span class="btn_opt" >1인</span>
                                        <span class="btn_opt" >2인</span>
                                        <span class="btn_opt" >3인</span>
                                        <span class="btn_opt" >4인</span>
                                        <span class="btn_opt" >6인</span>
                                        <span class="btn_opt" >8인</span>
                                        <span class="btn_opt" >10인</span>
                                        <span class="btn_opt" >15인</span>
                                        <span class="btn_opt" >20인</span>
                                        
                                        <span class="btn_opt_member">
                                            <span class="inp inpt_txt"><input type="text" class="userCntInput number" maxlength="2" placeholder="직접입력" style="padding-top: 8px;" /></span> 인&nbsp;&nbsp;
                                            <button class="sky_btn2" type="button" style="width: 80px;">적용</button>
                                        </span>
                                    </td>
                                </tr>
                              
                            </table>
                        </div>
                     
                    </fieldset>
                </div>




            </div>

<div class="result_groups">

                <div class="group">

                    <div class="result_tab" align="center" >
                        전체 수 <span style="color:red">${pi.listCount}</span>
                    </div>

                    <div class="ls_result on">

                
                       <div class="list">

                        <ul class="item">
							<c:forEach var="s" items="${spaceList }" >
                           <li class="list_item">
                             <a href="" class="thumb">
                                    <img style="width:257px; height:175px" src="${pageContext.servletContext.contextPath}/resources/uploadFiles/space/${s.changeName}">
                             </a>
                                <span class="name_booth">${s.spaceName}</span>                            
                                <p class="option" style="font-size: 10px;">기본가격 2시간(${s.spacePrice }) / 이용인원 ${s.personnel }인</p>
                           </li>
						  </c:forEach>
          
            			</ul>

               </div>

                    </div>

                    </div>


                  



                </div>



            
        </div>


            <br><br>
           

            

              
          <!-- 페이징바 -->    
        <div class="paging" align="center">
        
        <c:choose>
        	<c:when test="${ pi.currentPage eq 1 }">          
            	<a href="#" class="btn_arr prev"><span class="hide">Prev</span></a>
            </c:when>
            <c:otherwise>	  
            	<a href="spaceMain.re?currentPage=${ pi.currentPage-1 }" class="btn_arr prev"><span class="hide">Prev</span></a>
            </c:otherwise>	
        </c:choose>    
            
        <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
        	<c:choose>
        		<c:when test="${ p eq pi.currentPage }">
            		<a href="#" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
            	</c:when>
            	<c:otherwise>
            		<a href="spaceMain.re?currentPage=${ p }" class="on">${ p }</a><!-- D : 활성화페이지일 경우 : on 처리 -->
            	</c:otherwise>
            </c:choose>
        </c:forEach>    			

         <c:choose>   
         	<c:when test="${ pi.currentPage eq pi.maxPage }">
            	<a href="#" class="btn_arr next"><span class="hide">Next</span></a>  
            </c:when>
            <c:otherwise>
             	<a href="spaceMain.re?currentPage=${ pi.currentPage+1 }" class="btn_arr next"><span class="hide">Next</span></a>  
            </c:otherwise> 	
         </c:choose>               

            </div>

		</div>
		
	<br clear="both">
	  <jsp:include page="../common/footer.jsp"/>
</body>
</html>