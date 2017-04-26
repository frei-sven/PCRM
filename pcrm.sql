-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 26. Apr 2017 um 10:48
-- Server-Version: 10.1.21-MariaDB
-- PHP-Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `pcrm`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `approach`
--

CREATE TABLE `approach` (
  `id` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `comment` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `employee_IDFS` int(11) NOT NULL,
  `contactperson_IDFS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `approach`
--

INSERT INTO `approach` (`id`, `priority`, `date`, `time`, `comment`, `status`, `employee_IDFS`, `contactperson_IDFS`) VALUES
(5, 2, '2017-02-22', '15:00:00', 'Informations about the new delivery', 0, 8, 2),
(6, 3, '2017-03-22', '12:05:00', 'Top Secret!', 0, 11, 7),
(7, 2, '2017-03-22', '12:05:00', 'Smalltalk', 0, 3, 10),
(8, 1, '2017-03-22', '18:00:00', 'Important informations about my house.', 0, 5, 5),
(9, 1, '2017-03-22', '17:00:00', 'Do I want to know?', 0, 9, 10),
(11, 2, '2017-03-23', '08:00:00', 'Tomorrow', 0, 3, 2),
(12, 2, '2017-03-22', '14:30:00', 'New Cookingshow', 0, 5, 2),
(13, 1, '2017-03-22', '18:15:00', 'I want to talk to you and make kids with your goose.', 0, 1, 8),
(14, 3, '2017-03-27', '08:00:00', 'Remember me?', 1, 1, 2),
(15, 3, '2017-03-27', '15:20:00', 'Just to test.', 1, 4, 1),
(16, 2, '2017-03-27', '17:15:00', 'Anotha one', 1, 1, 6),
(17, 1, '2017-03-27', '18:00:00', 'You smart', 0, 7, 2),
(18, 3, '2017-03-28', '16:20:00', 'Die transparenz...', 0, 1, 10),
(19, 3, '2017-03-28', '17:50:00', 'Mir mached das ja die ganz ziit!', 0, 1, 5),
(20, 3, '2017-03-28', '13:00:00', 'Ich find grad mini Idee saumässig geil.', 0, 1, 8),
(21, 2, '2017-03-28', '13:00:00', 'Arrogante blöde H*****hn', 0, 4, 2),
(22, 2, '2017-03-28', '09:00:00', 'Hoi. Hoi? Hoi!', 1, 9, 6),
(23, 1, '2017-03-29', '12:00:00', 'Hi', 0, 1, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `text` varchar(1000) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `contactperson_IDFS` int(11) NOT NULL,
  `employee_IDFS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `contact`
--

INSERT INTO `contact` (`id`, `date`, `time`, `text`, `comment`, `contactperson_IDFS`, `employee_IDFS`) VALUES
(2, '2017-03-23', '00:00:00', 'Phonecall to discuss the new ingredients.', 'Discussed new taste \"Full Nature\"', 2, 11),
(3, '2017-03-24', '15:05:00', 'Hoch die Hände..', '..Wochenende!', 2, 4),
(4, '2017-03-25', '09:29:24', 'Du bist wirklich ein harter Bänger.', 'Ooop there it is.', 2, 7),
(5, '2017-03-25', '20:30:00', 'G N K K', 'Trill', 2, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contactperson`
--

CREATE TABLE `contactperson` (
  `id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `project_IDFS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `contactperson`
--

INSERT INTO `contactperson` (`id`, `lastname`, `firstname`, `phonenumber`, `mail`, `comment`, `project_IDFS`) VALUES
(1, 'Maier', 'Peter', '079 841 83 19', 'p.maier@gmail.com', 'This is the first Contactperson ever!', 1),
(2, 'Tüfpli', 'Susanne', '076 819 95 41', 'susi.tüpfli@outlook.com', 'For selling the good things.', 7),
(5, 'Edwards', 'Denise', '86-(137)961-8203', 'd.edwards@gmail.com', '3D Modeling', 7),
(6, 'Boyd', 'David', '86-(326)472-3333', 'dboyd0@netvibes.com', 'Mobile Games', 1),
(7, 'Adams', 'Julie', '33-(708)627-8477', 'jadams1@nsw.gov.au', 'Zoning', 2),
(8, 'Hall', 'Doris', '55-(888)172-3475', 'dhall2@unblog.fr', 'For Sale By Owner', 3),
(9, 'Coleman', 'Christopher', '51-(702)515-9699', 'ccoleman3@imgur.com', 'Twitter Marketing', 4),
(10, 'Oliver', 'Deborah', '7-(892)344-5662', 'doliver4@eepurl.com', 'Offshore Operations', 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(50) COLLATE utf8_bin NOT NULL,
  `department` varchar(50) COLLATE utf8_bin NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `employee`
--

INSERT INTO `employee` (`id`, `firstname`, `lastname`, `department`, `salary`) VALUES
(1, 'Friedrich', 'Dörrbohne', 'IT', 30),
(2, 'Thomas', 'Dütschler', 'Java', 32),
(3, 'Stefan', 'Hugentobler', 'Backend', 20),
(4, 'Quantum', 'Terraria', 'TV & Film', 60),
(5, 'Quentin', 'Tortelloni', 'Hungry', 25),
(6, 'Armin', 'Steiner', 'IT', 37),
(7, 'Tobias', 'Justus', 'Cake Factory', 55),
(8, 'Fredi', 'Buur', 'Landwirtschaft', 13),
(9, 'Sergon', 'Gjschk', 'IT', 22),
(10, 'Mihai', 'Petran', 'Landwirtschaft', 15),
(11, 'Martin', 'Stäubli', 'Kräuterhaus', 42),
(12, 'Ordos', 'Feuermensch', 'Zeitlose Insel', 80),
(13, 'Ordos', 'Feuermensch', 'Zeitlose Insel', 80),
(14, 'Ordos', 'Feuermensch', 'Zeitlose Insel', 80);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `description` varchar(50) COLLATE utf8_bin NOT NULL,
  `status` varchar(50) COLLATE utf8_bin NOT NULL,
  `projecthead_IDFS` int(11) NOT NULL,
  `volume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `project`
--

INSERT INTO `project` (`id`, `name`, `description`, `status`, `projecthead_IDFS`, `volume`) VALUES
(1, 'Backbone', 'IT Backbone', 'Work in Progress', 2, 100),
(2, 'PFD', 'The Puzzle Factory Department', 'Running', 1, 0),
(3, 'TFB', 'The Farting Beans', 'Working in Progress', 3, 15),
(4, 'KVB', 'Kollektiv- und Vorsorgebuchhaltung', 'Running', 3, 100),
(5, 'MovieMaker', 'The Original  MovieMaker', 'Running on High Priority', 1, 0),
(6, 'ADP', 'The absolute done Project', 'done', 1, 0),
(7, 'CPF', 'Cherry Pie Factory', 'Running', 5, 0),
(8, 'CPE', 'Cherry Pie Eater', 'Eating...', 4, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `projectemployee`
--

CREATE TABLE `projectemployee` (
  `employee_idfs` int(11) NOT NULL,
  `project_idfs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `projectemployee`
--

INSERT INTO `projectemployee` (`employee_idfs`, `project_idfs`) VALUES
(1, 2),
(1, 2),
(1, 4),
(4, 5),
(4, 5),
(3, 3),
(2, 3),
(4, 3),
(9, 3),
(1, 8),
(6, 8),
(7, 8),
(3, 8),
(8, 8),
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(9, 1),
(10, 1),
(2, 7),
(7, 7),
(8, 7),
(5, 7),
(10, 7),
(11, 7),
(12, 1),
(13, 1),
(14, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `projecttask`
--

CREATE TABLE `projecttask` (
  `task_Id` int(11) NOT NULL,
  `title` varchar(30) COLLATE utf8_bin NOT NULL,
  `description` varchar(200) COLLATE utf8_bin NOT NULL,
  `duration` int(11) NOT NULL,
  `project_IDFS` int(11) NOT NULL,
  `employee_IDFS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `projecttask`
--

INSERT INTO `projecttask` (`task_Id`, `title`, `description`, `duration`, `project_IDFS`, `employee_IDFS`) VALUES
(1, 'Tee Trinken', 'Tee Trinken', 3, 3, 2),
(2, 'Rücken Knochen', 'Knocht den Rücken', 20, 1, 1),
(3, 'Etwas machen', 'Es sollte etwas getan werden!', 55, 1, 4),
(5, 'Schutzbrille kaufen', 'Sonst wird man blind ', 1, 1, 2),
(6, 'Farting', 'MORE FARTING!!', 2, 3, 4),
(7, 'Hardware erneuern', 'Die alte Hardware muss erneuert werden.', 10, 1, 2),
(9, 'Gipfeli holen', 'Damit am Morgen niemand verhungert.', 1, 1, 1),
(10, 'Beamer ersetzen', 'Den alten Beamer durch einen neuen ersetzen.', 3, 1, 3),
(13, 'Postman', 'This task was created using Postman', 2, 3, 1),
(14, 'Zutaten kaufen', 'Die Zutaten für den Kuchen kaufen', 2, 7, 8);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `quicknote`
--

CREATE TABLE `quicknote` (
  `id` int(11) NOT NULL,
  `content` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `quicknote`
--

INSERT INTO `quicknote` (`id`, `content`) VALUES
(1, 'This note was created using Postman!'),
(2, 'Hello I am a cool guy!');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `approach`
--
ALTER TABLE `approach`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_IDFS` (`employee_IDFS`),
  ADD KEY `contactperson_IDFS` (`contactperson_IDFS`);

--
-- Indizes für die Tabelle `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contactperson_IDFS` (`contactperson_IDFS`),
  ADD KEY `employee_IDFS` (`employee_IDFS`);

--
-- Indizes für die Tabelle `contactperson`
--
ALTER TABLE `contactperson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_IDFS` (`project_IDFS`);

--
-- Indizes für die Tabelle `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projecthead_IDFS` (`projecthead_IDFS`);

--
-- Indizes für die Tabelle `projectemployee`
--
ALTER TABLE `projectemployee`
  ADD KEY `employee_idfs` (`employee_idfs`),
  ADD KEY `project_idfs` (`project_idfs`);

--
-- Indizes für die Tabelle `projecttask`
--
ALTER TABLE `projecttask`
  ADD PRIMARY KEY (`task_Id`),
  ADD KEY `project_IDFS` (`project_IDFS`),
  ADD KEY `employee_IDFS` (`employee_IDFS`);

--
-- Indizes für die Tabelle `quicknote`
--
ALTER TABLE `quicknote`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `approach`
--
ALTER TABLE `approach`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT für Tabelle `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `contactperson`
--
ALTER TABLE `contactperson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT für Tabelle `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT für Tabelle `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT für Tabelle `projecttask`
--
ALTER TABLE `projecttask`
  MODIFY `task_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT für Tabelle `quicknote`
--
ALTER TABLE `quicknote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `approach`
--
ALTER TABLE `approach`
  ADD CONSTRAINT `approach_ibfk_1` FOREIGN KEY (`employee_IDFS`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `approach_ibfk_2` FOREIGN KEY (`contactperson_IDFS`) REFERENCES `contactperson` (`id`);

--
-- Constraints der Tabelle `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`contactperson_IDFS`) REFERENCES `contactperson` (`id`),
  ADD CONSTRAINT `contact_ibfk_2` FOREIGN KEY (`employee_IDFS`) REFERENCES `employee` (`id`);

--
-- Constraints der Tabelle `contactperson`
--
ALTER TABLE `contactperson`
  ADD CONSTRAINT `contactperson_ibfk_1` FOREIGN KEY (`project_IDFS`) REFERENCES `project` (`id`);

--
-- Constraints der Tabelle `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`projecthead_IDFS`) REFERENCES `employee` (`id`);

--
-- Constraints der Tabelle `projectemployee`
--
ALTER TABLE `projectemployee`
  ADD CONSTRAINT `projectemployee_ibfk_1` FOREIGN KEY (`employee_idfs`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `projectemployee_ibfk_2` FOREIGN KEY (`project_idfs`) REFERENCES `project` (`id`);

--
-- Constraints der Tabelle `projecttask`
--
ALTER TABLE `projecttask`
  ADD CONSTRAINT `projecttask_ibfk_1` FOREIGN KEY (`project_IDFS`) REFERENCES `project` (`id`),
  ADD CONSTRAINT `projecttask_ibfk_2` FOREIGN KEY (`employee_IDFS`) REFERENCES `employee` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
