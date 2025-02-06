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

insert into domande 
(id,q,punti,argomento)
values
-- Difficoltà 1
(1, 'Cos\'è un frattale in matematica?', 1, 'Matematica'),
(2, 'Cos\'è la teoria dell\'inflazione cosmica?', 1, 'Astrofisica'),
(3, 'Cosa si intende per "relatività speciale" di Einstein?', 1, 'Fisica'),
(4, 'Che cos\'è un "buco bianco" in astrofisica?', 1, 'Astrofisica'),
(5, 'Cos\'è il principio di indeterminazione di Heisenberg e quale importanza ha?', 1, 'Fisica'),

-- Difficoltà 2
(6, 'Qual è la relazione tra energia e massa secondo la famosa equazione di Einstein?', 2, 'Fisica'),
(7, 'Cos\'è la meccanica celeste e come si applica ai corpi celesti?', 2, 'Astronomia'),
(8, 'Cos\'è la teoria dei giochi e come si applica alla strategia politica?', 2, 'Economia'),
(9, 'Chi ha creato la teoria dell\'inconscio collettivo?', 2, 'Psicologia'),
(10, 'Cos\'è la costante cosmologica di Einstein?', 2, 'Fisica'),

-- Difficoltà 3
(11, 'Cos\'è la legge di Coulomb?', 3, 'Fisica'),
(12, 'Che cos\'è un acceleratore di particelle e a cosa serve?', 3, 'Fisica'),
(13, 'Cos\'è la "paradoja de Monty Hall" e come funziona?', 3, 'Matematica'),
(14, 'Cos\'è l\'effetto tunneling quantistico?', 3, 'Fisica Quantistica'),
(15, 'Cosa si intende per "teoria delle probabilità frequenzialista"?', 3, 'Matematica'),

-- Difficoltà 4
(16, 'Cos\'è un buco nero accretion disk?', 4, 'Astrofisica'),
(17, 'Cos\'è la materia oscura e come si differenzia dall\'energia oscura?', 4, 'Astrofisica'),
(18, 'Cos\'è la "paradosso di Zeno" e come influisce sulla filosofia?', 4, 'Filosofia'),
(19, 'Chi ha sviluppato il concetto di "volontà di potenza" nella filosofia?', 4, 'Filosofia'),
(20, 'Cos\'è il concetto di "evoluzione convergente"?', 4, 'Biologia'),

-- Difficoltà 5
(21, 'Cos\'è il principio di massima entropia?', 5, 'Fisica'),
(22, 'Cos\'è la teoria delle probabilità di Bayes?', 5, 'Matematica'),
(23, 'Che cosa sono i numeri primi e come si comportano in una sequenza?', 5, 'Matematica'),
(24, 'Qual è la funzione principale dell\'ATP nelle cellule?', 5, 'Biologia'),
(25, 'Cos\'è l\'entanglement quantistico?', 5, 'Fisica Quantistica'),

-- Difficoltà 6
(26, 'Cos\'è la costante di Planck?', 6, 'Fisica'),
(27, 'Cos\'è la teoria delle superstringhe?', 6, 'Fisica'),
(28, 'Cos\'è la "grande unificazione" in fisica?', 6, 'Fisica'),
(29, 'Cos\'è un bosone di Higgs?', 6, 'Fisica'),
(30, 'Chi ha sviluppato la teoria del caos?', 6, 'Matematica'),

-- Difficoltà 7
(31, 'Cos\'è la visione del mondo nell\'imperialismo del XIX secolo?', 7, 'Storia'),
(32, 'Come funziona il principio di invarianza di Lorentz?', 7, 'Fisica'),
(33, 'Cos\'è la meccanica quantistica e come si differenzia dalla meccanica classica?', 7, 'Fisica'),
(34, 'Cos\'è la legge fondamentale della termodinamica?', 7, 'Fisica'),
(35, 'Qual è la relazione tra le leggi di Newton e quelle della relatività generale?', 7, 'Fisica'),

-- Difficoltà 8
(36, 'In che modo la teoria della relatività generale predice la curvatura della luce?', 8, 'Fisica'),
(37, 'Cos\'è un buco nero di Schwarzschild?', 8, 'Astrofisica'),
(38, 'Chi ha sviluppato la teoria dell\'impulso in fisica?', 8, 'Fisica'),
(39, 'Quali sono le principali differenze tra il capitalismo e il socialismo?', 8, 'Politica'),
(40, 'Come funziona il processo di fotosintesi nelle piante?', 8, 'Biologia'),

-- Difficoltà 9
(41, 'Qual è il teorema di Gödel?', 9, 'Matematica'),
(42, 'Cosa significa la teoria del "Big Bang" per l\'origine dell\'universo?', 9, 'Astrofisica'),
(43, 'Cos\'è il paradosso delle gemelle in relazione alla relatività?', 9, 'Fisica'),
(44, 'Qual è la legge di Coulomb?', 9, 'Fisica'),
(45, 'Cos\'è la teoria delle probabilità di Bayes?', 9, 'Matematica'),

-- Difficoltà 10
(46, 'Cosa si intende per spazio-tempo curvato?', 10, 'Fisica'),
(47, 'Chi ha scritto il "Capitale" e quale è la sua principale tesi?', 10, 'Filosofia/Politica'),
(48, 'Cos\'è il modello standard della fisica delle particelle?', 10, 'Fisica'),
(49, 'Cos\'è il paradosso di Fermi sulla vita extraterrestre?', 10, 'Astrofisica'),
(50, 'Cosa si intende per energia oscura?', 10, 'Astrofisica'),

-- Difficoltà 11
(51, 'In che anno fu fondato l\'impero Mongolo?', 11, 'Storia'),
(52, 'Cosa significa la teoria della "falsificabilità" proposta da Popper?', 11, 'Filosofia della scienza'),
(53, 'Cos\'è l\'assialità di una curva nello spazio-tempo?', 11, 'Fisica'),
(54, 'Cosa si intende per "paradosso di Schrödinger"?', 11, 'Fisica Quantistica'),
(55, 'Cos\'è il principio di indeterminazione di Heisenberg?', 11, 'Fisica'),

-- Difficoltà 12
(56, 'Come si calcola l\'entropia in un sistema chiuso?', 12, 'Fisica'),
(57, 'Cosa significa la "teoria del campo unificato" di Einstein?', 12, 'Fisica'),
(58, 'Cosa sono le stringhe in fisica teorica?', 12, 'Fisica'),
(59, 'Cos\'è il teorema di Fermat sull\'ultimo teorema?', 12, 'Matematica'),
(60, 'Chi è considerato il padre della teoria evolutiva delle specie?', 12, 'Biologia'),

-- Difficoltà 13
(61, 'Chi ha sviluppato la teoria della relatività generale?', 13, 'Fisica'),
(62, 'Cos\'è il principio di invarianza di Lorentz?', 13, 'Fisica'),
(63, 'Cos\'è la meccanica quantistica e come si differenzia dalla meccanica classica?', 13, 'Fisica'),
(64, 'Qual è la definizione di "paradosso di Gödel"?', 13, 'Matematica'),
(65, 'Cosa significa la teoria delle probabilità frequenzialista?', 13, 'Matematica'),

-- Difficoltà 14
(66, 'Qual è la seconda legge della termodinamica?', 14, 'Fisica'),
(67, 'Che cos\'è il principio di entropia in fisica?', 14, 'Fisica'),
(68, 'In che anno fu scritta la "Critica della ragion pura" di Kant?', 14, 'Filosofia'),
(69, 'Che cos\'è la teoria del caos?', 14, 'Matematica'),
(70, 'Cosa si intende per "singolarità gravitazionale" in un buco nero?', 14, 'Astrofisica'),

-- Difficoltà 15
(71, 'Cos\'è la "teoria delle stringhe" in fisica?', 15, 'Fisica'),
(72, 'Qual è il teorema di Gödel e perché è così importante?', 15, 'Matematica'),
(73, 'Cos\'è il paradosso di Fermi sulla vita extraterrestre?', 15, 'Astrofisica'),
(74, 'Che cos\'è l\'entropia in un sistema chiuso e come influisce sul secondo principio della termodinamica?', 15, 'Fisica'),
(75, 'Cosa si intende per energia oscura?', 15, 'Astrofisica');

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

insert into risposte 
	(id,ris1,ris2,ris3,ris4,risok,idDomanda)
values
-- Difficoltà 1
(1, 'Un oggetto che si ripete su scala infinita', 'Un oggetto che si ripete in maniera finita', 'Un oggetto che si ripete in maniera casuale', 'Un oggetto che cresce senza fine', 'Un oggetto che si ripete su scala infinita', 1),
(2, 'Una teoria sulla crescita dell\'universo dopo il Big Bang', 'Una teoria sul movimento delle stelle', 'Una teoria sulla formazione dei buchi neri', 'Una teoria che afferma che l\'universo è statico', 'Una teoria sulla crescita dell\'universo dopo il Big Bang', 2),
(3, 'Una teoria che descrive come la velocità della luce sia invariabile per tutti gli osservatori', 'Una teoria che descrive il movimento delle particelle subatomiche', 'Una teoria sulla forza gravitazionale', 'Una teoria che descrive l\'evoluzione dell\'universo', 'Una teoria che descrive come la velocità della luce sia invariabile per tutti gli osservatori', 3),
(4, 'Un buco nero che emette luce', 'Un punto nello spazio dove la materia è densa e non emette radiazioni', 'Un punto nello spazio dove la gravità è più forte', 'Una stella che esplode e diventa invisibile', 'Un punto nello spazio dove la materia è densa e non emette radiazioni', 4),
(5, 'Una legge della fisica che afferma che la posizione di una particella non può essere determinata con precisione assoluta', 'Una legge che descrive il moto dei pianeti', 'Una legge che descrive il movimento delle particelle', 'Una legge che afferma che le particelle si muovono in modo determinato', 'Una legge della fisica che afferma che la posizione di una particella non può essere determinata con precisione assoluta', 5),

-- Difficoltà 2
(6, 'E=mc^2', 'F=ma', 'v=d/t', 'p=mv', 'E=mc^2', 6),
(7, 'La meccanica celeste si occupa della gravità tra corpi celesti', 'La meccanica celeste si occupa del movimento delle onde sonore', 'La meccanica celeste si occupa delle interazioni tra particelle subatomiche', 'La meccanica celeste si occupa della teoria dell\'evoluzione delle stelle', 'La meccanica celeste si occupa della gravità tra corpi celesti', 7),
(8, 'Una teoria economica che descrive il comportamento razionale degli individui', 'Una teoria filosofica che descrive il comportamento umano', 'Una teoria che analizza il comportamento di un sistema economico', 'Una teoria che descrive la produzione e distribuzione di beni', 'Una teoria economica che descrive il comportamento razionale degli individui', 8),
(9, 'Carl Jung', 'Sigmund Freud', 'Abraham Maslow', 'John Locke', 'Carl Jung', 9),
(10, 'Una costante che rappresenta l\'accelerazione gravitazionale nell\'universo', 'Una costante che descrive l\'energia della materia', 'Una costante che descrive la velocità della luce', 'Una costante che si trova nelle equazioni di campo di Einstein', 'Una costante che si trova nelle equazioni di campo di Einstein', 10),

-- Difficoltà 3
(11, 'Una legge che descrive la forza tra due cariche elettriche', 'Una legge che descrive la velocità di un oggetto', 'Una legge che descrive la quantità di moto di un corpo', 'Una legge che descrive la forza gravitazionale tra due corpi', 'Una legge che descrive la forza tra due cariche elettriche', 11),
(12, 'Un dispositivo che accelera particelle a velocità prossime a quella della luce', 'Un dispositivo che misura la temperatura', 'Un dispositivo che misura l\'accelerazione di particelle subatomiche', 'Un dispositivo che studia i movimenti dei corpi celesti', 'Un dispositivo che accelera particelle a velocità prossime a quella della luce', 12),
(13, 'Un problema di probabilità che descrive un gioco con tre porte e una probabilità di successo del 33%', 'Un problema di probabilità che descrive un gioco con due porte e una probabilità di successo del 50%', 'Un problema di probabilità che descrive un gioco con quattro porte e probabilità di successo del 25%', 'Un problema di probabilità che descrive un gioco con un solo dado', 'Un problema di probabilità che descrive un gioco con tre porte e una probabilità di successo del 33%', 13),
(14, 'Il fenomeno per cui una particella può "passare" attraverso una barriera di energia anche se non dovrebbe riuscirci secondo la fisica classica', 'Un fenomeno che descrive la vibrazione di una particella su un piano', 'Un fenomeno che descrive il cambiamento di direzione di una particella', 'Un fenomeno che descrive il rallentamento di una particella quando incontra una barriera', 'Il fenomeno per cui una particella può "passare" attraverso una barriera di energia anche se non dovrebbe riuscirci secondo la fisica classica', 14),
(15, 'Una visione probabilistica della realtà', 'Una visione deterministica della realtà', 'Una visione aleatoria della realtà', 'Una visione romantica della realtà', 'Una visione probabilistica della realtà', 15),

-- Difficoltà 4
(16, 'Un disco di materia che circonda un buco nero e ne aumenta la massa', 'Un buco nero che emette particelle di luce', 'Un buco nero che emette onde gravitazionali', 'Un buco nero che si espande all\'infinito', 'Un disco di materia che circonda un buco nero e ne aumenta la massa', 16),
(17, 'La materia oscura è una forma di materia che non interagisce con la luce, mentre l\"energia oscura è una forza che accelera l\'espansione dell\'universo', 'La materia oscura è la materia che possiamo osservare, mentre l\'energia oscura è invisibile', 'La materia oscura è una forma di energia, mentre l\'energia oscura è una forma di materia', 'La materia oscura è una forza gravitazionale', 'La materia oscura è una forma di materia che non interagisce con la luce, mentre l\'energia oscura è una forza che accelera l\'espansione dell\'universo', 17),
(18, 'Un paradosso che afferma che due oggetti in movimento non possono mai raggiungere il loro obiettivo', 'Un paradosso che afferma che ogni movimento è un illusione', 'Un paradosso che afferma che gli oggetti possono percorrere un infinito numero di metà distanze', 'Un paradosso che afferma che un oggetto fermo può muoversi velocemente', 'Un paradosso che afferma che gli oggetti possono percorrere un infinito numero di metà distanze', 18),
(19, 'Friedrich Nietzsche', 'Martin Heidegger', 'Jean-Paul Sartre', 'Immanuel Kant', 'Friedrich Nietzsche', 19),
(20, 'Levoluzione convergente è un fenomeno biologico in cui organismi diversi sviluppano caratteristiche simili a causa di pressioni ambientali simili', 'L\'evoluzione convergente è un fenomeno dove gli organismi si evolvono in direzioni opposte', 'L\'evoluzione convergente è un processo che porta alla creazione di nuove specie', 'L\'evoluzione convergente è il processo che porta alla completa scomparsa di una specie', 'L\'evoluzione convergente è un fenomeno biologico in cui organismi diversi sviluppano caratteristiche simili a causa di pressioni ambientali simili', 20),

-- Difficoltà 5
(21, 'Una legge che stabilisce che energia e massa sono equivalenti', 'Una legge che stabilisce che la massa non può essere trasformata in energia', 'Una legge che descrive la forza gravitazionale tra corpi', 'Una legge che stabilisce che la velocità della luce è variabile', 'Una legge che stabilisce che energia e massa sono equivalenti', 21),
(22, 'Una formula che descrive le probabilità di eventi condizionati', 'Una formula che descrive la probabilità di eventi indipendenti', 'Una formula che descrive la probabilità di eventi impossibili', 'Una formula che descrive il calcolo della media in una distribuzione statistica', 'Una formula che descrive le probabilità di eventi condizionati', 22),
(23, 'Un numero che solo può essere diviso per 1 e per se stesso', 'Un numero che può essere diviso per altri numeri oltre a 1 e se stesso', 'Un numero che può essere diviso solo da se stesso', 'Un numero che non può essere diviso da nessun altro numero', 'Un numero che solo può essere diviso per 1 e per se stesso', 23),
(24, 'L\'ATP è una molecola che fornisce energia per i processi cellulari', 'L\'ATP è una proteina che aiuta nel trasporto delle sostanze', 'L\'ATP è un acido nucleico che trasmette segnali tra le cellule', 'L\'ATP è un lipide che costituisce la membrana cellulare', 'L\'ATP è una molecola che fornisce energia per i processi cellulari', 24),
(25, 'Un fenomeno in cui due particelle diventano interconnesse e il loro stato è mutuamente dipendente', 'Un fenomeno che descrive la collisione di particelle in acceleratori', 'Un fenomeno che descrive l\'oscillazione di particelle in un campo magnetico', 'Un fenomeno che descrive la separazione di particelle in un campo elettrico', 'Un fenomeno in cui due particelle diventano interconnesse e il loro stato è mutuamente dipendente', 25),

-- Difficoltà 6
(26, 'Una costante fondamentale che collega energia e frequenza nelle onde elettromagnetiche', 'Una costante che descrive la velocità delle particelle', 'Una costante che rappresenta la massa dei quark', 'Una costante che regola l\'accelerazione gravitazionale', 'Una costante fondamentale che collega energia e frequenza nelle onde elettromagnetiche', 26),
(27, 'Una teoria che propone che le particelle fondamentali sono in realtà vibrazioni di stringhe unidimensionali', 'Una teoria che spiega la curvatura dello spazio-tempo', 'Una teoria che descrive le interazioni elettromagnetiche tra particelle', 'Una teoria che prevede la creazione di buchi neri', 'Una teoria che propone che le particelle fondamentali sono in realtà vibrazioni di stringhe unidimensionali', 27),
(28, 'Una teoria che cerca di unificare tutte le forze fondamentali della natura', 'Una teoria che cerca di descrivere la gravitazione come una forza ondulatoria', 'Una teoria che descrive la singolarità dei buchi neri', 'Una teoria che unifica solo le forze nucleari', 'Una teoria che cerca di unificare tutte le forze fondamentali della natura', 28),
(29, 'Una particella che interagisce con il campo di Higgs per conferire massa alle altre particelle', 'Una particella che esprime la gravità', 'Una particella che assorbe energia elettromagnetica', 'Una particella che agisce come trasportatore delle forze nucleari', 'Una particella che interagisce con il campo di Higgs per conferire massa alle altre particelle', 29),
(30, 'Un teorema che stabilisce che non esiste un algoritmo che possa risolvere tutti i problemi matematici', 'Un teorema che stabilisce che esistono numeri irrazionali', 'Un teorema che stabilisce che tutte le soluzioni di un sistema lineare sono uniche', 'Un teorema che stabilisce che ogni equazione di secondo grado ha due soluzioni', 'Un teorema che stabilisce che non esiste un algoritmo che possa risolvere tutti i problemi matematici', 30),

-- Difficulty 7
(31, 'Il 1200 d.C. durante l\'espansione del dominio di Gengis Khan', 'Il 1400 d.C. durante l\'espansione dell\'Impero Ottomano', 'Il 1100 d.C. durante l\'invasione dei Normanni', 'Il 1800 d.C. durante la dominazione coloniale europea', 'Il 1200 d.C. durante l\'espansione del dominio di Gengis Khan', 31),
(32, 'Una legge che afferma che le leggi della fisica sono le stesse per tutti gli osservatori in movimento relativo uniforme', 'Una legge che afferma che la velocità della luce è variabile a seconda dell\'osservatore', 'Una legge che afferma che la massa è invariabile durante il movimento', 'Una legge che afferma che il tempo non è relativo', 'Una legge che afferma che le leggi della fisica sono le stesse per tutti gli osservatori in movimento relativo uniforme', 32),
(33, 'Un insieme di leggi che descrivono il comportamento di oggetti molto piccoli e l\'interazione tra materia e radiazioni', 'Un insieme di leggi che descrivono il comportamento di oggetti visibili nell\'universo', 'Un insieme di leggi che descrivono solo il comportamento dei corpi in movimento', 'Un insieme di leggi che descrivono il comportamento delle onde acustiche', 'Un insieme di leggi che descrivono il comportamento di oggetti molto piccoli e l\'interazione tra materia e radiazioni', 33),
(34, 'La legge che descrive l\'energia interna di un sistema termodinamico', 'La legge che descrive l\'entropia di un sistema chiuso', 'La legge che descrive la trasformazione della materia in energia', 'La legge che descrive la velocità di un corpo in caduta libera', 'La legge che descrive l\'energia interna di un sistema termodinamico', 34),
(35, 'Le leggi di Newton sono un caso speciale della relatività generale', 'Le leggi di Newton sono contrarie alle leggi della relatività generale', 'Le leggi di Newton e la relatività generale sono indistinguibili', 'Le leggi di Newton si applicano solo a corpi molto massicci', 'Le leggi di Newton sono un caso speciale della relatività generale', 35),

-- Difficulty 8
(36, 'La relatività generale prevede che la luce segua una traiettoria curva in presenza di un campo gravitazionale', 'La relatività speciale prevede che la luce non si curvi', 'La relatività generale non ha alcun effetto sulla luce', 'La relatività speciale predice che la luce si sposta in linea retta', 'La relatività generale prevede che la luce segua una traiettoria curva in presenza di un campo gravitazionale', 36),
(37, 'Un buco nero di Schwarzschild è una soluzione delle equazioni di Einstein che descrive un buco nero senza carica o rotazione', 'Un buco nero di Schwarzschild è una stella che collassa', 'Un buco nero di Schwarzschild è un buco nero che emette luce', 'Un buco nero di Schwarzschild è un tipo di stella che non può essere osservato', 'Un buco nero di Schwarzschild è una soluzione delle equazioni di Einstein che descrive un buco nero senza carica o rotazione', 37),
(38, 'Ernest Rutherford', 'Niels Bohr', 'Max Planck', 'Albert Einstein', 'Ernest Rutherford', 38),
(39, 'La fotosintesi è il processo con cui le piante trasformano l\'energia solare in energia chimica', 'La fotosintesi è il processo con cui le piante catturano anidride carbonica', 'La fotosintesi è il processo con cui le piante liberano ossigeno', 'La fotosintesi è il processo che avviene nel cuore delle piante', 'La fotosintesi è il processo con cui le piante trasformano l\'energia solare in energia chimica', 39),
(40, 'Le piante convertono il carbonio in zuccheri durante il processo fotosintetico, utilizzando la luce solare come energia', 'Le piante convertono il carbonio in ossigeno durante il processo fotosintetico', 'Le piante convertono l\'energia solare in calore durante il processo fotosintetico', 'Le piante convertono l\'energia solare in ossigeno durante il processo fotosintetico', 'Le piante convertono il carbonio in zuccheri durante il processo fotosintetico, utilizzando la luce solare come energia', 40),

-- Difficulty 9
(41, 'Il principio di indeterminazione di Heisenberg stabilisce che non è possibile conoscere simultaneamente la posizione e la velocità di una particella con precisione arbitraria', 'Il principio di indeterminazione di Heisenberg stabilisce che la velocità di una particella è sempre zero', 'Il principio di indeterminazione di Heisenberg stabilisce che possiamo determinare con precisione la posizione ma non la velocità', 'Il principio di indeterminazione di Heisenberg stabilisce che le particelle non hanno massa', 'Il principio di indeterminazione di Heisenberg stabilisce che non è possibile conoscere simultaneamente la posizione e la velocità di una particella con precisione arbitraria', 41),
(42, 'L\'entropia è una misura del disordine di un sistema e aumenta nel tempo', 'L\'entropia è una misura dell\'ordine di un sistema e diminuisce nel tempo', 'L\'entropia è una costante fisica che descrive la quantità di materia in un sistema', 'L\'entropia è una misura della temperatura di un sistema', 'L\'entropia è una misura del disordine di un sistema e aumenta nel tempo', 42),
(43, 'La congettura di Poincaré è una proposta che riguarda la topologia delle varietà', 'La congettura di Poincaré riguarda la geometria euclidea in tre dimensioni', 'La congettura di Poincaré è una teoria sulla gravità', 'La congettura di Poincaré è una teoria sulla meccanica quantistica', 'La congettura di Poincaré è una proposta che riguarda la topologia delle varietà', 43),
(44, 'L\'energia oscura è una forma di energia misteriosa che accelera l\'espansione dell\'universo', 'L\'energia oscura è una forza che contrasta la gravità', 'L\'energia oscura è una forma di materia che si comporta come la materia normale', 'L\'energia oscura è una manifestazione della radiazione cosmica di fondo', 'L\'energia oscura è una forma di energia misteriosa che accelera l\'espansione dell\'universo', 44),
(45, 'La teoria delle stringhe suggerisce che le particelle fondamentali non sono punti, ma piccole stringhe che vibrano in dimensioni multiple', 'La teoria delle stringhe suggerisce che le particelle fondamentali sono composte da altre particelle', 'La teoria delle stringhe afferma che le particelle sono punti senza dimensioni', 'La teoria delle stringhe descrive la materia come composta solo di fotoni', 'La teoria delle stringhe suggerisce che le particelle fondamentali non sono punti, ma piccole stringhe che vibrano in dimensioni multiple', 45),

-- Difficulty 10
(46, 'La materia oscura rappresenta il 27% della massa-energia dell\'universo e non interagisce con la luce', 'La materia oscura è composta da particelle simili agli elettroni', 'La materia oscura è un tipo di radiazione che permea l\'universo', 'La materia oscura è un fenomeno legato esclusivamente alla gravità dei buchi neri', 'La materia oscura rappresenta il 27% della massa-energia dell\'universo e non interagisce con la luce', 46),
(47, 'La teoria della relatività ristretta di Einstein descrive come le leggi della fisica siano le stesse per tutti gli osservatori in movimento relativo uniforme', 'La teoria della relatività ristretta di Einstein si applica solo ai corpi in stato di quiete', 'La teoria della relatività ristretta di Einstein afferma che la velocità della luce può variare in base al movimento dell\'osservatore', 'La teoria della relatività ristretta di Einstein suggerisce che il tempo è relativo solo a oggetti molto piccoli', 'La teoria della relatività ristretta di Einstein descrive come le leggi della fisica siano le stesse per tutti gli osservatori in movimento relativo uniforme', 47),
(48, 'Il principio di equivalenza in relatività generale afferma che la gravità e l\'accelerazione sono indistinguibili', 'Il principio di equivalenza in relatività generale stabilisce che non esiste alcuna forza gravitazionale', 'Il principio di equivalenza in relatività generale afferma che il tempo non scorre in modo uniforme', 'Il principio di equivalenza in relatività generale è un postulato che riguarda solo i corpi in movimento uniforme', 'Il principio di equivalenza in relatività generale afferma che la gravità e l\'accelerazione sono indistinguibili', 48),
(49, 'Il paradosso dei gemelli descrive un effetto in cui uno dei gemelli in viaggio spaziale invecchia più lentamente rispetto all\'altro', 'Il paradosso dei gemelli descrive un effetto in cui entrambi i gemelli invecchiano alla stessa velocità', 'Il paradosso dei gemelli afferma che il tempo non cambia durante il viaggio spaziale', 'Il paradosso dei gemelli afferma che il tempo scorre più velocemente nello spazio', 'Il paradosso dei gemelli descrive un effetto in cui uno dei gemelli in viaggio spaziale invecchia più lentamente rispetto all\'altro', 49),
(50, 'La teoria delle superstringhe è una proposta che cerca di unificare la gravità con le altre forze fondamentali della natura', 'La teoria delle superstringhe è una proposta che descrive solo la forza gravitazionale', 'La teoria delle superstringhe è una proposta che riguarda esclusivamente le particelle subatomiche', 'La teoria delle superstringhe è una teoria che cerca di spiegare solo le particelle cariche', 'La teoria delle superstringhe è una proposta che cerca di unificare la gravità con le altre forze fondamentali della natura', 50),

-- Difficulty 11
(51, 'La teoria delle bolle inflazionistiche descrive come l\'universo primordiale si sia espanso enormemente in un brevissimo periodo di tempo', 'La teoria delle bolle inflazionistiche è una descrizione della formazione dei pianeti', 'La teoria delle bolle inflazionistiche riguarda solo la fisica delle particelle', 'La teoria delle bolle inflazionistiche afferma che l\'universo è sempre stato statico', 'La teoria delle bolle inflazionistiche descrive come l\'universo primordiale si sia espanso enormemente in un brevissimo periodo di tempo', 51),
(52, 'Le equazioni di campo di Einstein sono alla base della relatività generale e descrivono come la gravità sia una curvatura dello spazio-tempo causata dalla massa e dall\'energia', 'Le equazioni di campo di Einstein sono una descrizione della velocità di rotazione dei corpi celesti', 'Le equazioni di campo di Einstein descrivono solo la forma della gravità tra corpi fermi', 'Le equazioni di campo di Einstein sono una descrizione dell\'attrito tra particelle', 'Le equazioni di campo di Einstein sono alla base della relatività generale e descrivono come la gravità sia una curvatura dello spazio-tempo causata dalla massa e dall\'energia', 52),
(53, 'Il bosone di Higgs conferisce massa alle particelle fondamentali attraverso il campo di Higgs', 'Il bosone di Higgs è un tipo di radiazione che permea l\'universo', 'Il bosone di Higgs è una particella che annulla la massa delle particelle', 'Il bosone di Higgs è un tipo di fotone che media la forza elettromagnetica', 'Il bosone di Higgs conferisce massa alle particelle fondamentali attraverso il campo di Higgs', 53),
(54, 'Il principio di esclusione di Pauli stabilisce che due particelle identiche, come gli elettroni, non possono occupare lo stesso stato quantistico contemporaneamente', 'Il principio di esclusione di Pauli stabilisce che le particelle devono sempre occupare lo stesso stato quantistico', 'Il principio di esclusione di Pauli riguarda solo particelle con cariche opposte', 'Il principio di esclusione di Pauli descrive la posizione di una particella', 'Il principio di esclusione di Pauli stabilisce che due particelle identiche, come gli elettroni, non possono occupare lo stesso stato quantistico contemporaneamente', 54),
(55, 'Un buco nero supermassiccio è un buco nero che contiene milioni o miliardi di masse solari e si trova al centro della maggior parte delle galassie', 'Un buco nero supermassiccio è un buco nero con una massa pari a quella di una stella', 'Un buco nero supermassiccio è un buco nero che non ha effetti gravitazionali su altri corpi celesti', 'Un buco nero supermassiccio è un tipo di stella in fase di morte', 'Un buco nero supermassiccio è un buco nero che contiene milioni o miliardi di masse solari e si trova al centro della maggior parte delle galassie', 55),

-- Difficulty 12
(56, 'La teoria delle brane afferma che il nostro universo potrebbe essere una membrana tridimensionale all\'interno di un universo con dimensioni superiori', 'La teoria delle brane afferma che esistono solo universi bidimensionali', 'La teoria delle brane descrive solo il movimento delle particelle subatomiche', 'La teoria delle brane afferma che il nostro universo è l\'unico esistente', 'La teoria delle brane afferma che il nostro universo potrebbe essere una membrana tridimensionale all\'interno di un universo con dimensioni superiori', 56),
(57, 'Il principio di causalità in relatività stabilisce che gli eventi causali devono avvenire in un ordine coerente in tutti i sistemi di riferimento', 'Il principio di causalità stabilisce che il tempo è relativo e non ha un ordine definito', 'Il principio di causalità stabilisce che gli eventi non hanno nessuna relazione tra loro', 'Il principio di causalità stabilisce che gli eventi avvengono simultaneamente per tutti gli osservatori', 'Il principio di causalità in relatività stabilisce che gli eventi causali devono avvenire in un ordine coerente in tutti i sistemi di riferimento', 57),
(58, 'Il multiverso è la teoria che suggerisce l\'esistenza di infiniti universi paralleli oltre al nostro', 'Il multiverso è la teoria che suggerisce che esistono diversi universi unici e separati', 'Il multiverso è la teoria che suggerisce che il nostro universo è l\'unico esistente', 'Il multiverso è la teoria che suggerisce che tutti gli universi sono uniti da una forza gravitazionale comune', 'Il multiverso è la teoria che suggerisce l\'esistenza di infiniti universi paralleli oltre al nostro', 58),
(59, 'Il paradosso di Fermi riguarda l\'apparente contraddizione tra l\'alta probabilità dell\'esistenza di civiltà extraterrestri e la mancanza di prove della loro esistenza', 'Il paradosso di Fermi riguarda la velocità di espansione dell\'universo', 'Il paradosso di Fermi riguarda la distribuzione delle stelle all\'interno della galassia', 'Il paradosso di Fermi riguarda l\'accrescimento dei buchi neri', 'Il paradosso di Fermi riguarda l\'apparente contraddizione tra l\'alta probabilità dell\'esistenza di civiltà extraterrestri e la mancanza di prove della loro esistenza', 59),
(60, 'Il modello standard della fisica delle particelle descrive tutte le particelle fondamentali conosciute e le loro interazioni, ad eccezione della gravità', 'Il modello standard descrive solo le interazioni elettromagnetiche tra le particelle', 'Il modello standard della fisica descrive tutte le forze tranne la forza nucleare forte', 'Il modello standard descrive solo le particelle di massa maggiore', 'Il modello standard della fisica delle particelle descrive tutte le particelle fondamentali conosciute e le loro interazioni, ad eccezione della gravità', 60),

-- Difficulty 13
(61, 'La teoria della gravitazione quantistica è un campo di ricerca che tenta di unificare la teoria della relatività generale e la meccanica quantistica', 'La teoria della gravitazione quantistica è una teoria che descrive solo la gravità su larga scala', 'La teoria della gravitazione quantistica è un concetto che è stato abbandonato dalla fisica moderna', 'La teoria della gravitazione quantistica è un modello che descrive le particelle come onde stazionarie', 'La teoria della gravitazione quantistica è un campo di ricerca che tenta di unificare la teoria della relatività generale e la meccanica quantistica', 61),
(62, 'La cosmologia inflazionaria spiega l\'accelerazione dell\'espansione dell\'universo attraverso una fase di espansione esponenziale nei primi istanti dopo il Big Bang', 'La cosmologia inflazionaria è una teoria che suggerisce l\'accelerazione gravitazionale durante la formazione delle stelle', 'La cosmologia inflazionaria è una teoria che spiega la formazione di buchi neri', 'La cosmologia inflazionaria descrive il comportamento delle particelle subatomiche in un sistema gravitazionale', 'La cosmologia inflazionaria spiega l\'accelerazione dell\'espansione dell\'universo attraverso una fase di espansione esponenziale nei primi istanti dopo il Big Bang', 62),
(63, 'Il paradosso di Klein-Gordon riguarda la relazione tra la teoria quantistica dei campi e la relatività ristretta', 'Il paradosso di Klein-Gordon riguarda l\'interazione gravitazionale tra particelle di massa', 'Il paradosso di Klein-Gordon descrive la collisione di particelle ad alta energia', 'Il paradosso di Klein-Gordon riguarda il comportamento di particelle a velocità superiori alla luce', 'Il paradosso di Klein-Gordon riguarda la relazione tra la teoria quantistica dei campi e la relatività ristretta', 63),
(64, 'La teoria delle dimensioni extra postula che il nostro universo sia immerso in dimensioni superiori oltre le tre spaziali e una temporale che siamo abituati a conoscere', 'La teoria delle dimensioni extra afferma che l\'universo è limitato a sole tre dimensioni spaziali e una temporale', 'La teoria delle dimensioni extra è un concetto che si applica solo alla teoria dei buchi neri', 'La teoria delle dimensioni extra postula che l\'universo sia composto solo di dimensioni temporali', 'La teoria delle dimensioni extra postula che il nostro universo sia immerso in dimensioni superiori oltre le tre spaziali e una temporale che siamo abituati a conoscere', 64),
(65, 'Il teorema di Gödel sull\'incompletezza afferma che esistono affermazioni che non possono essere né dimostrate né smentite all\'interno di un sistema formale', 'Il teorema di Gödel afferma che qualsiasi sistema formale è sempre completo e consistente', 'Il teorema di Gödel riguarda solo l\'analisi dei numeri complessi', 'Il teorema di Gödel afferma che esistono solo teorie incomplete', 'Il teorema di Gödel sull\'incompletezza afferma che esistono affermazioni che non possono essere né dimostrate né smentite all\'interno di un sistema formale', 65),

-- Difficulty 14
(66, 'La teoria delle supergravità è una teoria che cerca di unificare la gravità con la supersimmetria e la teoria delle stringhe', 'La teoria delle supergravità si concentra solo sullo studio delle particelle cariche', 'La teoria delle supergravità è un modello che descrive il comportamento delle stelle', 'La teoria delle supergravità è un campo che studia esclusivamente le onde gravitazionali', 'La teoria delle supergravità è una teoria che cerca di unificare la gravità con la supersimmetria e la teoria delle stringhe', 66),
(67, 'La congettura di Hodge è una congettura importante nella topologia algebrica che riguarda la struttura delle varietà complesse', 'La congettura di Hodge riguarda le particelle subatomiche e il loro comportamento in campi magnetici', 'La congettura di Hodge è un teorema che descrive la curvatura dello spazio-tempo', 'La congettura di Hodge riguarda la teoria della relatività e la curvatura gravitazionale', 'La congettura di Hodge è una congettura importante nella topologia algebrica che riguarda la struttura delle varietà complesse', 67),
(68, 'Il paradosso di Black Hole Information Loss suggerisce che l\'informazione riguardante gli oggetti che cadono in un buco nero potrebbe essere persa per sempre', 'Il paradosso di Black Hole Information Loss suggerisce che l\'informazione viene conservata in buchi neri', 'Il paradosso di Black Hole Information Loss riguarda solo l\'energia delle stelle', 'Il paradosso di Black Hole Information Loss riguarda la fusione di buchi neri', 'Il paradosso di Black Hole Information Loss suggerisce che l\'informazione riguardante gli oggetti che cadono in un buco nero potrebbe essere persa per sempre', 68),
(69, 'La teoria del tutto è una teoria che cerca di unificare tutte le forze fondamentali della natura in un unico quadro teorico', 'La teoria del tutto è una teoria che descrive solo la forza gravitazionale', 'La teoria del tutto si concentra esclusivamente sulle particelle subatomiche', 'La teoria del tutto è una teoria che riguarda solo la fisica quantistica', 'La teoria del tutto è una teoria che cerca di unificare tutte le forze fondamentali della natura in un unico quadro teorico', 69),
(70, 'Il principio di Bell afferma che non esistono teorie nascoste locali che possano spiegare i risultati degli esperimenti di entanglement quantistico', 'Il principio di Bell afferma che tutte le particelle sono uguali e non hanno proprietà individuali', 'Il principio di Bell riguarda solo la teoria della relatività generale', 'Il principio di Bell afferma che le particelle possono viaggiare più velocemente della luce', 'Il principio di Bell afferma che non esistono teorie nascoste locali che possano spiegare i risultati degli esperimenti di entanglement quantistico', 70),

-- Difficulty 15
(71, 'Il principio di dualità onda-particella stabilisce che tutte le particelle subatomiche mostrano caratteristiche sia di particelle che di onde', 'Il principio di dualità onda-particella stabilisce che tutte le particelle si comportano esclusivamente come onde', 'Il principio di dualità onda-particella è una teoria che si applica solo alle onde elettromagnetiche', 'Il principio di dualità onda-particella stabilisce che tutte le particelle non hanno massa', 'Il principio di dualità onda-particella stabilisce che tutte le particelle subatomiche mostrano caratteristiche sia di particelle che di onde', 71),
(72, 'La costante cosmologica di Einstein è stata introdotta per bilanciare la gravità e mantenere un universo statico, ma è stata successivamente abbandonata', 'La costante cosmologica di Einstein rappresenta l\'energia oscura che espande l\'universo', 'La costante cosmologica è una costante che si applica solo alla relatività speciale', 'La costante cosmologica è una variabile che descrive la temperatura dell\'universo', 'La costante cosmologica di Einstein è stata introdotta per bilanciare la gravità e mantenere un universo statico, ma è stata successivamente abbandonata', 72),
(73, 'La teoria della gravità quantistica loop è un approccio alla gravità quantistica che si basa sulla quantizzazione dello spazio-tempo', 'La teoria della gravità quantistica loop è un modello che descrive la massa dei buchi neri', 'La teoria della gravità quantistica loop è una teoria che si occupa solo dei quark', 'La teoria della gravità quantistica loop è una teoria che non considera la teoria delle stringhe', 'La teoria della gravità quantistica loop è un approccio alla gravità quantistica che si basa sulla quantizzazione dello spazio-tempo', 73),
(74, 'La teoria del campo unificato di Einstein tentava di descrivere tutte le forze della natura in un unico quadro teorico', 'La teoria del campo unificato di Einstein descrive solo la gravità e la forza elettromagnetica', 'La teoria del campo unificato di Einstein è un approccio che riguarda solo la forza nucleare forte', 'La teoria del campo unificato di Einstein è una teoria che non include la relatività generale', 'La teoria del campo unificato di Einstein tentava di descrivere tutte le forze della natura in un unico quadro teorico', 74),
(75, 'Il teorema di Noether stabilisce che ogni simmetria in un sistema fisico corrisponde a una legge di conservazione', 'Il teorema di Noether stabilisce che le leggi di conservazione sono indipendenti dalle simmetrie', 'Il teorema di Noether riguarda solo la teoria della relatività generale', 'Il teorema di Noether descrive la forma geometrica dello spazio-tempo', 'Il teorema di Noether stabilisce che ogni simmetria in un sistema fisico corrisponde a una legge di conservazione', 75);

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





