<%-- 
    Document   : apretar
    Created on : 12-mar-2013, 20:51:30
    Author     : Daniel i Ricard
--%>
<%@ page import="taulella.taulell" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(request.getParameter("fil")!=null && request.getParameter("col")!=null && request.getParameter("jug")!=null){
                int fil = Integer.parseInt(request.getParameter("fil"));
                int col = Integer.parseInt(request.getParameter("col"));
                int numJugador = Integer.parseInt(request.getParameter("jug"));
                int numTaulell = (Integer)session.getAttribute("numTau");
                taulell[] instancies = (taulell[])getServletContext().getAttribute("instancies");
                instancies[numTaulell].casella(col, fil, numJugador);
                boolean win = instancies[numTaulell].validarValors();
                instancies[numTaulell].canviarTorn();

                //redireccionament a administracio.html
                response.sendRedirect("partida.jsp");
                
            }
        %>
    </body>
</html>
