<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.generation.quiz.entities.*"%>
<%@ page import="com.generation.quiz.dao.*"%>

<% 
    Map<String, String> domanda = (Map<String, String>) request.getAttribute("domanda");
    DaoDomande dd = (DaoDomande) request.getAttribute("daodomande"); 
    int livello = (int) request.getAttribute("livello"); 
    Quiz q = (Quiz)request.getAttribute("quiz");
    Utente utente = (Utente)request.getAttribute("utente");
    DaoUtenti du = (DaoUtenti)request.getAttribute("daoutenti");
    boolean uscito = (boolean)request.getAttribute("uscito");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Quiz</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body, html {
	height: 100%;
	font-family: Arial, sans-serif;
	background: linear-gradient(135deg, #001f3f, #001233);
	color: white;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 20px;
}

.container {
	display: flex;
	align-items: center;
	width: 100%;
	max-width: 1200px;
	position: relative;
}

/* Lifelines */
.lifelines {
	position: fixed;
	left: 20px;
	top: 50%;
	transform: translateY(-50%);
	display: flex;
	flex-direction: column;
	gap: 20px;
}

.lifeline-btn {
	background-color: #FF851B;
	color: white;
	padding: 15px 25px;
	border: none;
	border-radius: 10px;
	font-size: 1.2rem;
	cursor: pointer;
	transition: 0.3s;
}

.lifeline-btn:hover {
	background-color: #FF6300;
	transform: scale(1.05);
}

/* Question Counter */
.question-counter {
	position: fixed;
	right: 20px;
	top: 50%;
	transform: translateY(-50%);
	background-color: #2ECC40;
	color: white;
	padding: 15px 25px;
	border: none;
	border-radius: 10px;
	font-size: 1.2rem;
}

/* Quiz Content */
.main-content {
	display: flex;
	flex-direction: column;
	align-items: center;
	width: 60%;
}

.question-box {
	background-color: #003366;
	padding: 40px 50px;
	border: 4px solid #0074D9;
	border-radius: 15px;
	text-align: center;
	font-size: 2rem;
	width: 100%;
	margin-bottom: 40px;
}

.answers {
	display: grid;
	grid-template-columns: 1fr 1fr;
	gap: 30px;
	width: 100%;
}

/* Buttons */
.answer-btn {
	background-color: #0074D9;
	color: white;
	padding: 25px;
	border: none;
	border-radius: 10px;
	font-size: 1.8rem;
	cursor: pointer;
	transition: 0.3s;
}

.answer-btn:hover {
	background-color: #005bb5;
	transform: scale(1.08);
}

.correct {
	background-color: green !important;
}

.wrong {
	background-color: red !important;
}

/* Popup */
.popup {
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: rgba(0, 0, 0, 0.9);
	padding: 50px 80px;
	border-radius: 15px;
	text-align: center;
	font-size: 3rem;
	color: white;
	display: none;
	z-index: 1000;
}

.close-popup {
	margin-top: 20px;
	background-color: #FF4136;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 10px;
	font-size: 1.2rem;
	cursor: pointer;
}
</style>
</head>
<body>

	<!-- Lifeline Buttons -->
	<div class="lifelines">
		<button id="casa" class="lifeline-btn" onclick="showPopup('popupCasa')">Chiamata</button>
		<button id="5050" class="lifeline-btn" onclick="showPopup('popup50'); disableButtons();">50/50</button>
		<button id="pubblico" class="lifeline-btn" onclick="showPopup('popupPubblico')">Aiuto dal pubblico</button>
		<button class="lifeline-btn" onclick="showPopup('popupLuca')">&#9889;Aiuto da Luca</button>
	</div>

	<!-- Quiz Content -->
	<div class="main-content">
		<% 
        int questionIndex = 0;
		int punteggioDaAssegnare = 0;
		int correctAnswerIndex = 0;
        %>
		<div class="question-box" id="question-box">
			<%= domanda.get("q")%>
		<% int idDomanda = Integer.parseInt(domanda.get("id")); %>
		</div>

		<div class="answers">
			<%
                List<String> risposte = dd.risposte(idDomanda);
				String[] disableButtonNames1 = q.aiuto5050(idDomanda); // Creates an array with two slots
					for (int i = 0; i < risposte.size(); i++) { 
                    	correctAnswerIndex = dd.indexRispostaGiusta(idDomanda);
                    	System.out.println("-----------");
                    	System.out.println("index: " + i);
                    	System.out.println("questionIndex: " + questionIndex);
                    	System.out.println("correctAnswerIndex(ex mamt): " + correctAnswerIndex);
                    	System.out.println("-----------");
                %>
			<button class="option answer-btn"
				onclick="checkAnswer(this, 	<%= i %>, <%= questionIndex %>, <%=  correctAnswerIndex %>);">
				<%= risposte.get(i) %>
			</button>
						    		
			<% } %>
	        <!-- Popup for Aiuto da casa-->
			<div class="popup" id="popupCasa">
				<%= q.aiutoDaCasa(idDomanda) %>
				<button class="close-popup" onclick="closePopup('popupCasa', 'casa')">Chiudi</button>
			</div>
		    <!-- Popup for Aiuto 50/50-->
			<div class="popup" id="popup50">
			     Hai usato l'aiuto 50/50!
				<button class="close-popup" onclick="closePopup('popup50', '5050')">Chiudi</button>
			</div>

			<% questionIndex++; %>
			<% System.out.println("livello in game: " + livello); %>
		</div>
	</div>

	<!-- Question Counter -->
	<button class="question-counter" id="question-counter">Sei arrivato alla domanda: <%= livello %></button>
	<!-- Popup for Aiuto dal pubblico -->
	<div class="popup" id="popupPubblico">
		<%= q.aiutoPubblico(idDomanda) %>
		<button class="close-popup" onclick="closePopup('popupPubblico', 'pubblico')">Chiudi</button>
	</div>
	<!-- Popup for Aiuto da Luca -->
	<div class="popup" id="popupLuca">
		<p>Nessuna delle precedenti!</p>
		<button class="close-popup" onclick="closePopup('popupLuca')">Chiudi</button>
	</div>
    <!-- Popup for Vittoria-->
	<div class="popup" id="popupVittoria">
		<p>Quiz completato!</p>
		<button class="close-popup" onclick="closePopup('popupVittoria')">Chiudi</button>
	</div>
	<!-- Popup for Sconfitta-->
	<div class="popup" id="popupSconfitta">
		<p>Sbagliato!</p>
		<button class="close-popup" onclick="closePopup('popupSconfitta')">Chiudi</button>
	</div>
	<script>
    	var index = 1;
        let questionNumber = 1;
        let currentIndex = 0;
        let questions = document.querySelectorAll('.question-box');
        let answerGroups = document.querySelectorAll('.answers');

        window.onload = function () {
            // Hide all questions and answers except the first one
            for (let i = 1; i < questions.length; i++) {
                questions[i].style.display = "none";
                answerGroups[i].style.display = "none";
            }
        };

        function nextQuestion() {
            // Hide current question and answers
            questions[currentIndex].style.display = "none";
            answerGroups[currentIndex].style.display = "none";

            // Move to next question
            currentIndex++;
            questionNumber++;

            if (currentIndex < questions.length) {
                questions[currentIndex].style.display = "block";
                answerGroups[currentIndex].style.display = "grid";
                document.getElementById('question-counter').innerText = `Sei arrivato alla domanda: ${questionNumber}`;
            } 
        }

        // PROBLEMA PUNTI IMMERITATI: index e correctIndexAnswer risultano 
        // uguali al carimento della pagina
        function checkAnswer(button, index, questionIdx, correctIndexAnswer) {
            let correctIndex = correctIndexAnswer; // Adjust this to fetch from DB
            
            if (index === correctIndex) {
                button.classList.add("correct");
                setTimeout(nextQuestion, 1000);
                console.log(<%= livello %>);
                
                // ho risolto così (per ora)
                // però cosi assegna 20 alla prima risposta giusta
                <%if( livello != 1)
                {
                	System.out.println("livello: " + livello);
          			System.out.println("punti " + livello * 10);
                	du.updatePunteggi(utente.getId(), livello * 10);
                	
                }%>
                
                
                // Redirect to a new page if the password is correct
                if( <%= livello %> == '15')
                	{
                	  showPopup('popupVittoria');
                	}
                else
                    window.location.href = "game";
            } else {
            	showPopup('popupSconfitta');
                button.classList.add("wrong");
                // per ricordarsi che sei uscito
                <% uscito = true; %>
                <% System.out.println("uscito quando esci: " + uscito);%>
            }
        }

        function showPopup(id) {
            document.getElementById(id).style.display = 'block';
        }

        function closePopup(id, idBottone) {
            document.getElementById(id).style.display = 'none';
            console.log(id);
            
            if(id == "popupVittoria")
      	  {
               localStorage.clear();
               window.location.href = "classifica";
      	  }
          else if(id == "popupSconfitta")
      	  {
              localStorage.clear();
              window.location.href = "classifica";
     	  }
          else 
          {
               let button =  document.getElementById(idBottone);
               button.disabled = true; // Disable the button
               button.style.backgroundColor = "gray"; // Cambia colore sfondo
               button.style.color = "white";         // Cambia colore testo
               button.style.cursor = "not-allowed"; 
            
               localStorage.setItem(idBottone, "disabled");
            	
           }
        }
        
        function restoreButtonState() {
            let buttons = ["casa", "5050", "pubblico"];

            buttons.forEach(buttonId => {
                if (localStorage.getItem(buttonId) === "disabled") {
                    let button = document.getElementById(buttonId);
                        button.disabled = true;
                        button.style.backgroundColor = "gray";
                        button.style.color = "white";
                        button.style.cursor = "not-allowed";
                }
            });
        }
        
        window.onload = restoreButtonState;
        
        function disableButtons() {
            // Convert JSP array to JavaScript array
            var bottone1 = "<%= disableButtonNames1[0] %>";
            var bottone2 = "<%= disableButtonNames1[1] %> ";
            var disableButtonNames = [bottone1,bottone2];
            
            // Get all buttons with class "option"
            var buttons = document.querySelectorAll("button.option");

            // Loop through buttons and disable the ones matching the names in the array
            buttons.forEach(function(button) {
                if (disableButtonNames[0].includes(button.textContent.trim())) {
                    console.log("Disabling button:", button.textContent);
                    button.disabled = true; // Disable the button
                    button.style.backgroundColor = "gray"; // Cambia colore sfondo
                    button.style.color = "white";         // Cambia colore testo
                    button.style.cursor = "not-allowed";  // Cambia il cursore
                }
                if (disableButtonNames[1].includes(button.textContent.trim())) {
                    console.log("Disabling button:", button.textContent);
                    button.disabled = true; // Disable the button
                    button.style.backgroundColor = "gray"; // Cambia colore sfondo
                    button.style.color = "white";         // Cambia colore testo
                    button.style.cursor = "not-allowed";  // Cambia il cursore
                }
             });
        
        };
       </script>

</body>
</html>
