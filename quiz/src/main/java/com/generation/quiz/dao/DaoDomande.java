package com.generation.quiz.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.generation.quiz.utilities.Vik;

public class DaoDomande
{	
	@Autowired
	public Database db = new Database();

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

	public boolean create(Map<String,String> m){
		
		String query = "INSERT INTO domande (q,punti,argomento) values (?,?,?)";
		
		return db.update(query, m.get("q"), m.get("punti"), m.get("argomento"));
	}
	
	public boolean update(Map<String,String> m) {
		
		String query = "UPDATE domande SET q = ?, punti = ?, argomento = ? where id = ?";
		
		return db.update(query, m.get("q"), m.get("punti"), m.get("argomento"), m.get("id"));
	}

	public boolean delete(int id) {
		
		String query = "DELETE FROM domande WHERE id = ?";
		
		return db.update(query, id + "");
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

	public int indexRispostaGiusta(int idDomanda) {

		int indexCorretto = 0;
		for(int i = 0; i < risposte.size(); i++) {
			if(risposte.get(i).equalsIgnoreCase(rispostaGiusta(idDomanda))) {
				indexCorretto = i;
				break;
			}
		}
		return indexCorretto;
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

	// vediamo-------------------------------------------

	private int maxDimensione = 4;
	private int minDimensione = 0;
	private Map<String,String> mappaRandom = new HashMap<String,String>(); 

	/**estrazioneDomande() estrea 15 domande di difficoltà diversa e le inserisce nella lista
	 * elencoDomande()
	 * @return void
	 * */
	public void estrazioneDomande(int livello, String argomento){

		
		 String query = "SELECT * FROM domande WHERE punti = ? AND argomento = ?";

		    // Eseguiamo la query con i parametri in modo sicuro
		    List<Map<String, String>> listaMappeDB = leggi(query, livello + "", argomento);

		    // Recupero una domanda randomizzata
		    int randomIndex = Vik.numeroRandom(0, listaMappeDB.size() - 1);
		    mappaRandom = listaMappeDB.get(randomIndex);
		    

	}


	public Map<String,String> mappaRandom(int livello, String argomento){
		estrazioneDomande(livello, argomento);
		return this.mappaRandom;
	}


}
