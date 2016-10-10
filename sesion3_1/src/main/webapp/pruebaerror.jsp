<%-- 
    Document   : pruebaerror
    Created on : 23-sep-2016, 10:17:13
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--Introducimos una excepción para forzar al error-->
        <%= 0/0 %>                
    </body>
</html>
