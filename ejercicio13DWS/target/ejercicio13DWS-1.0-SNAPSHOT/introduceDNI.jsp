<%-- 
    Document   : introduceDNI
    Created on : 17-oct-2016, 8:57:37
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
        <h1>Introduce DNI a buscar</h1>
        <form name="introducirDNI" action="ServletAlumnos" method="POST">
            <input type="text" name="dniIntrod" value="" />
            <input type="submit" value="Enviar" />
        </form>
    </body>
</html>
