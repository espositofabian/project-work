package com.generation.quiz.controllers;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.generation.quiz.dao.DaoUtenti;
import com.generation.quiz.entities.Utente;


@Controller
public class HomeController
{
	@Autowired
	private DaoUtenti du;
	
	@Autowired
	private ApplicationContext context;
	
	@GetMapping("")
	public String home() {
		return "home.html";
	}
	
	@GetMapping("game")
	public String game() {
		return "game.jsp";
	}
	
	@GetMapping("classifica")
	public String classifica(Model model) {
		List<Utente> utenti = du.classificaUtenti();
		model.addAttribute("classificautenti", utenti);
		return "classifica.jsp";
	}
	
  
}