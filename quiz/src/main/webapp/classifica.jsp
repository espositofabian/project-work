<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.generation.quiz.entities.*" %>
<%	List<Utente> utenti = (List<Utente>) request.getAttribute("classificautenti"); %>
<!DOCTYPE html>
<html lang="en">
	<head>
   	 	<meta charset="UTF-8">
   	 	 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    	<title>Classifica</title>
    </head>
	<body>
		<h1>CLASSIFICA</h1>
		<table class="tabellaelenco">
		<thead>
            <tr>
            <th>Posizione</th>
            <th>Giocatore</th>
            <th>Punti</th>
            </tr>
        </thead>
			<% for(Utente e : utenti) {%>
			<p>qui</p>
					<%= e.getUsername() %> <p>qui</p>
					<%= e.getPunteggio() %>
				<%} %>
				
		</table>
	</body>
</html>
    