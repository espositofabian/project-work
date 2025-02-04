---- Per Vincenzo
---- Trovare 5 Domande e Risposte per livello di difficoltà. Da 1 a 15. Quindi 75 domande totali.

insert into domande 
(id,q,punti,argomento)
values
	(1,"Come si chiama lo stregone amico degli Hobbit ne Il signore degli anelli?",1,"Generico"),
	(2,"Chi interpreta l'agente Rick Deckard in Blade Runner?",1,"Generico");

insert into risposte 
	(id,risi,ris2,ris3,ris4,risok, idDomanda)
values
	(1, "Gandalf", "Saruman", "Radagast", "Sauron", "Gandalf",1),
	(2,"Keanu Reeves","Matt Damon","Christian Bale","Harrison Ford","Harrison Ford",2);
