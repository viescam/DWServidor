<%-- 
    Document   : index
    Created on : 04-nov-2016, 9:24:34
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cálculo de áreas</title>
    </head>
    <body>
        <h2>Calculando áreas</h2>
        <form action="AreaServlet?area=circulo" method="post">
            <fieldset><!--Permite agrupar todo lo que metamos dentro. Lo convierte en un todo-->
                <legend>Área del círculo</legend>
                Radio: <input type="text" name="radio" value="${param.radio}" />
                <input type="submit" value="calcular" />
            </fieldset>
        </form>
                
        <form action="AreaServlet?area=cuadrado" method="post">
            <fieldset>
                <legend>Área del cuadrado</legend>
                Lado: <input type="text" name="lado" value="${param.lado}" />
                <input type="submit" value="calcular" />
            </fieldset>
        </form>
                
        <form action="AreaServlet?area=triangulo" method="post">
            <fieldset>
                <legend>Área del triangulo</legend>
                Base: <input type="text" name="base" value="${param.base}" />
                Altura: <input type="text" name="altura" value="${param.altura}" />
                <input type="submit" value="calcular" />
            </fieldset>
        </form>
                
        <form action="AreaServlet?area=trapecio" method="post">
            <fieldset>
                <legend>Área del trapecio</legend>
                Base1: <input type="text" name="base1" value="${param.base1}" />
                Base2: <input type="text" name="base2" value="${param.base2}" />
                Altura: <input type="text" name="altura" value="${param.altura}" />
                <input type="submit" value="calcular" />
            </fieldset>
        </form>
    </body>
</html>
