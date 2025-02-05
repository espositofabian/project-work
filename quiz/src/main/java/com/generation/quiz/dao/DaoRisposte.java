package com.generation.quiz.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

public class DaoRisposte
{
	@Autowired
	public Database db;
	
	public DaoRisposte() {
		
	}
	
	public List<Map<String,String>> leggi(String query, String...params){
		
		return db.rows(query, params);
	}
	
	public List<Map<String,String>> leggiTutto(){
		String query = "SELECT * FROM risposte";
		return db.rows(query);
	}
	
	
}
