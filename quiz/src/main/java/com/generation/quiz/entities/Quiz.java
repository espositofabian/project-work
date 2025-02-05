package com.generation.quiz.entities;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.generation.quiz.dao.DaoDomande;

public class Quiz
{
	@Autowired
	public DaoDomande dd = new DaoDomande();

	private int livello = 1;
	private int maxLivello = 15;
	// pessimo nome lol
	private int maxDimensione = 5;
	private int minDimensione = 0;
	private ArrayList<Map<String,String>> elencoDomande; 
	
	
	//ArrayList<Map<String,String>>
	public List<Map<String,String>> estrazioneDomande(){
		
		String query = "";
		List<Map<String,String>> ris = new ArrayList<Map<String,String>>();
		while(livello <= maxLivello) {
			
			query = "SELECT * FROM domande WHERE punti = " + livello;
			System.out.println(query);
			
			List<Map<String,String>> listaMappeDB = dd.leggi(query);
						
			
			for(int i = 0; i < listaMappeDB.size(); i++) {
				Map<String,String> mappaRandomizzata = listaMappeDB.get(numeroRandom(2,maxDimensione));
				ris.add(mappaRandomizzata);
			}
			
			livello++;
		}
		
		
		
		//for(Map<String,String> m : dd.leggi(query))
			//System.out.println(m.toString());
		
		return ris;
		
	}
	
	public int numeroRandom(int min, int max) {
		int randomNumber = (int) ((Math.random() * (max - min)) + min);
		return randomNumber;
	}

	public int numeroRandom(int max) {
		return (int)(Math.random() * max);
	}
	
	public String aiutoPubblico(Map<String,String> domanda)
	{
		System.out.println(domanda);
		int idDomanda = Integer.parseInt(domanda.get("id"));
		
		Map<String,String> ris = dd.leggiRispostePerDomanda(idDomanda);
		
		return ris.get("ris" + numeroRandom(4, 1));
	}
	
}

