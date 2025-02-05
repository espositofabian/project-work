package com.generation.quiz.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.generation.quiz.utilities.Vik;

public class DaoDomande
{	
	@Autowired
	public Database db;

	private ArrayList<String> risposte;

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


	
	public String rispostaGiusta(int idDomanda){

		String query = "select risposte.risok\r\n"
				     + "from   risposte\r\n"
				     + "where  risposte.idDomanda = ?";
		
		return db.row(query, idDomanda + "").get("risok");
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

	public void leggiRisposte(int idDomanda) {
		// inizializzo l'arrayList risposte
		risposte = new ArrayList<String>();

		// recupero le mappa con all'interno tutte le risposte
		Map<String,String> mappaRisposte = leggiRispostePerDomanda(idDomanda);

		// ciclo per i valori della mappa e li butto all'interno dell'arrayList
		for(String s : mappaRisposte.values()) {
			risposte.add(s);
		}

	}

	public ArrayList<String> risposte(int idDomanda){
		
		// evoco leggiRisposte per inizializzare e valorizzare l'array
		leggiRisposte(idDomanda);
		// lo restituisco
		return risposte;
	}

	public boolean isGiusta(int idDomanda, String risposta) {

		// controllo della validità della risposta (non vogliamo sia null)
		if(Vik.checkString(risposta)) {
			// se la risposta dell'utente equivale a quella giusta!
			if(risposta.equalsIgnoreCase(rispostaGiusta(idDomanda))) {
				return true;
			}
		}// fine dell'if

		return false;
	}


}
