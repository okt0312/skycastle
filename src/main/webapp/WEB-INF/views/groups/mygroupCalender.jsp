<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>mygroupCalender</title>
    <style>
        body
        {
            margin: 0px;
            background-color: #ffffff;
            color: #000000;
            height: 1000px;
        }
        #hd_outer
        {
            max-width: 1700px;
            margin: auto;
        }
        #hd_logo
        {
            border: 1px solid black;
            height: 143px;
        }
        #hd_logo_img
        {
            float: left;
            margin: 20px 0 0 100px;
            width: 200px;
            height: 100px;
            background-color: black;
        }
        #hd_menu
        {
            position: relative;
            z-index: 8;
            background: rgb(255, 255, 255);
            border-bottom: 1px solid rgb(209, 209, 209);
            border-top: 1px solid rgb(209, 209, 209);
            width: 100%;
            height: 104px;
        }
        .content{
            max-width: 1700px;
            margin: auto;
        }
        .groupmenu{
            width: 100%;
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
    </style>
    <!-- fullcalender 4줄 -->
    <link href='https://unpkg.com/@fullcalendar/core@4.4.0/main.min.css' rel='stylesheet' />
    <link href='https://unpkg.com/@fullcalendar/daygrid@4.4.0/main.min.css' rel='stylesheet' />
    <script src='https://unpkg.com/@fullcalendar/core@4.4.0/main.min.js'></script>
    <script src='https://unpkg.com/@fullcalendar/daygrid@4.4.0/main.min.js'></script>
</head>
<body>
    <jsp:include page="../common/menubar.jsp"/>

          <div class="groupmenu" style="height: 500px;">
            <div id='calendar'></div>
          </div>

    <jsp:include page="../common/footer.jsp"/>
    
	<script>
		document.addEventListener('DOMContentLoaded', function() {
			var calendarEl = document.getElementById('calendar');

			var calendar = new FullCalendar.Calendar(calendarEl, {
			    plugins: [ 'interaction', 'dayGrid', 'timeGrid' ],
			    timeZone: 'UTC',
			    header: {
			    left: 'prev,next today',
			    center: 'title',
			    right: 'dayGridMonth,timeGridWeek,timeGridDay'
			    },
			    editable: true,
			    eventLimit: true, // when too many events in a day, show the popover
			    events: 'https://fullcalendar.io/demo-events.json?overload-day'
			});
			
			calendar.render();
		});
    </script>
</body>
</html>