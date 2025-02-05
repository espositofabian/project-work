package com.generation.quiz.utilities;


public class Vik {
	
	/**checkString() si assicura che la stringa non sia vuota o null.
	 * Restituisce true se la stringa non è né vuota né nulla
	 * @param String - titolo
	 * @return boolean 
	 * */
	public static boolean checkString(String titolo) {
		boolean check = true;
		
		if(titolo.isBlank() || titolo.isEmpty())
			check = false;
		
		return check;
	}
	
	public static boolean checkStringLength(String titolo)
	{
		boolean check = false;
		
		if(titolo.length() >= 7)
			check = true;
		
		return check;
	}
	
	public static boolean checkBoolean(String bool) {
		boolean check = false;
		
		if(bool.equalsIgnoreCase("false") || bool.equalsIgnoreCase("true"))
			check = true;
		
		return check;
	}
	
	public static boolean checkPositive(int num) {
		
		boolean check = true;
		
		if(num < 0) {
			check = false;
		}
		return check;
	}
	
	public static boolean checkPositive(double num) {
		
		boolean check = true;
		
		if(num < 0) {
			check = false;
		}
		return check;
	}


	public static boolean checkDobFormat(String dob) {

		boolean check = false;

		if(dob == null)
			return false;
		
		if(dob.length() == 10) {
			String[] date = new String[10];
			date = dob.split("-");
			
			if(	date[0].length() == 4 && 
				date[1].length() == 2 && 
				date[2].length() == 2) 
			{
				check = true;
			}
		}else
			System.out.println("The date is not formated correclty.\nIt should be [yyyy-mm-dd]");

		return check;
	}

	public static int getAgeFromDob(String dob) {
		
		int age = -1;
		
		if(checkDobFormat(dob)) {
			int year = Integer.parseInt((String) dob.subSequence(0, 4));
			age = 2025 - year;
		}
		
		return age;
	}

	/**
	 * isNumber(String nums) checks if the String is only composed by positive numbers
	 * @return boolean
	 * */
	public static boolean isNumber(String nums) {
		
		boolean check = true;
		
		for(int i = 0; i < nums.length(); i++)
		{
			// i take the single letter in index position "i",
			// i put it in "c" and check if it's a number
			char c = nums.charAt(i);
			
			// if it's NOT between the ASCII numbers for 0 to 9 or (48-57)
			if(c < '0' || c > '9')
				return check = false;
		}
		
		// otherwise it returns true
		return check;
	}
	
	public static int numeroRandom(int min, int max) {
		return (int) ((Math.random() * (max - min)) + min);
	}
	
	public static boolean containElement(String element, String...params) {
		boolean check = false;
		
		for(int i = 0; i < params.length; i++) {
			if(element.equalsIgnoreCase(params[i])) {
				check = true;
				break;
			}
		}
		return check;
	}
	
	public static boolean checkGender(String gender) {
		boolean check = false;
		
		if(gender.equalsIgnoreCase("M") || gender.equalsIgnoreCase("F"))
			check = true;
		
		return check;
	}


}





