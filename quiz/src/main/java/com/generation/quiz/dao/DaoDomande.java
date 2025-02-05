package com.generation.quiz.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

public class DaoDomande
{	
	@Autowired
	public Database db = new Database();
	
	public DaoDomande() {
		System.out.println("dd viene creato.");
	}
	
	
	public List<Map<String,String>> leggi(String query, String...params){
		
		return db.rows(query, params);
	}
	
	public List<Map<String,String>> leggiTutto(){
		String query = "SELECT * FROM domande";
		return db.rows(query);
	}
	
	public Map<String,String> leggiSingoloRecord(String query, String... params){
		return db.row(query, params);
	}
	
	public Map<String,String> cercaPerId(int id){
		String query = "SELECT * FROM domande WHERE id = ?";
		return db.row(query, id + "");
	}
	
	// DA AGGIUSTARE
	public Map<String,String> rispostaGiusta(int idDomanda){
		
		String query = "SELECT risposte.risok as 'Risposta' "
					+ "FROM risposte "
					+ "WHERE risposte.idDomanda = ?";
		
		return db.row(query, idDomanda + "");
	}
	
	public List<Map<String,String>> leggiRispostePerDomanda(int idDomanda){
		
		String query = "SELECT ris1,\r\n"
				+ "		ris2,\r\n"
				+ "        ris3,\r\n"
				+ "        ris4\r\n"
				+ "FROM	risposte inner join domande\r\n"
				+ "ON		risposte.idDomanda = domande.id\r\n"
				+ "WHERE	domande.id = ?";

		
		return db.rows(query, idDomanda + "");		
	}

	
}
