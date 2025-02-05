package com.generation.quiz;



import java.util.Map;

import com.generation.quiz.dao.DaoDomande;
import com.generation.quiz.entities.Quiz;

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
		
		Quiz q = new Quiz();
		
		DaoDomande dd = new DaoDomande();
		/*
		for(Map<String,String> m : q.elencoDomande()) {
			System.out.println(m.toString());
		}
		*/
		System.out.println(dd.getRisposte(1));
		System.out.println(dd.isGiusta(1, "Torino"));
		
	}

}
