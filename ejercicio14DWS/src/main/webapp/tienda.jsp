<%-- 
    Document   : tienda
    Created on : 24-oct-2016, 9:38:09
    Author     : alumno
--%>

<%@page import="java.util.HashMap"%>
<%@page import="java.util.Iterator"%>
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
            ArrayList<Producto> productos = (ArrayList<Producto>) request.getSession().getAttribute("productosTienda");
            HashMap<Long, Integer> carrito = (HashMap<Long, Integer>) request.getAttribute("carrito");
            Iterator it = carrito.keySet().iterator();
            
        %>
        <p> Elija el producto que desee adquirir</p>
        <form method="POST" action="CarritoServlet">
            <select name="selCombo">
                <% for(int i=0;i<productos.size();i++){%>
                    <option value=<%=productos.get(i).getId()%>><%=productos.get(i).getNombre()%></option>
                <%
                    }
                %>
            </select>
            <input type="submit" value="Escoger Producto" >
        </form>
        <%--
        <% if(carrito.size()>0){%>
        <p>
            <%  
                while(it.hasNext()){
                  long key = (long)it.next();
                  %>
                  <%= key %>
                  <%= carrito.get(key) %>
                  <br>
                <% } %>   
        </p>
        <% } %>
        --%>
                    
    </body>
</html>
