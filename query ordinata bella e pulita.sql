-- creo il database 
create database quizzone;
use quizzone;


-- creazione tabella domande 
create table domande
(
	id int primary key auto_increment,
  	q varchar(100),
	punti int,
    argomento varchar(100)
);



-- insert nella tabella domande

-- Inserimento Domande
INSERT INTO domande (id, q, punti, argomento) VALUES
-- Difficoltà 1
(1, "Qual è il colore del cielo in una giornata serena?", 1, "generico"),
(2, "Quanto fa 2 + 2?", 1, "generico"),
(3, "Quale operatore viene usato per la somma in Java?", 1, "programmazione"),
(4, "Chi è il protagonista di 'Harry Potter'?", 1, "film"),
(5, "Qual è il nome del robot dorato in Star Wars?", 1, "film"),

-- Difficoltà 2
(6, "Qual è il primo mese dell'anno?", 2, "generico"),
(7, "Quanti giorni ha una settimana?", 2, "generico"),
(8, "Come si chiama il costrutto usato per i cicli in Java?", 2, "programmazione"),
(9, "Chi ha diretto il film 'Titanic'?", 2, "film"),
(10, "Qual è il nome del pianeta natale di Superman?", 2, "film"),

-- Difficoltà 3
(11, "Chi ha scritto la teoria della relatività?", 3, "generico"),
(12, "Quale parola chiave è usata per dichiarare una costante in Java?", 3, "programmazione"),
(13, "In quale film troviamo il personaggio 'Joker'?", 3, "film"),
(14, "Qual è l’elemento chimico con simbolo O?", 3, "generico"),
(15, "Chi è l'attore principale in 'Mission Impossible'?", 3, "film"),

-- Difficoltà 4
(16, "Qual è la capitale della Francia?", 4, "generico"),
(17, "Cosa restituisce il metodo length() su una stringa in Java?", 4, "programmazione"),
(18, "Chi ha interpretato Jack Sparrow in 'Pirati dei Caraibi'?", 4, "film"),
(19, "Quanti stati ha gli USA?", 4, "generico"),
(20, "Qual è il vero nome di Batman?", 4, "film"),

-- Difficoltà 5
(21, "Qual è il simbolo chimico dell'acqua?", 5, "generico"),
(22, "Cosa significa HTML?", 5, "programmazione"),
(23, "Quale film ha vinto l'Oscar come miglior film nel 1994?", 5, "film"),
(24, "Qual è il valore di π (pi greco) approssimato?", 5, "generico"),
(25, "Chi ha diretto 'Inception'?", 5, "film"),

-- Difficoltà 6
(26, "Chi ha scoperto la gravità?", 6, "generico"),
(27, "Cosa fa il comando 'git clone'?", 6, "programmazione"),
(28, "Quale attore ha interpretato James Bond più volte?", 6, "film"),
(29, "Qual è il continente con il maggior numero di paesi?", 6, "generico"),
(30, "In che anno è uscito il primo film di 'Star Wars'?", 6, "film"),

-- Difficoltà 7
(31, "Chi ha scritto 'La Divina Commedia'?", 7, "generico"),
(32, "Quale valore restituisce un metodo senza return in Java?", 7, "programmazione"),
(33, "Chi ha composto la colonna sonora di 'Il Gladiatore'?", 7, "film"),
(34, "Qual è il pianeta più grande del sistema solare?", 7, "generico"),
(35, "Chi ha interpretato il Joker nel film 'Il Cavaliere Oscuro'?", 7, "film"),

-- Difficoltà 8
(36, "Qual è l'animale più veloce sulla terra?", 8, "generico"),
(37, "Cos'è un 'array' in programmazione?", 8, "programmazione"),
(38, "Quale film ha incassato di più nella storia del cinema?", 8, "film"),
(39, "Quante ossa ha il corpo umano?", 8, "generico"),
(40, "Chi ha vinto l'Oscar come miglior attore nel 2020?", 8, "film"),

-- Difficoltà 9
(41, "Qual è l'elemento chimico più leggero?", 9, "generico"),
(42, "Cos'è un 'framework'?", 9, "programmazione"),
(43, "In quale film compare il personaggio di Hannibal Lecter?", 9, "film"),
(44, "Quale paese ha la maggiore popolazione al mondo?", 9, "generico"),
(45, "Qual è il nome del regista della trilogia 'Il Signore degli Anelli'?", 9, "film"),

-- Difficoltà 10
(46, "Quanti pianeti ci sono nel sistema solare?", 10, "generico"),
(47, "Cos'è il paradigma OOP?", 10, "programmazione"),
(48, "Quale attore ha vinto più Oscar come miglior attore protagonista?", 10, "film"),
(49, "Qual è la montagna più alta del mondo?", 10, "generico"),
(50, "Chi ha composto la colonna sonora di 'Star Wars'?", 10, "film"),

-- Difficoltà 11
(51, "Quale paese ha inventato la pizza?", 11, "generico"),
(52, "Cos'è il linguaggio SQL?", 11, "programmazione"),
(53, "Quale regista ha vinto più Oscar?", 11, "film"),
(54, "Qual è il deserto più grande del mondo?", 11, "generico"),
(55, "Chi ha interpretato Forrest Gump?", 11, "film"),

-- Difficoltà 12
(56, "Cos'è la velocità della luce nel vuoto?", 12, "generico"),
(57, "Cos'è il principio DRY in programmazione?", 12, "programmazione"),
(58, "Quale film ha vinto più Oscar in assoluto?", 12, "film"),
(59, "Qual è il lago più profondo del mondo?", 12, "generico"),
(60, "Chi ha diretto 'Il Padrino'?", 12, "film"),

-- Difficoltà 13
(61, "Chi ha sviluppato la teoria quantistica?", 13, "generico"),
(62, "Cosa fa il comando 'chmod' in Linux?", 13, "programmazione"),
(63, "Qual è il film con il più alto punteggio su IMDb?", 13, "film"),
(64, "Qual è il gas più abbondante nell'atmosfera terrestre?", 13, "generico"),
(65, "Chi ha diretto 'Interstellar'?", 13, "film"),

-- Difficoltà 14
(66, "Cos'è la teoria delle stringhe?", 14, "generico"),
(67, "Cos'è il principio SOLID in programmazione?", 14, "programmazione"),
(68, "Chi ha interpretato il protagonista in 'Shutter Island'?", 14, "film"),
(69, "Qual è l'organo più grande del corpo umano?", 14, "generico"),
(70, "Chi ha scritto la colonna sonora di 'Titanic'?", 14, "film"),

-- Difficoltà 15
(71, "Qual è la radice quadrata di 289?", 15, "generico"),
(72, "Qual è la differenza tra HTTP e HTTPS?", 15, "programmazione"),
(73, "Quale film è considerato il migliore di sempre?", 15, "film"),
(74, "Qual è il numero primo più piccolo?", 15, "generico"),
(75, "Quale regista ha vinto più premi Oscar?", 15, "film");

-- creo la tabella domande

create table risposte
(
	id int primary key auto_increment,
    ris1 varchar(100),
    ris2 varchar(100),
    ris3 varchar(100),
    ris4 varchar(100),
    risok varchar(100),
    idDomanda int,
	foreign key(idDomanda)
    references domande(id)
    on delete cascade
    on update cascade
);



-- insert nella tabella risposte

-- Inserimento Risposte
INSERT INTO risposte (id, ris1, ris2, ris3, ris4, risok, idDomanda) VALUES
-- Difficoltà 1
(1, "Blu", "Verde", "Rosso", "Giallo", "Blu", 1),
(2, "3", "4", "5", "6", "4", 2),
(3, "+", "-", "*", "/", "+", 3),
(4, "Harry Potter", "Frodo", "Luke", "Neo", "Harry Potter", 4),
(5, "C-3PO", "R2-D2", "BB-8", "D-0", "C-3PO", 5),

-- Difficoltà 2
(6, "Gennaio", "Febbraio", "Marzo", "Aprile", "Gennaio", 6),
(7, "5", "6", "7", "8", "7", 7),
(8, "for", "if", "switch", "case", "for", 8),
(9, "James Cameron", "Steven Spielberg", "Christopher Nolan", "Ridley Scott", "James Cameron", 9),
(10, "Krypton", "Tatooine", "Vulcano", "Asgard", "Krypton", 10),

-- Difficoltà 3
(11, "Einstein", "Newton", "Tesla", "Galileo", "Einstein", 11),
(12, "final", "const", "static", "var", "final", 12),
(13, "Il Cavaliere Oscuro", "Joker", "Batman Begins", "Suicide Squad", "Joker", 13),
(14, "Ossigeno", "Idrogeno", "Elio", "Azoto", "Ossigeno", 14),
(15, "Tom Cruise", "Brad Pitt", "Leonardo DiCaprio", "Keanu Reeves", "Tom Cruise", 15),

-- Difficoltà 4
(16, "Parigi", "Roma", "Madrid", "Londra", "Parigi", 16),
(17, "Numero di caratteri", "Primo carattere", "Ultimo carattere", "Tipo della stringa", "Numero di caratteri", 17),
(18, "Johnny Depp", "Orlando Bloom", "Brad Pitt", "Matt Damon", "Johnny Depp", 18),
(19, "50", "51", "52", "53", "50", 19),
(20, "Bruce Wayne", "Clark Kent", "Tony Stark", "Peter Parker", "Bruce Wayne", 20),

-- Difficoltà 5
(21, "H2O", "O2", "CO2", "N2", "H2O", 21),
(22, "HyperText Markup Language", "High Tech Modern Language", "Home Tool Multi Language", "Hyper Transfer Main Link", "HyperText Markup Language", 22),
(23, "Forrest Gump", "Pulp Fiction", "Titanic", "Il Re Leone", "Forrest Gump", 23),
(24, "3.14", "3.41", "2.71", "1.61", "3.14", 24),
(25, "Christopher Nolan", "James Cameron", "Steven Spielberg", "Ridley Scott", "Christopher Nolan", 25),

-- Difficoltà 6
(26, "Newton", "Einstein", "Galileo", "Tesla", "Newton", 26),
(27, "Copia un repository", "Elimina un repository", "Esegue un commit", "Rinomina un branch", "Copia un repository", 27),
(28, "Sean Connery", "Roger Moore", "Daniel Craig", "Pierce Brosnan", "Sean Connery", 28),
(29, "Africa", "Asia", "Europa", "America", "Africa", 29),
(30, "1977", "1980", "1983", "1990", "1977", 30),

-- Difficoltà 7
(31, "Dante Alighieri", "Manzoni", "Leopardi", "Boccaccio", "Dante Alighieri", 31),
(32, "void", "null", "undefined", "empty", "void", 32),
(33, "Hans Zimmer", "John Williams", "Ennio Morricone", "Howard Shore", "Hans Zimmer", 33),
(34, "Giove", "Saturno", "Marte", "Terra", "Giove", 34),
(35, "Heath Ledger", "Joaquin Phoenix", "Jack Nicholson", "Jared Leto", "Heath Ledger", 35),

-- Difficoltà 8
(36, "Ghepardo", "Leone", "Falco", "Cavallo", "Ghepardo", 36),
(37, "Una collezione di elementi", "Una variabile", "Un metodo", "Un ciclo", "Una collezione di elementi", 37),
(38, "Avatar", "Titanic", "Avengers: Endgame", "Star Wars", "Avatar", 38),
(39, "206", "207", "208", "209", "206", 39),
(40, "Joaquin Phoenix", "Leonardo DiCaprio", "Brad Pitt", "Tom Hanks", "Joaquin Phoenix", 40),

-- Difficoltà 9
(41, "Idrogeno", "Elio", "Ossigeno", "Azoto", "Idrogeno", 41),
(42, "Un insieme di strumenti di sviluppo", "Un linguaggio", "Un database", "Un sistema operativo", "Un insieme di strumenti di sviluppo", 42),
(43, "Il silenzio degli innocenti", "Psycho", "Shining", "American Psycho", "Il silenzio degli innocenti", 43),
(44, "Cina", "India", "USA", "Brasile", "Cina", 44),
(45, "Peter Jackson", "Steven Spielberg", "James Cameron", "George Lucas", "Peter Jackson", 45),

-- Difficoltà 10
(46, "8", "9", "10", "11", "8", 46),
(47, "Programmazione a oggetti", "Un linguaggio", "Un framework", "Un database", "Programmazione a oggetti", 47),
(48, "Daniel Day-Lewis", "Jack Nicholson", "Robert De Niro", "Al Pacino", "Daniel Day-Lewis", 48),
(49, "Everest", "K2", "Monte Bianco", "Kilimangiaro", "Everest", 49),
(50, "John Williams", "Hans Zimmer", "Ennio Morricone", "Danny Elfman", "John Williams", 50),

-- Difficoltà 11
(51, "Platone", "Aristotele", "Socrate", "Epicuro", "Platone", 51),
(52, "OOP", "Functional", "Procedural", "Logical", "OOP", 52),
(53, "The Godfather", "Scarface", "Goodfellas", "Casino", "The Godfather", 53),
(54, "1879", "1905", "1912", "1930", "1879", 54),
(55, "Woody Allen", "Martin Scorsese", "Quentin Tarantino", "Stanley Kubrick", "Woody Allen", 55),

-- Difficoltà 12
(56, "Venere", "Marte", "Mercurio", "Nettuno", "Venere", 56),
(57, "try-catch", "if-else", "switch-case", "for-loop", "try-catch", 57),
(58, "Blade Runner", "Dune", "2001: Odissea nello spazio", "Interstellar", "Blade Runner", 58),
(59, "3", "4", "5", "6", "4", 59),
(60, "Francis Ford Coppola", "Stanley Kubrick", "Steven Spielberg", "Ridley Scott", "Francis Ford Coppola", 60),

-- Difficoltà 13
(61, "Asia", "Africa", "Europa", "America", "Asia", 61),
(62, "HashMap", "TreeMap", "LinkedList", "ArrayList", "HashMap", 62),
(63, "Star Wars", "Blade Runner", "Alien", "Matrix", "Matrix", 63),
(64, "1914", "1939", "1945", "1950", "1939", 64),
(65, "Alfred Hitchcock", "David Lynch", "Stanley Kubrick", "Quentin Tarantino", "Alfred Hitchcock", 65),

-- Difficoltà 14
(66, "42", "24", "12", "36", "42", 66),
(67, "Virtual Machine", "Interpreter", "Compiler", "Debugger", "Virtual Machine", 67),
(68, "Citizen Kane", "Casablanca", "Gone with the Wind", "Pulp Fiction", "Citizen Kane", 68),
(69, "DNA", "RNA", "Proteina", "Zucchero", "DNA", 69),
(70, "Charlie Chaplin", "Buster Keaton", "Stan Laurel", "Harold Lloyd", "Charlie Chaplin", 70),

-- Difficoltà 15
(71, "Elettrone", "Protone", "Neutrone", "Quark", "Quark", 71),
(72, "Lambda Expressions", "Threads", "Streams", "Recursion", "Streams", 72),
(73, "Apocalypse Now", "The Deer Hunter", "Full Metal Jacket", "Platoon", "Apocalypse Now", 73),
(74, "Leonardo Da Vinci", "Michelangelo", "Raffaello", "Caravaggio", "Leonardo Da Vinci", 74),
(75, "Akira Kurosawa", "Ingmar Bergman", "Federico Fellini", "Orson Welles", "Akira Kurosawa", 75);



-- creo la tabella utenti
create table utenti
(
	id int primary key auto_increment,
    username varchar(100),
    password varchar(100),
    punteggio INT DEFAULT 0
);

-- insert degli utenti iniziali 
insert into utenti
(id,username,password,punteggio)
values
(1,"Anna","annaanna",0),
(2,"Luca","Garmin",100),
(3,"Manuel","Unity",10),
(4,"Lucian","George",50),
(5,"Andrea","Macerata",25),
(6,"Giordano","Zuppli",5),
(7,"Dylan","SSNapoli1926",300),
(8,"Vincent","javaaaaaaaaaaaaaaaaaa",5),
(9,"DJFalco","CostaRica",5),
(10,"Gulshan","SonoUnIndianoMalefico",5);

-- da qui in poi tutte query utili più o meno, Luca è l'essere perfetto
select	* from	domande;
select	* from	risposte;
select	* from	utenti;

-- ti dovrebbe dare una domanda a caso con la risposta corretta ma è buggato te ne da anche 2 di domande  o nessuna
select 	distinct domande.id as "idDomanda",
		domande.q as "Domanda",
        risposte.risok as "Risposta corretta"
from	domande inner join risposte
on		domande.id = risposte.idDomanda
where	domande.id = (	select	floor(rand() * (count(*) - 1 + 1)) + 1
						from	domande);


-- questa non l'ho capita ma l'ha fatta Luca e io sono un suo suddito non posso controbattere
select	floor(rand() * (count(*) - 1 + 1)) + 1;

-- selezionare le domande per argomento:
SELECT * FROM domande WHERE argomento = 'Generico'; -- Sostituisci 'Generico' con l'argomento desiderato

-- query che seleziona tutte le domande di uno specifico livello
SELECT * FROM domande WHERE punti = 5; -- Sostituisci 5 con la difficoltà desiderata


-- Questa query seleziona solo le domande di uno specifico livello
select	domande.id as "idDomanda",
		domande.q as "Domanda",
        risposte.risok as "Risposta corretta",
        domande.punti as "Punti/Livello"
from	domande inner join risposte
on		domande.id = risposte.idDomanda
where	domande.punti = 5;

-- questa è una query di ricerca  con vari parametri credo, che figata!!
select	domande.id as "idDomanda",
		domande.q as "Domanda",
        risposte.ris1 as "Risposta 1",
        risposte.ris2 as "Risposta 2",
        risposte.ris3 as "Risposta 3",
        risposte.ris4 as "Risposta 4",
        risposte.risok as "Risposta corretta",
        domande.punti as "Punti/Livello"
from	domande inner join risposte
on		domande.id = risposte.idDomanda
where	domande.punti >= 3 and domande.punti <= 5;

-- query seleziona 10 persone con punteggio in modalità decrescente, ma non ho abbastanza utenti per testarla

SELECT *
FROM utenti
ORDER BY punteggio DESC
LIMIT 10;

-- questa invece li prende a random, ma non ho comunque abbastanza utenti per testarla (lamentela inoltrata al reparto marketing)
SELECT *
FROM utenti
ORDER BY RAND()
LIMIT 10;

-- questa cerca la risposta corretta per una determinata domanda:
SELECT risok FROM risposte WHERE idDomanda = 1; -- Sostituisci 1 con l'id della domanda desiderata

-- qusta invece tutte le risposte non solo quella corretta
SELECT * FROM risposte WHERE idDomanda = 1; -- Sostituisci 1 con l'id della domanda desiderata

-- questa seleziona l'utente con un determinato username  
SELECT * FROM utenti WHERE username = 'Anna'; -- Sostituisci 'Anna' con l'username desiderato

-- questa serve per aggiornare un punteggio dell'utente facilmente
UPDATE utenti SET punteggio = 10 WHERE id = 1; -- Sostituisci 10 con il nuovo punteggio e 1 con l'id dell'utente

-- questa prende una domanda a random
SELECT d.q, r.ris1, r.ris2, r.ris3, r.ris4 
FROM domande d
JOIN risposte r ON d.id = r.idDomanda
ORDER BY RAND()
LIMIT 1;
-- questa che secondo me può essere utilissima  aggiorna il punteggio dell'utente dopo aver risposto ad una domanda esatta
UPDATE utenti SET punteggio = punteggio + (SELECT punti FROM domande WHERE id = 1) WHERE id = 1; -- Sostituisci 1 con l'id della domanda e l'id dell'utente





