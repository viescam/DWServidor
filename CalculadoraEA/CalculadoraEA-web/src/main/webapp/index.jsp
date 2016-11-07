<%-- 
    Document   : index
    Created on : 07-nov-2016, 9:17:07
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calcular áreas</title>
    </head>
    <body>
        <form action="AreaServlet?area=circulo" method="POST" >
            <fieldset>
                <legend> Área del circulo: </legend>
                Radio: <input type="text" name="radio" value="${param.radio}" >
                <input type="submit" value="Calcular">
            </fieldset>           
        </form>
        <form action="AreaServlet?area=cuadrado" method="POST" >
            <fieldset>
                <legend> Área del cuadrado: </legend>
                Lado: <input type="text" name="lado" value="${param.lado}" >
                <input type="submit" value="Calcular">
            </fieldset>           
        </form>
        <form action="AreaServlet?area=triangulo" method="POST" >
            <fieldset>
                <legend> Área del triangulo: </legend>
                Base: <input type="text" name="base" value="${param.base}" >
                Altura: <input type="text" name="altura" value="${param.altura}" >
                <input type="submit" value="Calcular">
            </fieldset>           
        </form>
        <form action="AreaServlet?area=trapecio" method="POST" >
            <fieldset>
                <legend> Área del trapecio: </legend>
                Base1: <input type="text" name="base1" value="${param.base1}" >
                Base2: <input type="text" name="base2" value="${param.base2}" >
                Altura: <input type="text" name="altura" value="${param.altura}" >
                <input type="submit" value="Calcular">
            </fieldset>           
        </form>
    </body>
</html>
