<%-- 
    Document   : respuestaSolicitud
    Created on : 28-sep-2016, 10:12:29
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="solicitud" scope="request" class="practicas_medicas.SolicitudOperacion" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Respuesta de la solicitud</title>
    </head>
    <body>
        <b>Práctica Médica</b><jsp:getProperty name="solicitud" property="practica" /><br>
        <b>Cantidad</b><jsp:getProperty name="solicitud" property="cantidad" /><br>
        <b>Estado</b><jsp:getProperty name="solicitud" property="estadoAutorizacion" /><br>
        <b>Motivo rechazo</b><jsp:getProperty name="solicitud" property="motivoRechazo" /><br>
        
    </body>
</html>
