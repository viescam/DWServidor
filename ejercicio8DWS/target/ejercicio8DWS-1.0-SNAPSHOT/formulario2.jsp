<%-- 
    Document   : formulario2
    Created on : 26-sep-2016, 10:09:51
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="pelicula" scope="request" class="videoclub.Pelicula" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado del alquiler:</title>
    </head>
    <body>
        <b>Usted indicó la siguiente información</b>:<br>
        <b>Película:</b><jsp:getProperty name="pelicula" property="nombre" /><br>
        <b>Dias de Alquiler:</b><jsp:getProperty name="pelicula" property="diasDeAlquiler" /><br>
        <b>Edad del cliente:</b><jsp:getProperty name="pelicula" property="edadMaxCliente" /><br>
        <b>Forma de pago:</b><jsp:getProperty name="pelicula" property="formaPago" /><br>
        <b>Extras:</b><jsp:getProperty name="pelicula" property="especificaciones" /><br>
        <b>!Disfrute de la película!</b>
    </body>
</html>
