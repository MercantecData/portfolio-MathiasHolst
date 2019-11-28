-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 28. 11 2019 kl. 13:18:50
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
  `WhichDepartment` varchar(255) DEFAULT NULL,
  `employeeid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `department`
--

INSERT INTO `department` (`WhichDepartment`, `employeeid`) VALUES
('department_1', 1),
('department_1', 2),
('department_3', 3),
('department_3', 4),
('department_2', 5);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `dep_employee`
--

CREATE TABLE `dep_employee` (
  `employeeid` int(11) DEFAULT NULL,
  `departmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `dep_employee`
--

INSERT INTO `dep_employee` (`employeeid`, `departmentID`) VALUES
(1, 1),
(2, 1),
(3, 3),
(4, 3),
(5, 2);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `dep_manager`
--

CREATE TABLE `dep_manager` (
  `employeeid` int(11) DEFAULT NULL,
  `departmentID` int(11) NOT NULL,
  `managerid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `dep_manager`
--

INSERT INTO `dep_manager` (`employeeid`, `departmentID`, `managerid`) VALUES
(1, 1, 1),
(3, 3, 2),
(5, 2, 3);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `employee`
--

CREATE TABLE `employee` (
  `employeeid` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `employee`
--

INSERT INTO `employee` (`employeeid`, `full_name`, `email`) VALUES
(1, 'Mathias Holst', 'MathiasH@gmail.com'),
(2, 'Jeppe Vad', 'JeppeV@gmail.com'),
(3, 'Bobby Olsen', 'BobbyOlsen@gmail.com'),
(4, 'Bob Byg', 'ByggemandBob@gmail.com'),
(5, 'Bobby Karlsen', 'BobbyK@gmail.com');

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
  `departmentid` int(11) DEFAULT NULL,
  `title_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `titles`
--

INSERT INTO `titles` (`employeeid`, `departmentid`, `title_name`) VALUES
(1, 1, 'CEO/Manager'),
(2, 1, 'Assistant'),
(3, 3, 'Manager'),
(4, 3, 'Employee'),
(5, 2, 'Manager');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `department`
--
ALTER TABLE `department`
  ADD KEY `employeeid` (`employeeid`);

--
-- Indeks for tabel `dep_employee`
--
ALTER TABLE `dep_employee`
  ADD KEY `employeeid` (`employeeid`);

--
-- Indeks for tabel `dep_manager`
--
ALTER TABLE `dep_manager`
  ADD PRIMARY KEY (`managerid`),
  ADD KEY `employeeid` (`employeeid`);

--
-- Indeks for tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeid`);

--
-- Indeks for tabel `salaries`
--
ALTER TABLE `salaries`
  ADD KEY `employeeid` (`employeeid`);

--
-- Indeks for tabel `titles`
--
ALTER TABLE `titles`
  ADD KEY `employeeid` (`employeeid`);

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
  ADD CONSTRAINT `dep_employee_ibfk_1` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`employeeid`);

--
-- Begrænsninger for tabel `dep_manager`
--
ALTER TABLE `dep_manager`
  ADD CONSTRAINT `dep_manager_ibfk_1` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`employeeid`);

--
-- Begrænsninger for tabel `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`employeeid`);

--
-- Begrænsninger for tabel `titles`
--
ALTER TABLE `titles`
  ADD CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`employeeid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
