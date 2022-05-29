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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.anagraphic: ~5 rows (circa)
INSERT INTO `anagraphic` (`id`, `name`, `surname`, `mail`, `gender`, `codice_fiscale`, `street`, `cn`, `cap`, `town`, `city`, `phone`) VALUES
	(5, NULL, NULL, 'nicola@esempio.it', NULL, NULL, NULL, '13', '80100', 'Napoli', NULL, '3471567845'),
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.books: ~8 rows (circa)
INSERT INTO `books` (`id`, `title`, `author`, `public_year`, `description`, `price_flexiblecover`, `price_hardcover`, `e_book`, `code_ebook`, `quantity`, `isbn`, `short_desch`, `category_id`) VALUES
	(1, 'La mappa dei desideri', 'Carrie Ryan , John Parke Davis', 2003, 'Chi possiede la Mappa dei Desideri può arrivare ovunque voglia. Per il momento però nessuno può servirsi dei suoi poteri, perché è stata divisa in brandelli: il primo, la Rosa dei Venti, appare all\'improvviso nel parcheggio di un supermercato insieme a un\'onda d\'acqua solcata da un vascello di corsari, sotto lo sguardo incredulo della dodicenne Marrill. Intenta a inseguire il suo gatto, Marrill si trova catapultata nella Corrente Pirata, un mondo popolato da foreste parlanti, farfalle di spuma di mare e crostacei con le piume. Soltanto la mappa può ricondurla nel suo mondo. E Marrill non è l\'unica a cercarla: Fin, cresciuto nella Corrente Pirata, a dodici anni è già il Maestro dei Ladri grazie a un raro potere: chiunque lo incontri ben presto si dimentica di lui. Guidato da una misteriosa profezia, Fin vuole la mappa per ritrovare la madre scomparsa. Quando i destini di Marrill e Fin incrociano la rotta di una ciurma di temibili pirati, la ricerca della mappa si trasforma in una questione di vita o di morte. Età di lettura: da 11 anni.', 15, 30.5, 10.25, 'EJ24S6481', 10, '8804655585', 'Intenta a inseguire il suo gatto, Marrill si trova catapultata nella Corrente Pirata, un mondo popol', 1),
	(2, 'Lavorare con intelligenza emotiva', 'Daniel Goleman, ', 1998, 'Saper gestire le proprie emozioni nelle varie situazioni a cui la vita ci mette di fronte, può essere una qualità determinante per raggiungere risultati importanti sia nel lavoro, che nella sfera personale.', 22.5, 50.5, 12.5, 'EJ30534D', 15, '8817118788', 'L\'ambiente di lavoro è l\'ambito in cui si manifesta con maggiore evidenza l\'importanza di un\'intelli', 5),
	(3, 'Harry Potter e la Pietra filosofale', 'J.K.Rowling', 1997, 'La storia di Harry Potter comincia qui. Ecco la prima descrizione del suo aspetto:\r\n«Harry aveva un viso sottile, ginocchia nodose, capelli neri e occhi verde chiaro. Portava un paio di occhiali rotondi, tenuti insieme con un sacco di nastro adesivo per tutte le volte che Dudley lo aveva preso a pugni sul naso. L\'unica cosa che a Harry piaceva del proprio aspetto era una cicatrice molto sottile sulla fronte, che aveva la forma di una saetta.»\r\nCosì ce lo presenta J.K Rowling, nel libro pubblicato da Salani nel maggio 1998, Harry Potter e la pietra filosofale. Si tratta del primo di una serie di sette volumi, incentrati sulle avventure di un personaggio che ha superato in popolarità qualunque altro, anche grazie agli otto film che l’hanno visto protagonista.\r\nHarry è un giovanissimo mago, dotato di poteri incredibili, di cui ancora non conosce le potenzialità né le implicazioni. La sua vicenda si articola tra elementi che tutti conosciamo – la scuola, l’amicizia, le sfide quotidiane, lo sport, un animale d’affezione – ma calati in un universo disegnato con immaginifica fantasia dalla Rowling. Qui, tutto, è al contempo straordinario e riconoscibile. E la storia di Harry, che da undicenne inadeguato al mondo dei “babbani”, e pertanto infelice, arriva a confrontarsi con i temi più importanti di ogni esistenza, altro non è che un percorso di formazione. La sua “linea d’ombra” si trova al binario 9 e ¾ e noi siamo tutti lì, pronti ad attraversare quella barriera magica con lui.', 15.8, 30.5, 13.5, 'EX234567', 20, '8867158120', 'Harry aveva un viso sottile, ginocchia nodose, capelli neri e occhi verde chiaro. Portava un paio di', 3),
	(4, 'Harry Potter e la Camera dei segreti', 'J.K.Rowling', 1998, '«C\'è un complotto, Harry Potter. Un complotto per far succedere le cose più terribili, quest\'anno, alla scuola di magia e stregoneria di Hogwarts.»', 20, 30.5, 18, 'EXT42142', 20, '8831003391', 'C\'è un complotto, Harry Potter. Un complotto per far succedere le cose più terribili, quest\'anno, al', 3),
	(6, 'sss1111', 'sss', 114, 'sss', 3, 2, 2, 'ss', 1, 'ss', 'ss', 1),
	(7, 'sss', 'sss', 114, 'sss', 3, 2, 2, 'ss', 1, 'ss', 'ss', 1),
	(8, 'sss', 'sss', 114, 'sss', 3, 2, 2, 'ss', 1, 'ss', 'ss', 1),
	(10, 'horrriiisssssss', 'sdsds', 1998, 'sdsdsdssss', 4, 6, 3, '111111', 5, '121212', 'sdsds', 4);

-- Dump della struttura di tabella libreria.book_in_order
CREATE TABLE IF NOT EXISTS `book_in_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `cover` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella libreria.book_in_order: ~0 rows (circa)

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella libreria.cart_list: ~2 rows (circa)
INSERT INTO `cart_list` (`id`, `user_id`, `book_id`, `quantity`, `price`, `cover`) VALUES
	(2, 7, 1, 1, 15, 'flex'),
	(3, 7, 1, 1, 30.5, 'hard'),
	(4, 7, 1, 1, 15, 'flex');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella libreria.order_list: ~0 rows (circa)

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

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
