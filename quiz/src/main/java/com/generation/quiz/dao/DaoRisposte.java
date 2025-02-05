package com.generation.quiz.dao;

import java.util.List;
import java.util.Map;

public class DaoRisposte
{
	public Database db = new Database();
	
	public DaoRisposte() {
		
	}
	
	public List<Map<String,String>> leggi(String query, String...params){
		
		return db.rows(query, params);
	}
	
	public List<Map<String,String>> leggiTutto(){
		String query = "SELECT * FROM risposte";
		return db.rows(query);
	}
	
	
	public Map<String,String> leggiRispostePerDomanda(int idDomanda){
		
		String query = "SELECT ris1,\r\n"
				+ "		ris2,\r\n"
				+ "        ris3,\r\n"
				+ "        ris4\r\n"
				+ "FROM	risposte inner join domande\r\n"
				+ "ON		risposte.idDomanda = domande.id\r\n"
				+ "WHERE	domande.id = ?";
		return db.row(query, idDomanda + "");		
	}
	
}
