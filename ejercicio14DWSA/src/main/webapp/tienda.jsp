<%-- 
    Document   : tienda
    Created on : 24-oct-2016, 9:38:09
    Author     : alumno
--%>
<%@page import="java.util.ArrayList"%>
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
            ArrayList<Producto> productos = (ArrayList<Producto>) request.getSession().getAttribute("productosTienda");
        %>
        <p> Elija el producto que desee adquirir</p>
        <form method="POST" action="CarritoServlet">
            <select name="selCombo">
                <% for(int i=0;i<productos.size();i++){%>
                <option value=<%=productos.get(i).getId()%>><%=productos.get(i).getNombre()%></option>
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
            <% for(int i=0;i<productos.size();i++){
                if(productos.get(i).getCantidad()>0){
            %>
                <tr>
                    <td><%=productos.get(i).getNombre()%></td>
                    <td><%=productos.get(i).getCantidad()%></td>
                </tr>
            <%    } }   %>
        </table>           
    </body>
</html>
