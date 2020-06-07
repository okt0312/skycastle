<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
/* div{border:1px solid black}  */
.outer{
    max-width: 1700px;
    height: 1050px;
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
/* 이벤트 상세 페이지 */
.eventDetail{
   width:1100px;
   margin: auto;
   border-bottom: 1px solid #333333;
}
#titleArea{
    width: 100%;
    height: 70px;
    margin: auto;

    border-bottom:1px solid #dddddd;
}
.title{
    width:620px;
    height:20px;
    text-align: left;
    padding: 10px;
    font-size: 23px;
    font-weight: 400;
}
.eventPeriod{
    font-size: 18px;
    font-weight: 300;
    text-align: right;
}
.noticeTitle{
    height:30px;
    border-bottom:1px solid #dddddd;
}
/* 상세 이미지 */
.infoContent{
    margin: auto;
    width:600px;
    height:730px;
    margin-top: 15px;
    margin-bottom: 15px;
    margin-left: 10px; 
    display: inline-block;
}
.infoImg{
    width: 100%;
    height:100%;
    margin: auto;
}
.infoImg img{
    width: 100%;
    height: 100%;
    margin: auto;
}
.thumbImg img:hover{
    border:2px solid #dddddd;
}
/* 목록 버튼 */
#listBtn{
    margin: auto;
    margin-top: 25px;
    width:320px;
    height:40px;
    background-color: #fdce07;
    font-size: 14px;
    font-weight: 400;
}
</style>
<body>

	<jsp:include page="../common/menubar.jsp"/>
	
	<div class="outer">
		<div class="mainTitle">이벤트
			<div class="subTitle">진행중인 이벤트</div>
	    </div>
	 
		<center> 
			<div class="eventDetail">
		      <table id="titleArea">
		          <thead>
		              <tr class="eventInfo">
		                  <td class="title">${e.eventTitle }</td>
		                  <td class="eventPeriod">${e.eventOpenTime} ~ ${e.eventCloseTime}</td>
		              </tr>
		          </thead>    
		      </table> 
		
		      <div class="infoContent">
		          <div class="infoImg">
		              <img src="${pageContext.servletContext.contextPath}/resources/uploadFiles/event/${e.changeName}">
		          </div>
		      </div>
			</div>
		  </center>
	
		<div class="footer" align="center">
			<button id="listBtn" onclick="location.href='event.cs';">목록</button>
		</div>
		
	</div>

	<jsp:include page="../common/footer.jsp"/>

</body>
</html>