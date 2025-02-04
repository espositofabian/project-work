package com.generation.quiz.entities;

public abstract class Entity {

	private int id;
	
	public static boolean isEntity(int id)
	{
		if(id > 0)
			return true;
		else
			return false;
	}
	
	public Entity()
	{
		
	}
	
	public Entity(int id)
	{
		setId(id);
	}

	public int getId() 
	{
		return id;
	}

	public void setId(int id) 
	{
		this.id = id;
	}
	
	public String toString()
	{
		return "ID: " + id + "\n";
	}
	
}
