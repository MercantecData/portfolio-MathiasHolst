-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 26. 11 2019 kl. 14:18:42
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
-- Database: `h1databaseprog`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `addresses`
--

CREATE TABLE `addresses` (
  `addr_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `city` varchar(256) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `country` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `addresses`
--

INSERT INTO `addresses` (`addr_id`, `user_id`, `address`, `city`, `zipcode`, `country`) VALUES
(1, 1, 'H.C Andersensvej 10', 'Viborg', 8800, 'Denmark'),
(2, 2, 'H.C Andersensvej 11', 'Viborg', 8800, 'Denmark'),
(3, 3, 'H.C Andersensvej 12', 'Viborg', 8800, 'Denmark'),
(4, 4, 'H.C Andersensvej 13', 'Viborg', 8800, 'Denmark'),
(5, 5, 'H.C Andersensvej 14', 'Viborg', 8800, 'Denmark'),
(6, 6, 'H.C Andersensvej 15', 'Viborg', 8800, 'Denmark'),
(7, 7, 'H.C Andersensvej 16', 'Viborg', 8800, 'Denmark'),
(8, 8, 'H.C Andersensvej 17', 'Viborg', 8800, 'Denmark'),
(9, 9, 'H.C Andersensvej 18', 'Viborg', 8800, 'Denmark'),
(10, 10, 'H.C Andersensvej 19', 'Viborg', 8800, 'Denmark');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `brugerliste`
--

CREATE TABLE `brugerliste` (
  `userid` int(11) NOT NULL,
  `username` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `brugerliste`
--

INSERT INTO `brugerliste` (`userid`, `username`, `email`, `last_name`, `first_name`) VALUES
(1, 'JeppeV', 'Jeppe@gmail.com', 'Vad', 'Jeppe'),
(2, 'MathiasH', 'Mathias@gmail.com', 'Holst\r\n', 'Mathias'),
(3, 'RenéR', 'René@gmail.com', 'Rosendahl', 'René'),
(4, 'MikkelS', 'Mikkel@gmail.com', 'Sørensen', 'Mikkel'),
(5, 'PhilipM', 'Philip@gmail.com', 'Madsen', 'Philip'),
(6, 'JonasJ', 'Jonas@gmail.com', 'Juhl', 'Jonas'),
(7, 'MagnusL', 'Magnus@gmail.com', 'Larsen', 'Magnus'),
(8, 'DanielS', 'Daniel@gmail.com', 'Sørensen', 'Daniel'),
(9, 'JanJ', 'Jan@gmail.com', 'Jensen', 'Jan'),
(10, 'NikolajS', 'Nikolaj@gmail.com', 'Svendsen', 'Nikolaj');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `addr_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `orders`
--

INSERT INTO `orders` (`order_id`, `prod_id`, `user_id`, `addr_id`) VALUES
(1, 4, 2, 2),
(2, 7, 6, 6),
(3, 1, 8, 8),
(4, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `products`
--

CREATE TABLE `products` (
  `Prod_id` int(11) NOT NULL,
  `Prod_name` varchar(256) DEFAULT NULL,
  `Prod_description` varchar(256) DEFAULT NULL,
  `Prod_stock` int(11) DEFAULT NULL,
  `Prod_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Data dump for tabellen `products`
--

INSERT INTO `products` (`Prod_id`, `Prod_name`, `Prod_description`, `Prod_stock`, `Prod_price`) VALUES
(1, 'Rød Cykel', 'Dette er en rød cykel', 3, 2000),
(2, 'Lyserød Cykel', 'Dette er en lyserød cykel', 2, 2000),
(3, 'Grå Cykel', 'Dette er en grå cykel', 3, 2000),
(4, 'Lilla Cykel', 'Dette er en lilla cykel', 3, 2000),
(5, 'Brun Cykel', 'Dette er en brun cykel', 3, 2000),
(6, 'Gul Cykel', 'Dette er en gul cykel', 3, 2000),
(7, 'Hvid Cykel', 'Dette er en hvid cykel', 10, 1500),
(8, 'Sort Cykel', 'Dette er en sort cykel', 3, 2000),
(9, 'Blå Cykel', 'Dette er en blå cykel', 3, 2000),
(10, 'Grøn Cykel', 'Dette er en grøn cykel', 2, 2000);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`addr_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks for tabel `brugerliste`
--
ALTER TABLE `brugerliste`
  ADD PRIMARY KEY (`userid`);

--
-- Indeks for tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `prod_id` (`prod_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `addr_id` (`addr_id`);

--
-- Indeks for tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Prod_id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `brugerliste`
--
ALTER TABLE `brugerliste`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `brugerliste` (`userid`);

--
-- Begrænsninger for tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`prod_id`) REFERENCES `products` (`Prod_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `brugerliste` (`userid`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`addr_id`) REFERENCES `addresses` (`addr_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
