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
(56,"Cosa descrive la teoria dell'evoluzione di Darwin?",12,"Generico"),
(57,"Chi ha scritto Il processo?",12,"Generico"),
(58,"Quale animale può cambiare colore per mimetizzarsi?",12,"Generico"),
(59,"Chi ha scritto La Guerra dei Mondi?",12,"Generico"),
(60,"In quale anno iniziò la Seconda Guerra Mondiale?",12,"Generico"),
-- Difficoltà 13
(61,"Chi ha scritto La nazione più felice?",13,"Generico"),
(62,"Qual è la capitale del Nepal?",13,"Generico"),
(63,"In quale periodo storico è stato scritto il Decamerone?",13,"Generico"),
(64,"Chi ha scritto I Miserabili?",13,"Generico"),
(65,"In quale città si trova il Colosseo?",13,"Generico"),
-- Difficoltà 14
(66,"Chi è considerato il padre della psicanalisi?",14,"Generico"),
(67,"Qual è la temperatura di ebollizione dell'acqua?",14,"Generico"),
(68,"In quale periodo si sviluppò l'Impressionismo?",14,"Generico"),
(69,"In quale nazione si trova la città di Timbuctù?",14,"Generico"),
(70,"Qual è il principale gas presente nell'atmosfera terrestre?",14,"Generico"),
-- Difficoltà 15
(71,"Chi ha scoperto la penicillina?",15,"Generico"),
(72,"Quale regno fa parte del regno animale ma non ha un sistema nervoso?",15,"Generico"),
(73,"Chi è l'autore de La Bibbia?",15,"Generico"),
(74,"Nel 1991 quale paese è divenuto indipendente dall'Unione Sovietica?",15,"Generico"),
(75,"Chi ha ideato la teoria delle stringhe?",15,"Generico");

insert into risposte 
	(id,ris1,ris2,ris3,ris4,risok,idDomanda)
values
-- Difficoltà 1
(1,"Roma","Milano","Napoli","Torino","Roma",1),
(2,"Rosso","Verde","Blu","Giallo","Blu",2),
(3,"Charles Dickens","Hans Christian Andersen","Gianni Rodari","Carlo Collodi","Hans Christian Andersen",3),
(4,"3","4","5","6","4",4),
(5,"Marte","Venere","Terra","Saturno","Terra",5),
-- Difficoltà 2
(6,"Europa","Africa","Asia","America","Africa",6),
(7,"Victor Hugo","Antoine de Saint-Exupéry","Albert Camus","Marcel Proust","Antoine de Saint-Exupéry",7),
(8,"1959","1969","1971","1981","1969",8),
(9,"CO2","H2O","O2","N2","H2O",9),
(10,"Michelangelo","Leonardo da Vinci","Raffaello","Caravaggio","Leonardo da Vinci",10),
-- Difficoltà 3
(11,"Nilo","Rio delle Amazzoni","Mississippi","Yangtze","Nilo",11),
(12,"Panda","Koala","Tigre","Elefante","Koala",12),
(13,"Isaac Newton","Nikola Tesla","Albert Einstein","Galileo Galilei","Albert Einstein",13),
(14,"George Orwell","Aldous Huxley","Ray Bradbury","F. Scott Fitzgerald","George Orwell",14),
(15,"Roma","Berlino","Parigi","Madrid","Parigi",15),
-- Difficoltà 4
(16,"Lisbona","Madrid","Barcellona","Valencia","Madrid",16),
(17,"1400","1492","1600","1750","1492",17),
(18,"Victor Hugo","Alexandre Dumas","Jules Verne","Charles Dickens","Alexandre Dumas",18),
(19,"Oceano Atlantico","Oceano Indiano","Oceano Artico","Oceano Pacifico","Oceano Pacifico",19),
(20,"Beethoven","Chopin","Mozart","Tutte le risposte precedenti","Tutte le risposte precedenti",20),
-- Difficoltà 5
(21,"Gabriel García Márquez","Miguel de Cervantes","Federico García Lorca","Mario Vargas Llosa","Miguel de Cervantes",21),
(22,"1980","1987","1989","1992","1989",22),
(23,"Terra","Marte","Giove","Saturno","Giove",23),
(24,"Asia","Europa","Africa","Oceania","Africa",24),
(25,"Giovanni Verga","Luigi Pirandello","Giuseppe Tomasi di Lampedusa","Italo Calvino","Giuseppe Tomasi di Lampedusa",25),
-- Difficoltà 6
(26,"Ossigeno","Azoto","Elio","Carbonio","Elio",26),
(27,"Carl Jung","Sigmund Freud","Wilhelm Wundt","John Watson","Sigmund Freud",27),
(28,"Giappone","India","Nepal","Cina","Nepal",28),
(29,"Platone","Aristotele","Socrate","Epicuro","Socrate",29),
(30,"Sydney","Melbourne","Canberra","Brisbane","Canberra",30),
-- Difficulty 7
(31, "Tamigi", "Reno", "Danubio", "Po", "Tamigi", 31),
(32, "Friedrich Nietzsche", "Franz Kafka", "Leo Tolstoy", "Ernest Hemingway", "Franz Kafka", 32),
(33, "Nikola Tesla", "Thomas Edison", "Alexander Graham Bell", "James Watt", "Thomas Edison", 33),
(34, "Lunghezza d""onda", "Velocità della luce", "Frequenza", "Energia", "Lunghezza d""onda", 34),
(35, "Leone", "Uccello", "Serpente", "Elefante", "Serpente", 35),
-- Difficulty 8
(36, "Spagnolo", "Inglese", "Portoghese", "Italiano", "Portoghese", 36),
(37, "Nikola Tesla", "Thomas Edison", "Alexander Graham Bell", "Guglielmo Marconi", "Alexander Graham Bell", 37),
(38, "Osaka", "Kyoto", "Pechino", "Tokyo", "Tokyo", 38),
(39, "Elefante africano", "Balena azzurra", "Orso polare", "Giraffa", "Elefante africano", 39),
(40, "1796", "1861", "1900", "1946", "1861", 40),
-- Difficulty 9
(41, "Thomas Hobbes", "John Locke", "Niccolò Machiavelli", "Jean-Jacques Rousseau", "Niccolò Machiavelli", 41),
(42, "Egitto", "Giordania", "Israele", "Grecia", "Giordania", 42),
(43, "James Joyce", "Samuel Beckett", "Virginia Woolf", "Ezra Pound", "James Joyce", 43),
(44, "Panthera leo", "Ursus maritimus", "Canis lupus", "Felis catus", "Panthera leo", 44),
(45, "Herman Melville", "Charles Dickens", "Mark Twain", "Walt Whitman", "Herman Melville", 45),
-- Difficulty 10
(46, "Sardegna", "Malta", "Creta", "Tutte le risposte precedenti", "Tutte le risposte precedenti", 46),
(47, "Dante Alighieri", "Francesco Petrarca", "Giovanni Boccaccio", "Ludovico Ariosto", "Dante Alighieri", 47),
(48, "Canis lupus", "Felis catus", "Equus ferus caballus", "Ursus arctos", "Equus ferus caballus", 48),
(49, "Oslo", "Helsinki", "Copenaghen", "Stoccolma", "Stoccolma", 49),
(50, "1453", "1492", "1500", "1517", "1492", 50),
-- Difficulty 11
(51, "Emily Brontë", "Mary Shelley", "Jane Austen", "Charles Dickens", "Mary Shelley", 51),
(52, "Venere", "Marte", "Giove", "Saturno", "Marte", 52),
(53, "Fe", "Ag", "Au", "Hg", "Fe", 53),
(54, "Galileo Galilei", "Albert Einstein", "Isaac Newton", "Johannes Kepler", "Isaac Newton", 54),
(55, "Toronto", "Vancouver", "Ottawa", "Montreal", "Ottawa", 55),
-- Difficulty 12
(56, "La formazione dell""universo", "La nascita dei pianeti", "L""adattamento delle specie nel tempo", "La teoria dell""atomo", "L""adattamento delle specie nel tempo", 56),
(57, "Franz Kafka", "Leo Tolstoy", "Hermann Hesse", "Fëdor Dostoevskij", "Franz Kafka", 57),
(58, "Cammello", "Chameleon", "Leopardo", "Delfino", "Chameleon", 58),
(59, "H.G. Wells", "George Orwell", "Isaac Asimov", "Arthur C. Clarke", "H.G. Wells", 59),
(60, "1920", "1939", "1945", "1914", "1939", 60),
-- Difficulty 13
(61, "Aldous Huxley", "Thomas Moore", "René Descartes", "François-Marie Arouet", "Thomas Moore", 61),
(62, "New Delhi", "Lhasa", "Kathmandu", "Pekino", "Kathmandu", 62),
(63, "Medioevo", "Rinascimento", "Età moderna", "Antichità", "Rinascimento", 63),
(64, "Charles Dickens", "Victor Hugo", "Jules Verne", "Emily Dickinson", "Victor Hugo", 64),
(65, "Roma", "Napoli", "Milano", "Firenze", "Roma", 65),
-- Difficulty 14
(66, "Carl Jung", "Sigmund Freud", "Jean Piaget", "Erik Erikson", "Sigmund Freud", 66),
(67, "0 °C", "50 °C", "100 °C", "150 °C", "100 °C", 67),
(68, "Settecento", "Ottocento", "Novecento", "Rinascimento", "Ottocento", 68),
(69, "Algeria", "Mali", "Nigeria", "Marocco", "Mali", 69),
(70, "Ossigeno", "Anidride carbonica", "Azoto", "Elio", "Azoto", 70),
-- Difficulty 15
(71, "Louis Pasteur", "Alexander Fleming", "Marie Curie", "Albert Einstein", "Alexander Fleming", 71),
(72, "Molluschi", "Poriferi", "Vertebrati", "Insetti", "Poriferi", 72),
(73, "Vari autori", "Paolo di Tarso", "Giovanni", "Mosè", "Vari autori", 73),
(74, "Polonia", "Estonia", "Ucraina", "Bielorussia", "Estonia", 74),
(75, "Stephen Hawking", "Albert Einstein", "Leonard Susskind", "Max Planck", "Leonard Susskind", 75);

	
