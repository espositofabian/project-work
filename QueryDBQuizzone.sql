create database quizzone;
use quizzone;

-- La tabella domande contiene un id che identifica la singola domanda,
-- la domanda e i punti ovvero il valore della stessa.
create table domande
(
	id int primary key auto_increment,
  	q varchar(100),
    	punti int
);

--insert into domande
--(id,q,punti,argomento)
--values
--(1,"Come si chiama lo stregone amico degli Hobbit ne Il signore degli anelli?",5),
--(2,"Chi interpreta l'agente Rick Deckard in Blade Runner?",4);

--insert into domande
--(id,q,punti)
--values
--(3,"Come si chiama il protagonista di Matrix prima di diventare Neo?",5),
--(4,"Come si chiama il villain in Ready Player One?",5);

-- La tabella risposte contiene un id identificativo per le risposte,
-- 4 possibili opzioni di risposta, la risposta corretta e idDomanda
-- che serve per collegare la risposta alla domanda nella tabella domande.
-- Ogni domanda ha 4 risposte possibili ma 1 sola risulta corretta.
-- Eliminando o modificando l'id della domanda all'interno della tabella domande
-- viene eliminata o modificato l'id della risposta relativa nella tabella risposte.
-- NOTA BENE: eliminando la domanda, si eliminano le risposte collegate ad essa.
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

-- Query per conoscere tutti i componenti della domanda/risposta
--insert into risposte
--(id,ris1,ris2,ris3,ris4,risok,idDomanda)
--values
--(1,"Gandalf","Saruman","Radagast","Sauron","Gandalf",1),
--(2,"Keanu Reeves","Matt Damon","Christian Bale","Harrison Ford","Harrison Ford",2);

--insert into risposte
--(id,ris1,ris2,ris3,ris4,risok,idDomanda)
--values
--(3,"Anderson","Moore","Black","Eastman","Anderson",3),
--(4,"Nolan Sorrento","Ricky Cunningham","Carrol Shelby","Bane","Nolan Sorrento",4);

select	*
from	domande inner join risposte
on		domande.id = risposte.idDomanda;

select	domande.q as "Domanda",
		risposte.ris1 as "Risposta 1",
        risposte.ris2 as "Risposta 2",
        risposte.ris3 as "Risposta 3",
        risposte.ris4 as "Risposta 4",
        domande.punti as "Punti",
        risposte.risok as "Risposta corretta"
from	domande inner join risposte
on		domande.id = risposte.idDomanda;

-- Query per sapere la risposta corretta alla domanda e il valore in punti.
select	domande.q as "Domanda",
        domande.punti as "Punti",
        risposte.risok as "Risposta corretta"
from	domande inner join risposte
on		domande.id = risposte.idDomanda;

create table utenti
(
	id int primary key auto_increment,
    username varchar(100),
    password varchar(100)
);

insert into utenti
(id,username,password)
values
(1,"Anthony Stark","PepperLover"),
(2,"Bruce Banner","OhMyGreenIreland"),
(3,"Ororo Monroe","LetTheStormDescendUponU");

-- La tabella quiz ASSOCIA le tutte le tabelle:
-- Il quiz rappresenta il momento in cui l'utente sostiene la domanda o le domande.
-- Ogni quiz dunque presenta:
-- 1 - IDENTIFICATIVO DEL QUIZ
-- 2 - DATA IN CUI SI TIENE IL QUIZ
-- 3 - UTENTE CHE SOSTIENE IL QUIZ
-- 4 - DOMANDA
-- 5 - RISPOSTA DELL'UTENTE
-- Grazie a questi dati è possibile incrociare tutte le tabelle per ottenere
-- il riepilogo del quiz e contemporaneamente il suo andamento: risp corretta o meno.
create table quiz
(
	id int primary key auto_increment,
    dquiz date,
    idUtente int,
    idDomanda int,
    foreign key(idUtente)
    references utenti(id)
    on delete cascade
    on update cascade,
    foreign key(idDomanda)
    references domande(id)
    on delete cascade
    on update cascade,
    rispUtente varchar(100)
);

insert into quiz
(id,dquiz,idutente,iddomanda,rispUtente)
values
(1,now(),1,2,"Matt Damon"),
(2,now(),1,1,"Gandalf"),
(3,"2025-02-01",2,1,"Radagast"),
(4,now(),2,2,"Harrison Ford");

select	*
from	quiz;

-- Questa query mostra le domande sostenute da ogni utente registrato
-- in una determinata data.
-- Inoltre permette di ottenere i punti totalizzati per singola domanda
-- considerando la risposta data dall'utente rispetto a quella corretta.
-- Se la risposta dell'utente coincide con quella corretta i punti
-- totalizzati corrispondono a quelli predefiniti per la domanda.
-- In caso contrario vengono settati a zero
select	quiz.dquiz as "Data quiz",
		utenti.username as "Utente",
        domande.q as "Domanda",
        quiz.rispUtente as "Risposta utente",
        risposte.risok as "Risposta corretta",
        domande.punti as "Punti domanda",
        if(quiz.rispUtente = risposte.risok,domande.punti,0) as "Punti totalizzati"
from	quiz inner join utenti
on		quiz.idutente = utenti.id
		inner join domande
on		quiz.iddomanda = domande.id
		inner join risposte
on		domande.id = risposte.iddomanda;

select 	distinct domande.id as "idDomanda",
		domande.q as "Domanda",
        risposte.risok as "Risposta corretta"
from	domande inner join risposte
on		domande.id = risposte.idDomanda
where	domande.id = (	select	floor(rand() * (count(*) - 1 + 1)) + 1
						from	domande);

select	floor(rand() * (count(*) - 1 + 1)) + 1
from	domande;

-- Questa query seleziona solo le domande di uno specifico livello
select	domande.id as "idDomanda",
		domande.q as "Domanda",
        risposte.risok as "Risposta corretta",
        domande.punti as "Punti/Livello"
from	domande inner join risposte
on		domande.id = risposte.idDomanda
where	domande.punti = 5;

-- Stessa cosa ma con un range di livelli
-- Il back-end qui recupera eventualmente dall'utente i parametri per il livello
-- andandoli poi a sostituire ai ? nella query
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
