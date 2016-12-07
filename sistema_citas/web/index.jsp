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
        <link rel="stylesheet" type="text/css" href="css/cloud-admin.css" >
        <link rel="stylesheet" type="text/css" href="css/themes/default.css" id="skin-switcher" >
        <link rel="stylesheet" type="text/css" href="css/responsive.css" >
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">		
        <script src='lib/jquery.min.js'></script>
        <script src='lib/moment.min.js'></script>
        <script src='fullcalendar/fullcalendar.js'></script>
        
         <script>
            $(document).ready(function(){
                
                //getting the date
                    var date = new Date();
                    var date_write = date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate();
                // page is now ready, initialize the calendar...
                
                $('#ventana_modal').hide();
                
                 $('#calendar_container').fullCalendar({
                        header:{
                          left: 'prev,next today',
                          center: 'title',
                          right: 'month,agendaWeek,agendaDay'
                        },
                        selectable:true,
                        selectHelper:true,
                        editable: true,
                        eventLimit:true,
                        /*defaultDate: date_write,
                        defaultView: 'basicWeek',
                        events: [
                            {
                              title: 'All Day Event',
                              start: '2016-11-22',
                              color: '#A91F1F'
                            },
                            {
					title: 'Long Event',
					start: '2014-06-07',
					end: '2016-11-10',
                                        color:'#1CB09A'
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
                        */
                        dayClick: function(date){
                                //$('#calendar_container').fullCalendar( 'changeView', 'agendaDay');
                                //console.log("on click: " + date.format());
                                /*var nEvent = {
                                    title: "some title",
                                    allDay: false,
                                    start: date.format(),
                                    end: date.format(),
                                };*/
                                //console.log("event object:\nTitle:" + nEvent.title + "\nStart:" + nEvent.start + "\nEnd:" + nEvent.end);
                                //$('#calendar_container').fullCalendar('renderEvent',nEvent);
                                document.getElementById('fecha').value = date.format();
                                $('#ventana_modal').fadeIn(1000);
                                
                        }
                  });
                 
            });
            function close_and_save(){
                       var nEvent = {
                                    title: document.getElementById('titulo').value,
                                    allDay: false,
                                    start: document.getElementById('fecha').value,
                                    end: document.getElementById('fecha').value,
                                };
                       $('#calendar_container').fullCalendar('renderEvent',nEvent);
                      //$('ventana_modal').hide();
                      document.getElementById("ventana_modal").style.display = 'none';
                  }
        </script>
        
    </head>
    <body>
        <div class="modal_view" id="ventana_modal" >
            <div class="contenido">
                <form>
                    <h2>Nueva Cita</h2>
                    <input type="text" max-length="30" placeholder="Titulo" id="titulo">
                    <br>
                    <input type="text" max-length="30" id="fecha">
                    <br>
                    <input type="text" max-length="30" placeholder="Horario" id="horario">
                    <br>
                    <h3>Departamento: </h3>
                    <select>
                        <option>Control Escolar</option>
                        <option>Vinculación</option>
                        <option>Idiomas</option>
                    </select>
                    <h3>Color: </h3>
                    <select>
                        <option>Rojo</option>
                        <option>Azul</option>
                        <option>Verde</option>
                    </select>
                    <br>
                    <button type="button" onClick="close_and_save()">Agendar</button>
                </form>
            </div>
        </div>
        
<header class="navbar clearfix navbar-fixed-top" id="header">
		<div class="container">
			<div class="navbar-brand">
				<!-- COMPANY LOGO -->
				<a href="index.html">
					<img src="img/logo/logo.png" alt="Edcore Logo" class="img-responsive" height="30" width="120">
				</a>
				<!-- /COMPANY LOGO -->
				<!-- SIDEBAR COLLAPSE -->
				<div id="sidebar-collapse" class="sidebar-collapse btn">
						<i class="fa fa-bars" data-icon1="fa fa-bars" data-icon2="fa fa-bars" ></i>
				</div>
				<!-- /SIDEBAR COLLAPSE -->
			</div>
			<!-- BEGIN TOP NAVIGATION MENU -->					
			<ul class="nav navbar-nav pull-right">
                                <li class="dropdown" id="header-message"  style="display: table">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    </a>
                                    <ul class="dropdown-menu inbox">
                                        <li class="dropdown-title">
                                            <span><i class="fa fa-envelope-o"></i> 0 Messages</span>
                                        </li>
                                        <li class="footer">
                                            <a href="messenger.jsp">Ver todos los mensajes<i class="fa fa-arrow-circle-right"></i></a>
                                        </li>
                                    </ul>
                                </li>

				<!-- END NOTIFICATION DROPDOWN -->
				<!-- BEGIN USER LOGIN DROPDOWN -->
				<li class="dropdown user" id="header-user">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<img alt="" id="photo" />
						<span class="username">Usuario</span>
						<i class="fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li><a href="Configure.jsp"><i class="fa fa-cog"></i> Configuración</a></li>
						<li><a href="logout"><i class="fa fa-power-off"></i> Cerrar Sesión</a></li>
					</ul>
				</li>
				<!-- END USER LOGIN DROPDOWN -->
			</ul>
				<!-- END TOP NAVIGATION MENU -->
		</div>
	</header>

        <!-- PAGE -->
        <section id="page">
        <!-- SIDEBAR -->
        		<div id="sidebar" class="sidebar">
			<div class="sidebar-menu nav-collapse">
				<div class="divide-20"></div>						
				<!-- SIDEBAR MENU -->
				<ul>
					<li class="has-sub">
						<a href="index.jsp">
							<i class="fa fa-tachometer fa-fw"></i>
							<span class="menu-text">Panel de Control</span>
							<span class="selected"></span>
						</a>					
					</li>
					<!-- MENU INSCRIPCIONES -->
					<li class="has-sub">
						<a href="javascript:;" class="">
							<i class="fa fa-bookmark-o fa-fw"></i>
							<span class="menu-text">Calificaciones</span>
							<span class="arrow"></span>
						</a>
						<ul class="sub">
							<li><a class="" href="StudentGrades.jsp"><span class="sub-menu-text">Semestre actual</span></a></li>
							<li><a class="" href="ConsKardex.jsp"><span class="sub-menu-text">Kardex</span></a></li>
						</ul>
					</li>
					<!-- /MENU INSCRIPCIONES -->
                                        <!-- CITAS PARA TRAMITES -->
					<li class="active">
						<a href="javascript:;" class="">
							<i class="fa fa-bookmark-o fa-fw"></i>
							<span class="menu-text">CITAS PARA TRAMITES</span>
							<span class="arrow"></span>
						</a>
					</li>
					<!-- /CITAS PARA TRAMITES -->
					<!-- MENU REINSCRIPCIONES -->
					<li class="has-sub">
						<a href="javascript:;" class="">
							<i class="fa fa-bookmark-o fa-fw"></i>
							<span class="menu-text">Reinscripciones</span>
							<span class="arrow"></span>
						</a>
						<ul class="sub">
                                                        <li><a class="" href="tutoriasc.jsp"><span class="sub-menu-text">Tutorias</span></a></li>
                                                        <li><a class="" href="CargaAcademica.jsp"><span class="sub-menu-text">Carga Academica</span></a></li>
						</ul>
					</li>
					<!-- /MENU INSCRIPCIONES -->
					<!-- MENU INSCRIPCIONES -->
					<li class="has-sub">
						<a href="javascript:;" class="">
							<i class="fa fa-bookmark-o fa-fw"></i>
							<span class="menu-text">Evaluación Docente</span>
							<span class="arrow"></span>
						</a>
						<ul class="sub">
							<li><a class="" href="evaluacion.jsp"><span class="sub-menu-text">Realizar evaluación</span></a></li>
						</ul>
					</li>
					<!-- /MENU INSCRIPCIONES -->
				</ul>
				<!-- /SIDEBAR MENU -->
			</div>
		</div>

        <!-- /SIDEBAR -->
        <div id="main-content">
            <div class="container">
                <div class="row">
                    <div id="content" class="col-lg-12">
                        <!-- PAGE HEADER-->
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="page-header">
                                    <!-- BREADCRUMBS -->
                                    <ul class="breadcrumb">
                                        <li><i class="fa fa-home"></i><a href="index.html">Inicio</a></li>
                                        <li>Citas para Tramites</li>
                                    </ul>
                                    <!-- /BREADCRUMBS -->
                                    <div class="clearfix">
                                        <h3 class="content-title pull-left">Citas Para Tramites</h3>
                                    </div>
                                    <div class="description"></div>
                                </div>
                            </div>
                        </div>
                        <!-- /PAGE HEADER -->
                        <!-- DASHBOARD CONTENT -->
                        <div class="row" id="calendar_container">
                        </div>
                        <!-- /DASHBOARD CONTENT -->
                    </div><!-- /CONTENT-->
                </div>
            </div>
        </div>
    </section>
        <!-- <div id="container"></div> -->
    </body>
</html>
