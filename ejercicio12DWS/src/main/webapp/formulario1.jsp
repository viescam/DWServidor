<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VideoClub Online</title>
    </head>
    <body>
        Complete este formulario:<br>
        <form name="videoclub" action="CapturaDatosVideoClub" method="POST">
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
    </body>
</html>
