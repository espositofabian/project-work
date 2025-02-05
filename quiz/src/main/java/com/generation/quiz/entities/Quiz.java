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
	private ArrayList<Map<String,String>> elencoDomande; 
	
	
	//ArrayList<Map<String,String>>
	public List<Map<String,String>> estrazioneDomande(){
		
		String query = "";
		List<Map<String,String>> ris = new ArrayList<Map<String,String>>();
		while(livello <= maxLivello) {
			
			query = "SELECT * FROM domande WHERE punti = 1";// + livello;
			System.out.println(query);
			
			List<Map<String,String>> list = dd.leggi(query);
			
			ris.add(list.get(numeroRandom()));
			
			
			livello++;
		}
		
		
		
		//for(Map<String,String> m : dd.leggi(query))
			//System.out.println(m.toString());
		
		return ris;
		
	}

	public int numeroRandom() {
		int random = (int)(Math.random() * 4 + 0);
		return random;
	}
	
}

