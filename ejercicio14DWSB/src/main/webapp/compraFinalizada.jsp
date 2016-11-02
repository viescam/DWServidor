<%-- 
    Document   : compraFinalizada
    Created on : 02-nov-2016, 9:17:19
    Author     : alumno
--%>

<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Hashtable"%>
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
            Hashtable<Integer,Producto> hashProductos = (Hashtable<Integer,Producto>) request.getSession().getAttribute("hashProductosTienda");
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
                <% Enumeration enumer = hashProductos.keys();
                   while(enumer.hasMoreElements()){
                    Integer clave = (Integer) enumer.nextElement();
                    Producto prod = (Producto) hashProductos.get(clave);
                    if(prod.getCantidad()>0){
                %>
                    <tr>
                        <td><%=prod.getNombre()%></td>
                        <td><%=prod.getPrecio()%> €</td>
                        <td><%=prod.getCantidad()%></td>
                        <td><%=prod.getPrecioFinal()%> €</td>
                    </tr>
                <% } }  %>
                <tr>
                    <td  colspan="3"><b>Precio final de la compra:</b></td>
                    <td><b><%=precioTotalCompra%> €</b></td>
                </tr>
        </table> 
    </body>
</html>
