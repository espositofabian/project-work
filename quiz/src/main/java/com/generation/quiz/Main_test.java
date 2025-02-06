package com.generation.quiz;



import java.util.List;
import java.util.Map;

import com.generation.quiz.dao.DaoDomande;

public class Main_test {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		/*
		DaoUtenti du = new DaoUtenti();
		
		Utente ut = new Utente();
		ut.setUsername("pippo");
		ut.setPassword("pippoppipo");
		
		du.create(ut);
		
		for(Map<String,String> m : du.leggiTutto()) {
			System.out.println(m.toString());
		}
		*/
		
		/*
		DaoDomande dd = new DaoDomande();
		//dd.leggi("SELECT * FROM DOMANDE");
		
		for(Map<String,String> m : dd.leggiTutto()) {
			System.out.println(m.toString());
		}
		*/
		/*
		DaoDomande dd = new DaoDomande();
		System.out.println(dd.toString());
		
		for(Map<String,String> m : dd.leggiRispostePerDomanda(1)) {
			System.out.println(m.toString());
		}*/
		
		/*
		Quiz q = new Quiz();
		
		DaoDomande dd = new DaoDomande();
		/*
		for(Map<String,String> m : q.elencoDomande()) {
			System.out.println(m.toString());
		}
		*/
		/*
		System.out.println(dd.risposte(1));
		System.out.println(dd.isGiusta(1, "Torino"));
		
		*/
		DaoDomande dd = new DaoDomande();
		
		// PROVA
		List<Map<String,String>> domande = dd.elencoDomande();
		for(Map<String,String> m : domande) {
			
			// tira fuori testo domande
			System.out.println(m.get("q"));
			
			for(String risp : dd.risposte(Integer.parseInt(m.get("id")))){
				// tutte le risposte della singola domanda
				System.out.println(risp);
			}
			
		}
		
	}
	

}
