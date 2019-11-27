-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 27. 11 2019 kl. 14:19:16
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
-- Stand-in-struktur for visning `addresserfrabyenaalborg`
-- (Se nedenfor for det aktuelle view)
--
CREATE TABLE `addresserfrabyenaalborg` (
`addr_id` int(11)
,`user_id` int(11)
,`address` varchar(256)
,`city` varchar(256)
,`zipcode` int(11)
,`country` varchar(256)
);

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
(5, 5, 'H.C Andersensvej 14', 'Aalborg', 8800, 'Denmark'),
(6, 6, 'H.C Andersensvej 15', 'Viborg', 8800, 'Denmark'),
(7, 7, 'H.C Andersensvej 16', 'Aalborg', 8800, 'Denmark'),
(8, 8, 'H.C Andersensvej 17', 'Viborg', 8800, 'Denmark'),
(9, 9, 'H.C Andersensvej 18', 'Viborg', 8800, 'Denmark'),
(10, 10, 'H.C Andersensvej 19', 'Viborg', 8800, 'Denmark');

-- --------------------------------------------------------

--
-- Stand-in-struktur for visning `addressmedzipcode8800`
-- (Se nedenfor for det aktuelle view)
--
CREATE TABLE `addressmedzipcode8800` (
`addr_id` int(11)
,`user_id` int(11)
,`address` varchar(256)
,`city` varchar(256)
,`zipcode` int(11)
,`country` varchar(256)
);

-- --------------------------------------------------------

--
-- Stand-in-struktur for visning `antalusers`
-- (Se nedenfor for det aktuelle view)
--
CREATE TABLE `antalusers` (
`userid` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in-struktur for visning `brugereogaddresser`
-- (Se nedenfor for det aktuelle view)
--
CREATE TABLE `brugereogaddresser` (
`userid` int(11)
,`address` varchar(256)
);

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
-- Stand-in-struktur for visning `brugernesemails`
-- (Se nedenfor for det aktuelle view)
--
CREATE TABLE `brugernesemails` (
`email` varchar(256)
);

-- --------------------------------------------------------

--
-- Stand-in-struktur for visning `cyklerdereroutofstock`
-- (Se nedenfor for det aktuelle view)
--
CREATE TABLE `cyklerdereroutofstock` (
`Prod_id` int(11)
,`Prod_name` varchar(256)
,`Prod_description` varchar(256)
,`Prod_stock` int(11)
,`Prod_price` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in-struktur for visning `cyklermedpris2000`
-- (Se nedenfor for det aktuelle view)
--
CREATE TABLE `cyklermedpris2000` (
`Prod_id` int(11)
,`Prod_name` varchar(256)
,`Prod_description` varchar(256)
,`Prod_stock` int(11)
,`Prod_price` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in-struktur for visning `fornavnepåbrugere`
-- (Se nedenfor for det aktuelle view)
--
CREATE TABLE `fornavnepåbrugere` (
`first_name` varchar(255)
);

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
(9, 'Blå Cykel', 'Dette er en blå cykel', 0, 2000),
(10, 'Grøn Cykel', 'Dette er en grøn cykel', 2, 2000);

-- --------------------------------------------------------

--
-- Stand-in-struktur for visning `stockafcykler`
-- (Se nedenfor for det aktuelle view)
--
CREATE TABLE `stockafcykler` (
`prod_stock` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in-struktur for visning `stockafcyklerogid`
-- (Se nedenfor for det aktuelle view)
--
CREATE TABLE `stockafcyklerogid` (
`prod_stock` int(11)
,`prod_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in-struktur for visning `viewtilordre+first_name`
-- (Se nedenfor for det aktuelle view)
--
CREATE TABLE `viewtilordre+first_name` (
`order_id` int(11)
,`username` varchar(256)
);

-- --------------------------------------------------------

--
-- Stand-in-struktur for visning `viewtilordre+prod`
-- (Se nedenfor for det aktuelle view)
--
CREATE TABLE `viewtilordre+prod` (
`order_id` int(11)
,`Prod_name` varchar(256)
);

-- --------------------------------------------------------

--
-- Stand-in-struktur for visning `viewtilusername+addresse`
-- (Se nedenfor for det aktuelle view)
--
CREATE TABLE `viewtilusername+addresse` (
`username` varchar(256)
,`address` varchar(256)
);

-- --------------------------------------------------------

--
-- Struktur for visning `addresserfrabyenaalborg`
--
DROP TABLE IF EXISTS `addresserfrabyenaalborg`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `addresserfrabyenaalborg`  AS  select `addresses`.`addr_id` AS `addr_id`,`addresses`.`user_id` AS `user_id`,`addresses`.`address` AS `address`,`addresses`.`city` AS `city`,`addresses`.`zipcode` AS `zipcode`,`addresses`.`country` AS `country` from `addresses` where `addresses`.`city` = 'Aalborg' ;

-- --------------------------------------------------------

--
-- Struktur for visning `addressmedzipcode8800`
--
DROP TABLE IF EXISTS `addressmedzipcode8800`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `addressmedzipcode8800`  AS  select `addresses`.`addr_id` AS `addr_id`,`addresses`.`user_id` AS `user_id`,`addresses`.`address` AS `address`,`addresses`.`city` AS `city`,`addresses`.`zipcode` AS `zipcode`,`addresses`.`country` AS `country` from `addresses` where `addresses`.`zipcode` = '8800' ;

-- --------------------------------------------------------

--
-- Struktur for visning `antalusers`
--
DROP TABLE IF EXISTS `antalusers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `antalusers`  AS  select `brugerliste`.`userid` AS `userid` from `brugerliste` ;

-- --------------------------------------------------------

--
-- Struktur for visning `brugereogaddresser`
--
DROP TABLE IF EXISTS `brugereogaddresser`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `brugereogaddresser`  AS  select `brugerliste`.`userid` AS `userid`,`addresses`.`address` AS `address` from (`addresses` join `brugerliste`) where `addresses`.`address` = 'H.C Andersensvej 17' ;

-- --------------------------------------------------------

--
-- Struktur for visning `brugernesemails`
--
DROP TABLE IF EXISTS `brugernesemails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `brugernesemails`  AS  select `brugerliste`.`email` AS `email` from `brugerliste` ;

-- --------------------------------------------------------

--
-- Struktur for visning `cyklerdereroutofstock`
--
DROP TABLE IF EXISTS `cyklerdereroutofstock`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cyklerdereroutofstock`  AS  select `products`.`Prod_id` AS `Prod_id`,`products`.`Prod_name` AS `Prod_name`,`products`.`Prod_description` AS `Prod_description`,`products`.`Prod_stock` AS `Prod_stock`,`products`.`Prod_price` AS `Prod_price` from `products` where `products`.`Prod_stock` = '0' ;

-- --------------------------------------------------------

--
-- Struktur for visning `cyklermedpris2000`
--
DROP TABLE IF EXISTS `cyklermedpris2000`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cyklermedpris2000`  AS  select `products`.`Prod_id` AS `Prod_id`,`products`.`Prod_name` AS `Prod_name`,`products`.`Prod_description` AS `Prod_description`,`products`.`Prod_stock` AS `Prod_stock`,`products`.`Prod_price` AS `Prod_price` from `products` where `products`.`Prod_price` = '2000' ;

-- --------------------------------------------------------

--
-- Struktur for visning `fornavnepåbrugere`
--
DROP TABLE IF EXISTS `fornavnepåbrugere`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fornavnepåbrugere`  AS  select `brugerliste`.`first_name` AS `first_name` from `brugerliste` ;

-- --------------------------------------------------------

--
-- Struktur for visning `stockafcykler`
--
DROP TABLE IF EXISTS `stockafcykler`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `stockafcykler`  AS  select `products`.`Prod_stock` AS `prod_stock` from `products` ;

-- --------------------------------------------------------

--
-- Struktur for visning `stockafcyklerogid`
--
DROP TABLE IF EXISTS `stockafcyklerogid`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `stockafcyklerogid`  AS  select `products`.`Prod_stock` AS `prod_stock`,`products`.`Prod_id` AS `prod_id` from `products` ;

-- --------------------------------------------------------

--
-- Struktur for visning `viewtilordre+first_name`
--
DROP TABLE IF EXISTS `viewtilordre+first_name`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewtilordre+first_name`  AS  select `orders`.`order_id` AS `order_id`,`brugerliste`.`username` AS `username` from (`orders` join `brugerliste` on(`orders`.`user_id` = `brugerliste`.`userid`)) ;

-- --------------------------------------------------------

--
-- Struktur for visning `viewtilordre+prod`
--
DROP TABLE IF EXISTS `viewtilordre+prod`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewtilordre+prod`  AS  select `orders`.`order_id` AS `order_id`,`products`.`Prod_name` AS `Prod_name` from (`orders` join `products` on(`orders`.`user_id` = `products`.`Prod_id`)) ;

-- --------------------------------------------------------

--
-- Struktur for visning `viewtilusername+addresse`
--
DROP TABLE IF EXISTS `viewtilusername+addresse`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewtilusername+addresse`  AS  select `brugerliste`.`username` AS `username`,`addresses`.`address` AS `address` from (`brugerliste` join `addresses` on(`brugerliste`.`userid` = `addresses`.`user_id`)) ;

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
