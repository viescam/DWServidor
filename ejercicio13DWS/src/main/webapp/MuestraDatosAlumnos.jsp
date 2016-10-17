<%-- 
    Document   : MuestraDatosAlumnos
    Created on : 17-oct-2016, 10:02:04
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
        <h2>Los datos del alumno son:</h2>
        <b>Nombre: </b><jsp:getProperty name="alumno" property="nombre" /><br>
        <b>Primer apellido: </b><jsp:getProperty name="alumno" property="apellido1" /><br>
        <b>Segundo apellido: </b><jsp:getProperty name="alumno" property="apellido2" /><br>
        <b>DNI: </b><jsp:getProperty name="alumno" property="dni" /><br>
        
    </body>
</html>
