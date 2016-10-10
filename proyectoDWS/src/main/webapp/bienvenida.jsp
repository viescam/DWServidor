<%-- 
    Document   : bienvenida
    Created on : 28-sep-2016, 20:34:55
    Author     : Vicente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="cliente" scope="request" class="datosClientes.Cliente" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página de bienvenida</title>
    </head>
    <body>
        <b>Hola <jsp:getProperty name="cliente" property="nombre" />, el proceso de logueo ha ocurrido sin problemas</b>
        <br>
        Tu usario es <jsp:getProperty name="cliente" property="nombreUsuario" />, y tu contraseña: <jsp:getProperty name="cliente" property="claveAcceso" />
    </body>
</html>
