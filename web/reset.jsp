<%-- 
    Document   : reset
    Created on : 26-feb-2013, 20:05:27
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
                for(int i=0; i<3; i++){
                    instancies[i].reset(); 
                }
                getServletContext().setAttribute("instancies", instancies);
                
                //redireccionament a administracio.html
                response.sendRedirect("administracio.html"); 
                
            }
            catch(Exception e){
                out.println("Error fatal, falta instanciar els taulells. El programa explotarà en 3, 2, 1...");
            }
            
            //redireccionament a administracio.html
        %>
        <br /> <a href="administracio.html">Tornar</a> 
    </body>
</html>
