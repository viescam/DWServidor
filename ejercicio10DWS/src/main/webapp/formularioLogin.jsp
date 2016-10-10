<%-- 
    Document   : formularioLogin
    Created on : 28-sep-2016, 20:03:20
    Author     : Vicente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="login" scope="request" class="usuario.Datos" />

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <% if((request.getParameter("usuario")==null || request.getParameter("pswd")==null) || 
               (request.getParameter("usuario").equals("") || request.getParameter("pswd").equals("")))  { %>
               
            <form method="POST" action="formularioLogin.jsp">
                <h1>Formulario de login de usuarios</h1>
                <table>
                    <tr>
                        <td>
                             Nombre de usuario*:<input type="text" name="usuario" value="" size="20" ><br>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            Clave de acceso*:<input type="password" name="pswd" value="" size="20" ><br>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            Recordar datos de acceso:<input type="checkbox" name="recordarDatos" value="si"><br>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            Los campos marcados con asterisco deben rellenarse de forma obligatoria<br>
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <input type="submit" value="Enviar Consulta" >&nbsp<input type="reset" value="Restablecer" >
                        </td>
                    </tr>
                </table>
            </form>
        <% }else{ %>
            <% String nombreUsuario, claveAcceso;
                nombreUsuario=request.getParameter("usuario");
                claveAcceso=request.getParameter("pswd");
             if(claveAcceso.equals("12345678") || claveAcceso.equals("87654321") || claveAcceso.equals("11111111") || 
                     claveAcceso.equals("88888888")){ %> <%--Estas son los passwords que permiten loguearse en la página--%>
                <jsp:setProperty name="login" property="nombreUsuario" value="<%= nombreUsuario%>"/>
                <jsp:setProperty name="login" property="claveAcceso" value="<%= claveAcceso%>"/>
                <jsp:forward page="/bienvenida.jsp"></jsp:forward>
            <% }else{ 
                    response.sendRedirect("./formularioLogin.jsp");
            }%>
        <% } %>
    </body>
    
</html>
