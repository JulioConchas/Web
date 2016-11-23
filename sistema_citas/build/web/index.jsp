<%-- 
    Document   : index
    Created on : Nov 2, 2016, 11:48:06 PM
    Author     : JulioConchas <conchasjimenez@gmail.com>
    Copyright  : JC. of CP.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Citas ITSZapopan</title>
        <link rel='stylesheet' href='fullcalendar/fullcalendar.css' />
        <link rel='stylesheet' href='calendar.css' />
        <script src='lib/jquery.min.js'></script>
        <script src='lib/moment.min.js'></script>
        <script src='fullcalendar/fullcalendar.js'></script>
        
         <script>
            $(document).ready(function(){
                
                //getting the date
                    var date = new Date();
                    var date_write = date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate();
                // page is now ready, initialize the calendar...
                
                 $('#container').fullCalendar({
                        header:{
                          left: 'prev,next today',
                          center: 'title',
                          right: 'month,agendaWeek,agendaDay'
                        },
                        defaultDate: date_write,
                        defaultView: 'basicWeek',
                        editable: true,
                        events: [
                            {
                              title: 'All Day Event',
                              start: '2016-11-22'
                            },
                            {
					title: 'Long Event',
					start: '2014-06-07',
					end: '2016-11-10'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2016-11-09T16:00:00'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2016-11-16T16:00:00'
				},
				{
					title: 'Meeting',
					start: '2016-11-12T10:30:00',
					end: '2016-11-12T12:30:00'
				},
				{
					title: 'Lunch',
					start: '2016-11-12T12:00:00'
				},
				{
					title: 'Birthday Party',
					start: '2016-11-13T07:00:00'
				},
				{
					title: 'Click for Google',
					url: 'http://google.com/',
					start: '2016-11-28'
				}
                        ],
                        // methods
                  
                        dayClick: function(){
                                $('#calendar').fullCalendar( 'changeView', 'agendaDay');
                                alert("day clicked");
                        }
                  });
                  
            });
           
        </script>
        
    </head>
    <body>
        <h1>Citas Control Escolar</h1>
        <div id="container"></div>
    </body>
</html>
