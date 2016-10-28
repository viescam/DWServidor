<%-- 
    Document   : compraFinalizada
    Created on : 28-oct-2016, 9:32:21
    Author     : alumno
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="tienda.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ArrayList<Producto> productos = (ArrayList<Producto>) request.getAttribute("productosComprados");
        %>
        <table border="1px" cellspacing="0" cellpadding="10px">
                <tr>
                    <td>Producto</td>
                    <td>Cantidad</td>
                </tr>
                <% for(int i=0;i<productos.size();i++){
                %>
                    <tr>
                        <td><%=productos.get(i).getNombre()%></td>
                        <td><%=productos.get(i).getCantidad()%></td>
                    </tr>
                <%    }  %>
        </table> 
    </body>
</html>
