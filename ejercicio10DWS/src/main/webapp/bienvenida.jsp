<%-- 
    Document   : bienvenida
    Created on : 28-sep-2016, 20:34:55
    Author     : Vicente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="login" scope="request" class="usuario.Datos" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página de bienvenida</title>
    </head>
    <body>
        <b>Hola <jsp:getProperty name="login" property="nombreUsuario" />, el proceso de logueo ha ocurrido sin problemas</b>
    </body>
</html>
