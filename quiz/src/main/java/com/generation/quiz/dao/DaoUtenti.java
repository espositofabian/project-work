package com.generation.quiz.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

import com.generation.quiz.entities.Utente;


public class DaoUtenti
{
		
	@Autowired
	public Database db;

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
	public Utente cercaUtente(String username, String password){

		String query = "SELECT * FROM utenti WHERE username = ? AND password = ?";
		Map<String,String> map = db.row(query, username,password);
		Utente ut = (Utente) context.getBean("mappaUtente",map);
		
		return (ut == null) ? null : ut;

	}
	
	public List<Map<String,String>> leggi(String query, String...params){
		return db.rows(query, params);
	}
	
	public List<Map<String,String>> leggiTutto(){
		
		String query = "SELECT * FROM utenti";
		return db.rows(query);
	}
	
	public List<Utente> leggiUtenti(){
		
		List<Map<String,String>> mappe = leggiTutto();
		
		List<Utente> utenti = new ArrayList<Utente>();
		Utente ut;
		
		for(Map<String,String> m : mappe) {
			
			// creo l'Utente attraverso Context e poi valorizzo con la mappa
			ut = (Utente) context.getBean("mappaUtente", m);
			
			utenti.add(ut);
		}
		return utenti;
	}
	
	public boolean create(Utente ut) {
		
		String query = "INSERT INTO utenti (username,password) values (?,?)";
		
		return db.update(query, ut.getUsername(),ut.getPassword());
	}
	
	public boolean update(Utente ut) {
		
		String query = "UPDATE utenti SET username = ?, password = ? WHERE id = ?";
		
		return db.update(query, ut.getUsername(), ut.getPassword(), ut.getId() + "");
	}
	
	public boolean updatePunteggi(int idUtente, int punteggio) {
		
		String query = "UPDATE utenti SET punteggio = punteggio + ? WHERE id = ?";
		
		return db.update(query, punteggio + "", idUtente + "");
	}
	
	public boolean delete(int id) {
		
		String query = "DELETE FROM utenti WHERE id = ?";
		
		return db.update(query, id + "");
	}
	
	public List<Utente> classificaUtenti(){
		
		List<Utente> utenti = leggiUtenti();
		
		for(int i = 0; i < utenti.size(); i++) {
			
			for(int j = i + 1; j < utenti.size(); j++) {
				
				if(utenti.get(i).getPunteggio() < utenti.get(j).getPunteggio()) {
					Utente ut = utenti.get(i);
					utenti.set(i, utenti.get(j));
					utenti.set(j, ut);
				}	
			}	
		}
		return utenti;
	}

}
