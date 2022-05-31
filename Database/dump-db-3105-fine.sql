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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.anagraphic: ~6 rows (circa)
INSERT INTO `anagraphic` (`id`, `name`, `surname`, `mail`, `gender`, `codice_fiscale`, `street`, `cn`, `cap`, `town`, `city`, `phone`) VALUES
	(5, 'Nicola', 'ese', 'nicola@esempio.it', NULL, 'sssss', 'Nicola', '13', '80100', 'Napoli', 'ssss', '3471567845'),
	(6, 'Cristina', 'Campo', 'cristina.campo@esempio.it', 'F', NULL, 'via dei ciliegi', '12', '70100', 'Bari', NULL, '2356897845'),
	(7, 'Giuseppe', 'Alfiero', 'giuseppe.alfiero@esempio.it', 'M', NULL, 'via dei monti', '22', '80100', 'Napoli', NULL, '1254874815'),
	(28, 'marco', 'ss', 'email@l.it', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(30, NULL, NULL, 'pane@live.it', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(33, 'Giuseppe', 'Alfiero', 'giuseppealfiero95@gmail.com', 'Maschio', 'ssssss111', 'Giuseppe', '12', '86037', 'Palata', 'Palata', '3917281826');

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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.books: ~45 rows (circa)
INSERT INTO `books` (`id`, `title`, `author`, `public_year`, `description`, `price_flexiblecover`, `price_hardcover`, `e_book`, `code_ebook`, `quantity`, `isbn`, `short_desch`, `category_id`) VALUES
	(1, 'La mappa dei desideri', 'Carrie Ryan , John Parke Davis', 2003, 'Chi possiede la Mappa dei Desideri può arrivare ovunque voglia. Per il momento però nessuno può servirsi dei suoi poteri, perché è stata divisa in brandelli: il primo, la Rosa dei Venti, appare all\'improvviso nel parcheggio di un supermercato insieme a un\'onda d\'acqua solcata da un vascello di corsari, sotto lo sguardo incredulo della dodicenne Marrill. Intenta a inseguire il suo gatto, Marrill si trova catapultata nella Corrente Pirata, un mondo popolato da foreste parlanti, farfalle di spuma di mare e crostacei con le piume. Soltanto la mappa può ricondurla nel suo mondo. E Marrill non è l\'unica a cercarla: Fin, cresciuto nella Corrente Pirata, a dodici anni è già il Maestro dei Ladri grazie a un raro potere: chiunque lo incontri ben presto si dimentica di lui. Guidato da una misteriosa profezia, Fin vuole la mappa per ritrovare la madre scomparsa. Quando i destini di Marrill e Fin incrociano la rotta di una ciurma di temibili pirati, la ricerca della mappa si trasforma in una questione di vita o di morte. Età di lettura: da 11 anni.', 15, 30.5, 10.25, 'EJ24S6481', 10, '8804655585', 'Intenta a inseguire il suo gatto, Marrill si trova catapultata nella Corrente Pirata, un mondo popol', 1),
	(2, 'Lavorare con intelligenza emotiva', 'Daniel Goleman, ', 1998, 'Saper gestire le proprie emozioni nelle varie situazioni a cui la vita ci mette di fronte, può essere una qualità determinante per raggiungere risultati importanti sia nel lavoro, che nella sfera personale.', 22.5, 50.5, 12.5, 'EJ30534D', 15, '8817118788', 'L\'ambiente di lavoro è l\'ambito in cui si manifesta con maggiore evidenza l\'importanza di un\'intelli', 5),
	(3, 'Harry Potter e la Pietra filosofale', 'J.K.Rowling', 1997, 'La storia di Harry Potter comincia qui. Ecco la prima descrizione del suo aspetto:\r\n«Harry aveva un viso sottile, ginocchia nodose, capelli neri e occhi verde chiaro. Portava un paio di occhiali rotondi, tenuti insieme con un sacco di nastro adesivo per tutte le volte che Dudley lo aveva preso a pugni sul naso. L\'unica cosa che a Harry piaceva del proprio aspetto era una cicatrice molto sottile sulla fronte, che aveva la forma di una saetta.»\r\nCosì ce lo presenta J.K Rowling, nel libro pubblicato da Salani nel maggio 1998, Harry Potter e la pietra filosofale. Si tratta del primo di una serie di sette volumi, incentrati sulle avventure di un personaggio che ha superato in popolarità qualunque altro, anche grazie agli otto film che l’hanno visto protagonista.\r\nHarry è un giovanissimo mago, dotato di poteri incredibili, di cui ancora non conosce le potenzialità né le implicazioni. La sua vicenda si articola tra elementi che tutti conosciamo – la scuola, l’amicizia, le sfide quotidiane, lo sport, un animale d’affezione – ma calati in un universo disegnato con immaginifica fantasia dalla Rowling. Qui, tutto, è al contempo straordinario e riconoscibile. E la storia di Harry, che da undicenne inadeguato al mondo dei “babbani”, e pertanto infelice, arriva a confrontarsi con i temi più importanti di ogni esistenza, altro non è che un percorso di formazione. La sua “linea d’ombra” si trova al binario 9 e ¾ e noi siamo tutti lì, pronti ad attraversare quella barriera magica con lui.', 15.8, 30.5, 13.5, 'EX234567', 20, '8867158120', 'Harry aveva un viso sottile, ginocchia nodose, capelli neri e occhi verde chiaro. Portava un paio di', 3),
	(4, 'Harry Potter e la Camera dei segreti', 'J.K.Rowling', 1998, '«C\'è un complotto, Harry Potter. Un complotto per far succedere le cose più terribili, quest\'anno, alla scuola di magia e stregoneria di Hogwarts.»', 15, 30.5, 9.5, 'EXT42142', 20, '8831003391', 'C\'è un complotto, Harry Potter. Un complotto per far succedere le cose più terribili, quest\'anno, al', 3),
	(5, 'Harry Potter e il prigioniero di Azkaban', 'J.K.Rowling', 1999, '«Benvenuti sul Nottetempo, mezzo di trasporto di emergenza per maghi e streghe in difficoltà. Allungate la bacchetta, salile a bordo e vi portiamo dove volete». Una terribile minaccia incombe sulla scuola di magia e stregoneria di Hogwarts. Sirius Black, il famigerato assassino, è evaso dalla prigione di Azkaban. È a caccia e la sua preda è proprio a Hogwarts, dove Harry e i suoi amici stanno per cominciare il loro terzo anno. Nonostante la sorveglianza dei Dissennatori la scuola non è più un luogo sicuro, perché al suo interno si nasconde un traditore... ', 14.99, 13.5, 9, 'EXT42143', 34, '8831003407', '«Benvenuti sul Nottetempo, mezzo di trasporto di emergenza per maghi e streghe in difficoltà. Allung', 3),
	(6, 'Harry Potter e il calice di fuoco', 'J.K.Rowling', 1998, '«Le sfide saranno tre, distribuite nell\'arco dell\'anno scolastico, e metteranno alla prova i campioni in molti modi diversi ... La loro perizia magica, la loro audacia, i loro poteri deduttivi e, naturalmente, la loro capacità di affrontare il pericolo». Questo che avete tra le mani è il volume centrale delle avventure di Harry Potter. Ormai Harry è un mago adolescente, vuole andarsene dalla casa dei Dursley, vuole sognare la Cercatrice di Corvonero per cui ha una cotta tremenda... E poi vuole scoprire di più sulla grande competizione che si terrà a Hogwarts e non si svolge da cento anni. Harry vuole davvero essere un normale mago di quattordici anni. Ma sfortunatamente non è normale, nemmeno come mago. E stavolta la differenza può essere fatale.', 15, 21.99, 8.99, 'EXT42144', 41, '8831003414', '«Le sfide saranno tre, distribuite nell\'arco dell\'anno scolastico, e metteranno alla prova i campion', 3),
	(7, 'Harry Potter e l\'ordine della fenice', 'J.K.Rowling', 1998, '«Tu condividi i suoi pensieri e le sue emozioni. Il preside ritiene che questo non debba continuare. Desidera che io ti insegni a chiudere la mente al Signore Oscuro». Il quinto anno a Hogwarts si annuncia carico di sfide difficili per Harry Potter: Lord Voldemort è tornato. Che cosa succederà ora che il Signore Oscuro è di nuovo in pieno possesso dei suoi terrificanti poteri? Il Ministro della Magia sembra non prendere sul serio questa spaventosa minaccia. Toccherà a Harry organizzare la resistenza, con l\'aiuto degli amici di sempre e il tumultuoso coraggio dell\'adolescenza. ', 22.54, 30.5, 9.99, 'EXT42145', 12, '8831003421', '«Tu condividi i suoi pensieri e le sue emozioni. Il preside ritiene che questo non debba continuare.', 3),
	(8, 'Harry Potter e il principe mezzosangue', 'J.K.Rowling', 1998, '«Sospeso nel buio sopra la scuola c\'era il vivido teschio verde con la lingua di serpe, il marchio lasciato dai Mangiamorte tutte le volte che entravano in un edificio... Tutte le volte che uccidevano...». È il sesto anno a Hogwarts e per Harry niente è più come prima. L\'ultimo legame con la sua famiglia è troncato, perfino la scuola non è la dimora accogliente di un tempo. Voldemort ha radunato le sue forze e nessuno può più negare il suo ritorno. Harry capisce che è arrivato il momento di affrontare il suo destino. L\'ultimo atto si avvicina, sarà all\'altezza di questa sfida fatale?', 21, 30.5, 11, 'EXT42146', 17, '8831003437', '«Sospeso nel buio sopra la scuola c\'era il vivido teschio verde con la lingua di serpe, il marchio l', 3),
	(9, 'Harry Potter e i doni della morte', 'J.K.Rowling', 1998, '«Consegnatemi Harry Potter» proseguì la voce di Voldemort, «e a nessuno verrà fatto del male. Consegnatemi Harry Potter e lascerò la scuola intatta. Consegnatemi Harry Potter e verrete ricompensati». Il confronto finale con Voldemort è imminente, una grande battaglia è alle porte e Harry, con coraggio, compirà ciò che dev\'essere fatto. Mai i perché sono stati così tanti e mai come in questo libro si ha la soddisfazione delle risposte. Giunti all\'ultima pagina si vorrà rileggere tutto daccapo, per chiudere il cerchio, per riscoprire tutti i segreti e i significati profondi, ma soprattutto per ritardare il più possibile il distacco dai meravigliosi personaggi che ci hanno accompagnato per così tanto tempo e che non hanno ancora smesso di incantarci.', 21.99, 19.99, 18, 'EXT42147', 22, '8831003445', '«Consegnatemi Harry Potter» proseguì la voce di Voldemort, «e a nessuno verrà fatto del male. Conseg', 3),
	(10, 'horrriiisssssss', 'sdsds', 1998, 'sdsdsdssss', 4, 6, 3, '111111', 5, '121212', 'sdsds', 4),
	(30, 'It', 'Stephen King', 1986, ' In un ridente e sonnolenta cittadina americana, un gruppo di ragazzini, esplorando per gioco le fogne, risveglia da un sonno primordiale una creatura informe e mostruosa: IT. E quando, molti anni dopo, It ricompare a chiedere il suo tributo di sangue, gli stessi ragazzini, ormai adulti, abbandonano la famiglia e lavoro per tornare a combatterla.', 37, 60, 13, 'EXH12345', 24, '8868360268', 'In un ridente e sonnolenta cittadina americana, un gruppo di ragazzini, esplorando per gioco le fogn', 4),
	(31, 'Shining', 'Stephen King', 1977, 'L\'Overlook, uno strano e imponente albergo che domina le alte montagne del Colorado, è stato teatro di numerosi delitti e suicidi e sembra aver assorbito forze maligne che vanno al di là di ogni comprensione umana e si manifestano soprattutto d\'inverno quando l\'albergo chiude e resta isolato per la neve. Uno scrittore fallito, Jack Torrance, con la moglie Wendy e il figlio Danny di cinque anni, accetta di fare il guardiano invernale all\'Overlook ed è allora che le forze del male si scatenano. Dinanzi a Danny, che è dotato di potere extrasensoriale, lo shine, si materializzano gli orribili fatti accaduti nelle stanze dell\'albergo, ma se il bambino si oppone con forza a insidie e presenze, il padre ne rimane vittima.', 10.2, 23.27, 6.99, 'EXH67890', 36, '8845246558', 'L\'Overlook, uno strano e imponente albergo che domina le alte montagne del Colorado, è stato teatro ', 4),
	(32, 'Racconti del terrore', 'Edgar Allan Poe ', 1848, 'Quella che avete davanti è una raccolta di racconti di paura che vi prenderà alla gola e vi segnerà per sempre. Leggerete di case lugubri, color del piombo, circondate da paludi silenziose ed esalazioni pestilenziali, di navi fantasma che solcano i mari da secoli ormai e si gettano negli abissali vortici dell\'oceano, giù fino al centro esatto della Terra. Leggerete di persone murate vive quasi per capriccio, di altre seppellite ancora vive per sbaglio, e di amori che vincono la morte... ', 8, 12.35, 2.99, 'EXH24680', 22, '8804671939', 'In questa raccolta compaiono le storie più celebri come “La rovina di casa Usher”, “Il cuore rivelat', 4),
	(33, 'Frankenstein', 'Mary Shelley ', 1818, 'Lo scienziato Victor Frankenstein ed il fidato assistente Igor condividono la nobile visione di aiutare l\'umanità attraverso la loro innovativa ricerca sull\'immortalità. Ma gli esperimenti di Victor si spingono troppo oltre e la sua ossessione ha terribili conseguenze.', 9, 15.5, 3.99, 'EXH13579', 14, '8806228641', 'Lo scienziato Victor Frankenstein ed il fidato assistente Igor condividono la nobile visione di aiut', 4),
	(34, 'L\'esorcista', 'William Peter Blatty', 1971, 'Che cosa succede alla piccola Regan, trasformatasi in un mostro blasfemo che urla oscenità e frasi sconnesse? Sua madre, la famosa diva del cinema Chris MacNeil, non riesce a capirlo. Né ci riescono i medici e gli psichiatri né la polizia. Forse solo un esorcista può dare una risposta. Ma la Chiesa impone cautela, esige prove, chiede tempo. Intanto la casa risuona di colpi, i mobili si spostano da soli, un uomo muore con il collo spezzato, il fragile corpo di Regan sembra cedere alla tempesta che lo sconquassa. E lo scontro tra l\'uomo di Dio e gli spiriti del Male sembra ormai inevitabile.', 13.3, 10.8, 6.99, 'EXH45678', 37, '8893250179', 'Che cosa succede alla piccola Regan, trasformatasi in un mostro blasfemo che urla oscenità e frasi s', 4),
	(35, 'Le montagne della follia', 'H.P. Lovecraft', 1936, 'Nelle "Montagne", in un simile sacro bosco, sovrumano, dove catene montuose di ardesia precambriana si alzano fino all\'orlo inimmaginabile del pianeta, l\'uomo diventa cacciagione, preda, o addirittura campione scientifico da sezionare e notomizzare, crudamente, come un esemplare di animale raro appena scoperto.', 16.15, 14.25, 5.99, 'EXH87654', 11, '8842824348', '"Le montagne della follia" di Howard Phillips Lovecraft racconta il catastrofico esito di una spediz', 4),
	(36, 'Il richiamo di Cthulhu', 'H.P. Lovecraft', 1928, 'Riordinando le vecchie carte di un defunto prozio, Francis Wayland Thurston s\'imbatte in un bassorilievo mostruoso nato dagli incubi e dalle visioni di un ignoto artista e in alcuni documenti in cui si narra di un culto infernale osservato nelle paludi della Louisiana. Seguendo queste tracce e quelle del marinaio norvegese Gustaf Johansen, naufrago in un\'isola fantasma comparsa dal nulla, Thurston viene così a conoscenza di Cthulhu, una creatura gigantesca, tentacolare e informe che abita da tempi immemorabili il fondo degli abissi marini e la cui scoperta rischierà di rivelarsi fatale.', 4.66, 7, 1.99, 'EXH69420', 4, ' 8811000645', 'Riordinando le vecchie carte di un defunto prozio, Francis Wayland Thurston s\'imbatte in un bassoril', 4),
	(37, 'Ghost Story', 'Peter Straub', 2013, 'La storia del fantasma di un giovane uomo, scomparso prematuramente in un incidente stradale, che fa ritorno nella casa in cui ha vissuto, osservando la sofferenza della propria amata.', 9.87, 23.63, 5.49, 'EXH76894', 13, '0575084642', 'La storia del fantasma di un giovane uomo, scomparso prematuramente in un incidente stradale, che fa', 4),
	(38, 'Dracula', 'Bram Stoker', 1897, ' In Transilvania per concludere la vendita di una casa londinese al Conte Dracula, discendente di un\'antichissima casata locale, il giovane agente immobiliare Jonathan Harker scopre che il suo cliente è una creatura di mistero e orrore... Dracula, archetipo delle infinite storie di vampiri narrate dalla letteratura e dal cinema, mette in scena l\'eterna lotta tra il Bene e il Male, ma anche tra la ragione e l\'istinto, tra le pulsioni più inconfessabili e il perbenismo non solo vittoriano. Una storia scaturita dall\'inconscio ed entrata in tutti i nostri incubi.', 8.44, 11, 0.99, 'H5318008', 11, '8804671610', ' In Transilvania per concludere la vendita di una casa londinese al Conte Dracula, discendente di un', 4),
	(39, 'American Psycho', 'Bret Easton Ellis', 1991, 'Patrick Bateman è giovane, bello, ricco. Vive a Manhattan, lavora a Wall Street e con i colleghi Timothy, David, Patten e Craig, frequenta i locali più alla moda, le palestre più esclusive e le toilette dove gira la migliore cocaina della città, discutendo di nuovi ristoranti, cameriere corpoduro ed eleganza maschile. Ma la sua vita è ricca di particolari piuttosto inquietanti e quando le tenebre scendono su New York, Patrick Bateman si trasforma in un torturatore omicida, freddo, metodico, spietato.', 13.3, 8.4, 3.99, 'EXH01010', 24, '8806219251', 'La dualità di Patrick Bateman come uomo d\'affari e maniaco omicida narrata da Bret Easton Ellis', 4),
	(40, 'I pilastri della Terra', 'Ken Follett', 1989, 'Un mystery, una storia d\'amore, una grande \r\nrievocazione storica: nella sua opera più ambiziosa e acclamata,\r\n Ken Follett tocca una dimensione epica, trasportandoci nell\'Inghilterra\r\n medievale al tempo della costruzione di una cattedrale gotica. \r\nIntreccio, azione e passioni si sviluppano così sullo sfondo di un\'era \r\nricca di intrighi e cospirazioni, pericoli e minacce, guerre civili, \r\ncarestie, conflitti religiosi e lotte per la successione al trono. \r\nCon la stessa suspense che caratterizza tutti i suoi thriller, \r\nFollett ricrea un\'epoca scomparsa e affascinante. Foreste, castelli e \r\nmonasteri sono l\'avvolgente paesaggio, mosso dai ritmi della vita \r\nquotidiana e dalla pressione di eventi storici e naturali entro il \r\nquale per circa quarant\'anni si confrontano e si scontrano le segrete \r\naspirazioni e i sentimenti dei protagonisti - monaci, mercanti, artigiani, \r\nnobili, fanciulle misteriose -, vittime o pedine di avvenimenti che \r\nne segnano i destini e rimettono continuamente in discussione la \r\ncostruzione della cattedrale.', 14.8, 24.9, 9.99, 'EX293599', 14, '8804666927', 'Racconta la costruzione di una cattedrale \r\na Kingsbridge, in Inghilterra.', 2),
	(41, 'Il segreto della curatrice', 'Laura Usai', 2019, 'Gwen ha un dono: guarire con il tocco delle mani ', 9.99, 18.5, 3.99, 'EX672133', 11, '1677867884', 'Gwen ha un dono: guarire con il tocco delle mani ', 2),
	(43, 'Il nome della rosa', 'Umberto Eco', 1980, 'Sul finire del 1327, il frate francescano Guglielmo da ', 17.1, 23.7, 9.99, 'EX896723', 8, '8834603000', 'Un\'abbazia medievale isolata. ', 2),
	(44, 'La cacciatrice di storie perdute', 'Sejal Badani', 2019, 'Jaya ha il cuore spezzato. Ha tentato a lungo di avere un bambino, ', 4.3, 9.4, 4.3, 'EK456789', 5, '8822732642', 'Jaya sta per scoprire, dopo molte sofferenze, si essere più forte di', 2),
	(45, 'Il sangue dei fratelli', 'Emma Pomilio', 2011, 'Fausto e Marco si somigliano come due gocce d\'acqua e vivono nella ', 6.99, 9.5, 3.2, 'EX2278132', 2, '8804608707', 'Fausto e Marco si somigliano come due gocce d\'acqua e vivono nella ', 2),
	(46, 'In nome dei Medici. Il romanzo di Lorenzo il Magni', 'Barbara Frale', 2018, 'Roma, febbraio 1466. Arrivato nell’Urbe per risolvere questioni di affari, ', 11.4, 17.8, 4.99, 'EX342567', 6, '8822721174', 'Roma, febbraio 1466. Arrivato nell’Urbe per risolvere questioni di affari, ', 2),
	(47, 'Imprimatur', 'Monaldi & Sorti', 2015, 'Roma, settembre 1683. In una locanda nel cuore della Città Santa ', 14.25, 19.5, 7.99, 'EX439977', 7, '8868528324', 'Roma, settembre 1683. In una locanda nel cuore della Città Santa ', 2),
	(48, 'Dissimulatio', 'Monaldi & Sorti', 2017, 'Parigi, gennaio 1647 In una stazione di posta alle porte della città, ', 14.8, 17.1, 9.99, 'EX336519', 9, '8893880015', 'La verità si rivelerà appieno ', 2),
	(49, 'Veritas', 'Monaldi & Sorti', 2016, 'Da dieci anni una guerra rovinosa insanguina l’Europa. Solo la capitale ', 15.6, 19.9, 6.9, 'EX345522', 6, '8868528669', 'Nell’incanto di paesaggi ', 2),
	(50, 'L\'isola del tesoro', ' Robert Louis Stevenson ', 1883, 'Il romanzo è ambientato in un paesino sul mare, nell\'Inghilterra del Settecento: il giovane Jim Hawikins e sua madre, proprietaria della locanda "Ammiraglio Benbow", scoprono nel baule di un marinaio morto la mappa di un tesoro nascosto su un\'isola. Si tratta del tesoro di un famoso pirata, il capitano Flint. Jim, il dottor Livesey e il nobile Trelawney organizzano una spedizione a bordo della "Hispaniola" e portano con sé come cuoco di bordo un uomo dalla gamba di legno, Long John Silver, e il suo pappagallo. Inizia una grande avventura che per Jim sarà anche l\'iniziazione alla vita adulta e la scoperta della malvagità umana.', 8.55, 9.85, 1.99, 'S00SHEE1', 43, '8807901390', 'Il giovane Jim Hawikins e sua madre scoprono nel baule di un marinaio morto la mappa di un tesoro na', 1),
	(51, '20000 leghe sotto i mari', 'Jules Verne', 1870, 'Sul fondo dell’oceano, un oggetto lungo, fusiforme, a volte fosforescente, più grande di una balena, suscita la curiosità dei marinai.', 14.25, 9.4, 0.89, 'S00SHEE2', 29, '8868676079', 'Sul fondo dell’oceano, un oggetto lungo, fusiforme, a volte fosforescente, più grande di una balena,', 1),
	(52, 'Viaggio al centro della terra', 'Jules Verne', 1864, 'Il professore Otto Lidenbrock trova in un vecchio libro una pergamena che contiene un messaggio cifrato scritto in caratteri runici. Il messaggio viene decifrato da Axel, nipote del rinomato professore di mineralogia che insegna in un prestigioso ginnasio di Amburgo dove vive. Il testo in latino contiene le indicazioni per raggiungere il centro della Terra attraverso un vulcano, lo Snaeffels in Islanda.', 7.42, 9.75, 1.99, 'S00SHEE3', 25, '8809766016', 'Il professore Otto Lidenbrock trova in un vecchio libro una pergamena che contiene un messaggio cifr', 1),
	(53, 'Il giro del mondo in 80 giorni', 'Jules Verne', 1872, 'Phileas Fogg, distinto gentiluomo e membro onorato del prestigioso Reform Club, da perfetto inglese si ritrova a scommettere che riuscirà a fare il giro del mondo in 80 giorni. Parte, quindi, la sera stessa da Londra in compagnia del servo Passepartout in un itinerario che lo porterà dall\'Italia all\'Egitto, in India, Hong Kong, Giappone, Stati Uniti. I due viaggiatori vivranno rocambolesche avventure, inseguiti dal detective Fix che ha scambiato Fogg per un rapinatore. In India incontrano una donna, Auda, in procinto di essere arsa su una pira per un rito sacrificale e la salvano portandola con loro. Riusciranno a tornare a Londra in tempo?', 9, 8.45, 1.99, 'S00SHEE4', 11, '885801796X', 'Phileas Fogg, distinto gentiluomo e membro onorato del prestigioso Reform Club, da perfetto inglese ', 1),
	(54, 'I misteri della jungla nera', 'Emilio Salgari', 1895, 'Nel 1895 esce "I misteri della giungla nera" (la cui prima redazione del 1887 portava invece il titolo: Gli strangolatori del Gange), che racconta le avventure dell\'indiano Tremal-Naik, il coraggioo cacciatore di serpenti, per liberare la sua amata Ada dalle grinfie della setta dei Thug', 4.66, 6.7, 1.49, 'S00SHEE5', 31, '8883376684', 'Le avventure dell\'indiano Tremal-Naik, il coraggioo cacciatore di serpenti, per liberare la sua amat', 1),
	(55, 'L\'ultima avventura del pirata Long John Silver ', 'Björn Larsson', 2013, 'Dal suo nascondiglio sulle coste del Madagascar, lontano da un\'umanità che francamente non lo interessa, il vecchio Long John Silver scrive le memorie di una vita vissuta all\'insegna della libertà assoluta, alla quale ha sacrificato senza alcun rimpianto ogni altra cosa. Sa che la fine è vicina, ma l\'inscalfibile pirata con una gamba sola, che nell\'Isola del tesoro era riuscito a fuggire con parte del ricco bottino, la morte l\'ha guardata più volte negli occhi e non ne ha paura. Quello che non si aspetta è che il destino abbia in serbo per lui un\'ennesima avventura, quando sulla sua sperduta spiaggia africana compaiono due uomini bianchi in fin di vita, un avido lord inglese e un cencioso marinaio, unici sopravvissuti a un ammutinamento e a un naufragio dopo una rocambolesca spedizione negriera. È ancora una volta Jim Hawkins a ritrovarsi depositario delle leggendarie peripezie di Silver, ricevendo in Inghilterra da mani sconosciute questo racconto che il corsaro, ormai creduto morto, ha scritto di suo pugno.', 7.12, 8.8, 4.45, 'S00SHEE6', 8, '8870915212', 'Dal suo nascondiglio sulle coste del Madagascar, lontano da un\'umanità che francamente non lo intere', 1),
	(70, 'La Russia di Putin', 'Anna Politkovskaja', 2022, '«Siamo solo un mezzo, per lui. Un mezzo per raggiungere il potere personale.', 13.3, 16.5, 9.99, 'EX778961', 9, '8845936920', 'Siamo solo un mezzo, per lui.', 5),
	(71, 'L\'arte della guerra', 'Sun Tzu', 2013, 'Il modo migliore per essere certi di vincere una guerra è ', 7.6, 15.9, 4.2, 'EK768593', 20, '8807900525', 'Il modo migliore per essere certi di vincere una guerra è ', 5),
	(72, 'Una terra promessa', 'Barack Obama', 2020, 'I lettori scopriranno ciò che Obama pensava mentre nominava ', 24.9, 26.6, 10.9, 'EK902166', 4, '8811149873', 'Un appassionante e personalissimo racconto ', 5),
	(73, 'Stai zitta', 'Michela Murgia', 2021, 'Di tutte le cose che le donne possono fare nel mondo, ', 10, 13, 9, 'EK229944', 3, '8806249182', 'Se si è donna, in Italia si muore anche di linguaggio.', 5),
	(74, 'Pappagalli verdi', 'Gino Strada', 2022, 'Gino Strada arriva quando tutti scappano, e', 4.8, 4.95, 3.6, 'EK778922', 9, '8880095301', 'Questo libro ci consegna le immagini più vivide dell\'esperienza di medico ', 5),
	(75, 'I più celebri discorsi della storia', 'Roberta Mazzini', 2014, 'Un volume che raccoglie i più significativi discorsi di uomini di ', 4.5, 9.99, 4.8, 'EK113389', 11, '8878996403', 'Vol. 1. Dallantichità alle soglie della seconda guerra mondiale', 5),
	(76, 'Specchio delle mie brame. La prigione della bellez', 'Maura Gancitano ', 2022, 'L\'idea che la bellezza sia qualcosa di oggettivo e naturale è una superstizione moderna. ', 13.3, 18.9, 5.8, 'EH124365', 2, '8806251147', 'La bellezza è una gabbia dorata in cui non ', 5),
	(77, 'Eresia', 'Citro Della Riva Massimo', 2021, 'Tragedia per alcuni, commedia per altri, farsa per altri ancora ', 16.9, 19, 3.8, 'EH763214', 5, '8894548259', 'Perché quando le coincidenze sono tante è sempre ', 5),
	(78, 'Homo Deus. Breve storia del futuro', 'Yuval Noah Harari', 2018, 'Nella seconda metà del XX secolo l\'umanità è riuscita in un\'impresa che ', 12.9, 12.9, 9.99, 'EK556623', 4, '8845298752', 'Il genere umano rischia di rendere se stesso superfluo.', 5),
	(79, 'Questa è l\'America. Storie per capire il presente ', 'Francesco Costa', 2020, 'Ci sono pochi posti nel mondo dove il divario tra quello che crediamo ', 17.8, 19.9, 9.99, 'EX872331', 8, '8804722465', 'Francesco Costa riflette sulle trasformazioni e i problemi dell\'America, ', 5),
	(80, 'Mysterium', 'Monaldi & Sorti', 2016, 'Mar di Toscana, dicembre 1646.', 18.9, 20, 7.8, 'EX907751', 9, '8868529703', 'Monaldi & Sorti ancora una volta rapiscono il lettore in ', 2),
	(81, 'Secretum', 'Monaldi & Sorti', 2015, 'Roma, luglio 1700. È anno di Giubileo: strade e piazze sono invase da torme ', 9.4, 19.9, 6.4, 'EX887162', 9, '8893880220', 'Monaldi & Sorti ancora una volta rapiscono il lettore in ', 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella libreria.book_in_order: ~1 rows (circa)
INSERT INTO `book_in_order` (`id`, `order_id`, `book_id`, `quantity`, `price`, `cover`) VALUES
	(4, 7, 1, 1, 15, 'flex');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella libreria.cart_list: ~0 rows (circa)

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- Dump dei dati della tabella libreria.order_list: ~3 rows (circa)
INSERT INTO `order_list` (`id`, `id_user`, `price`, `orderStatus`, `start`, `end`) VALUES
	(2, 7, 22, 'Da spedire', '2022-05-30', '2022-05-30'),
	(3, 7, 22, 'Da spedire', '2022-05-30', '2022-05-30'),
	(7, 19, 0, 'Da spedire', '2022-05-30', '2022-06-02');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Dump dei dati della tabella libreria.users: ~5 rows (circa)
INSERT INTO `users` (`id`, `username`, `password`, `privileges`, `anagraphic_id`) VALUES
	(6, 'utente', 'utente', 4, 5),
	(7, 'admin', 'admin', 1, 5),
	(17, 'pincopallino', 'ciaone', 4, 28),
	(19, 'marcolino', 'pane', 4, 30),
	(22, 'utentee', '1212', 4, 33);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
