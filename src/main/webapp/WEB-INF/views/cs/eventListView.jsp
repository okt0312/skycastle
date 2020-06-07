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
/* 이벤트 썸네일 */
.eventBox{
   width:1100px;
   margin: auto;
}
.thumbnail{
    margin: auto;
    width:320px;
    height:220px;
    margin-top: 15px;
    margin-bottom: 15px;
    margin-left: 10px;
    /* border: 1px solid #333333; */
    display: inline-block;
}
.thumbImg{
    width: 100%;
    height:180px;
    margin: auto;
}
.thumbImg img{
    width: 100%;
    height: 100%;
}
.thumbImg img:hover{
    border:2px solid #dddddd;
}
.eventInfo{
    margin: auto;
    width:100%;
    height:40px;
    border-bottom:2px solid #dddddd;
}
.eventInfo label{
    margin-top: 5px;
    font-size: 14px;
    font-weight: 300;
}
</style>
<body>

	<jsp:include page="../common/menubar.jsp"/>
	
	<div class="outer">
	      <div class="mainTitle">이벤트
	          <div class="subTitle">진행중인 이벤트</div>
	      </div>
	<center>
	  <div class="eventBox">
	  <c:forEach items="${eventList}" var="e">
	      <div class="thumbnail">	
	          <div class="thumbImg">
	              <img src="${pageContext.servletContext.contextPath}/resources/uploadFiles/event/${e.changeName}">
	          </div>
	          <div class="eventInfo">
	              <label>${e.eventTitle}</label><br>
	              <label>${e.eventOpenTime} ~ ${e.eventCloseTime}</label>
	          </div>
	      </div>
	   </c:forEach>   
	   	  <div class="thumbnail">
	          <div class="thumbImg">
	              <img src="resources/uploadFiles/event/1월이벤트.png">
	          </div>
	          <div class="eventInfo">
	              <label>재난지원금 사용 가능</label><br>
	              <label>2020.05.10~2020.08.31</label>
	          </div>
	      </div>
	     <!--  
	      <div class="thumbnail">
	          <div class="thumbImg">
	              <img src="images/event.png">
	          </div>
	          <div class="eventInfo">
	              <label>재난지원금 사용 가능</label><br>
	              <label>2020.05.10~2020.08.31</label>
	          </div>
	      </div>
	      <div class="thumbnail">
	          <div class="thumbImg">
	              <img src="images/event.png">
	          </div>
	          <div class="eventInfo">
	              <label>재난지원금 사용 가능</label><br>
	              <label>2020.05.10~2020.08.31</label>
	          </div>
	      </div>
	      <div class="thumbnail">
	          <div class="thumbImg">
	              <img src="images/event.png"> 
	          </div>
	          <div class="eventInfo">
	              <label>재난지원금 사용 가능</label><br>
	              <label>2020.05.10~2020.08.31</label>
	          </div>
	      </div>
	      <div class="thumbnail">
	          <div class="thumbImg">
	              <img src="images/event.png"> 
	          </div>
	          <div class="eventInfo">
	              <label>재난지원금 사용 가능</label><br>
	              <label>2020.05.10~2020.08.31</label>
	          </div>
	      </div> -->
	  </div>
	</center>
	</div>
	
	<jsp:include page="../common/footer.jsp"/>
	
</body>
</html>