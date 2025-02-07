<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.generation.quiz.entities.*" %>
<%@ page import="com.generation.quiz.dao.*" %>

<% 
    Map<String, String> domanda = (Map<String, String>) request.getAttribute("domanda");
    DaoDomande dd = (DaoDomande) request.getAttribute("daodomande"); 
    int livello = (int) request.getAttribute("livello"); 
    Quiz q = (Quiz)request.getAttribute("quiz");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body, html { height: 100%; font-family: Arial, sans-serif; background: linear-gradient(135deg, #001f3f, #001233); color: white; display: flex; justify-content: center; align-items: center; padding: 20px; }
        .container { display: flex; align-items: center; width: 100%; max-width: 1200px; position: relative; }

        /* Lifelines */
        .lifelines { position: fixed; left: 20px; top: 50%; transform: translateY(-50%); display: flex; flex-direction: column; gap: 20px; }
        .lifeline-btn { background-color: #FF851B; color: white; padding: 15px 25px; border: none; border-radius: 10px; font-size: 1.2rem; cursor: pointer; transition: 0.3s; }
        .lifeline-btn:hover { background-color: #FF6300; transform: scale(1.05); }

        /* Question Counter */
        .question-counter { position: fixed; right: 20px; top: 50%; transform: translateY(-50%); background-color: #2ECC40; color: white; padding: 15px 25px; border: none; border-radius: 10px; font-size: 1.2rem; }

        /* Quiz Content */
        .main-content { display: flex; flex-direction: column; align-items: center; width: 60%; }
        .question-box { background-color: #003366; padding: 40px 50px; border: 4px solid #0074D9; border-radius: 15px; text-align: center; font-size: 2rem; width: 100%; margin-bottom: 40px; }
        .answers { display: grid; grid-template-columns: 1fr 1fr; gap: 30px; width: 100%; }

        /* Buttons */
        .answer-btn { background-color: #0074D9; color: white; padding: 25px; border: none; border-radius: 10px; font-size: 1.8rem; cursor: pointer; transition: 0.3s; }
        .answer-btn:hover { background-color: #005bb5; transform: scale(1.08); }
        .correct { background-color: green !important; }
        .wrong { background-color: red !important; }

        /* Popup */
        .popup { position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: rgba(0, 0, 0, 0.9); padding: 50px 80px; border-radius: 15px; text-align: center; font-size: 3rem; color: white; display: none; z-index: 1000; }
        .close-popup { margin-top: 20px; background-color: #FF4136; color: white; padding: 10px 20px; border: none; border-radius: 10px; font-size: 1.2rem; cursor: pointer; }
    </style>
</head>
<body>

    <!-- Lifeline Buttons -->
    <div class="lifelines">
        <button class="lifeline-btn" onclick="showPopup('popupCasa')">Chiamata</button>
        <button class="lifeline-btn">50/50</button>
        <button class="lifeline-btn" onclick="showPopup('popupPubblico')">Aiuto dal pubblico</button>
        <button class="lifeline-btn" onclick="showPopup('popupLuca')">&#9889; Aiuto da Luca</button>
    </div>

    <!-- Quiz Content -->
    <div class="main-content">
        <% 
        int questionIndex = 0;
        %>
            <div class="question-box" id="question-box">
                <%= domanda.get("q")%>
            </div>

            <div class="answers">
                <%
                    List<String> risposte = dd.risposte(Integer.parseInt(domanda.get("id")));
                    for (int i = 0; i < risposte.size(); i++) { 
                    	int correctAnswerIndex = dd.indexRispostaGiusta(Integer.parseInt(domanda.get("id")));
                %>
                    <button class="answer-btn" onclick="checkAnswer(this, <%= i %>, <%= questionIndex %>, <%=  correctAnswerIndex %>);">
                        <%= risposte.get(i) %>
                    </button>
                    
                <% } %>
                    <div class="popup" id="popupCasa">
         <%= q.aiutoDaCasa(Integer.parseInt(domanda.get("id"))) %>
        <button class="close-popup" onclick="closePopup('popupCasa')">Chiudi</button>
    </div>
       	 <% questionIndex++; %>
       	 <% System.out.println("livello in game: " + livello); %>	 
    </div>
    </div>

    <!-- Question Counter -->
    <button class="question-counter" id="question-counter">Sei arrivato alla domanda: </button>
    <!-- Popup for Aiuto da casa-->
    <!-- Popup for Aiuto dal pubblico -->
    <div class="popup" id="popupPubblico">
        <%= q.aiutoPubblico(5) %>
        <button class="close-popup" onclick="closePopup('popupPubblico')">Chiudi</button>
    </div>
    <!-- Popup for Aiuto da Luca -->
    <div class="popup" id="popupLuca">
        Nessuna delle precedenti!
        <button class="close-popup" onclick="closePopup('popupLuca')">Chiudi</button>
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
            } else {
                alert("Quiz completato!");
            }
        }

        function checkAnswer(button, index, questionIdx, mammt) {
            let correctIndex = mammt; // Adjust this to fetch from DB
            if (index === correctIndex) {
                button.classList.add("correct");
                setTimeout(nextQuestion, 1000);
                // Redirect to a new page if the password is correct
                window.location.href = "game";
            } else {
                button.classList.add("wrong");
                window.location.href = "home";

            }
        }

        function showPopup(id) {
            document.getElementById(id).style.display = 'block';
        }

        function closePopup(id) {
            document.getElementById(id).style.display = 'none';
        }
    </script>

</body>
</html>
