<%-- 
    Document   : modificar
    Created on : 14-nov-2016, 9:58:31
    Author     : alumno
--%>

<%@page import="clasesJava.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% ArrayList<Cliente> clientesAModificar = (ArrayList<Cliente>) request.getAttribute("clientesModificar");%>
        <% 
            String textoAction="ServletModificar?accion=confirmarModif";
            for(int i=0;i<clientesAModificar.size();i++){
                textoAction+="?id"+i+"="+clientesAModificar.get(i).getId();
            }
        %>
                
        <form action=<%=textoAction%> method="POST" name="listado">
        <table border="0" cellspacing="0" cellspadding="10">
            <tr>
                    <td>Nombre</td>
                    <td>Apellidos</td>
                    <td>Dni</td>
                    <td>Telefono</td>
                    <td>Email</td>
            </tr>
            <% for(int i=0;i<clientesAModificar.size();i++){%>
                <tr>
                    <td><input type="text" name="nombre+<%=i%>" value=<%=clientesAModificar.get(i).getNombre()%> /></td>
                    <td><input type="text" name="apellidos+<%=i%>" value=<%=clientesAModificar.get(i).getApellidos()%> /></td>
                    <td><input type="text" name="dni+<%=i%>" value=<%=clientesAModificar.get(i).getDni()%> /></td>
                    <td><input type="text" name="telefono+<%=i%>" value=<%=clientesAModificar.get(i).getTelefono()%> /></td>
                    <td><input type="text" name="email+<%=i%>" value=<%=clientesAModificar.get(i).getEmail()%> /></td>
                </tr>
            <% } %>    
        </table>
        <input type = "submit" value="Confirmar Cambios"/>
        <input type = "reset" value="Restaurar Datos"/>
        </form>
    </body>
</html>
