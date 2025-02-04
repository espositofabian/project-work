package com.generation.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;


public class Database
{
	private Connection c;
	private String percorso = "jdbc:mysql://localhost:3306/" + "quizzone" + "?";
	private String username = "root";
	private String password = "root";
	
	private static Database INSTANCE;
	
	private Database()
	{
		
	}
	
	public static Database GETINSTANCE() {
		
		if(INSTANCE == null)
			INSTANCE = new Database();
		
		return INSTANCE;
	}
	
	public Connection getC()
	{
		return this.c;
	}
	
	public void apriConnessione()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			c = DriverManager.getConnection(percorso,username,password);
		}
		catch(ClassNotFoundException e)
		{
			System.out.println("Controlla di aver importato le librerie correttamente.");
			e.printStackTrace();
		}
		catch(Exception e)
		{
			System.out.println("Impossibile connettersi al DB.");
			e.printStackTrace();
		}
	}
	
	public List<Map<String,String>> rows(String query, String... params)
	{
		List<Map<String,String>> ris = new ArrayList<Map<String,String>>();
		PreparedStatement ps = null;
		try
		{
			ps = c.prepareStatement(query);
			for(int i = 0; i < params.length; i++)
			{
				ps.setString(i + 1, params[i]);
			}
			ResultSet tabella = ps.executeQuery();
			int nColonne = tabella.getMetaData().getColumnCount();
			while(tabella.next())
			{
				Map<String,String> riga = new HashMap<String,String>();
				for(int i = 1; i <= nColonne; i++)
				{
					riga.put(	tabella.getMetaData().getColumnLabel(i),	//CHIAVE -> nome del campo della tabella
								tabella.getString(i));						//VALORE -> valore del campo
				}
				ris.add(riga);
			}
		}
		catch(Exception e)
		{
			System.out.println("Problema nel metodo rows() di Database.");
			e.printStackTrace();
		}
		return ris;
	}//Fine di rows()
	
	public Map<String,String> row(String query, String... params)
	{
		try
		{
			return rows(query,params).get(0);
		}
		catch(Exception e)
		{
			System.out.println("Problema nel metodo row() di Database.");
			e.printStackTrace();
			return null;
		}
	}//Fine di row()
	
	public boolean update(String query, String... params)
	{
		try
		{
			PreparedStatement ps = c.prepareStatement(query);
			for(int i = 0; i < params.length; i++)
			{
				ps.setString(i + 1, params[i]);
			}
			ps.executeUpdate();
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Problema nel metodo update() di Database.");
			e.printStackTrace();
			return false;
		}
	}//Fine di update()
}