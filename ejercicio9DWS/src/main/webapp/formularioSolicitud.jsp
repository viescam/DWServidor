<%-- 
    Document   : formularioSolicitud
    Created on : 28-sep-2016, 9:21:57
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="solicitud" scope="request" class="practicas_medicas.SolicitudOperacion" />

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! double numeroAleatorio = Math.random(); %>
        <% if((request.getParameter("practica")==null)||(request.getParameter("cantidad")==null)){ %>
            Complete este formulario:<br>
            <form name="autorizacion" action="formularioSolicitud.jsp" method="POST">
                <table  border="0" width="30%" cellspacing="2" bgcolor="#A9CCCE">
                    <thead>
                            <tr>
                                <th colspan="2" bgcolor="#AA6C39" align="center" ><font size="5" color="FFD2AC">AUTORIZACIÓN DE PRÁCTICAS MÉDICAS</font></th>                        
                            </tr>
                    </thead>
                    <tbody>
                            <tr>
                                <td bgcolor="#A75486" width="49%" align="center">Práctica Médica</td>
                                <td width="49%" align="center"><input type="text" name="practica" value="" size="20"/></td>
                            </tr>
                            <tr>
                                <td bgcolor="#A75486" align="center">Cantidad</td>
                                <td align="center"><input type="text" name="cantidad" value="" size="20" /></td>
                            </tr>
                            <tr>                  
                                <td colspan="2" align="center">
                                    <input type="submit" value="Enviar Autorización" />
                                    <input type="reset" value="Borrar Formulario" />
                                </td>                      
                            </tr>
                    </tbody>
                </table>
            </form>
        <% } else { %>
        <% String practicaMedica;
           int cantidad;
           double numAleat1, numAleat2;
        %>
        <% 
            practicaMedica= request.getParameter("practica");
            cantidad= Integer.parseInt(request.getParameter("cantidad"));
            numeroAleatorio= Math.random();

            
        %>
            <jsp:setProperty name="solicitud" property="practica" value="<%= practicaMedica %>" />
            <jsp:setProperty name="solicitud" property="cantidad" value="<%= cantidad %>" />
            <jsp:setProperty name="solicitud" property="numeroAleatorio" value="<%= numeroAleatorio%>" />
            <jsp:forward page="/respuestaSolicitud.jsp"></jsp:forward>
        <% } %>
    </body>
</html>
