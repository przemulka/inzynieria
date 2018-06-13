-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Cze 2018, 15:16
-- Wersja serwera: 10.1.21-MariaDB
-- Wersja PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `graficznaprezentacja`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny`
--

CREATE TABLE `oceny` (
  `ID_Oceny` int(11) NOT NULL,
  `ID_Ucznia` int(11) NOT NULL,
  `Ocena` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `Nazwa_Przedmiotu` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `oceny`
--

INSERT INTO `oceny` (`ID_Oceny`, `ID_Ucznia`, `Ocena`, `Nazwa_Przedmiotu`) VALUES
(1, 1, '2', 'Matematyka'),
(2, 2, '1', 'Matematyka'),
(3, 3, '3', 'Matematyka'),
(4, 4, '1', 'Matematyka'),
(5, 5, '5', 'Matematyka'),
(6, 6, '4', 'Matematyka'),
(7, 7, '2', 'Matematyka'),
(8, 8, '5', 'Matematyka'),
(9, 9, '5', 'Matematyka'),
(10, 10, '3', 'Matematyka'),
(11, 11, '1', 'Matematyka'),
(12, 12, '4', 'Matematyka'),
(13, 13, '2', 'Matematyka'),
(14, 14, '3', 'Matematyka'),
(15, 15, '6', 'Matematyka'),
(16, 16, '5', 'Matematyka'),
(17, 17, '1', 'Matematyka'),
(18, 18, '5', 'Matematyka'),
(19, 19, '2', 'Matematyka'),
(20, 20, '5', 'Matematyka'),
(21, 21, '5', 'Matematyka'),
(22, 22, '5', 'Matematyka'),
(23, 23, '1', 'Matematyka'),
(24, 24, '3', 'Matematyka'),
(25, 25, '5', 'Matematyka'),
(26, 1, '3', 'Chemia'),
(27, 2, '2', 'Chemia'),
(28, 3, '1', 'Chemia'),
(29, 4, '2', 'Chemia'),
(30, 5, '3', 'Chemia'),
(31, 6, '1', 'Chemia'),
(32, 7, '6', 'Chemia'),
(33, 8, '4', 'Chemia'),
(34, 9, '1', 'Chemia'),
(35, 10, '3', 'Chemia'),
(36, 11, '2', 'Chemia'),
(37, 12, '5', 'Chemia'),
(38, 13, '6', 'Chemia'),
(39, 14, '1', 'Chemia'),
(40, 15, '4', 'Chemia'),
(41, 16, '3', 'Chemia'),
(42, 17, '3', 'Chemia'),
(43, 18, '4', 'Chemia'),
(44, 19, '1', 'Chemia'),
(45, 20, '5', 'Chemia'),
(46, 21, '2', 'Chemia'),
(47, 22, '4', 'Chemia'),
(48, 23, '6', 'Chemia'),
(49, 24, '4', 'Chemia'),
(50, 25, '4', 'Chemia'),
(51, 1, '3', 'Język Polski'),
(52, 2, '3', 'Język Polski'),
(53, 3, '2', 'Język Polski'),
(54, 4, '2', 'Język Polski'),
(55, 5, '6', 'Język Polski'),
(56, 6, '3', 'Język Polski'),
(57, 7, '4', 'Język Polski'),
(58, 8, '4', 'Język Polski'),
(59, 9, '3', 'Język Polski'),
(60, 10, '6', 'Język Polski'),
(61, 11, '1', 'Język Polski'),
(62, 12, '4', 'Język Polski'),
(63, 13, '6', 'Język Polski'),
(64, 14, '4', 'Język Polski'),
(65, 15, '3', 'Język Polski'),
(66, 16, '6', 'Język Polski'),
(67, 17, '1', 'Język Polski'),
(68, 18, '3', 'Język Polski'),
(69, 19, '4', 'Język Polski'),
(70, 20, '1', 'Język Polski'),
(71, 21, '3', 'Język Polski'),
(72, 22, '2', 'Język Polski'),
(73, 23, '4', 'Język Polski'),
(74, 24, '6', 'Język Polski'),
(75, 25, '5', 'Język Polski'),
(76, 1, '4', 'Biologia'),
(77, 2, '5', 'Biologia'),
(78, 3, '2', 'Biologia'),
(79, 4, '1', 'Biologia'),
(80, 5, '5', 'Biologia'),
(81, 6, '4', 'Biologia'),
(82, 7, '5', 'Biologia'),
(83, 8, '5', 'Biologia'),
(84, 9, '5', 'Biologia'),
(85, 10, '5', 'Biologia'),
(86, 11, '1', 'Biologia'),
(87, 12, '6', 'Biologia'),
(88, 13, '4', 'Biologia'),
(89, 14, '4', 'Biologia'),
(90, 15, '1', 'Biologia'),
(91, 16, '2', 'Biologia'),
(92, 17, '5', 'Biologia'),
(93, 18, '2', 'Biologia'),
(94, 19, '6', 'Biologia'),
(95, 20, '1', 'Biologia'),
(96, 21, '5', 'Biologia'),
(97, 22, '5', 'Biologia'),
(98, 23, '1', 'Biologia'),
(99, 24, '5', 'Biologia'),
(100, 25, '4', 'Biologia'),
(101, 1, '3', 'Muzyka'),
(102, 2, '1', 'Muzyka'),
(103, 3, '2', 'Muzyka'),
(104, 4, '5', 'Muzyka'),
(105, 5, '1', 'Muzyka'),
(106, 6, '6', 'Muzyka'),
(107, 7, '4', 'Muzyka'),
(108, 8, '6', 'Muzyka'),
(109, 9, '2', 'Muzyka'),
(110, 10, '1', 'Muzyka'),
(111, 11, '3', 'Muzyka'),
(112, 12, '5', 'Muzyka'),
(113, 13, '2', 'Muzyka'),
(114, 14, '6', 'Muzyka'),
(115, 15, '4', 'Muzyka'),
(116, 16, '5', 'Muzyka'),
(117, 17, '3', 'Muzyka'),
(118, 18, '3', 'Muzyka'),
(119, 19, '6', 'Muzyka'),
(120, 20, '6', 'Muzyka'),
(121, 21, '3', 'Muzyka'),
(122, 22, '1', 'Muzyka'),
(123, 23, '3', 'Muzyka'),
(124, 24, '5', 'Muzyka'),
(125, 25, '5', 'Muzyka'),
(126, 1, '6', 'WF'),
(127, 2, '4', 'WF'),
(128, 3, '5', 'WF'),
(129, 4, '1', 'WF'),
(130, 5, '5', 'WF'),
(131, 6, '3', 'WF'),
(132, 7, '1', 'WF'),
(133, 8, '6', 'WF'),
(134, 9, '4', 'WF'),
(135, 10, '3', 'WF'),
(136, 11, '4', 'WF'),
(137, 12, '4', 'WF'),
(138, 13, '2', 'WF'),
(139, 14, '1', 'WF'),
(140, 15, '4', 'WF'),
(141, 16, '5', 'WF'),
(142, 17, '5', 'WF'),
(143, 18, '4', 'WF'),
(144, 19, '1', 'WF'),
(145, 20, '2', 'WF'),
(146, 21, '2', 'WF'),
(147, 22, '6', 'WF'),
(148, 23, '3', 'WF'),
(149, 24, '4', 'WF'),
(150, 25, '3', 'WF'),
(151, 1, '3', 'Informatyka'),
(152, 2, '4', 'Informatyka'),
(153, 3, '3', 'Informatyka'),
(154, 4, '4', 'Informatyka'),
(155, 5, '1', 'Informatyka'),
(156, 6, '4', 'Informatyka'),
(157, 7, '2', 'Informatyka'),
(158, 8, '2', 'Informatyka'),
(159, 9, '3', 'Informatyka'),
(160, 10, '1', 'Informatyka'),
(161, 11, '2', 'Informatyka'),
(162, 12, '6', 'Informatyka'),
(163, 13, '2', 'Informatyka'),
(164, 14, '5', 'Informatyka'),
(165, 15, '3', 'Informatyka'),
(166, 16, '5', 'Informatyka'),
(167, 17, '1', 'Informatyka'),
(168, 18, '2', 'Informatyka'),
(169, 19, '6', 'Informatyka'),
(170, 20, '1', 'Informatyka'),
(171, 21, '4', 'Informatyka'),
(172, 22, '4', 'Informatyka'),
(173, 23, '4', 'Informatyka'),
(174, 24, '6', 'Informatyka'),
(175, 25, '2', 'Informatyka'),
(176, 1, '4', 'Język Angielski'),
(177, 2, '5', 'Język Angielski'),
(178, 3, '4', 'Język Angielski'),
(179, 4, '1', 'Język Angielski'),
(180, 5, '6', 'Język Angielski'),
(181, 6, '1', 'Język Angielski'),
(182, 7, '2', 'Język Angielski'),
(183, 8, '5', 'Język Angielski'),
(184, 9, '4', 'Język Angielski'),
(185, 10, '4', 'Język Angielski'),
(186, 11, '2', 'Język Angielski'),
(187, 12, '5', 'Język Angielski'),
(188, 13, '2', 'Język Angielski'),
(189, 14, '4', 'Język Angielski'),
(190, 15, '2', 'Język Angielski'),
(191, 16, '3', 'Język Angielski'),
(192, 17, '3', 'Język Angielski'),
(193, 18, '6', 'Język Angielski'),
(194, 19, '2', 'Język Angielski'),
(195, 20, '6', 'Język Angielski'),
(196, 21, '6', 'Język Angielski'),
(197, 22, '2', 'Język Angielski'),
(198, 23, '4', 'Język Angielski'),
(199, 24, '3', 'Język Angielski'),
(200, 25, '1', 'Język Angielski');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie`
--

CREATE TABLE `uczniowie` (
  `ID_Ucznia` int(11) NOT NULL,
  `Imie` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `Nazwisko` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL,
  `Rok_Urodzenia` varchar(4) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uczniowie`
--

INSERT INTO `uczniowie` (`ID_Ucznia`, `Imie`, `Nazwisko`, `Rok_Urodzenia`) VALUES
(1, 'Oskar', 'Nalaskowski', '1996'),
(2, 'Przemek', 'Lengling', '1996'),
(3, 'Konrad', 'Kłos', '1996'),
(4, 'Konrad', 'Bielik', '1995'),
(5, 'Andrzej', 'Myk', '1995'),
(6, 'Stefan', 'Bik', '2000'),
(7, 'Konrad', 'Miszno', '1996'),
(8, 'Piotr', 'Kowalczyk', '1998'),
(9, 'Mateusz', 'Piotrowski', '1997'),
(10, 'Hanna', 'Kowalska', '1999'),
(11, 'Piotr', 'Marso', '1999'),
(12, 'Jakub', 'Nowak', '1997'),
(13, 'Jakub', 'Tomczyk', '1999'),
(14, 'Ignacy', 'Kowalczyk', '1999'),
(15, 'Piotr', 'Kowo', '1999'),
(16, 'Inga', 'Wiśniewska', '1997'),
(17, 'Jakub', 'Sobczak', '1997'),
(18, 'Aleksandra', 'Kot', '1997'),
(19, 'Jan', 'Dudek', '1997'),
(20, 'Marcin', 'Wasyl', '1999'),
(21, 'Konrad', 'Kowalski', '1997'),
(22, 'Piotr', 'Marks', '1996'),
(23, 'Jan', 'Stokowiec', '1994'),
(24, 'Piotr', 'Sztok', '1997'),
(25, 'Agata', 'Kruk', '1997');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `oceny`
--
ALTER TABLE `oceny`
  ADD PRIMARY KEY (`ID_Oceny`),
  ADD KEY `ID_Ucznia` (`ID_Ucznia`);

--
-- Indexes for table `uczniowie`
--
ALTER TABLE `uczniowie`
  ADD PRIMARY KEY (`ID_Ucznia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `oceny`
--
ALTER TABLE `oceny`
  MODIFY `ID_Oceny` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT dla tabeli `uczniowie`
--
ALTER TABLE `uczniowie`
  MODIFY `ID_Ucznia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `oceny`
--
ALTER TABLE `oceny`
  ADD CONSTRAINT `oceny_ibfk_1` FOREIGN KEY (`ID_Ucznia`) REFERENCES `uczniowie` (`ID_Ucznia`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
