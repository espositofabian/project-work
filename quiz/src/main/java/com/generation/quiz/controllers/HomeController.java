package com.generation.quiz.controllers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.generation.quiz.dao.DaoUtenti;


@Controller
public class HomeController
{
	@Autowired
	public DaoUtenti du;
	
	@GetMapping("")
	public String home() {
		return "home.html";
	}
	
	@GetMapping("game")
	public String game() {
		return "game.jsp";
	}
	
  
}