package com.generation.quiz.controllers;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.generation.quiz.dao.DaoDomande;
import com.generation.quiz.dao.DaoUtenti;
import com.generation.quiz.entities.Quiz;
import com.generation.quiz.entities.Utente;


@Controller
public class HomeController
{
	int livello = 1;

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

	// game va
	@GetMapping("game")
	public String game(Model model) {

		System.out.println("livello nel mapping: " + livello);
		while(livello <= 15) {
			
			Map<String,String> domanda = dd.mappaRandom(livello);

			// passiamo la domanda singola al model
			model.addAttribute("domanda", domanda);
			model.addAttribute("daodomande", dd);
			model.addAttribute("livello", livello);
			model.addAttribute("quiz", quiz);
			System.out.println("livello: " + livello);

			livello++;
			System.out.println("ritorno al game");
			
			return "game.jsp";

		}
		return "home.html";
	}


	@GetMapping("classifica")
	public String classifica(Model model) {
		List<Utente> utenti = du.classificaUtenti();
		model.addAttribute("classificautenti", utenti);
		return "classifica.jsp";
	}


}