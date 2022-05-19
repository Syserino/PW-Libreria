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
CREATE DATABASE IF NOT EXISTS `libreria` /*!40100 DEFAULT CHARACTER SET latin1 */;
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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.anagraphic: ~0 rows (circa)
INSERT INTO `anagraphic` (`id`, `name`, `surname`, `mail`, `gender`, `street`, `cn`, `cap`, `town`) VALUES
	(5, 'ss', 'ss', 'ss', 's', 'ss', 'ss', 's', 's');

-- Dump della struttura di tabella libreria.books
CREATE TABLE IF NOT EXISTS `books` (
  `id_book` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `desc` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  KEY `FK_books_categories` (`id_category`),
  CONSTRAINT `FK_books_categories` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id_category`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.books: ~0 rows (circa)

-- Dump della struttura di tabella libreria.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `desc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.categories: ~0 rows (circa)

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
  PRIMARY KEY (`id_order`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.order_list: ~0 rows (circa)
INSERT INTO `order_list` (`id_order`, `id_anagraphic`, `id_book`, `status`) VALUES
	(1, 0, 0, 'SPEDITO');

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
