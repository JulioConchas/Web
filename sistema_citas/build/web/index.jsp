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
        <script type="text/javascript" src="daypilot-all.min.js" charset="utf-8"></script> 
        <script type="text/javascript" src="calendar.js" charset="utf-8"></script>
        <link rel="stylesheet" type="text/css" href="calendar.css"/>
    </head>
    <body>
        <h1>Citas Control Escolar</h1>
        <div id="container">
            <button type="button" >Day</button>
            <button type="button" >Week</button>
            <button type="button" >Month</button>
            <div id="dp"></div>
            <button type="button" ><</button>
            <button type="button" >></button>
            <script>
                var db = new DayPilot.Month("dp");
                var f = new Date();
                var date = f.getFullYear() + "-" + (f.getMonth() + 1) + "-" + f.getDate();
                db.startDate = date;
                db.init();
            </script> 
        </div>
    </body>
</html>
