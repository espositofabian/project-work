package com.generation.dao;

import java.util.Map;

public class DaoUtenti
{

	private Database db = Database.GETINSTANCE();

	private static DaoUtenti INSTANCE;

	private DaoUtenti() {
		
	}

	public static DaoUtenti GETINSTANCE() {

		if(INSTANCE == null)
			INSTANCE = new DaoUtenti();

		return INSTANCE;
	}

	public Map<String,String> cercaUtente(String username, String password){

		String query = "SELECT * FROM utenti WHERE username = ? AND password = ?";


		Map<String,String> map = db.row(query, username,password);
		
		return (map == null) ? null : map;

	}

}
