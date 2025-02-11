<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.generation.quiz.entities.*"%>
<%
List<Utente> utenti = (List<Utente>) request.getAttribute("classificautenti");
%>

<!DOCTYPE html>
<html style="font-size: 16px;" lang="it"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>classifica</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="classifica.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery-1.9.1.min.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 7.3.1, nicepage.com">
    
    
    
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "Quiz"
}
</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="classifica">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
  <meta data-intl-tel-input-cdn-path="intlTelInput/"></head>
  <body data-path-to-root="./" data-include-products="false" class="u-body u-overlap u-overlap-contrast u-overlap-transparent u-xl-mode" data-lang="it"><header class="u-clearfix u-header u-shading u-sticky u-sticky-410f u-header" id="header"><div class="u-clearfix u-sheet u-sheet-1">
        <nav class="u-align-left u-dropdown-icon u-font-size-14 u-menu u-menu-one-level u-menu-open-right u-nav-spacing-25 u-offcanvas u-menu-1" data-responsive-from="MD">
          <div class="menu-collapse" style="font-weight: 700; font-size: 1.25rem; text-transform: uppercase;">
            <a class="u-button-style u-hamburger-link u-nav-link u-hamburger-link-1" href="#">
              <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 302 302" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-7b92"></use></svg>
              <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-7b92" x="0px" y="0px" viewBox="0 0 302 302" style="enable-background:new 0 0 302 302;" xml:space="preserve" class="u-svg-content"><g><rect y="36" width="302" height="30"></rect><rect y="236" width="302" height="30"></rect><rect y="136" width="302" height="30"></rect>
</g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-spacing-20 u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-active-custom-color-4 u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-light-1 u-border-no-left u-border-no-right u-border-no-top u-button-style u-hover-custom-color-3 u-nav-link u-text-active-white u-text-hover-white" href="./" style="padding: 9px 41px;">Home</a>
</li><li class="u-nav-item"><a class="u-active-custom-color-4 u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-light-1 u-border-no-left u-border-no-right u-border-no-top u-button-style u-hover-custom-color-3 u-nav-link u-text-active-white u-text-hover-white" href="classifica" style="padding: 9px 41px;">classifica</a>
</li><li class="u-nav-item"><a class="u-active-custom-color-4 u-border-2 u-border-active-palette-1-base u-border-hover-palette-1-light-1 u-border-no-left u-border-no-right u-border-no-top u-button-style u-hover-custom-color-3 u-nav-link u-text-active-white u-text-hover-white" href="regolamento" style="padding: 9px 41px;">regolamento</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-align-center u-black u-container-align-center u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="./">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="classifica">classifica</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="regolamento">regolamento</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
          <style class="menu-style">@media (max-width: 939px) {
                    [data-responsive-from="MD"] .u-nav-container {
                        display: none;
                    }
                    [data-responsive-from="MD"] .menu-collapse {
                        display: block;
                    }
                }</style>
        </nav>
        <span class="u-icon u-icon-1" data-href="profilo" title="Profilo"><img id="fotoProfilo" alt="" style="height: 40px; width: 40px; border-radius: 50%; object-fit: cover;">
        </span>
      </div></header>
    <section class="skrollable u-align-center u-clearfix u-container-align-center u-image u-parallax u-shading u-section-1" id="block-4" data-image-width="1920" data-image-height="1176">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h1 class="u-align-center u-hover-feature u-text u-text-default u-text-1" data-animation-name="customAnimationIn" data-animation-duration="1000" data-animation-delay="0"> Chi vuol essere in classifica?</h1>
		<br><br><br>

      <div class="container">
		<table class="classifica-table">
			<thead>
				<tr>
					<th>Posizione</th>
					<th>Username</th>
					<th>Punteggio</th>
				</tr>
			</thead>
			<tbody>
				<%
			    int numero = 1;
				for (Utente e : utenti) {
					// Verifichiamo se c'è un utente in sessione prima di fare il confronto
					boolean isUtenteLoggato = session.getAttribute("utente") != null && 
											 e.getUsername().equals(((Utente)session.getAttribute("utente")).getUsername());
				%>
				<tr class="<%= isUtenteLoggato ? "utente-loggato" : "" %>">
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

		<br><br><br>
    </section>

    <footer class="u-align-center u-clearfix u-container-align-center u-footer u-grey-80 u-footer" id="footer"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Non siamo una S.R.L.<br>Tutti i diritti non sono riservati<br>
        </p>
      </div></footer>
	  <script>
		// Ottieni il valore della fotoProfilo da localStorage
		const fotoProfilo = sessionStorage.getItem('fotoProfilo');
	  
		// Se c'è un valore, imposta l'attributo src dell'immagine
		if (fotoProfilo !== null) {
		  document.getElementById('fotoProfilo').src = fotoProfilo;
		} else {
		  // Se non c'è un valore, imposta un'immagine di default
		  document.getElementById('fotoProfilo').src = "images/1144760-cfc3a2d5.png";
		}
	  </script>
</body></html>