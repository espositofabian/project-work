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
    int punteggio = (int) request.getAttribute("punteggio");
    String argomento = (String) request.getAttribute("argomento");
%>

<!DOCTYPE html>
<html style="font-size: 16px;" lang="it"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>game</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="game.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery-1.9.1.min.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 7.3.1, nicepage.com">
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "Quiz"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="game">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
  <meta data-intl-tel-input-cdn-path="intlTelInput/"></head>
  <body data-path-to-root="./" data-include-products="false" class="u-body u-xl-mode" data-lang="it">
    <section class="skrollable u-align-center u-clearfix u-parallax u-shading u-uploaded-video u-video u-section-1" id="sec-14e3">
      <div class="u-background-video u-expanded" style="">
        <div class="embed-responsive">
          <video class="embed-responsive-item" data-autoplay="1" loop="" muted="1" autoplay="autoplay" playsinline="">
            <source src="files/wwbm.mp4" type="video/mp4">
            <p>Your browser does not support HTML5 video.</p>
          </video>
        </div>
        <div class="u-video-shading" style="background-image: linear-gradient(0deg, rgba(0,0,0,0.2), rgba(0,0,0,0.2));"></div>
      </div>
      <div class="u-clearfix u-sheet u-sheet-1">
        <img id="imm50" class="u-dialog-link u-hover-feature u-image u-image-contain u-image-default u-image-1" src="images/50-50_2018.webp" alt="" data-image-width="257" data-image-height="161" data-animation-name="customAnimationIn" data-animation-duration="1000" data-animation-delay="1000" onclick="showPopup('popup50'); disableButtons();">
        <img id="immpubb" class="u-dialog-link u-hover-feature u-image u-image-contain u-image-default u-image-2" src="images/PAF_2018.webp" alt="" data-image-width="257" data-image-height="161" data-animation-name="customAnimationIn" data-animation-duration="1000" data-animation-delay="1500" onclick="showPopup('popupPubblico')">
        <img id="immcasa" class="u-dialog-link u-hover-feature u-image u-image-contain u-image-default u-image-3" src="images/ATA_2018.webp" alt="" data-image-width="257" data-image-height="161" data-animation-name="customAnimationIn" data-animation-duration="1000" data-animation-delay="1200" onclick="showPopup('popupCasa')">
        <img class="u-dialog-link u-hover-feature u-image u-image-contain u-image-default u-image-4" src="images/Ask_The_Host.webp" alt="" data-image-width="257" data-image-height="161" data-animation-name="customAnimationIn" data-animation-duration="1000" data-animation-delay="1800" onclick="showPopup('popupLuca')">
        <!-- Aggiungi questo codice subito dopo l'apertura del body -->
        <a href="/" class="u-btn u-button-style u-btn-1" data-animation-name="customAnimationIn" data-animation-duration="1000" data-animation-delay="3500" onclick="localStorage.clear();">ESCI DAL GIOCO<br>
        </a>
        <img class="u-image u-image-contain u-image-default u-preserve-proportions u-image-5" src="images/Cvem_2018_logo.png" alt="" data-image-width="500" data-image-height="500" data-animation-name="customAnimationIn" data-animation-duration="1000" data-animation-delay="0">


        <a href="" class="u-btn u-button-style u-btn-2" data-animation-name="customAnimationIn" data-animation-duration="1000" data-animation-delay="2000">Sei arrivato alla domanda: <%= livello %></a>        </p></p>

  
    <!-- Quiz Content -->
    <div class="main-content">
      <% 
          int questionIndex = 0;
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
                   correctAnswerIndex = dd.indexRispostaGiusta(idDomanda);
            for (int i = 0; i < risposte.size(); i++) { 
                        System.out.println("-----------");
                        System.out.println("index: " + i);
                        System.out.println("questionIndex: " + questionIndex);
                        System.out.println("correctAnswerIndex(ex mamt): " + correctAnswerIndex);
                        System.out.println("-----------");
                        System.out.println("livello " + livello);
                  %>
        <button class="option answer-btn"
          onclick="checkAnswer(this, 	<%= i %>, <%= questionIndex %>, <%=  correctAnswerIndex %>);">
          <%= risposte.get(i) %>
        </button>
                      
        <% } 
        %>
            <!-- Popup for Aiuto da casa-->
        <div class="popup" id="popupCasa">
         La risposta corretta è: <%= q.aiutoDaCasa(idDomanda) %>
          <button class="close-popup" onclick="closePopup('popupCasa', 'casa','immcasa')">Chiudi</button>
        </div>
          <!-- Popup for Aiuto 50/50-->
        <div class="popup" id="popup50">
             Hai usato l'aiuto 50/50!
          <button class="close-popup" onclick="closePopup('popup50', '5050', 'imm50')">Chiudi</button>
        </div>
  
        <% questionIndex++; %>
        <% System.out.println("livello in game: " + livello); %>
      </div>
    </div>
  </div>

    <!-- Question Counter -->
    <!-- <button class="question-counter" id="question-counter">Sei arrivato alla domanda: <%= livello %></button> -->
    <!-- Popup for Aiuto dal pubblico -->
    <div class="popup" id="popupPubblico">
      <%= q.aiutoPubblico(idDomanda) %>
      <button class="close-popup" onclick="closePopup('popupPubblico', 'pubblico','immpubb')">Chiudi</button>
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
      
    </section>
    
  <!-- <section class="u-black u-clearfix u-container-style u-dialog-block u-opacity u-opacity-70 u-dialog-section-5" id="popup-2ec3">
      <div class="u-border-3 u-border-grey-40 u-container-style u-custom-color-1 u-dialog u-dialog-1">
        <div class="u-container-layout u-container-layout-1">
          <p class="u-text u-text-default u-text-1">LOREM IPSUM DOLOR SIC AMET </p>
          <a href="" class="u-border-2 u-border-grey-40 u-btn u-button-style u-gradient u-text-white u-btn-1">Pulsante</a>
        </div>
        <button class="u-dialog-close-button u-icon u-text-grey-40 u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 16 16" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-efe9"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 16 16" x="0px" y="0px" id="svg-efe9"><rect x="7" y="0" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="2" height="16"></rect><rect x="0" y="7" transform="matrix(0.7071 -0.7071 0.7071 0.7071 -3.3138 8.0002)" width="16" height="2"></rect></svg></button>
      </div> -->
    </section><style>.u-dialog-section-5 .u-dialog-1 {
  width: 800px;
  min-height: 278px;
  height: auto;
  margin: 273px auto 60px;
}

.u-dialog-section-5 .u-container-layout-1 {
  padding: 30px;
}

.u-dialog-section-5 .u-text-1 {
  margin: 58px auto 0 225px;
}

.u-dialog-section-5 .u-btn-1 {
  border-style: solid;
  background-image: linear-gradient(#002260, #003dad);
  margin: 58px auto 0;
}

.u-dialog-section-5 .u-icon-1 {
  width: 20px;
  height: 20px;
}

@media (max-width: 991px) {
  .u-dialog-section-5 .u-dialog-1 {
    width: 720px;
  }

  .u-dialog-section-5 .u-text-1 {
    margin-left: 201px;
  }
}

@media (max-width: 767px) {
  .u-dialog-section-5 .u-dialog-1 {
    width: 540px;
  }

  .u-dialog-section-5 .u-container-layout-1 {
    padding-left: 10px;
    padding-right: 10px;
  }

  .u-dialog-section-5 .u-text-1 {
    margin-left: 158px;
  }
}

@media (max-width: 575px) {
  .u-dialog-section-5 .u-dialog-1 {
    width: 340px;
  }

  .u-dialog-section-5 .u-text-1 {
    margin-left: 97px;
  }
}</style>

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
      
       event.preventDefault();
        let correctIndex = correctIndexAnswer; // Adjust this to fetch from DB
        <% System.out.println("sono in check answer");%>
        if (index === correctIndex) {
            button.classList.add("correct");
            setTimeout(nextQuestion, 100000);
            
            
            // ho risolto così (per ora)
            // però cosi assegna 20 alla prima risposta giusta
            //if( livello != 1)%>
            
            <%System.out.println("livello in checkAnswer: " + livello);
            System.out.println("punteggio: " + punteggio);
            System.out.println("punteggio assegnato " + punteggio * 10);
             du.updatePunteggi(utente.getId(), punteggio * 100);%>
             console.log("<%= argomento%>");
            
            // Redirect to a new page if the password is correct
            if( <%= livello %> == '15')
              {
                showPopup('popupVittoria');
              }
            else
                window.location.href = "game?argomento=<%= argomento %>";
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

    function closePopup(id, idBottone, idImmagine) {
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
           let immagine =  document.getElementById(idImmagine);
           immagine.disabled = true; // Disable the button
           immagine.style.pointerEvents = "none";  // Rende l'immagine non cliccabile
           immagine.style.opacity = "0.5";        // Cambia l'opacità per sembrare disabilitata
           immagine.style.filter = "grayscale(100%)";

        
           localStorage.setItem(idImmagine, "disabled");
          
       }
    }
    
    function restoreButtonState() {
        let buttons = ["immcasa", "imm50", "immpub"];

        buttons.forEach(idImmagine => {
            if (localStorage.getItem(idImmagine) === "disabled") {
            	let immagine =  document.getElementById(idImmagine);
                immagine.disabled = true; // Disable the button
                immagine.style.pointerEvents = "none";  // Rende l'immagine non cliccabile
                immagine.style.opacity = "0.5";        // Cambia l'opacità per sembrare disabilitata
                immagine.style.filter = "grayscale(100%)";

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


</body></html>