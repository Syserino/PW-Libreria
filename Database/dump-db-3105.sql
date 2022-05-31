-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versione server:              10.4.24-MariaDB - mariadb.org binary distribution
-- S.O. server:                  Win64
-- HeidiSQL Versione:            12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dump della struttura del database libreria
CREATE DATABASE IF NOT EXISTS `libreria` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `libreria`;

-- Dump della struttura di tabella libreria.anagraphic
CREATE TABLE IF NOT EXISTS `anagraphic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `codice_fiscale` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `cn` varchar(10) DEFAULT NULL,
  `cap` varchar(10) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.anagraphic: ~7 rows (circa)
INSERT INTO `anagraphic` (`id`, `name`, `surname`, `mail`, `gender`, `codice_fiscale`, `street`, `cn`, `cap`, `town`, `city`, `phone`) VALUES
	(5, 'Nicola', 'ese', 'nicola@esempio.it', 'Male', 'ssssss', 'Nicola', '13', '80100', 'Napoli', 'sss', '3471567845'),
	(6, 'Cristina', 'Campo', 'cristina.campo@esempio.it', 'F', NULL, 'via dei ciliegi', '12', '70100', 'Bari', NULL, '2356897845'),
	(7, 'Giuseppe', 'Alfiero', 'giuseppe.alfiero@esempio.it', 'M', NULL, 'via dei monti', '22', '80100', 'Napoli', NULL, '1254874815'),
	(28, 'marco', 'ss', 'email@l.it', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(30, NULL, NULL, 'pane@live.it', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(31, 'michelè', 'dall\'olio', 'pippo@mail.com', NULL, NULL, 'via dei monti', NULL, NULL, NULL, NULL, NULL);

-- Dump della struttura di tabella libreria.books
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `public_year` int(11) NOT NULL,
  `description` text NOT NULL,
  `price_flexiblecover` double NOT NULL,
  `price_hardcover` double NOT NULL,
  `e_book` double NOT NULL,
  `code_ebook` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `short_desch` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_books_categories` (`category_id`) USING BTREE,
  CONSTRAINT `FK_books_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.books: ~17 rows (circa)
INSERT INTO `books` (`id`, `title`, `author`, `public_year`, `description`, `price_flexiblecover`, `price_hardcover`, `e_book`, `code_ebook`, `quantity`, `isbn`, `short_desch`, `category_id`) VALUES
	(1, 'La mappa dei desideri', 'Carrie Ryan , John Parke Davis', 2003, 'Chi possiede la Mappa dei Desideri può arrivare ovunque voglia. Per il momento però nessuno può servirsi dei suoi poteri, perché è stata divisa in brandelli: il primo, la Rosa dei Venti, appare all\'improvviso nel parcheggio di un supermercato insieme a un\'onda d\'acqua solcata da un vascello di corsari, sotto lo sguardo incredulo della dodicenne Marrill. Intenta a inseguire il suo gatto, Marrill si trova catapultata nella Corrente Pirata, un mondo popolato da foreste parlanti, farfalle di spuma di mare e crostacei con le piume. Soltanto la mappa può ricondurla nel suo mondo. E Marrill non è l\'unica a cercarla: Fin, cresciuto nella Corrente Pirata, a dodici anni è già il Maestro dei Ladri grazie a un raro potere: chiunque lo incontri ben presto si dimentica di lui. Guidato da una misteriosa profezia, Fin vuole la mappa per ritrovare la madre scomparsa. Quando i destini di Marrill e Fin incrociano la rotta di una ciurma di temibili pirati, la ricerca della mappa si trasforma in una questione di vita o di morte. Età di lettura: da 11 anni.', 15, 30.5, 10.25, 'EJ24S6481', 10, '8804655585', 'Intenta a inseguire il suo gatto, Marrill si trova catapultata nella Corrente Pirata, un mondo popol', 1),
	(2, 'Lavorare con intelligenza emotiva', 'Daniel Goleman, ', 1998, 'Saper gestire le proprie emozioni nelle varie situazioni a cui la vita ci mette di fronte, può essere una qualità determinante per raggiungere risultati importanti sia nel lavoro, che nella sfera personale.', 22.5, 50.5, 12.5, 'EJ30534D', 15, '8817118788', 'L\'ambiente di lavoro è l\'ambito in cui si manifesta con maggiore evidenza l\'importanza di un\'intelli', 5),
	(3, 'Harry Potter e la Pietra filosofale', 'J.K.Rowling', 1997, 'La storia di Harry Potter comincia qui. Ecco la prima descrizione del suo aspetto:\r\n«Harry aveva un viso sottile, ginocchia nodose, capelli neri e occhi verde chiaro. Portava un paio di occhiali rotondi, tenuti insieme con un sacco di nastro adesivo per tutte le volte che Dudley lo aveva preso a pugni sul naso. L\'unica cosa che a Harry piaceva del proprio aspetto era una cicatrice molto sottile sulla fronte, che aveva la forma di una saetta.»\r\nCosì ce lo presenta J.K Rowling, nel libro pubblicato da Salani nel maggio 1998, Harry Potter e la pietra filosofale. Si tratta del primo di una serie di sette volumi, incentrati sulle avventure di un personaggio che ha superato in popolarità qualunque altro, anche grazie agli otto film che l’hanno visto protagonista.\r\nHarry è un giovanissimo mago, dotato di poteri incredibili, di cui ancora non conosce le potenzialità né le implicazioni. La sua vicenda si articola tra elementi che tutti conosciamo – la scuola, l’amicizia, le sfide quotidiane, lo sport, un animale d’affezione – ma calati in un universo disegnato con immaginifica fantasia dalla Rowling. Qui, tutto, è al contempo straordinario e riconoscibile. E la storia di Harry, che da undicenne inadeguato al mondo dei “babbani”, e pertanto infelice, arriva a confrontarsi con i temi più importanti di ogni esistenza, altro non è che un percorso di formazione. La sua “linea d’ombra” si trova al binario 9 e ¾ e noi siamo tutti lì, pronti ad attraversare quella barriera magica con lui.', 15.8, 30.5, 13.5, 'EX234567', 20, '8867158120', 'Harry aveva un viso sottile, ginocchia nodose, capelli neri e occhi verde chiaro. Portava un paio di', 3),
	(4, 'Harry Potter e la Camera dei segreti', 'J.K.Rowling', 1998, '«C\'è un complotto, Harry Potter. Un complotto per far succedere le cose più terribili, quest\'anno, alla scuola di magia e stregoneria di Hogwarts.»', 20, 30.5, 18, 'EXT42142', 20, '8831003391', 'C\'è un complotto, Harry Potter. Un complotto per far succedere le cose più terribili, quest\'anno, al', 3),
	(6, 'sss1111', 'sss', 114, 'sss', 3, 2, 2, 'ss', 1, 'ss', 'ss', 1),
	(10, 'horrriiisssssss', 'sdsds', 1998, 'sdsdsdssss', 4, 6, 3, '111111', 5, '121212', 'sdsds', 4),
	(11, 'sss', 'sss', 2, 'ss', 0, 0, 0, 'sss', 0, 'ss', 'ss', 1),
	(30, 'It', 'Stephen King', 1986, ' In un ridente e sonnolenta cittadina americana, un gruppo di ragazzini, esplorando per gioco le fogne, risveglia da un sonno primordiale una creatura informe e mostruosa: IT. E quando, molti anni dopo, It ricompare a chiedere il suo tributo di sangue, gli stessi ragazzini, ormai adulti, abbandonano la famiglia e lavoro per tornare a combatterla.', 37, 60, 13, 'EXH12345', 24, '8868360268', 'In un ridente e sonnolenta cittadina americana, un gruppo di ragazzini, esplorando per gioco le fogn', 4),
	(31, 'Shining', 'Stephen King', 1977, 'L\'Overlook, uno strano e imponente albergo che domina le alte montagne del Colorado, è stato teatro di numerosi delitti e suicidi e sembra aver assorbito forze maligne che vanno al di là di ogni comprensione umana e si manifestano soprattutto d\'inverno quando l\'albergo chiude e resta isolato per la neve. Uno scrittore fallito, Jack Torrance, con la moglie Wendy e il figlio Danny di cinque anni, accetta di fare il guardiano invernale all\'Overlook ed è allora che le forze del male si scatenano. Dinanzi a Danny, che è dotato di potere extrasensoriale, lo shine, si materializzano gli orribili fatti accaduti nelle stanze dell\'albergo, ma se il bambino si oppone con forza a insidie e presenze, il padre ne rimane vittima.', 10.2, 23.27, 6.99, 'EXH67890', 36, '8845246558', 'L\'Overlook, uno strano e imponente albergo che domina le alte montagne del Colorado, è stato teatro ', 4),
	(32, 'Racconti del terrore', 'Edgar Allan Poe ', 1848, 'Quella che avete davanti è una raccolta di racconti di paura che vi prenderà alla gola e vi segnerà per sempre. Leggerete di case lugubri, color del piombo, circondate da paludi silenziose ed esalazioni pestilenziali, di navi fantasma che solcano i mari da secoli ormai e si gettano negli abissali vortici dell\'oceano, giù fino al centro esatto della Terra. Leggerete di persone murate vive quasi per capriccio, di altre seppellite ancora vive per sbaglio, e di amori che vincono la morte... ', 8, 12.35, 2.99, 'EXH24680', 22, '8804671939', 'In questa raccolta compaiono le storie più celebri come “La rovina di casa Usher”, “Il cuore rivelat', 4),
	(33, 'Frankenstein', 'Mary Shelley ', 1818, 'Lo scienziato Victor Frankenstein ed il fidato assistente Igor condividono la nobile visione di aiutare l\'umanità attraverso la loro innovativa ricerca sull\'immortalità. Ma gli esperimenti di Victor si spingono troppo oltre e la sua ossessione ha terribili conseguenze.', 9, 15.5, 3.99, 'EXH13579', 14, '8806228641', 'Lo scienziato Victor Frankenstein ed il fidato assistente Igor condividono la nobile visione di aiut', 4),
	(34, 'L\'esorcista', 'William Peter Blatty', 1971, 'Che cosa succede alla piccola Regan, trasformatasi in un mostro blasfemo che urla oscenità e frasi sconnesse? Sua madre, la famosa diva del cinema Chris MacNeil, non riesce a capirlo. Né ci riescono i medici e gli psichiatri né la polizia. Forse solo un esorcista può dare una risposta. Ma la Chiesa impone cautela, esige prove, chiede tempo. Intanto la casa risuona di colpi, i mobili si spostano da soli, un uomo muore con il collo spezzato, il fragile corpo di Regan sembra cedere alla tempesta che lo sconquassa. E lo scontro tra l\'uomo di Dio e gli spiriti del Male sembra ormai inevitabile.', 13.3, 10.8, 6.99, 'EXH45678', 37, '8893250179', 'Che cosa succede alla piccola Regan, trasformatasi in un mostro blasfemo che urla oscenità e frasi s', 4),
	(35, 'Le montagne della follia', 'H.P. Lovecraft', 1936, 'Nelle "Montagne", in un simile sacro bosco, sovrumano, dove catene montuose di ardesia precambriana si alzano fino all\'orlo inimmaginabile del pianeta, l\'uomo diventa cacciagione, preda, o addirittura campione scientifico da sezionare e notomizzare, crudamente, come un esemplare di animale raro appena scoperto.', 16.15, 14.25, 5.99, 'EXH87654', 11, '8842824348', '"Le montagne della follia" di Howard Phillips Lovecraft racconta il catastrofico esito di una spediz', 4),
	(36, 'Il richiamo di Cthulhu', 'H.P. Lovecraft', 1928, 'Riordinando le vecchie carte di un defunto prozio, Francis Wayland Thurston s\'imbatte in un bassorilievo mostruoso nato dagli incubi e dalle visioni di un ignoto artista e in alcuni documenti in cui si narra di un culto infernale osservato nelle paludi della Louisiana. Seguendo queste tracce e quelle del marinaio norvegese Gustaf Johansen, naufrago in un\'isola fantasma comparsa dal nulla, Thurston viene così a conoscenza di Cthulhu, una creatura gigantesca, tentacolare e informe che abita da tempi immemorabili il fondo degli abissi marini e la cui scoperta rischierà di rivelarsi fatale.', 4.66, 7, 1.99, 'EXH69420', 4, ' 8811000645', 'Riordinando le vecchie carte di un defunto prozio, Francis Wayland Thurston s\'imbatte in un bassoril', 4),
	(37, 'Ghost Story', 'Peter Straub', 2013, 'La storia del fantasma di un giovane uomo, scomparso prematuramente in un incidente stradale, che fa ritorno nella casa in cui ha vissuto, osservando la sofferenza della propria amata.', 9.87, 23.63, 5.49, 'EXH76894', 13, '0575084642', 'La storia del fantasma di un giovane uomo, scomparso prematuramente in un incidente stradale, che fa', 4),
	(38, 'Dracula', 'Bram Stoker', 1897, ' In Transilvania per concludere la vendita di una casa londinese al Conte Dracula, discendente di un\'antichissima casata locale, il giovane agente immobiliare Jonathan Harker scopre che il suo cliente è una creatura di mistero e orrore... Dracula, archetipo delle infinite storie di vampiri narrate dalla letteratura e dal cinema, mette in scena l\'eterna lotta tra il Bene e il Male, ma anche tra la ragione e l\'istinto, tra le pulsioni più inconfessabili e il perbenismo non solo vittoriano. Una storia scaturita dall\'inconscio ed entrata in tutti i nostri incubi.', 8.44, 11, 0.99, 'H5318008', 11, '8804671610', ' In Transilvania per concludere la vendita di una casa londinese al Conte Dracula, discendente di un', 4),
	(39, 'American Psycho', 'Bret Easton Ellis', 1991, 'Patrick Bateman è giovane, bello, ricco. Vive a Manhattan, lavora a Wall Street e con i colleghi Timothy, David, Patten e Craig, frequenta i locali più alla moda, le palestre più esclusive e le toilette dove gira la migliore cocaina della città, discutendo di nuovi ristoranti, cameriere corpoduro ed eleganza maschile. Ma la sua vita è ricca di particolari piuttosto inquietanti e quando le tenebre scendono su New York, Patrick Bateman si trasforma in un torturatore omicida, freddo, metodico, spietato.', 13.3, 8.4, 3.99, 'EXH01010', 24, '8806219251', 'La dualità di Patrick Bateman come uomo d\'affari e maniaco omicida narrata da Bret Easton Ellis', 4);

-- Dump della struttura di tabella libreria.book_in_order
CREATE TABLE IF NOT EXISTS `book_in_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `cover` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_book_in_order_order_list` (`order_id`),
  KEY `FK_book_in_order_books` (`book_id`),
  CONSTRAINT `FK_book_in_order_books` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_book_in_order_order_list` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella libreria.book_in_order: ~13 rows (circa)
INSERT INTO `book_in_order` (`id`, `order_id`, `book_id`, `quantity`, `price`, `cover`) VALUES
	(1, 2, 4, 11, 11, 'sss'),
	(2, 2, 4, 2, 22, 'sss'),
	(3, 3, 4, 11, 11, 'sss'),
	(4, 7, 1, 1, 15, 'flex'),
	(5, 7, 3, 1, 15.8, 'flex'),
	(6, 8, 3, 1, 15.8, 'flex'),
	(7, 8, 10, 1, 4, 'flex'),
	(8, 9, 1, 1, 15, 'flex'),
	(9, 9, 1, 1, 15, 'flex'),
	(10, 9, 2, 1, 22.5, 'flex'),
	(11, 10, 1, 1, 15, 'flex'),
	(12, 11, 1, 1, 15, 'flex'),
	(13, 11, 4, 1, 20, 'flex');

-- Dump della struttura di tabella libreria.cart_list
CREATE TABLE IF NOT EXISTS `cart_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `cover` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cart_list_books` (`book_id`),
  KEY `FK_cart_list_users` (`user_id`),
  CONSTRAINT `FK_cart_list_books` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_cart_list_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella libreria.cart_list: ~0 rows (circa)

-- Dump della struttura di tabella libreria.cart_list_old
CREATE TABLE IF NOT EXISTS `cart_list_old` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_anagraphic` int(11) DEFAULT 0,
  `id_book` int(11) DEFAULT 0,
  `total` int(11) DEFAULT 0,
  `orderStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id_anagraphic` (`id_anagraphic`,`id_book`),
  KEY `id_book` (`id_book`),
  CONSTRAINT `cart_list_old_ibfk_1` FOREIGN KEY (`id_anagraphic`) REFERENCES `anagraphic` (`id`),
  CONSTRAINT `cart_list_old_ibfk_2` FOREIGN KEY (`id_book`) REFERENCES `books` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.cart_list_old: ~5 rows (circa)
INSERT INTO `cart_list_old` (`id`, `id_anagraphic`, `id_book`, `total`, `orderStatus`) VALUES
	(2, 5, 1, 0, 'Spedito'),
	(3, 6, 2, 0, 'Consegnato'),
	(4, 6, 2, 0, 'Consegnato'),
	(34, 31, 1, 0, 'Da spedire');

-- Dump della struttura di tabella libreria.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.categories: ~6 rows (circa)
INSERT INTO `categories` (`id`, `name`, `description`) VALUES
	(1, 'Avventura', 'Il romanzo di avventura è un genere letterario che nasce nel XVIII secolo e narra di viaggi in terre lontane e quindi celebra il coraggio e l\'ingegno umano.'),
	(2, 'Storico', 'Un romanzo storico è un\'opera narrativa ambientata nel passato, con un\'accurata ricostruzione dell\'epoca attraverso atmosfere, costumi, usanze, condizioni sociali e mentalità dei personaggi principali.'),
	(3, 'Fantasy', 'Il termine fantasy racchiude un insieme di elementi imprescindibili: soprannaturale: in questi romanzi è preponderante la tematica sovrannaturale, che consta di ambientazioni, fenomeni e creature che non appartengono alla nostra dimensione o comunque la d'),
	(4, 'Horror', 'Oggi esiste un preciso genere narrativo, il genere horror, basato proprio su storie che riescono a provocare nel lettore orrore e paura. Il racconto o il romanzo horror si chiama anche gotico, di fantasmi (o ghost story, all\'inglese), del terrore e così v'),
	(5, 'Saggistica', 'Per saggistica si intende l\'insieme dei testi che rientrano nel genere del saggio, esattamente come per narrativa intendiamo l\'insieme dei testi che rientrano nel genere del romanzo.'),
	(6, 'Romantico', 'Il romanzo rosa (detto anche romance) è un genere letterario che narra di storie d\'amore e del loro intreccio che si dipanano in genere in avventure e intrighi e terminano sempre con un lieto fine.');

-- Dump della struttura di tabella libreria.log_ordini
CREATE TABLE IF NOT EXISTS `log_ordini` (
  `id_log_ordini` int(11) NOT NULL AUTO_INCREMENT,
  `id_ordine` int(11) DEFAULT NULL,
  `descrizione_stato` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_log_ordini`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.log_ordini: ~3 rows (circa)
INSERT INTO `log_ordini` (`id_log_ordini`, `id_ordine`, `descrizione_stato`) VALUES
	(1, 1, 'L\'ordine è stato spedito all\'indirizzo.'),
	(2, 1, 'In consegna'),
	(3, 1, 'L\'ordine è stato rifiutato.');

-- Dump della struttura di tabella libreria.order_list
CREATE TABLE IF NOT EXISTS `order_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `orderStatus` varchar(50) DEFAULT NULL,
  `start` date DEFAULT current_timestamp(),
  `end` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_order_list_users` (`id_user`),
  CONSTRAINT `FK_order_list_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella libreria.order_list: ~11 rows (circa)
INSERT INTO `order_list` (`id`, `id_user`, `price`, `orderStatus`, `start`, `end`) VALUES
	(1, 19, 22, NULL, '2022-05-31', NULL),
	(2, 7, 22, 'Da spedire', '2022-05-30', '2022-05-30'),
	(3, 7, 22, 'Da spedire', '2022-05-30', '2022-05-30'),
	(4, 7, 22, 'Da spedire', '2022-05-30', '2022-06-02'),
	(5, 7, 22, 'Da spedire', '2022-05-30', '2022-06-02'),
	(6, 7, 0, 'Da spedire', '2022-05-30', '2022-06-02'),
	(7, 19, 0, 'Da spedire', '2022-05-30', '2022-06-02'),
	(8, 7, 0, 'Da spedire', NULL, NULL),
	(9, 7, 0, 'Da spedire', NULL, NULL),
	(10, 7, 0, 'Da spedire', '2022-05-31', '2022-06-07'),
	(11, 7, 35, 'Da spedire', '2022-05-31', '2022-06-07');

-- Dump della struttura di tabella libreria.privileges
CREATE TABLE IF NOT EXISTS `privileges` (
  `id_privileges` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `edit_book` enum('Y','N') DEFAULT NULL,
  `edit_user` enum('Y','N') DEFAULT NULL,
  `edit_admin` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`id_privileges`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.privileges: ~4 rows (circa)
INSERT INTO `privileges` (`id_privileges`, `name`, `edit_book`, `edit_user`, `edit_admin`) VALUES
	(1, 'Amministratore', 'Y', 'Y', 'Y'),
	(2, 'Super Moderatore', 'Y', 'Y', 'N'),
	(3, 'Moderatore', 'Y', 'N', 'N'),
	(4, 'Utente', 'N', 'N', 'N');

-- Dump della struttura di tabella libreria.reviews
CREATE TABLE IF NOT EXISTS `reviews` (
  `id_reviews` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_reviews`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `FK_reviews_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella libreria.reviews: ~2 rows (circa)
INSERT INTO `reviews` (`id_reviews`, `user_id`, `description`, `star`) VALUES
	(1, 6, 'fadsaf', 1),
	(2, 7, 'sdfdsfds', 3);

-- Dump della struttura di tabella libreria.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `privileges` int(11) NOT NULL DEFAULT 4,
  `anagraphic_id` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_users_anagraphic` (`anagraphic_id`) USING BTREE,
  KEY `FK_users_privileges` (`privileges`) USING BTREE,
  CONSTRAINT `FK_users_anagraphic` FOREIGN KEY (`anagraphic_id`) REFERENCES `anagraphic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_users_privileges` FOREIGN KEY (`privileges`) REFERENCES `privileges` (`id_privileges`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.users: ~5 rows (circa)
INSERT INTO `users` (`id`, `username`, `password`, `privileges`, `anagraphic_id`) VALUES
	(6, 'utente', 'utente', 4, 5),
	(7, 'admin', 'admin', 1, 5),
	(17, 'pincopallino', 'ciaone', 4, 28),
	(19, 'marcolino', 'pane', 4, 30),
	(20, 'michelè dall\'olio', '1234', 4, 31);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
