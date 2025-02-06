<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.generation.quiz.entities.*"%>
<%
List<Utente> utenti = (List<Utente>) request.getAttribute("classificautenti");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="classifica.css">
<title>Classifica</title>
</head>
<body>
	<div class="container">
		<h1>Classifica Giocatori</h1>
		<table class="classifica">
			<thead>
				<tr>
					<th>Posizione</th>
					<th>Giocatore</th>
					<th>Punti</th>
				</tr>
			</thead>
			<tbody>
				<%
			    int numero = 1;
				for (Utente e : utenti) {
				%>
				<tr>
					<td><%= numero %>° Posizione</td>
					<td><%=e.getUsername()%></td>
					<td><%=e.getPunteggio()%></td>
					<%
				    numero++;
					}
					%>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>
