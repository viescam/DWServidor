<%-- 
    Document   : index
    Created on : 08-nov-2016, 19:30:51
    Author     : Vicente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Cookie cookie[]=request.getCookies();
            String usuario="",password="";
            if (cookie != null) {
                for (Cookie cook : cookie) {
                    if(cook.getName().equalsIgnoreCase("usuario")){
                        usuario=cook.getValue();
                    }
                    if(cook.getName().equalsIgnoreCase("password")){
                        password=cook.getValue();
                    }
                }    
            }            
        %>
        <form action="servletRecogida" method="post" >
            Usuario:<input type="text" name="usuario" value="<%=usuario%>"/><br>
            Password:<input type="password" name="password" value="<%=password%>" /><br>
            <input name="rememberBox" type="checkbox" checked="checked"/>Recordar mis datos<br>
            <input type="submit" value="Enviar Datos" />
        </form>
    </body>
</html>
