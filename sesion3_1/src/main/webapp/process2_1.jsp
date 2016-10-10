<%-- 
    Document   : process2_1
    Created on : 26-sep-2016, 9:05:44
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="usuario" scope="request" class="entidad.UsuarioBean" />

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% if((request.getParameter("name")==null && 
                request.getParameter("email")==null)
                ||
                (request.getParameter("name").equals("")&& 
                request.getParameter("email").equals(""))
                ) { %>
            Complete este formulario
            <form method="POST" action="process2_1.jsp">
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
            <jsp:setProperty name="usuario" property="name" value="<%= nombre %>" />
            <jsp:setProperty name="usuario" property="email" value="<%= mail %>" />
            <jsp:forward page="/process2_2.jsp"></jsp:forward>
        <% } %>
    </body>
</html>
