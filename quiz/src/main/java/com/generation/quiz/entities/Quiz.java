package com.generation.quiz.entities;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.generation.quiz.dao.DaoDomande;
import com.generation.quiz.utilities.Vik;

public class Quiz
{
	@Autowired
	public DaoDomande dd = new DaoDomande();

	private int livello = 1;
	private int maxLivello = 15;
	// pessimo nome lol
	private int maxDimensione = 5;
	private int minDimensione = 0;
	private List<Map<String,String>> elencoDomande = new ArrayList<Map<String,String>>(); 

	public void estrazioneDomande(){

		String query = "";

		while(livello <= maxLivello) {
			// aggiorno query per selezionare le domande con livello di difficoltà 
			// successivo
			query = "SELECT * FROM domande WHERE punti = " + livello;

			// dd.leggi() recupera le domande con un certo livello di difficoltà
			List<Map<String,String>> listaMappeDB = dd.leggi(query);

			// recupero da quelle domande una domanda randomizzata
			Map<String,String> mappaRandomizzata = listaMappeDB.get(Vik.numeroRandom(minDimensione,
																					maxDimensione));
			
			elencoDomande.add(mappaRandomizzata);
			livello++;
		}

	}
	

	public List<Map<String,String>> elencoDomande(){
		estrazioneDomande();
		return this.elencoDomande;
	}


	public String aiutoPubblico(Map<String,String> domanda)
	{
		System.out.println(domanda);
		int idDomanda = Integer.parseInt(domanda.get("id"));
		
		Map<String,String> ris = dd.leggiRispostePerDomanda(idDomanda);
		
		return ris.get("ris" + Vik.numeroRandom(4, 1));
	}
	
	public String aiutoDaCasa(Map<String,String> domanda)
	{
		System.out.println(domanda);
		int idDomanda = Integer.parseInt(domanda.get("id"));
		
		return dd.rispostaGiusta(idDomanda);
	}
}

