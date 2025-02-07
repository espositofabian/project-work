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
        <div class="profile-header">
            <h1>Il Tuo Profilo</h1>
            <div class="profile-avatar">
                <img src="GerryMeme.jpg" alt="Gerry Scotti">
            </div>
        </div>
        
        <div class="profile-info">
            <div class="info-box">
                <label>Username</label>
                <p><%= ((Map<String,String>)session.getAttribute("utente")).get("username") %></p>
            </div>
            
            <div class="info-box">
                <label>Punteggio Totale</label>
                <p><%= ((Map<String,String>)session.getAttribute("utente")).get("punteggio") %> punti</p>
            </div>
            
            <div class="info-box">
                <label>Posizione in Classifica</label>
                <p><%= request.getAttribute("posizione") %>° posto</p>
            </div>
        </div>

        <div class="profile-actions">
            <a href="/" class="btn-home">Torna alla Home</a>
            <a href="logout" class="btn btn-logout">Logout</a>
        </div>
    </div>
</body>
</html>
 