<%-- 
    Document   : index
    Created on : 13-nov-2016, 11:06:06
    Author     : Vicente
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="clasesJava.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script >
            function calA(){
                document.listado.action ="ServletBaja";
            }
            function calB(){
                document.listado.action ="ServletModificar";
            }
        </script>
    </head>
    
        <%  ArrayList<Cliente> listaClientes = (ArrayList<Cliente>) session.getAttribute("listaClientes"); %>
        <a href="alta.jsp" >Nuevo Cliente</a>
        <form action="" method="POST" name="listado">
        <table border="0" cellspacing="0" cellspadding="10">
            <tr>
                    <td>Nombre</td>
                    <td>Apellidos</td>
                    <td>Dni</td>
                    <td>Telefono</td>
                    <td>Email</td>
                    <td></td>
                </tr>
            <% for(Cliente cliente : listaClientes){ %>
                <tr>
                    <td><%=cliente.getNombre()%></td>
                    <td><%=cliente.getApellidos()%></td>
                    <td><%=cliente.getDni()%></td>
                    <td><%=cliente.getTelefono()%></td>
                    <td><%=cliente.getEmail()%></td>
                    <td><input type="checkbox" name="clienteChecked" value="<%=cliente.getId()%>"</td>
                </tr>
            <% } %>    
        </table>
        <input type = "submit" onclick=calA() value="Eliminar"/>
        <input type = "submit" onclick=calB() value="Modificar"/>
        </form>
    
</html>
