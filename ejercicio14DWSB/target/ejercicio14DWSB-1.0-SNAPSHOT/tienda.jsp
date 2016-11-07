<%-- 
    Document   : tienda
    Created on : 02-nov-2016, 9:17:31
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
        <title>Tienda</title>
    </head>
    <body>
        <%
            Hashtable<Integer,Producto> hashProductos = (Hashtable<Integer,Producto>) request.getSession().getAttribute("hashProductosTienda");
        %>
        <p> Elija el producto que desee adquirir</p>
        <form method="POST" action="CarritoServlet">
            <select name="selCombo">
                <% Enumeration enumer = hashProductos.keys();
                    while(enumer.hasMoreElements()){
                        Integer clave = (Integer) enumer.nextElement();
                        Producto prod = (Producto) hashProductos.get(clave);
                %>
                <option value=<%=prod.getId()%>><%=prod.getNombre()%></option>
                <% } %>
            </select>
            <input type="submit" value="Escoger Producto" >
        </form>
        <br>
        <a href="./FinalizarCompra">Finalizar Compra</a>
        <p> Carrito de la compra </p>
        <table border="1px" cellspacing="0" cellpadding="10px">
            <tr>
                <td>Producto</td>
                <td>Cantidad</td>
            </tr>
            <% 
                enumer = hashProductos.keys();
                while(enumer.hasMoreElements()){
                        Integer clave = (Integer) enumer.nextElement();
                        Producto prod = (Producto) hashProductos.get(clave);
                        if(prod.getCantidad()>0){
            %>
                <tr>
                    <td><%=prod.getNombre()%></td>
                    <td><%=prod.getCantidad()%></td>
                </tr>
            <%    } }   %>
        </table>           
    </body>
</html>
