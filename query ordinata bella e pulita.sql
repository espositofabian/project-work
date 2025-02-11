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
(1, "Qual è il colore del sole?", 1, "generico"),
(2, "Qual è il risultato di 5 + 3?", 1, "generico"),
(3, "Quale keyword si usa per dichiarare una variabile in Java?", 1, "programmazione"),
(4, "Chi è il protagonista di 'Il Signore degli Anelli'?", 1, "film"),
(5, "Quanti giorni ci sono in una settimana?", 1, "generico"),

-- Difficoltà 2
(6, "Qual è il mare che bagna l'Italia?", 2, "generico"),
(7, "Quale ciclo in Java esegue almeno una volta il blocco di codice?", 2, "programmazione"),
(8, "Chi è il regista di 'Titanic'?", 2, "film"),
(9, "Quanto fa 12 diviso 4?", 2, "generico"),
(10, "Qual è la capitale della Spagna?", 2, "generico"),

-- Difficoltà 3
(11, "Quale pianeta è conosciuto come il Pianeta Rosso?", 3, "generico"),
(12, "Quale è la funzione principale del garbage collector in Java?", 3, "programmazione"),
(13, "Chi interpreta Iron Man nel Marvel Cinematic Universe?", 3, "film"),
(14, "Qual è il metallo liquido a temperatura ambiente?", 3, "generico"),
(15, "Quale operatore logico rappresenta 'AND' in Java?", 3, "programmazione"),

-- Difficoltà 4
(16, "Qual è il numero atomico dell'ossigeno?", 4, "generico"),
(17, "Quale struttura dati segue la logica FIFO?", 4, "programmazione"),
(18, "Chi è il protagonista del film 'Interstellar'?", 4, "film"),
(19, "Quanti anni ci vogliono per un anno bisestile?", 4, "generico"),
(20, "Quale linguaggio è usato principalmente per creare pagine web dinamiche?", 4, "programmazione"),

-- Difficoltà 5
(21, "Qual è il simbolo chimico del ferro?", 5, "generico"),
(22, "Quale metodo si usa per avviare un programma Java?", 5, "programmazione"),
(23, "In quale anno è uscito il primo film di Harry Potter?", 5, "film"),
(24, "Chi ha dipinto la Gioconda?", 5, "generico"),
(25, "Come si chiama il ciclo che si ripete indefinitamente?", 5, "programmazione"),

-- Difficoltà 6
(26, "Qual è il pianeta più grande del sistema solare?", 6, "generico"),
(27, "Qual è il principale vantaggio della programmazione ad oggetti?", 6, "programmazione"),
(28, "Quale film ha vinto l'Oscar come miglior film nel 1994?", 6, "film"),
(29, "Qual è il fiume più lungo del mondo?", 6, "generico"),
(30, "Quale valore restituisce una funzione senza 'return' in Java?", 6, "programmazione"),

-- Difficoltà 7
(31, "Qual è la velocità della luce nel vuoto (km/s)?", 7, "generico"),
(32, "Quale struttura dati utilizza il principio LIFO?", 7, "programmazione"),
(33, "Chi ha interpretato il Joker nel film 'Il Cavaliere Oscuro'?", 7, "film"),
(34, "Qual è la lingua più parlata al mondo?", 7, "generico"),
(35, "Quale carattere si usa per separare i parametri in una funzione Java?", 7, "programmazione"),

-- Difficoltà 8
(36, "Qual è la capitale del Giappone?", 8, "generico"),
(37, "Quale tipo di dati in Java è usato per valori booleani?", 8, "programmazione"),
(38, "Quale film di animazione Pixar ha come protagonista un robot?", 8, "film"),
(39, "Quale gas viene usato per gonfiare i palloncini?", 8, "generico"),
(40, "Quale operatore in Java è usato per la moltiplicazione?", 8, "programmazione"),

-- Difficoltà 9
(41, "Quanti stati ci sono negli Stati Uniti?", 9, "generico"),
(42, "Quale parola chiave in Java impedisce la modifica di una variabile?", 9, "programmazione"),
(43, "Chi è il regista della saga 'Il Signore degli Anelli'?", 9, "film"),
(44, "Quale città è conosciuta come 'la Grande Mela'?", 9, "generico"),
(45, "Qual è il tipo di dati usato per numeri decimali in Java?", 9, "programmazione"),

-- Difficoltà 10
(46, "Qual è la formula chimica dell'acqua?", 10, "generico"),
(47, "Quale struttura dati è più adatta per una coda di priorità?", 10, "programmazione"),
(48, "Quale attore ha interpretato Jack Dawson in 'Titanic'?", 10, "film"),
(49, "Chi ha scritto 'La teoria della relatività'?", 10, "generico"),
(50, "Quale ciclo viene usato per iterare un array in Java?", 10, "programmazione"),

-- Difficoltà 11
(51, "Qual è il numero di bit in un byte?", 11, "generico"),
(52, "Quale operatore in Java confronta due valori?", 11, "programmazione"),
(53, "Chi è il protagonista di 'Ritorno al Futuro'?", 11, "film"),
(54, "In quale anno è caduto il Muro di Berlino?", 11, "generico"),
(55, "Quale parola chiave si usa per creare una classe in Java?", 11, "programmazione"),

-- Difficoltà 12
(56, "Quale elemento chimico ha simbolo 'Au'?", 12, "generico"),
(57, "Quale struttura dati si utilizza per implementare una pila?", 12, "programmazione"),
(58, "Qual è il nome del robot in 'Star Wars' dorato e umanoide?", 12, "film"),
(59, "Qual è il monte più alto del mondo?", 12, "generico"),
(60, "Qual è il modificatore di accesso predefinito in Java?", 12, "programmazione"),

-- Difficoltà 13
(61, "Quanti lati ha un dodecagono?", 13, "generico"),
(62, "Qual è il tipo di dati predefinito per i numeri decimali in Java?", 13, "programmazione"),
(63, "Chi ha diretto il film 'Inception'?", 13, "film"),
(64, "Qual è il paese più grande del mondo per superficie?", 13, "generico"),
(65, "Quale interfaccia Java rappresenta una lista?", 13, "programmazione"),

-- Difficoltà 14
(66, "Qual è il simbolo chimico dell'ossigeno?", 14, "generico"),
(67, "Quale ciclo è più efficiente quando il numero di iterazioni è noto?", 14, "programmazione"),
(68, "Chi ha interpretato Iron Man nel MCU?", 14, "film"),
(69, "Qual è il deserto più grande del mondo?", 14, "generico"),
(70, "Come si chiama il metodo che viene eseguito all'avvio di una classe Java?", 14, "programmazione"),

-- Difficoltà 15
(71, "Qual è il più grande oceano della Terra?", 15, "generico"),
(72, "Quale metodo viene usato per chiudere un file in Java?", 15, "programmazione"),
(73, "Chi ha interpretato Neo in 'Matrix'?", 15, "film"),
(74, "Quale città ospita la Torre Eiffel?", 15, "generico"),
(75, "Quale parola chiave si usa per ereditare una classe in Java?", 15, "programmazione");


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
(1, "Giallo", "Blu", "Rosso", "Verde", "Giallo", 1),
(2, "7", "8", "9", "10", "8", 2),
(3, "var", "let", "int", "String", "int", 3),
(4, "Frodo", "Gandalf", "Legolas", "Aragorn", "Frodo", 4),
(5, "5", "6", "7", "8", "7", 5),

-- Difficoltà 2
(6, "Mar Nero", "Mar Mediterraneo", "Oceano Atlantico", "Mar Rosso", "Mar Mediterraneo", 6),
(7, "for", "while", "do-while", "foreach", "do-while", 7),
(8, "Steven Spielberg", "James Cameron", "Christopher Nolan", "Quentin Tarantino", "James Cameron", 8),
(9, "2", "3", "4", "6", "3", 9),
(10, "Lisbona", "Parigi", "Madrid", "Berlino", "Madrid", 10),

-- Difficoltà 3
(11, "Giove", "Marte", "Venere", "Saturno", "Marte", 11),
(12, "Allocare memoria", "Eliminare oggetti non utilizzati", "Ottimizzare il codice", "Gestire variabili globali", "Eliminare oggetti non utilizzati", 12),
(13, "Chris Evans", "Robert Downey Jr.", "Mark Ruffalo", "Chris Hemsworth", "Robert Downey Jr.", 13),
(14, "Ferro", "Argento", "Mercurio", "Oro", "Mercurio", 14),
(15, "&", "&&", "|", "||", "&&", 15),

-- Difficoltà 4
(16, "6", "8", "10", "12", "8", 16),
(17, "Stack", "Queue", "LinkedList", "ArrayList", "Queue", 17),
(18, "Leonardo DiCaprio", "Matthew McConaughey", "Brad Pitt", "Tom Hardy", "Matthew McConaughey", 18),
(19, "2", "3", "4", "5", "4", 19),
(20, "C++", "Java", "JavaScript", "Python", "JavaScript", 20),

-- Difficoltà 5
(21, "Fe", "F", "I", "Ir", "Fe", 21),
(22, "start()", "run()", "main()", "execute()", "main()", 22),
(23, "1999", "2001", "2004", "1997", "2001", 23),
(24, "Pablo Picasso", "Leonardo Da Vinci", "Michelangelo", "Van Gogh", "Leonardo Da Vinci", 24),
(25, "for", "while", "do-while", "infinito", "while", 25),

-- Difficoltà 6
(26, "Terra", "Saturno", "Giove", "Nettuno", "Giove", 26),
(27, "Velocità", "Sicurezza", "Riutilizzabilità", "Compatibilità", "Riutilizzabilità", 27),
(28, "Forrest Gump", "Pulp Fiction", "Braveheart", "Titanic", "Forrest Gump", 28),
(29, "Amazzoni", "Mississippi", "Gange", "Nilo", "Nilo", 29),
(30, "null", "0", "void", "undefined", "void", 30),

-- Difficoltà 7
(31, "300,000", "299,792", "150,000", "330,000", "299,792", 31),
(32, "Queue", "Stack", "Array", "LinkedList", "Stack", 32),
(33, "Joaquin Phoenix", "Heath Ledger", "Jack Nicholson", "Jared Leto", "Heath Ledger", 33),
(34, "Inglese", "Spagnolo", "Cinese", "Francese", "Cinese", 34),
(35, ";", ",", ":", ".", ",", 35),

-- Difficoltà 8
(36, "Pechino", "Seoul", "Tokyo", "Bangkok", "Tokyo", 36),
(37, "boolean", "Boolean", "bool", "bit", "boolean", 37),
(38, "Ratatouille", "WALL-E", "Inside Out", "Toy Story", "WALL-E", 38),
(39, "Ossigeno", "Idrogeno", "Elio", "Azoto", "Elio", 39),
(40, "+", "-", "*", "/", "*", 40),

-- Difficoltà 9
(41, "50", "48", "52", "51", "50", 41),
(42, "final", "const", "static", "immutable", "final", 42),
(43, "Steven Spielberg", "Peter Jackson", "Christopher Nolan", "James Cameron", "Peter Jackson", 43),
(44, "Los Angeles", "Miami", "New York", "Chicago", "New York", 44),
(45, "int", "float", "double", "long", "double", 45),

-- Difficoltà 10
(46, "CO2", "H2O", "O2", "CH4", "H2O", 46),
(47, "ArrayList", "Stack", "Heap", "PriorityQueue", "PriorityQueue", 47),
(48, "Brad Pitt", "Tom Cruise", "Leonardo DiCaprio", "Matt Damon", "Leonardo DiCaprio", 48),
(49, "Newton", "Einstein", "Galileo", "Tesla", "Einstein", 49),
(50, "while", "for-each", "do-while", "switch", "for-each", 50),

-- Difficoltà 11
(51, "8", "16", "32", "64", "8", 51),
(52, "=", "==", "!=", "equals", "==", 52),
(53, "Marty McFly", "Doc Brown", "Biff Tannen", "George McFly", "Marty McFly", 53),
(54, "1987", "1989", "1991", "1993", "1989", 54),
(55, "function", "define", "class", "public", "class", 55),

-- Difficoltà 12
(56, "Argento", "Platino", "Oro", "Rame", "Oro", 56),
(57, "Array", "Stack", "Queue", "HashMap", "Stack", 57),
(58, "R2-D2", "C-3PO", "BB-8", "IG-11", "C-3PO", 58),
(59, "Monte Bianco", "Everest", "K2", "Annapurna", "Everest", 59),
(60, "private", "public", "protected", "default", "default", 60),

-- Difficoltà 13
(61, "8", "10", "12", "14", "12", 61),
(62, "int", "float", "double", "long", "double", 62),
(63, "Steven Spielberg", "James Cameron", "Christopher Nolan", "Ridley Scott", "Christopher Nolan", 63),
(64, "Russia", "Canada", "Cina", "USA", "Russia", 64),
(65, "Collection", "List", "Set", "Queue", "List", 65),

-- Difficoltà 14
(66, "O", "O2", "Ox", "Oz", "O", 66),
(67, "for", "while", "do-while", "switch", "for", 67),
(68, "Chris Hemsworth", "Robert Downey Jr.", "Mark Ruffalo", "Chris Evans", "Robert Downey Jr.", 68),
(69, "Sahara", "Gobi", "Antartide", "Kalahari", "Antartide", 69),
(70, "init", "main", "constructor", "startup", "constructor", 70),

-- Difficoltà 15
(71, "Atlantico", "Pacifico", "Indiano", "Artico", "Pacifico", 71),
(72, "close()", "exit()", "shutdown()", "terminate()", "close()", 72),
(73, "Brad Pitt", "Tom Cruise", "Keanu Reeves", "Leonardo DiCaprio", "Keanu Reeves", 73),
(74, "Londra", "New York", "Parigi", "Roma", "Parigi", 74),
(75, "implements", "extends", "inherits", "derives", "extends", 75);

-- creo la tabella utenti
create table utenti
(
	id int primary key auto_increment,
    username varchar(100),
    password varchar(100),
    punteggio INT DEFAULT 0
);
truncate table utenti;
-- insert degli utenti iniziali 
insert into utenti
(id,username,password,punteggio)
values
(1,"Anna","annaanna",0),
(2,"Luca","Garmin",100),
(3,"Manuel","Unity",10),
(4,"Alberto","albertoalberto",30),
(5,"Andrea","Macerata",25),
(6,"Giordano","Zuppli",5),
(7,"Dylan","SSNapoli1926",300),
(8,"Vincent","javaaaaaaaaaaaaaaaaaa",5),
(9,"DJFalco","CostaRica",5),
(10,"Gulshan","SonoUnIndianoMalefico",5),
(11,"Lucian","George",50);

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





