<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<style>
/* div{border:1px solid black} */
#outer{
    width: 700px;
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
    padding-bottom: 20px;
    border-bottom:1px solid #333333;
}
/* 공지사항 상세 css */
#noticeTable{
    margin:auto;      
    width: 100%;
    text-align:left;
    align-self: center;                  
    border-collapse: collapse; 
    box-sizing: border-box;         
}
#mainNotice{
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
}
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
    height:30px;
    border-bottom:1px solid #dddddd;
}
.title{
    padding-bottom: 15px;
    font-size: 24px;
}
#noticeDetail{
    width:100%;
    height: 450px;
}
.noticeList{
    margin-top: 25px;
}
#noticeList{
    width: 200px;
    height: 30px;
    border-radius: 4px;
    background: #fdce07;
    border-style:none;
    color: #333333;
    font-size: 14px;
    font-weight: 400;
}
#noticeList:hover{
    color:#333333;
    background-color: white;
    border: solid 1px rgb(231, 166, 44);
}
</style>
<body>
<body>

	<jsp:include page="../common/menubar.jsp"/>
	
    <!-- FAQ 테이블 -->
    <div id="outer">
        <div class="mainTitle">
            공지사항
        </div>
        
        <table id="noticeTable">
            <thead>
                <tr class="noticeTitle">
                    <td class="title">${ n.noticeTitle }</td>
                    <td class="enrollDate">${ n.enrollDate }</td>
                </tr>
            </thead>
            <tbody>
                <tr id="noticeDetail">
                   <% pageContext.setAttribute("line", "."); %>
                   <td colspan="2">${ fn:replace(n.noticeContent, line, "<br/>")}</td>
                </tr>
            </tbody>    
        </table>

        <div class="noticeList" align="center">          
           <button id="noticeList" onclick="location.href='list.cs?currentPage=1';">목록</button>
        </div>

    </div>
    
    <jsp:include page="../common/footer.jsp"/>
	
</body>
</html>