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
	int livello = 0;

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

	// game2 va
	@GetMapping("game2")
	public String game(Model model) {
		// aumenta livello, ma loop è infinito
		System.out.println("livello nel mapping: " + livello);
		while(livello <= 15) {
			livello++;
			// metodo che estra una domanda di una CERTA difficoltà
			// difficoltà come parametro
			// arriva a 16
			if(livello <= 15) {
				
			Map<String,String> domanda = dd.mappaRandom(livello);

			// da togliere una volta finiti i test
			DaoDomande dd = new DaoDomande();
			Quiz q = new Quiz();


			// passiamo la domanda singola al model
			model.addAttribute("domanda", domanda);
			model.addAttribute("daodomande", dd);
			model.addAttribute("livello", livello);
			model.addAttribute("quiz",q);
			System.out.println("livello: " + livello);

			System.out.println("ritorno al game");
			return "game.jsp";
		
			// SE le domande sono <=15
			// return "game.jsp"
			// ELSE
			// vai a pagina result
			}
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