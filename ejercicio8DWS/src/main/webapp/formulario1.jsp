<%-- 
    Document   : formulario1.jsp
    Created on : 26-sep-2016, 9:46:53
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="pelicula" scope="request" class="videoclub.Pelicula" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VideoClub Online</title>
    </head>
    <body>
        <% if((request.getParameter("Nom_Pelicula")==null)||(request.getParameter("Num_Dias_Alquiler")==null)
            ||(request.getParameter("Edad_Cliente")==null) ){ %>
        Complete este formulario:<br>
        <form name="videoclub" action="formulario1.jsp" method="POST">
            <table  border="0" width="50%" cellspacing="2" bgcolor="#F5F6CE">
                <thead>
                    <tr>
                        <th colspan="6" bgcolor="#FFBF00" align="left">VIDEOCLUB ON-LINE</th>                        
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td></td>
                        <td bgcolor="#868A08">Nombre Película</td>
                        <td><input type="text" name="Nom_Pelicula" value="" size="15"/></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td bgcolor="#868A08">Número Días Alquiler</td>
                        <td><input type="text" name="Num_Dias_Alquiler" value="" size="15" /></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td bgcolor="#868A08">Edad Cliente</td>
                        <td bgcolor="#868A08">Forma de Pago</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td><input type="radio" name="Edad_Cliente" value="-7" />Menor de 7 años<br>
                            <input type="radio" name="Edad_Cliente" value="-14" />Menor de 14 años<br>
                            <input type="radio" name="Edad_Cliente" value="-18" />Menor de 18 años<br>
                            <input type="radio" name="Edad_Cliente" value="+18" />Mayor de 18 años<br>
                        </td>
                        <td><select name="Forma_Pago">
                                <option value="visa" SELECTED>VISA</option>
                                <option value="cheque">Cheque</option>
                                <option value="contado">Contado</option>
                                <option value="metalico">Metálico</option>
                            </select>
                            
                        </td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td colspan="2" bgcolor="#868A08">Especificaciones extras</td>
                        <td width="20%"></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td colspan="3">
                            <textarea name="especificaciones" rows="6" cols="60">
                            </textarea></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td colspan="3" align="center">
                            <input type="submit" value="Enviar Pedido" />
                            <input type="reset" value="Borrar Formulario" />
                        </td>
                        <td></td>
                    </tr>
                </tbody>
            </table>

            
        </form>
        <% } else { %>
        <% String nombrePelicula, formaPago, especificaciones, edadMaxCliente,diasAlquiler; %>
        <% 
            nombrePelicula= request.getParameter("Nom_Pelicula");
            formaPago= request.getParameter("Forma_Pago");
            especificaciones= request.getParameter("especificaciones");
            diasAlquiler= request.getParameter("Num_Dias_Alquiler");
            edadMaxCliente = request.getParameter("Edad_Cliente");
        %>
            <jsp:setProperty name="pelicula" property="nombre" value="<%= nombrePelicula %>" />
            <jsp:setProperty name="pelicula" property="formaPago" value="<%= formaPago %>" />
            <jsp:setProperty name="pelicula" property="edadMaxCliente" value="<%= edadMaxCliente %>" />
            <jsp:setProperty name="pelicula" property="especificaciones" value="<%= especificaciones %>" />
            <jsp:setProperty name="pelicula" property="diasDeAlquiler" value="<%= diasAlquiler %>" />
            <jsp:forward page="/formulario2.jsp"></jsp:forward>
        <% } %>
        
    </body>
</html>
