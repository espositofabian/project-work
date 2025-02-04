-- Per Vincenzo
-- Trovare 5 Domande e Risposte per livello di difficoltà. Da 1 a 15. Quindi 75 domande totali.

insert into domande 
(id,q,punti,argomento)
values
-- Difficoltà 1
(1,"Qual è la capitale d'Italia?",1,"Generico"),
(2,"Qual è il colore del cielo in una giornata serena?",1,"Generico"),
(3,"Chi ha scritto Cenerentola?",1,"Generico"),
(4,"Quanto fa 2 + 2?",1,"Generico"),
(5,"Qual è il nome del nostro pianeta?",1,"Generico"),
-- Difficoltà 2
(6,"In quale continente si trova l'Egitto?",2,"Generico"),
(7,"Chi è l'autore de Il Piccolo Principe?",2,"Generico"),
(8,"In che anno è stato lanciato il primo uomo sulla Luna?",2,"Generico"),
(9,"Qual è il simbolo chimico dell'acqua?",2,"Generico"),
(10,"Chi ha dipinto La Gioconda?",2,"Generico"),
-- Difficoltà 3
(11,"Qual è il fiume più lungo del mondo?",3,"Generico"),
(12,"Quale animale è simbolo dell'Australia?",3,"Generico"),
(13,"Qual è il nome del famoso scienziato che ha formulato la teoria della relatività?",3,"Generico"),
(14,"Chi è l'autore del romanzo 1984?",3,"Generico"),
(15,"In quale città si trova la Torre Eiffel?",3,"Generico"),
-- Difficoltà 4
(16,"Qual è la capitale della Spagna?",4,"Generico"),
(17,"In quale anno Cristoforo Colombo scoprì l'America?",4,"Generico"),
(18,"Chi ha scritto Il Conte di Montecristo?",4,"Generico"),
(19,"Qual è il più grande oceano del mondo?",4,"Generico"),
(20,"Quale di questi è un famoso compositore di musica classica?",4,"Generico"),
-- Difficoltà 5
(21,"Chi ha scritto Don Quijote?",5,"Generico"),
(22,"In che anno è caduto il Muro di Berlino?",5,"Generico"),
(23,"Qual è il pianeta più grande del sistema solare?",5,"Generico"),
(24,"In che continente si trova il deserto del Sahara?",5,"Generico"),
(25,"Chi è l'autore de Il Gattopardo?",5,"Generico"),
-- Difficoltà 6
(26,"Quale dei seguenti elementi è un gas nobile?",6,"Generico"),
(27,"Chi è il fondatore della teoria psicoanalitica?",6,"Generico"),
(28,"Dove si trova il Monte Everest?",6,"Generico"),
(29,"Chi è considerato il padre della filosofia occidentale?",6,"Generico"),
(30,"Qual è la capitale dell'Australia?",6,"Generico"),
-- Difficoltà 7
(31,"Qual è il fiume che attraversa Londra?",7,"Generico"),
(32,"Chi ha scritto La Metamorfosi?",7,"Generico"),
(33,"Chi ha inventato la lampadina elettrica?",7,"Generico"),
(34,"Cosa rappresenta il simbolo λ nella fisica?",7,"Generico"),
(35,"Quale dei seguenti è un esempio di animale a sangue freddo?",7,"Generico"),
-- Difficoltà 8
(36,"Qual è la lingua ufficiale del Brasile?",8,"Generico"),
(37,"Chi ha inventato il telefono?",8,"Generico"),
(38,"Qual è la capitale del Giappone?",8,"Generico"),
(39,"Quale di questi è il più grande mammifero terrestre?",8,"Generico"),
(40,"In quale anno è stato proclamato il Regno d'Italia?",8,"Generico"),
-- Difficoltà 9
(41,"Chi ha scritto Il Principe?",9,"Generico"),
(42,"In quale paese si trova la città di Petra?",9,"Generico"),
(43,"Chi ha scritto Ulisse?",9,"Generico"),
(44,"Qual è il nome scientifico del leone?",9,"Generico"),
(45,"Chi ha scritto Moby Dick?",9,"Generico"),
-- Difficoltà 10
(46,"Quale di questi è un'isola del Mediterraneo?",10,"Generico"),
(47,"Chi ha scritto La Divina Commedia?",10,"Generico"),
(48,"Qual è il nome scientifico del cavallo?",10,"Generico"),
(49,"Qual è la capitale della Svezia?",10,"Generico"),
(50,"In quale anno fu scoperta l'America da Cristoforo Colombo?",10,"Generico"),
-- Difficoltà 11
(51,"Chi ha scritto Frankenstein?",11,"Generico"),
(52,"Quale pianeta è noto come il pianeta rosso?",11,"Generico"),
(53,"Qual è il simbolo chimico del ferro?",11,"Generico"),
(54,"Chi ha formulato la legge di gravità?",11,"Generico"),
(55,"Qual è la capitale del Canada?",11,"Generico"),
-- Difficoltà 12
(56,"Quanto fa 2 + 2?",12,"Generico"),
(57,"Quanto fa 2 + 2?",12,"Generico"),
(58,"Quanto fa 2 + 2?",12,"Generico"),
(59,"Quanto fa 2 + 2?",12,"Generico"),
(60,"Quanto fa 2 + 2?",12,"Generico"),
-- Difficoltà 13
(61,"Quanto fa 2 + 2?",13,"Generico"),
(62,"Quanto fa 2 + 2?",13,"Generico"),
(63,"Quanto fa 2 + 2?",13,"Generico"),
(64,"Quanto fa 2 + 2?",13,"Generico"),
(65,"Quanto fa 2 + 2?",13,"Generico"),
-- Difficoltà 14
(66,"Quanto fa 2 + 2?",14,"Generico"),
(67,"Quanto fa 2 + 2?",14,"Generico"),
(68,"Quanto fa 2 + 2?",14,"Generico"),
(69,"Quanto fa 2 + 2?",14,"Generico"),
(70,"Quanto fa 2 + 2?",14,"Generico"),
-- Difficoltà 15
(71,"Quanto fa 2 + 2?",15,"Generico"),
(72,"Quanto fa 2 + 2?",15,"Generico"),
(73,"Quanto fa 2 + 2?",15,"Generico"),
(74,"Quanto fa 2 + 2?",15,"Generico"),
(75,"Quanto fa 2 + 2?",15,"Generico");
insert into risposte 
	(id,risi,ris2,ris3,ris4,risok, idDomanda)
values
-- Difficoltà 1
(1,"Roma","Milano","Napoli","Torino","Roma",1),
(2,"Rosso","Verde","Blu","Giallo","Blu",2),
(3,"Charles Dickens","Hans Christian Andersen","Gianni Rodari","Carlo Collodi","Hans Christian Andersen",3),
(4,"3","4","5","6","4",4),
(5,"Marte","Venere","Terra","Saturno","Terra",5);
-- Difficoltà 2
-- Difficoltà 3
-- Difficoltà 4
-- Difficoltà 5
-- Difficoltà 6
-- Difficoltà 7
-- Difficoltà 8
-- Difficoltà 9
-- Difficoltà 10
-- Difficoltà 11
-- Difficoltà 12
-- Difficoltà 13
-- Difficoltà 14
-- Difficoltà 15

	
