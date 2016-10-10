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
        <title>JSP Page</title>
    </head>
    
    <body>
        <% if((request.getParameter("nombre")==null || request.getParameter("telefono")==null ||request.getParameter("email")==null 
                ||request.getParameter("usuario")==null || request.getParameter("pswd")==null) ||
             (request.getParameter("nombre").equals("") || request.getParameter("telefono").equals("") ||request.getParameter("email").equals("")
                ||request.getParameter("usuario").equals("") || request.getParameter("pswd").equals("")))  { %>
            <form method="POST" action="inscripcion.jsp">
                <h1>Formulario de Inscripción</h1>
                <table>
                    <tr><th colspan="2">Datos Personales</th></tr>
                    <tr>
                        <td>
                             Nombre*:
                        </td>
                        <td>
                             <input type="text" name="nombre" value="" size="20" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                             Apellidos:
                        </td>
                        <td>
                             <input type="text" name="apellidos" value="" size="50" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                             Dirección:
                        </td>
                        <td>
                             <input type="text" name="direccion" value="" size="50" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                             Código Postal:
                        </td>
                        <td>
                             <input type="text" name="cp" value="" size="5" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                             Ciudad:
                        </td>
                        <td>
                             <input type="text" name="ciudad" value="" size="20" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                             Provincia:
                        </td>
                        <td>
                             <input type="text" name="provincia" value="" size="20" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                             Teléfono*:
                        </td>
                        <td>
                             <input type="text" name="telefono" value="" size="20" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                             Correo electrónico*:
                        </td>
                        <td>
                             <input type="text" name="email" value="" size="20" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                             Repite tu correo electrónico:
                        </td>
                        <td>
                             <input type="text" name="email2" value="" size="20" >
                        </td>
                    </tr>
                </table>
                <table>
                    <tr><th colspan="2">Datos del Usuario</th></tr>
                    <tr>
                        <td>
                             Nombre de usuario:
                        </td>
                        <td>
                             <input type="text" name="usuario" value="" size="20" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Clave de acceso*:
                        </td>
                        <td>
                            <input type="password" name="pswd" value="" size="20" >
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Repite tu clave de acceso:
                        </td>
                        <td>
                            <input type="password" name="pswd2" value="" size="20" >
                        </td>
                    </tr>
                 </table>   
                 Los campos marcados con asterisco deben rellenarse de forma obligatoria<br>
                 <input type="submit" value="Enviar Consulta" >&nbsp<input type="reset" value="Restablecer" >
            </form>
        <% }else{ %>
            <% String nombre, apellidos, direccion, ciudad, provincia, cp, telefono, email, email2, 
                    nombreUsuario, claveAcceso, claveAcceso2;
                nombre=request.getParameter("nombre");
                apellidos=request.getParameter("apellidos");
                direccion=request.getParameter("direccion");
                ciudad=request.getParameter("ciudad");
                provincia=request.getParameter("provincia");
                cp=request.getParameter("cp");
                telefono=request.getParameter("telefono");
                email=request.getParameter("email");
                email2=request.getParameter("email2");
                nombreUsuario=request.getParameter("usuario");
                claveAcceso=request.getParameter("pswd");
                claveAcceso2=request.getParameter("pswd2");
             if(email.equals(email2)&& claveAcceso.equals(claveAcceso2)){%> 
                <jsp:setProperty name="cliente" property="nombre" value="<%= nombre%>"/>
                <jsp:setProperty name="cliente" property="apellidos" value="<%= apellidos%>"/>
                <jsp:setProperty name="cliente" property="direccion" value="<%= direccion%>"/>
                <jsp:setProperty name="cliente" property="ciudad" value="<%= ciudad%>"/>
                <jsp:setProperty name="cliente" property="provincia" value="<%= provincia%>"/>
                <jsp:setProperty name="cliente" property="cp" value="<%= cp%>"/>
                <jsp:setProperty name="cliente" property="telefono" value="<%= telefono%>"/>
                <jsp:setProperty name="cliente" property="email" value="<%= email%>"/>
                <jsp:setProperty name="cliente" property="nombreUsuario" value="<%= nombreUsuario%>"/>
                <jsp:setProperty name="cliente" property="claveAcceso" value="<%= claveAcceso%>"/>
                <jsp:forward page="/bienvenida.jsp"></jsp:forward>
             <% }else{ 
               response.sendRedirect("./inscripcion.jsp");
            }%>
        <% } %>
    </body>
    
</html>
