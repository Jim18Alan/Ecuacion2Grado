<%-- 
    Document   : index
    Created on : 17 nov 2023, 08:23:00
    Author     : alan7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <h1>
                Ecuacion de segundo grado 
            </h1>
        </header>
        <img src="ResourceFile/img/formula.png" />
        <form action="destino.jsp" method="post">
            <label for="a">a = </label>
            <input type="number" id="a" name="a" min="1" step="0.00000000001" required>
            
            <label for="b">b = </label>
            <input type="number" id="b" name="b" min="0" step="0.00000000001" required><br>
            
            <label for="c">C = </label>
            <input type="number" id="c" name="c" min="0" step="0.00000000001" required><br>
            
            <input type="submit" name="Enviar">
            <input type="reset" name="Borrar">
        </form>
    </body>
</html>
