-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Creato il: Nov 22, 2025 alle 11:30
-- Versione del server: 11.3.2-MariaDB-1:11.3.2+maria~ubu2204
-- Versione PHP: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `VERIFICA`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `Dipendenti`
--

CREATE TABLE `Dipendenti` (
  `Matricola` int(11) NOT NULL,
  `CF` char(16) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Cognome` varchar(50) DEFAULT NULL,
  `Indirizzo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `Dipendenti`
--

INSERT INTO `Dipendenti` (`Matricola`, `CF`, `Nome`, `Cognome`, `Indirizzo`) VALUES
(101, 'RSSMRA80A01H501X', 'Marco', 'Rossi', 'Via Manzoni 10, Milano'),
(102, 'BNCLRA90B15F205Y', 'Laura', 'Bianchi', 'Corso Garibaldi 7, Torino'),
(103, 'VRDLGU85C30H224Z', 'Luca', 'Verdi', 'Via Mazzini 5, Firenze'),
(104, 'FRNGPP95D22L219Q', 'Giuseppe', 'Ferrari', 'Via Roma 20, Milano'),
(105, 'CNTFBA99E05L219N', 'Fabio', 'Conti', 'Via Milano 2, Bologna'),
(106, 'MRTGLA88G14H501B', 'Giulia', 'Martini', 'Via Verdi 9, Napoli'),
(107, 'BRTPLA93H24A345K', 'Paolo', 'Bartoli', 'Via Roma 11, Milano'),
(108, 'BNDSSA01L12F205D', 'Sara', 'Bondi', 'Via Tasso 6, Torino');

-- --------------------------------------------------------

--
-- Struttura della tabella `Magazzini`
--

CREATE TABLE `Magazzini` (
  `Codice` int(11) NOT NULL,
  `Capienza` int(11) DEFAULT NULL,
  `Indirizzo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `Magazzini`
--

INSERT INTO `Magazzini` (`Codice`, `Capienza`, `Indirizzo`) VALUES
(1, 5000, 'Via Roma 12, Milano'),
(2, 3000, 'Via Verdi 8, Torino'),
(3, 7000, 'Via Dante 25, Firenze'),
(4, 4000, 'Via Leopardi 14, Bologna'),
(5, 6000, 'Via Carducci 3, Napoli');

-- --------------------------------------------------------

--
-- Struttura della tabella `MateriePrime`
--

CREATE TABLE `MateriePrime` (
  `Tipologia` varchar(50) NOT NULL,
  `CostoUnitario` decimal(10,2) DEFAULT NULL,
  `PesoUnitario` decimal(10,2) DEFAULT NULL,
  `Codice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `MateriePrime`
--

INSERT INTO `MateriePrime` (`Tipologia`, `CostoUnitario`, `PesoUnitario`, `Codice`) VALUES
('Burro', 3.00, 1.50, 3),
('Cioccolato', 4.50, 2.00, 2),
('Farina', 2.50, 1.00, 1),
('Latte', 2.80, 1.20, 4),
('Lievito', 0.50, 0.30, 5),
('Olio d\'oliva', 1.00, 0.80, 5),
('Sale', 0.80, 1.00, 2),
('Uova', 3.20, 1.00, 4),
('Vanillina', 2.00, 0.50, 3),
('Zucchero', 1.20, 0.50, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `Prodotti`
--

CREATE TABLE `Prodotti` (
  `Id` int(11) NOT NULL,
  `Codice` int(11) DEFAULT NULL,
  `Matricola` int(11) DEFAULT NULL,
  `Descrizione` varchar(100) DEFAULT NULL,
  `Nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `Prodotti`
--

INSERT INTO `Prodotti` (`Id`, `Codice`, `Matricola`, `Descrizione`, `Nome`) VALUES
(10, 1, 101, 'Pane di tipo integrale', 'Pane Integrale'),
(11, 1, 101, 'Pane bianco classico', 'Pane Bianco'),
(12, 2, 102, 'Torta al cioccolato', 'Torta Choco'),
(13, 2, 102, 'Biscotti al burro', 'Biscotti Butter'),
(14, 3, 103, 'Focaccia salata', 'Focaccia'),
(15, 3, 104, 'Cornetto semplice', 'Cornetto'),
(16, 4, 105, 'Latte intero pastorizzato', 'Latte Intero'),
(17, 4, 105, 'Torta alla vaniglia', 'Torta Vaniglia'),
(18, 5, 106, 'Pane al cioccolato', 'Pane Choco'),
(19, 5, 107, 'Brioche alla crema', 'Brioche'),
(20, 5, 108, 'Pizza Margherita', 'Pizza');

-- --------------------------------------------------------

--
-- Struttura della tabella `Ricette`
--

CREATE TABLE `Ricette` (
  `Tipologia` varchar(50) NOT NULL,
  `Id` int(11) NOT NULL,
  `Qta` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `Ricette`
--

INSERT INTO `Ricette` (`Tipologia`, `Id`, `Qta`) VALUES
('Burro', 13, 0.20),
('Burro', 19, 0.10),
('Cioccolato', 12, 0.40),
('Cioccolato', 18, 0.30),
('Farina', 10, 1.00),
('Farina', 11, 1.00),
('Farina', 12, 0.50),
('Farina', 14, 0.60),
('Farina', 17, 0.80),
('Farina', 18, 0.80),
('Farina', 20, 0.90),
('Latte', 16, 1.00),
('Lievito', 18, 0.10),
('Lievito', 20, 0.10),
('Olio d\'oliva', 20, 0.10),
('Sale', 10, 0.10),
('Sale', 14, 0.10),
('Sale', 20, 0.05),
('Uova', 19, 0.20),
('Vanillina', 17, 0.10),
('Zucchero', 11, 0.20),
('Zucchero', 12, 0.30),
('Zucchero', 17, 0.40);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `Dipendenti`
--
ALTER TABLE `Dipendenti`
  ADD PRIMARY KEY (`Matricola`);

--
-- Indici per le tabelle `Magazzini`
--
ALTER TABLE `Magazzini`
  ADD PRIMARY KEY (`Codice`);

--
-- Indici per le tabelle `MateriePrime`
--
ALTER TABLE `MateriePrime`
  ADD PRIMARY KEY (`Tipologia`),
  ADD KEY `Codice` (`Codice`);

--
-- Indici per le tabelle `Prodotti`
--
ALTER TABLE `Prodotti`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Codice` (`Codice`),
  ADD KEY `Matricola` (`Matricola`);

--
-- Indici per le tabelle `Ricette`
--
ALTER TABLE `Ricette`
  ADD PRIMARY KEY (`Tipologia`,`Id`),
  ADD KEY `Id` (`Id`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `MateriePrime`
--
ALTER TABLE `MateriePrime`
  ADD CONSTRAINT `MateriePrime_ibfk_1` FOREIGN KEY (`Codice`) REFERENCES `Magazzini` (`Codice`);

--
-- Limiti per la tabella `Prodotti`
--
ALTER TABLE `Prodotti`
  ADD CONSTRAINT `Prodotti_ibfk_1` FOREIGN KEY (`Codice`) REFERENCES `Magazzini` (`Codice`),
  ADD CONSTRAINT `Prodotti_ibfk_2` FOREIGN KEY (`Matricola`) REFERENCES `Dipendenti` (`Matricola`);

--
-- Limiti per la tabella `Ricette`
--
ALTER TABLE `Ricette`
  ADD CONSTRAINT `Ricette_ibfk_1` FOREIGN KEY (`Tipologia`) REFERENCES `MateriePrime` (`Tipologia`),
  ADD CONSTRAINT `Ricette_ibfk_2` FOREIGN KEY (`Id`) REFERENCES `Prodotti` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
