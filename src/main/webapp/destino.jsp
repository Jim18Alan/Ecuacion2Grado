<%-- 
    Document   : destino.jsp
    Created on : 17 nov 2023, 08:37:48
    Author     : alan7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calcular</title>
    </head>
    <body>
        
        <header>
            <h1>Calcular x </h1>
        </header>
        
         <img src="ResourceFile/img/formula.png" />
         
        <%--Importamos clases java--%>
        <%@ page import="com.javm.actividad.model.Ecuacion" %>
        <%@ page import="com.javm.actividad.model.service.Archivo" %>
        
        <%--Scriptplet--%>
        <%
            String a = request.getParameter("a");
            String b = request.getParameter("b");
            String c = request.getParameter("c");
            
            String x1,x2;
            
            Ecuacion ecuacion = new Ecuacion(a,b,c);
            ecuacion.calcular();
            x1 = ecuacion.getX1();
            x2 = ecuacion.getX2();
            
            ServletContext servletContext = request.getServletContext();
            String ruta = servletContext.getRealPath("/WEB-INF/ResultadoEcuacion.txt");
            ruta = ruta.replace('\\','/');
            Archivo.add(ecuacion,ruta);
        %>
        
        <h2>Resultado final</h2>
        <p>a = <%= ecuacion.getA()%> </p>
        <p>b = <%= ecuacion.getB()%> </p>
        <p>c = <%= ecuacion.getC()%> </p>
        <p>x1 = <%= x1%> </p>
        <p>x2 = <%= x2%> </p>
        <p>El resultado se guardo en un .txt de la siguiente ruta: </p>
        <p><%= ruta%></p>
        
        <h2>Registro de dato correcto</h2>
        <form action="index.jsp" method="post">
        <input type="submit" value="nuevo registro">
        </form>
    </body>
</html>
