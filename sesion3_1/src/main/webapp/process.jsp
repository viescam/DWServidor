<%-- 
    Document   : process
    Created on : 26-sep-2016, 8:52:00
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Process JSP</title>
    </head>
    <body bgcolor="#FFFFCC">
        <% if((request.getParameter("name")==null && 
                request.getParameter("email")==null)
                ||
                (request.getParameter("name").equals("")&& 
                request.getParameter("email").equals(""))
                ) { %>
            Complete este formulario
            <form method="POST" action="process.jsp">
                Su nombre:<input type="text" name="name" size="20"><br>
                Su email: <input type="text" name="email" size="20"><br>
                <input type="submit" value="Enviar">
            </form>
        <% } else { %>
            <% String nombre, mail;%>
            <%
                nombre = request.getParameter("name");
                mail = request.getParameter("email");
            %>
            <b> Usted indicó la siguiente información</b>:<br>
            <b> Nombre:</b> <%= nombre %> <br>
            <b> Email:</b> <%= mail %>
        <% } %>
    </body>
</html>
