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
	public String game(Model model) {

		// PROVA
		List<Map<String,String>> domande = dd.elencoDomande();

		DaoDomande dd = new DaoDomande();
		
		model.addAttribute("elencodomande", domande);
		model.addAttribute("daodomande", dd);
		return "game.jsp";
	}
	
	
	@GetMapping("classifica")
	public String classifica(Model model) {
		List<Utente> utenti = du.classificaUtenti();
		model.addAttribute("classificautenti", utenti);
		return "classifica.jsp";
	}
	
  
}