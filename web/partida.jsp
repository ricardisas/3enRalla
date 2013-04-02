<%-- 
    Document   : partida
    Created on : 08-mar-2013, 16:49:53
    Author     : Daniel i Ricard
--%>
<STYLE type="text/css">
    input[type="submit"]{
        height: 9em;
        width: 9em;
        background-color: #FFF;
    }
</STYLE>
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
            taulell[] instancies = (taulell[])getServletContext().getAttribute("instancies");
            int numTaulell = (Integer)session.getAttribute("numTau");
            int numJugador = (Integer)session.getAttribute("numJugador");
            String nomJugador = (String)session.getAttribute("nomJug");
            out.println("Jugador "+nomJugador+"."+"<br/>");
            out.println("Numero de jugador: "+numJugador+"<br/>");
            out.println("Torn del jugador: "+instancies[numTaulell].veureTorn()+"<br/>");
            String estat = instancies[numTaulell].estat();
            out.println("El taulell està "+estat+".<br/>");
            
        %>
        <form method="post" name="form1" id="form1">
        <table border="1" style=" margin-top:3em;">
            <tr>
                
            <td><input type="submit" name="00" value="<%= instancies[numTaulell].estatCasella(0,0) %>" 
                       formaction="apretar.jsp?fil=0&col=0&jug=<%= numJugador %>"
                       <% if(instancies[numTaulell].veureTorn() != nomJugador || estat=="Finalitzat" || estat=="esperant contrincant" || instancies[numTaulell].estatCasella(0,0) != ""){ %> disabled <% } %>/></td>
            <td><input type="submit" name="01" value="<%= instancies[numTaulell].estatCasella(0,1) %>" 
                       formaction="apretar.jsp?fil=0&col=1&jug=<%= numJugador %>"
                       <% if(instancies[numTaulell].veureTorn() != nomJugador || estat=="Finalitzat" || estat=="esperant contrincant" || instancies[numTaulell].estatCasella(0,1) !=""){ %> disabled <% } %>/></td>
            <td><input type="submit" name="02" value="<%= instancies[numTaulell].estatCasella(0,2) %>" 
                       formaction="apretar.jsp?fil=0&col=2&jug=<%= numJugador %>"
                       <% if(instancies[numTaulell].veureTorn() != nomJugador || estat=="Finalitzat" || estat=="esperant contrincant" || instancies[numTaulell].estatCasella(0,2) !=""){ %> disabled <% } %>/></td>
            
            </tr>
            <tr>
                
            <td><input type="submit" name="10" value="<%= instancies[numTaulell].estatCasella(1,0) %>" 
                       formaction="apretar.jsp?fil=1&col=0&jug=<%= numJugador %>"
                       <% if(instancies[numTaulell].veureTorn() != nomJugador || estat=="Finalitzat" || estat=="esperant contrincant" || instancies[numTaulell].estatCasella(1,0) !=""){ %> disabled <% } %>/></td>
            <td><input type="submit" name="11" value="<%= instancies[numTaulell].estatCasella(1,1) %>" 
                       formaction="apretar.jsp?fil=1&col=1&jug=<%= numJugador %>"
                       <% if(instancies[numTaulell].veureTorn() != nomJugador || estat=="Finalitzat" || estat=="esperant contrincant" || instancies[numTaulell].estatCasella(1,1) !=""){ %> disabled <% } %>/></td>
            <td><input type="submit" name="12" value="<%= instancies[numTaulell].estatCasella(1,2) %>" 
                       formaction="apretar.jsp?fil=1&col=2&jug=<%= numJugador %>"
                       <% if(instancies[numTaulell].veureTorn() !=  nomJugador || estat=="Finalitzat" || estat=="esperant contrincant" || instancies[numTaulell].estatCasella(1,2) !=""){ %> disabled <% } %>/></td>
            
            </tr>
            <tr>
                
            <td><input type="submit" name="20" value="<%= instancies[numTaulell].estatCasella(2,0) %>" 
                       formaction="apretar.jsp?fil=2&col=0&jug=<%= numJugador %>"
                       <% if(instancies[numTaulell].veureTorn() != nomJugador || estat=="Finalitzat" || estat=="esperant contrincant" || instancies[numTaulell].estatCasella(2,0) !=""){ %> disabled <% } %>/></td>
            <td><input type="submit" name="21" value="<%= instancies[numTaulell].estatCasella(2,1) %>" 
                       formaction="apretar.jsp?fil=2&col=1&jug=<%= numJugador %>"
                       <% if(instancies[numTaulell].veureTorn() != nomJugador || estat=="Finalitzat" || estat=="esperant contrincant" || instancies[numTaulell].estatCasella(2,1) !=""){ %> disabled <% } %>/></td>
            <td><input type="submit" name="22" value="<%= instancies[numTaulell].estatCasella(2,2) %>" 
                       formaction="apretar.jsp?fil=2&col=2&jug=<%= numJugador %>"
                       <% if(instancies[numTaulell].veureTorn() != nomJugador || estat=="Finalitzat" || estat=="esperant contrincant" || instancies[numTaulell].estatCasella(2,2) !=""){ %> disabled <% } %>/></td>
            
            </tr>
        </table>
        </form>
        <%
            if(estat=="Finalitzat"){
                if(nomJugador == instancies[numTaulell].veureTorn()){
                    %> <h1>Has Perdut!</h1> <%                                      
                }
                else{
                    %> <h1>Has guanyat!</h1> <%
                }
            }
            
        %>
        <a href="partida.jsp">Refresca</a>
    </body>
</html>
