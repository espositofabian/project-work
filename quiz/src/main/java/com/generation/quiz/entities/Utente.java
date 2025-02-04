package com.generation.quiz.entities;

import com.generation.quiz.utilities.Vik;

public class Utente extends Entity {

	private String username;
	private String password;
	
	public static boolean isUtente(int id, String username, String password)
	{
		if(isEntity(id) &&
		   Vik.checkString(username) &&
		   Vik.checkString(password) &&
		   Vik.checkStringLength(password))
			return true;
		else
			return false;
	}
	
	public Utente()
	{
		super();
	}
	
	public Utente(int id, String username, String password) 
	{
		super(id);
		setUsername(username);
		setPassword(password);
	}

	public String getUsername() 
	{
		return username;
	}

	public void setUsername(String username) 
	{
		this.username = username;
	}

	public String getPassword() 
	{
		return password;
	}

	public void setPassword(String password) 
	{
		this.password = password;
	}
	
	public String toString()
	{
		return super.toString() + 
				"Username: " + username + "\n" + 
				"Password: " + password + "\n" ;
	}
	
	
	
}
