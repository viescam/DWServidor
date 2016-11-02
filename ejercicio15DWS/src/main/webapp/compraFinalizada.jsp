<%-- 
    Document   : compraFinalizada
    Created on : 28-oct-2016, 9:32:21
    Author     : alumno
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Tienda.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Factura</title>
    </head>
    <body>
        <%
            ArrayList<Producto> productos = (ArrayList<Producto>) request.getAttribute("productosComprados");
            double precioTotalCompra = (Double) request.getAttribute("precioTotal");
        %>
        <b>ALBARÁN</b>
        <table border="0px" cellspacing="0" cellpadding="5px">
                <tr>
                    <td>Producto</td>
                    <td>Precio unid</td>
                    <td>Cantidad</td>
                    <td>Total</td>
                </tr>
                <% for(int i=0;i<productos.size();i++){
                    if(productos.get(i).getCantidad()>0){
                %>
                    <tr>
                        <td><%=productos.get(i).getNombre()%></td>
                        <td><%=productos.get(i).getPrecio()%> €</td>
                        <td><%=productos.get(i).getCantidad()%></td>
                        <td><%=productos.get(i).getPrecioFinal()%> €</td>
                    </tr>
                <% } }  %>
                <tr>
                    <td  colspan="3"><b>Precio final de la compra:</b></td>
                    <td><b><%=precioTotalCompra%> €</b></td>
                </tr>
        </table> 
    </body>
</html>
