-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 10. Mai 2020 um 23:50
-- Server-Version: 10.4.8-MariaDB
-- PHP-Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `raume`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `raume`
--

CREATE TABLE `raume` (
  `Raum_nr` varchar(50) NOT NULL,
  `rm_typ` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `raume`
--

INSERT INTO `raume` (`Raum_nr`, `rm_typ`) VALUES
('H002', 5),
('H069', 4),
('H231', 1),
('H234', 3),
('H250', 1),
('H345', 2),
('H500', 2),
('H687', 5),
('H732', 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `raum_typ`
--

CREATE TABLE `raum_typ` (
  `rm_typ` varchar(50) NOT NULL,
  `rm_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `raum_typ`
--

INSERT INTO `raum_typ` (`rm_typ`, `rm_id`) VALUES
('Informatik', 1),
('Allgemeiner unterrichts Raum', 2),
('Werkstatt', 3),
('Toilette', 4),
('Lehrer Zimmer', 5);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `raume`
--
ALTER TABLE `raume`
  ADD PRIMARY KEY (`Raum_nr`);

--
-- Indizes für die Tabelle `raum_typ`
--
ALTER TABLE `raum_typ`
  ADD PRIMARY KEY (`rm_typ`),
  ADD UNIQUE KEY `rm_id` (`rm_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
