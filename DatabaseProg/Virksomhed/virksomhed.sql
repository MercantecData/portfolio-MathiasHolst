-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 29. 11 2019 kl. 10:10:07
-- Serverversion: 10.4.8-MariaDB
-- PHP-version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `virksomhed`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `department`
--

CREATE TABLE `department` (
  `departmentid` int(11) NOT NULL,
  `whichdepartment` varchar(255) DEFAULT NULL,
  `employeeid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `department`
--

INSERT INTO `department` (`departmentid`, `whichdepartment`, `employeeid`) VALUES
(1, 'Management', 1),
(2, 'Management', 2),
(3, 'Infrastructure', 5),
(4, 'Service', 3),
(5, 'Service', 4);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `dep_employee`
--

CREATE TABLE `dep_employee` (
  `employeeid` int(11) DEFAULT NULL,
  `departmentid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `dep_employee`
--

INSERT INTO `dep_employee` (`employeeid`, `departmentid`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `dep_manager`
--

CREATE TABLE `dep_manager` (
  `employeeid` int(11) DEFAULT NULL,
  `managerid` int(11) NOT NULL,
  `departmentid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `dep_manager`
--

INSERT INTO `dep_manager` (`employeeid`, `managerid`, `departmentid`) VALUES
(1, 1, 1),
(3, 2, 3),
(5, 3, 5);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `employee`
--

CREATE TABLE `employee` (
  `employeeid` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `managerid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `employee`
--

INSERT INTO `employee` (`employeeid`, `full_name`, `email`, `managerid`) VALUES
(1, 'Mathias Holst', 'MathiasH@gmail.com', 1),
(2, 'Jeppe Vad', 'JeppeV@gmail.com', NULL),
(3, 'Bobby Olsen', 'BobbyOlsen@gmail.com', 2),
(4, 'Bob Byg', 'ByggemandBob@gmail.com', NULL),
(5, 'Bobby Karlsen', 'BobbyK@gmail.com', 3);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `salaries`
--

CREATE TABLE `salaries` (
  `employeeid` int(11) DEFAULT NULL,
  `salary` decimal(11,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `salaries`
--

INSERT INTO `salaries` (`employeeid`, `salary`) VALUES
(1, '500'),
(2, '200'),
(3, '350'),
(4, '200'),
(5, '350');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `titles`
--

CREATE TABLE `titles` (
  `employeeid` int(11) DEFAULT NULL,
  `title_name` varchar(255) DEFAULT NULL,
  `departmentid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `titles`
--

INSERT INTO `titles` (`employeeid`, `title_name`, `departmentid`) VALUES
(1, 'CEO/Manager', 1),
(2, 'Assistant', 2),
(3, 'Manager', 3),
(4, 'Employee', 4),
(5, 'Manager', 5);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentid`),
  ADD KEY `employeeid` (`employeeid`);

--
-- Indeks for tabel `dep_employee`
--
ALTER TABLE `dep_employee`
  ADD KEY `employeeid` (`employeeid`),
  ADD KEY `departmentid` (`departmentid`);

--
-- Indeks for tabel `dep_manager`
--
ALTER TABLE `dep_manager`
  ADD PRIMARY KEY (`managerid`),
  ADD KEY `employeeid` (`employeeid`),
  ADD KEY `departmentid` (`departmentid`);

--
-- Indeks for tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeid`),
  ADD KEY `managerid` (`managerid`);

--
-- Indeks for tabel `salaries`
--
ALTER TABLE `salaries`
  ADD KEY `employeeid` (`employeeid`);

--
-- Indeks for tabel `titles`
--
ALTER TABLE `titles`
  ADD KEY `employeeid` (`employeeid`),
  ADD KEY `departmentid` (`departmentid`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `dep_manager`
--
ALTER TABLE `dep_manager`
  MODIFY `managerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tilføj AUTO_INCREMENT i tabel `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`employeeid`);

--
-- Begrænsninger for tabel `dep_employee`
--
ALTER TABLE `dep_employee`
  ADD CONSTRAINT `dep_employee_ibfk_1` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`employeeid`),
  ADD CONSTRAINT `dep_employee_ibfk_2` FOREIGN KEY (`departmentid`) REFERENCES `department` (`departmentid`);

--
-- Begrænsninger for tabel `dep_manager`
--
ALTER TABLE `dep_manager`
  ADD CONSTRAINT `dep_manager_ibfk_1` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`employeeid`),
  ADD CONSTRAINT `dep_manager_ibfk_2` FOREIGN KEY (`departmentid`) REFERENCES `department` (`departmentid`);

--
-- Begrænsninger for tabel `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`managerid`) REFERENCES `dep_manager` (`managerid`);

--
-- Begrænsninger for tabel `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`employeeid`);

--
-- Begrænsninger for tabel `titles`
--
ALTER TABLE `titles`
  ADD CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`employeeid`),
  ADD CONSTRAINT `titles_ibfk_2` FOREIGN KEY (`departmentid`) REFERENCES `department` (`departmentid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
