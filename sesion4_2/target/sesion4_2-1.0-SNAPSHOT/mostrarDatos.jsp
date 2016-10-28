<%-- 
    Document   : mostrarDatos
    Created on : 14-oct-2016, 10:25:54
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Alumno introdujo los siguientes datos:</h2>
        Nombre:<jsp:getProperty name="alumno" property="nombre" /><br>
        Primer apellido:<jsp:getProperty name="alumno" property="primerApellido"/><br>
        Segundo apellido:<jsp:getProperty name="alumno" property="segundoApellido"/><br>
        
    </body>
</html>
