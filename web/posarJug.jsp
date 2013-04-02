<%-- 
    Document   : posarJug
    Created on : 05-mar-2013, 20:44:55
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
            try{
                if(session.getAttribute("numJugador") == null){
                    int i=0;
                    boolean plens=false;
                    taulell[] instancies = (taulell[])getServletContext().getAttribute("instancies");
                    while(instancies[i].getJugadors() == 2 && i<instancies.length-1){
                        i++;
                        if(i==instancies.length-1 && instancies[i].getJugadors() == 2){
                            plens=true;
                        }
                    }

                    if(plens){
                        out.print("Tots els taulells estan ocupats, prova-ho més tard. Disculpi les molesties.");
                    }
                    else{
                        instancies[i].setJugadors(request.getParameter("nick"));
                        getServletContext().setAttribute("instancies", instancies);
                        session.setAttribute("numJugador", instancies[i].getJugadors());
                        session.setAttribute("nomJug", instancies[i].getNomJug(instancies[i].getJugadors()));
                        session.setAttribute("numTau", i);
                    }
                
                    //redireccionament a administracio.html
                    response.sendRedirect("partida.jsp");
                }
                else{
                   out.println("Ja has iniciat una partida");
                   %> <br /> <a href="partida.jsp">Anar a la partida iniciada</a> 
                   <br /> <a href="inici.html">Tornar</a><%
                }
                
             }
             catch(Exception se){
                out.println("Error fatal, avui l'administrador de l'aplicació s'ha adormit. Pagui 3€ per rebre'n les disculpes.");
                %> <br /> <a href="inici.html">Tornar</a> <%
             }                       
        %>
    </body>
</html>
