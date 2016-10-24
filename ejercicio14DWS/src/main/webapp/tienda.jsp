<%-- 
    Document   : tienda
    Created on : 24-oct-2016, 9:38:09
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
            ArrayList<Producto> productos = (ArrayList<Producto>) request.getAttribute("productosTienda");
            
        %>
        <form id="tienda">
            <select name="selCombo"">
                <% for(int i=0;i<productos.size();i++){%>
                    <option value=<%=productos.get(i).getId()%>><%=productos.get(i).getNombre()%></option>
                <%
                    }
                %>
            </select> 
        </form>
    </body>
</html>
