<%-- 
    Document   : alta
    Created on : 14-nov-2016, 9:42:31
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
        <h2>Nuevo Cliente</h2>
        <form action="ServletAnyadir">
            <table>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombre" value="" required /></td>
                </tr>
                <tr>
                    <td>Apellidos</td>
                    <td><input type="text" name="apellidos" value="" required /></td>
                </tr>
                <tr>
                    <td>Dni</td>
                    <td><input type="text" name="dni" value="" required /></td>
                </tr>
                <tr>
                    <td>Telefono</td>
                    <td><input type="text" name="telefono" value="" required /></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email" value="" required  /></td>
                </tr>
            </table>
            <input type="submit" value="Nuevo Cliente"/>
        </form>
    </body>
</html>
