package com.generation.quiz.dao;

import java.util.List;
import java.util.Map;

public class DaoDomande
{	
	
	public Database db = new Database();
	
	public DaoDomande() {
		
	}
	
	
	public List<Map<String,String>> leggi(String query, String...params){
		
		return db.rows(query, params);
	}
	
	public List<Map<String,String>> leggiTutto(){
		String query = "SELECT * FROM domande";
		return db.rows(query);
	}
	
	public Map<String,String> cercaPerId(int id){
		String query = "SELECT * FROM domande WHERE id = ?";
		return db.row(query, id + "");
	}
	
	// La mappa come record della risposta? o solo come Stringa?
	public Map<String,String> rispostaGiusta(int idDomanda){
		
		String query = "SELECT risposte.risok as 'Risposta' "
					+ "FROM risposte "
					+ "WHERE risposte.idDomanda = ?";
		
		return db.row(query, idDomanda + "");
	}
}
