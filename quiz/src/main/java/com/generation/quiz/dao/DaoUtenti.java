package com.generation.quiz.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

import com.generation.quiz.entities.Utente;

import jakarta.annotation.PostConstruct;

public class DaoUtenti
{
		
	@Autowired
	public Database db = new Database();

	@Autowired
	private ApplicationContext context;
	
	public DaoUtenti() {
		
	}

	/**
	 * Il metodo cercaUtente recupera username e password per restituire la mappa corrispondente
	 * all'intera riga dell'utente sul DB. Se i parametri sono errati, la mappa sarà null
	 * @param username
	 * @param password
	 * @return l'utente sotto forma di mappa oppure null se non trova nulla
	 */
	@PostConstruct
	public Map<String,String> cercaUtente(String username, String password){

		String query = "SELECT * FROM utenti WHERE username = ? AND password = ?";
		Map<String,String> map = db.row(query, username,password);

		return (map == null) ? null : map;

	}
	
	public List<Map<String,String>> leggi(String query, String...params){
		return db.rows(query, params);
	}
	
	public List<Map<String,String>> leggiTutto(){
		
		String query = "SELECT * FROM utenti";
		return db.rows(query);
	}
	
	public boolean create(Utente ut) {
		
		String query = "INSERT INTO utenti (username,password) values (?,?)";
		
		return db.update(query, ut.getUsername(),ut.getPassword());
	}
	
	public boolean update(Utente ut) {
		
		String query = "UPDATE utenti SET username = ?, password = ? WHERE id = ?";
		
		return db.update(query, ut.getUsername(), ut.getPassword(), ut.getId() + "");
	}
	
	public boolean delete(int id) {
		
		String query = "DELETE FROM utenti WHERE id = ?";
		
		return db.update(query, id + "");
	}

}
