<%-- 
    Document   : inscripcion
    Created on : 05-oct-2016, 9:40:47
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="cliente" scope="request" class="datosClientes.Cliente" />

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mantenimiento Cliente</title>
        <link rel="stylesheet" type="text/css" href="css/reset.css">
        <link rel="stylesheet" type="text/css" href="css/mantenimientoCliente.css">
    </head>
    
    <body>
        <h2>Mantenimiento Clientes</h2>
        <a href="/proyectoDWS/altaCliente.jsp" class="boton">Alta Cliente</a><br>
        <a href="/bajaCliente" class="boton">Baja Cliente</a><br>
        <a href="/modifCliente" class="boton">Modificar Datos Cliente</a><br>
    </body>
    
</html>
