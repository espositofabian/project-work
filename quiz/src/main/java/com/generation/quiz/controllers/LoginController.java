package com.generation.quiz.controllers;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import jakarta.servlet.http.HttpSession;
import org.springframework.context.ApplicationContext;
import com.generation.quiz.dao.DaoUtenti;
import com.generation.quiz.entities.Utente;
import org.springframework.ui.Model; // una classe per il profilo

/**
 * Controller che gestisce tutte le operazioni relative all'autenticazione degli utenti:
 * login, logout e registrazione.
 */
@Controller
public class LoginController
{
	/**
	 * Istanza del DAO utenti iniettata automaticamente da Spring
	 */
	@Autowired
	private DaoUtenti du;

	@Autowired
	private ApplicationContext context;
	
	/**
	 * Gestisce la richiesta GET per visualizzare il form di login
	 * @return il nome della vista del form di login
	 */
	@GetMapping("formlogin")
	public String formlogin()
	{
		return "formlogin.html";
	}
	
	/**
	 * Gestisce il processo di login
	 * @param username nome utente inserito nel form
	 * @param password password inserita nel form
	 * @param remember indica se l'utente vuole una sessione persistente
	 * @param session oggetto HttpSession per gestire la sessione utente
	 * @return redirect alla home se il login ha successo, altrimenti torna al form di login
	 */
	@GetMapping("login")
	public String login(@RequestParam("user") String username,
						@RequestParam("pass") String password,
						@RequestParam(value = "remember", required = false) String remember,
						HttpSession session)
	{
		Utente utenteloggato;
		try
		{
			utenteloggato = du.cercaUtente(username, password);
		}
		catch(NullPointerException e)
		{
			utenteloggato = null;
		}catch(Exception e) {
			utenteloggato = null;
		}
		
		if(utenteloggato == null)
			return "redirect:formlogin";
		else
		{
			session.setAttribute("loggato", "ok");
			session.setAttribute("utente", utenteloggato);
			if(remember != null) {
				session.setMaxInactiveInterval(-1); // sessione persistente
			}
			return "redirect:/";
		}
	}
	
	/**
	 * Gestisce il processo di logout
	 * @param session oggetto HttpSession da invalidare
	 * @return redirect al form di login
	 */
	@GetMapping("logout")
	public String logout(HttpSession session)
	{
		session.setAttribute("loggato", null);
		session.setAttribute("utente", null);
		System.out.println("Loggato dopo logout: " + session.getAttribute("loggato"));
		System.out.println("Utente dopo logout: " + session.getAttribute("utente"));
		return "redirect:formlogin";
	}
	
	/**
	 * Gestisce la richiesta GET per visualizzare il form di registrazione
	 * @return il nome della vista del form di registrazione
	 */
	@GetMapping("formregistrati")
	public String formregistrati()
	{
		return "formregistrati.html";
	}
	
	
	/**
	 * Gestisce il processo di registrazione di un nuovo utente
	 * @param nuovoUser nome utente del nuovo account
	 * @param nuovaPass password del nuovo account
	 * @return redirect al form di login se la registrazione ha successo,
	 *         altrimenti torna al form di registrazione
	 */
     
	@GetMapping("nuovoutente")
	public String registranuovoutente(@RequestParam("user") String nuovoUser,
									@RequestParam("pass") String nuovaPass)
	{
		Utente newuser = (Utente) context.getBean("oggettoUtente", nuovoUser, nuovaPass);
		
		System.out.println(newuser.toString());
		
		if(du.create(newuser))
			return "redirect:formlogin";
		else
			return "redirect:formregistrati";
		
	}

	//gestisco il profilo non so se sia giusto
	@GetMapping("profilo")
	public String profilo(HttpSession session, Model model) {
		Map<String,String> utenteLoggato = (Map<String,String>) session.getAttribute("utente");
		
		if(utenteLoggato == null)
			return "redirect:formlogin";
		
		//recupero la posizione in classifica
		List<Utente> classifica = du.classificaUtenti();
		int posizione = 1;
		
		for(Utente u : classifica) {
			if(u.getUsername().equals(utenteLoggato.get("username")))
				break;
			posizione++;
		}
		
		model.addAttribute("utente", utenteLoggato);
		model.addAttribute("posizione", posizione);
		
		return "formprofilo.jsp";
	}
}
    