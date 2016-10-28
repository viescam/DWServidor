<%-- 
    Document   : index
    Created on : 14-oct-2016, 10:15:42
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
        <form action="RecogeDatos" method="POST">
            <h2>Datos Alumno</h2>
            Nombre:<input type="text" name="nombre"><br>
            Primer apellido:<input type="text" name="apellido1"><br>
            Segundo apellido:<input type="text" name="apellido2"><br>
            <input type="submit" value="Enviar"/>
        </form>
     </body>
</html>
