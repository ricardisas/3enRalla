<%-- 
    Document   : instancies
    Created on : 26-feb-2013, 20:04:01
    Author     : Daniel i Ricard
--%>
<%@page import = "taulella.taulell" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>3enLinea</title>
    </head>
    <body>
        <%
            if(getServletContext().getAttribute("instancies") == null){
                taulell[] instancies = new taulell[3];
                for(int i=0; i<3; i++){
                     instancies[i]=new taulell(i);
                }
                getServletContext().setAttribute("instancies", instancies);
                
                //redireccionament a administracio.html
                response.sendRedirect("administracio.html");
            }
            else{
                out.println("Les instancies ja estan creades.");
                %><br />
                <a href="administracio.html">tornar</a>
            <%
            }
        %>
        
    </body>
</html>
