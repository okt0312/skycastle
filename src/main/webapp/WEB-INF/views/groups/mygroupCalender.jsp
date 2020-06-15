<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>mygroupCalender</title>
    <style>
        body {
            margin: 0px;
            background-color: #ffffff;
            color: #000000;
            height: 1000px;
        }
        .groupmenu {
        }
        html, body {
		  margin: 0;
		  padding: 0;
		  font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
		  font-size: 14px;
		}
		#calendar {
		  max-width: 900px;
		  margin: 40px auto;
		}
		#mygroupMenubar{
			position: absolute;
		}
		  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
   <link href='${pageContext.servletContext.contextPath}/resources/fullcalender/packages/core/main.css' rel='stylesheet' />
<link href='${pageContext.servletContext.contextPath}/resources/fullcalender/packages/daygrid/main.css' rel='stylesheet' />
<link href='${pageContext.servletContext.contextPath}/resources/fullcalender/packages/timegrid/main.css' rel='stylesheet' />
<script src='${pageContext.servletContext.contextPath}/resources/fullcalender/packages/core/main.js'></script>
<script src='${pageContext.servletContext.contextPath}/resources/fullcalender/packages/interaction/main.js'></script>
<script src='${pageContext.servletContext.contextPath}/resources/fullcalender/packages/daygrid/main.js'></script>
<script src='${pageContext.servletContext.contextPath}/resources/fullcalender/packages/timegrid/main.js'></script>
<script>
<jsp:useBean id="toDay" class="java.util.Date" />
<fmt:formatDate value='${toDay}' pattern='yyyy-MM-dd' var="nowDate"/>
  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid', 'timeGrid' ],
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay'
      },
      defaultDate: '${nowDate}',
      navLinks: true, // can click day/week names to navigate views
      selectable: true,
      selectMirror: true,
      select: function(arg) {
        var title = prompt('Event Title:');
        if (title) {
          calendar.addEvent({
            title: title,
            start: arg.start,
            end: arg.end,
            allDay: arg.allDay
          })
        }
        calendar.unselect()
      },
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
    	  <c:forEach var="cList" items="${ calList }" varStatus="i">
        {
          title: '${cList.calendarTitle}',
          start: '${cList.startDate}',
          end: '${cList.endDate}'
        }
        	<c:if test="${!i.last}">
        	,
        	</c:if>
        </c:forEach>
      ]
    });

    calendar.render();
  });
</script>
</head>
<body>
	<jsp:include page="../myPage/common/myPageMenubar.jsp" />
		<jsp:include page="common/mygroupMenubar.jsp" />
	
        <div id='calendar'></div>

    <jsp:include page="../common/footer.jsp"/>
</body>
</html>