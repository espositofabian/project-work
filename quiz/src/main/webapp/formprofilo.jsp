<%@page import="ch.qos.logback.core.recovery.ResilientSyslogOutputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.generation.quiz.entities.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profilo Utente</title>
    <link rel="stylesheet" href="formprofilo.css">
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
</head>
<body>
    <div class="wrapper">
             <% int id = ((Utente)session.getAttribute("utente")).getId();
             System.out.println(id);
             String fotoProfilo = "";
             
              switch(id)
             {
              case 1:
            	  fotoProfilo = "/images/tipo2.jpg";
            	  break;
              case 2:
            	  fotoProfilo = "/images/tipo1.jpg";
            	  break;
              default: 
            	  fotoProfilo = "/images/GerryMeme.jpg";
            	  break;
             }
              
              %>
              <!-- Aggiungi il codice JavaScript per memorizzare il valore in localStorage -->
        <script>
            sessionStorage.setItem('fotoProfilo', "<%=fotoProfilo%>");
        </script>
           
        <div class="profile-header">
            <h1>Il Tuo Profilo</h1>
            <div class="profile-avatar">
                <img src="<%=fotoProfilo%>" alt="Immagine Profilo">
            </div>
        </div>
        
       <form action="modificautente" method="get">
        <div class="profile-info">
            <div class="info-box">
	                <label>Username</label>
	                <input type="text" name="user" value="<%= ((Utente)session.getAttribute("utente")).getUsername() %>"><br>
            </div>
            
            <div class="info-box">
            		<label>Password</label>
            		<input type="text" name="pass" value="<%= ((Utente)session.getAttribute("utente")).getPassword() %>"><br>
            </div>
            		<input type="hidden" name="id" value=" <%= ((Utente)session.getAttribute("utente")).getId() %> ">
            <div class="info-box">
                <label>Punteggio Totale</label>
                <p><%= ((Utente)session.getAttribute("utente")).getPunteggio() %> punti</p>
            </div>
            
            <div class="info-box">
                <label>Posizione in Classifica</label>
                <p><%= request.getAttribute("posizione") %>° posto</p>
            </div>
        </div>
        <input type="submit" value="Aggiorna" />
        <a href="eliminautente?id=<%= ((Utente)session.getAttribute("utente")).getId() %>">ELIMINA</a>
        </form>
        <div class="profile-actions">
            <a href="/" class="btn-home">Torna alla Home</a>
            <a href="logout" class="btn btn-logout" onclick="sessionStorage.clear();">Logout</a>
        </div>
    </div>
</body>
</html>
 