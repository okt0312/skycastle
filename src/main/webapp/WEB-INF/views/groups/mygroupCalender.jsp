<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid', 'timeGrid' ],
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay'
      },
      defaultDate: '2020-05-12',
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
        {
          title: 'All Day Event',
          start: '2020-05-01'
        },
        {
          title: 'Long Event',
          start: '2020-05-07',
          end: '2020-05-10'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2020-05-09T16:00:00'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2020-05-16T16:00:00'
        },
        {
          title: 'Conference',
          start: '2020-05-11',
          end: '2020-05-13'
        },
        {
          title: 'Meeting',
          start: '2020-05-12T10:30:00',
          end: '2020-05-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2020-05-12T12:00:00'
        },
        {
          title: 'Meeting',
          start: '2020-05-12T14:30:00'
        },
        {
          title: 'Happy Hour',
          start: '2020-05-12T17:30:00'
        },
        {
          title: 'Dinner',
          start: '2020-05-12T20:00:00'
        },
        {
          title: 'Birthday Party',
          start: '2020-05-13T07:00:00'
        },
        {
          title: 'Click for Google',
          url: 'http://google.com/',
          start: '2020-05-28'
        }
      ]
    });

    calendar.render();
  });
</script>
</head>
<body>
    <jsp:include page="../common/menubar.jsp"/>
	<jsp:include page="common/mygroupMenubar.jsp"/>
	
        <div id='calendar'></div>

    <jsp:include page="../common/footer.jsp"/>
</body>
</html>