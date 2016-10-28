<%-- 
    Document   : AlumnoNoExistente
    Created on : 21-oct-2016, 9:55:14
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
        
        <% String b;
        b = (String) request.getAttribute("a"); 
        %>
        <h3>El DNI <%=b%> no corresponde a ningún alumno.</h3>
    </body>
</html>
