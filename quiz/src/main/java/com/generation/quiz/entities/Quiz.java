package com.generation.quiz.entities;

import java.util.ArrayList;
import java.util.HashMap;
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
	private int maxDimensione = 4;
	private int minDimensione = 0;
	// magari non dichiarare immediatamente
	private List<Map<String,String>> elencoDomande = new ArrayList<Map<String,String>>(); 

	/**estrazioneDomande() estrea 15 domande di difficoltà diversa e le inserisce nella lista
	 * elencoDomande()
	 * @return void
	 * */
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
	
	public String aiutoPubblico(int idDomanda)
	{
		Map<String,String> ris = dd.leggiRispostePerDomanda(idDomanda);
		
		return ris.get("ris" + Vik.numeroRandom(4, 1));
	}
	
	public String aiutoDaCasa(int idDomanda)
	{
		return dd.rispostaGiusta(idDomanda);
	}
	
	public Map<String,String> aiuto5050(int idDomanda)
	{
		Map<String,String> record = dd.leggiRispostePerDomanda(idDomanda);
		
		String risSbagliata1;
		String risSbagliata2;
		String risOk = dd.rispostaGiusta(idDomanda);
		
		do
		{
			risSbagliata1 = record.get("ris" + Vik.numeroRandom(4, 1));
			risSbagliata2 = record.get("ris" + Vik.numeroRandom(4, 1));
		}
		while(risSbagliata1.equalsIgnoreCase(risOk) || risSbagliata2.equalsIgnoreCase(risOk) || risSbagliata1.equalsIgnoreCase(risSbagliata2));
		

		Map<String,String> ris = new HashMap<String,String>();
		ris.put("ris1", risSbagliata1);
		ris.put("ris2", risSbagliata2);
		
		return ris;
	}
	
}

