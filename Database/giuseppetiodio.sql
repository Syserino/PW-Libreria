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
  `street` varchar(255) DEFAULT NULL,
  `cn` varchar(10) DEFAULT NULL,
  `cap` varchar(10) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.anagraphic: ~3 rows (circa)
INSERT INTO `anagraphic` (`id`, `name`, `surname`, `mail`, `gender`, `street`, `cn`, `cap`, `town`, `phone`) VALUES
	(5, 'Nicola', 'Varriale', 'nicola@esempio.it', 'M', 'via garibaldi', '13', '80100', 'Napoli', '3471567845'),
	(6, 'Cristina', 'Campo', 'cristina.campo@esempio.it', 'F', 'via dei ciliegi', '12', '70100', 'Bari', '2356897845'),
	(7, 'Giuseppe', 'Alfiero', 'giuseppe.alfiero@esempio.it', 'M', 'via dei monti', '22', '80100', 'Napoli', '1254874815');

-- Dump della struttura di tabella libreria.books
CREATE TABLE IF NOT EXISTS `books` (
  `id_book` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `public_year` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_book`),
  KEY `FK_books_categories` (`id_category`),
  CONSTRAINT `FK_books_categories` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id_category`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.books: ~2 rows (circa)
INSERT INTO `books` (`id_book`, `title`, `author`, `public_year`, `description`, `price`, `quantity`, `id_category`) VALUES
	(1, 'La mappa dei desideri', 'Carrie Ryan , John Parke Davis', '2014-05-15', 'Chi possiede la Mappa dei Desideri può arrivare ovunque voglia. Per il momento però nessuno può servirsi dei suoi poteri, perché è stata divisa in brandelli: il primo, la Rosa dei Venti, appare all\'improvviso nel parcheggio di un supermercato insieme a un\'onda d\'acqua solcata da un vascello di corsari, sotto lo sguardo incredulo della dodicenne Marrill. Intenta a inseguire il suo gatto, Marrill si trova catapultata nella Corrente Pirata, un mondo popolato da foreste parlanti, farfalle di spuma di mare e crostacei con le piume. Soltanto la mappa può ricondurla nel suo mondo. E Marrill non è l\'unica a cercarla: Fin, cresciuto nella Corrente Pirata, a dodici anni è già il Maestro dei Ladri grazie a un raro potere: chiunque lo incontri ben presto si dimentica di lui. Guidato da una misteriosa profezia, Fin vuole la mappa per ritrovare la madre scomparsa. Quando i destini di Marrill e Fin incrociano la rotta di una ciurma di temibili pirati, la ricerca della mappa si trasforma in una questione di vita o di morte. Età di lettura: da 11 anni.', 30.5, 10, 1),
	(2, 'Lavorare con intelligenza emotiva', 'Daniel Goleman, ', '2000-03-23', 'Saper gestire le proprie emozioni nelle varie situazioni a cui la vita ci mette di fronte, può essere una qualità determinante per raggiungere risultati importanti sia nel lavoro, che nella sfera personale.', 17.5, 15, 5);

-- Dump della struttura di tabella libreria.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.categories: ~6 rows (circa)
INSERT INTO `categories` (`id_category`, `name`, `description`) VALUES
	(1, 'Avventura', 'Il romanzo di avventura è un genere letterario che nasce nel XVIII secolo e narra di viaggi in terre lontane e quindi celebra il coraggio e l\'ingegno umano.'),
	(2, 'Storico', 'Un romanzo storico è un\'opera narrativa ambientata nel passato, con un\'accurata ricostruzione dell\'epoca attraverso atmosfere, costumi, usanze, condizioni sociali e mentalità dei personaggi principali.'),
	(3, 'Fantasy', 'Il termine fantasy racchiude un insieme di elementi imprescindibili: soprannaturale: in questi romanzi è preponderante la tematica sovrannaturale, che consta di ambientazioni, fenomeni e creature che non appartengono alla nostra dimensione o comunque la distorcono o arricchiscono con particolari insoliti.'),
	(4, 'Horror', 'Oggi esiste un preciso genere narrativo, il genere horror, basato proprio su storie che riescono a provocare nel lettore orrore e paura. Il racconto o il romanzo horror si chiama anche gotico, di fantasmi (o ghost story, all\'inglese), del terrore e così via.'),
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
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `id_anagraphic` int(11) NOT NULL DEFAULT 0,
  `id_book` int(11) NOT NULL DEFAULT 0,
  `status` enum('DA SPEDIRE','SPEDITO','CONSEGNATO') DEFAULT NULL,
  PRIMARY KEY (`id_order`),
  KEY `id_anagraphic` (`id_anagraphic`,`id_book`),
  KEY `id_book` (`id_book`),
  CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`id_anagraphic`) REFERENCES `anagraphic` (`id`),
  CONSTRAINT `order_list_ibfk_2` FOREIGN KEY (`id_book`) REFERENCES `books` (`id_book`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.order_list: ~2 rows (circa)
INSERT INTO `order_list` (`id_order`, `id_anagraphic`, `id_book`, `status`) VALUES
	(2, 5, 1, 'SPEDITO'),
	(3, 6, 2, 'CONSEGNATO');

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

-- Dump della struttura di tabella libreria.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_privileges` int(11) NOT NULL DEFAULT 0,
  `anagraphic_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_users_anagraphic` (`anagraphic_id`) USING BTREE,
  KEY `FK_users_privileges` (`id_privileges`),
  CONSTRAINT `FK_users_anagraphic` FOREIGN KEY (`anagraphic_id`) REFERENCES `anagraphic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_users_privileges` FOREIGN KEY (`id_privileges`) REFERENCES `privileges` (`id_privileges`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.users: ~2 rows (circa)
INSERT INTO `users` (`id`, `username`, `password`, `id_privileges`, `anagraphic_id`) VALUES
	(6, 'utente', 'utente', 4, 5),
	(7, 'admin', 'admin', 1, 5);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;