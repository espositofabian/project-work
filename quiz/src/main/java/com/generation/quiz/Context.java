package com.generation.quiz;
import java.util.Map;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;

import com.generation.quiz.dao.DaoDomande;
import com.generation.quiz.dao.DaoUtenti;
import com.generation.quiz.dao.Database;
import com.generation.quiz.entities.Entity;
import com.generation.quiz.entities.Quiz;
import com.generation.quiz.entities.Utente;


@Configuration
public class Context {
	
	@Bean
	public Database db()
	{
		System.out.println("Cristo è morto --- Cit. Probabilmente F. Nietzsche");
		return new Database();
	}
	
	@Bean
	public DaoUtenti du()
	{
		return new DaoUtenti();
	}
	
	@Bean
	public DaoDomande dd()
	{
		return new DaoDomande();
	}
	
	@Bean
	public Quiz quiz() {
		return new Quiz();
	}
	
	@Bean
	@Scope("prototype")
	public Entity mappaEntity(Map<String,String> mappa)
	{
		Entity e = new Utente();

		if(e instanceof Utente)
		{
			e.setId(Integer.parseInt(mappa.get("id")));
			Utente u = (Utente) e;
			u.setUsername(mappa.get("username"));
			u.setPassword(mappa.get("password"));
			u.setPunteggio(Integer.parseInt(mappa.get("punteggio")));
		}

		return e;
	}
	
	
	// Per creare oggetti Utente dal sito 
	@Bean
	@Scope("prototype")
	public Utente oggettoUtente(String username,String password)
	{
		Utente u = new Utente();
		System.out.println("vai al context");
		u.setId(0);
		u.setUsername(username);
		u.setPassword(password);
		
		return u;
	}
	
	// Per creare oggetti Utente dal sito 
	@Bean
	@Scope("prototype")
	public Utente mappaUtente(Map<String,String> m)
	{
		Utente u = new Utente();
		
		u.setId(Integer.parseInt(m.get("id")));
		u.setUsername(m.get("username"));
		u.setPassword(m.get("password"));
		u.setPunteggio(Integer.parseInt(m.get("punteggio")));
		
		return u;
	}
	
}
