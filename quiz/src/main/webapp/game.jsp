<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.generation.quiz.entities.*" %>
<%@ page import="com.generation.quiz.dao.*" %>
<%	List<Map<String,String>> domande = (List<Map<String,String>>)request.getAttribute("elencodomande");%>
<%	DaoDomande dd = (DaoDomande) request.getAttribute("daodomande"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz Layout with Lifelines and Counter</title>
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

        /* Fixed Lifelines on the Left Edge */
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
            transition: background-color 0.3s, transform 0.2s;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.4);
            text-align: center;
        }

        .lifeline-btn:hover {
            background-color: #FF6300;
            transform: scale(1.05);
        }

        /* Right-Side Question Counter */
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
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.4);
        }

        /* Centered Quiz Content */
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
            box-shadow: 0 0 20px rgba(0, 116, 217, 0.8);
        }

        .answers {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 30px;
            width: 100%;
        }

        .answer-btn {
            background-color: #0074D9;
            color: white;
            padding: 25px;
            border: none;
            border-radius: 10px;
            font-size: 1.8rem;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.4);
        }

        .answer-btn:hover {
            background-color: #005bb5;
            transform: scale(1.08);
        }

        /* Popup Modal */
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
            box-shadow: 0 0 30px rgba(255, 255, 255, 0.5);
        }

        /* Close Button for Popup */
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

        .close-popup:hover {
            background-color: #E12D2D;
        }

        /* Responsive Adjustments */
        @media (max-width: 768px) {
            .lifelines, .question-counter {
                position: static;
                transform: none;
                flex-direction: row;
                justify-content: center;
                margin: 10px 0;
            }

            .main-content {
                width: 90%;
            }

            .answer-btn {
                font-size: 1.5rem;
                padding: 20px;
            }

            .popup {
                font-size: 2rem;
                padding: 30px 50px;
            }
        }
    </style>
</head>
<body>

    <!-- Lifeline Buttons Fixed to Left Edge -->
    <div class="lifelines">
        <button class="lifeline-btn">Chiamata</button>
        <button class="lifeline-btn">50/50</button>
        <button class="lifeline-btn">Aiuto dal pubblico</button>
        <button class="lifeline-btn" onclick="showPopup()">&#9889; Aiuto da Luca</button>
    </div>

    <!-- Centered Quiz Content -->
    <div class="main-content">
        <div class="question-box" id="question-box">
        	<% 	for(Map<String,String> m : domande) { %>
        	<%=	m.get("q") %>
        </div>

        <div class="answers">
        	<%for(String risp : dd.risposte(Integer.parseInt(m.get("id")))) {%>
            	<button class="answer-btn" onclick="nextQuestion()"><%= risp %> </button>
            <%} %>
        </div>
        <%} %>
    </div>

    <!-- Right-Side Question Counter -->
    <button class="question-counter" id="question-counter">Sei arrivato alla domanda: 1</button>

    <!-- Popup for Aiuto da Luca -->
    <div class="popup" id="popup">
        Nessuna delle precedenti!
        <button class="close-popup" onclick="closePopup()">Chiudi</button>
    </div>

    <script>
        let questionNumber = 1;

        // Function to increment question counter
        function nextQuestion() {
            questionNumber++;
            document.getElementById('question-counter').innerText = `Sei arrivato alla domanda: ${questionNumber}`;

            // Example of changing the question (can be replaced with real questions)
            const questions = [
                "What is the capital of France?",
                "Which planet is known as the Red Planet?",
                "What is the largest ocean on Earth?",
                "Who wrote 'Romeo and Juliet'?",
                "Which gas do plants absorb from the atmosphere?"
            ];
            document.getElementById('question-box').innerText = questions[(questionNumber - 1) % questions.length];
        }

        // Show popup for Aiuto da Luca
        function showPopup() {
            document.getElementById('popup').style.display = 'block';
        }

        // Close popup
        function closePopup() {
            document.getElementById('popup').style.display = 'none';
        }
    </script>

</body>
</html>

