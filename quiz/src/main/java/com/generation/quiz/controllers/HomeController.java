package com.generation.quiz.controllers;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.generation.quiz.dao.DaoDomande;
import com.generation.quiz.dao.DaoUtenti;
import com.generation.quiz.entities.Quiz;
import com.generation.quiz.entities.Utente;

import jakarta.servlet.http.HttpSession;


@Controller
public class HomeController
{
	int livello = 1;
	boolean uscito = false;
	
	@Autowired
	private DaoUtenti du;

	@Autowired
	private DaoDomande dd;

	@Autowired
	private Quiz quiz;

	@Autowired
	private ApplicationContext context;

	@GetMapping("")
	public String home() {
		
		return "home.html";
	}

	@GetMapping("game")
	public String game(Model model, HttpSession session) {
		
		if(session.getAttribute("loggato") == null) 
			return "redirect:formlogin";
		
		Utente ut = (Utente) session.getAttribute("utente");
		System.out.println(session.getAttribute("utente"));

		//ho cambiato io (Alessio) Resetto livello e quiz se il gioco è finito
		if(livello > 15) {
			livello = 1;
			// Creiamo una nuova istanza di Quiz dal context per avere domande fresche
			quiz = context.getBean(Quiz.class);
			dd.estrazioneDomande(livello);
			
			return "redirect:/";
		}
		// TODO: se esci dal gioco, RIPARTI dall'inizio
		
		System.out.println("livello nel mapping: " + livello);
		while(livello <= 15) {

			Map<String,String> domanda = dd.mappaRandom(livello);

			// passiamo la domanda singola al model
			model.addAttribute("domanda", domanda);
			model.addAttribute("daodomande", dd);
			model.addAttribute("livello", livello);
			model.addAttribute("quiz", quiz);
			model.addAttribute("utente", ut);
			model.addAttribute("daoutenti",du);
			model.addAttribute("uscito", uscito);
			
			System.out.println("livello: " + livello);

			livello++;
			System.out.println("ritorno al game");
			
			return "game.jsp";

		}
		
		// ho cambiato io (Alessio) Resetto livello e quiz quando finisce il gioco
		livello = 1;
		quiz = context.getBean(Quiz.class);
		return "redirect:/";
	}


	@GetMapping("classifica")
	public String classifica(Model model) {
		List<Utente> utenti = du.classificaUtenti();
		model.addAttribute("classificautenti", utenti);
		return "classifica.jsp";
	}


}