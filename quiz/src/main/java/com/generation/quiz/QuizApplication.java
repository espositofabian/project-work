package com.generation.quiz;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.generation.quiz.dao.DaoUtenti;

@SpringBootApplication
public class QuizApplication {

	public static void main(String[] args) {
		
		DaoUtenti du = new DaoUtenti();
		System.out.println(du.cercaUtente("Anna", "annaanna"));
		
		SpringApplication.run(QuizApplication.class, args);
	}

}
