<%-- 
    Document   : vestat
    Created on : 26-feb-2013, 20:06:34
    Author     : Daniel i Ricard
--%>
<%@ page import="taulella.taulell" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>3enLinea</title>
    </head>
    <body>
        <%
            try{
                taulell[] instancies = (taulell[])getServletContext().getAttribute("instancies");
                for(int i=0; i<instancies.length; i++){
                    out.println("El taulell "+i+" està "+instancies[i].estat()); 
                    %> <br /> <%
                }
            }
            catch(Exception e){
                out.println("Error fatal, falta instanciar els taulells. El programa explotarà en 3, 2, 1...");
            }
            %> <br /> <a href="administracio.html">Tornar</a>
        
    </body>
</html>
