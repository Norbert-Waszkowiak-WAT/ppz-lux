-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2024 at 11:00 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schronisko`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `anulowane_rezerwacje`
--

CREATE TABLE `anulowane_rezerwacje` (
  `id_anulowania` int(11) NOT NULL,
  `id_rezerwacji` int(11) NOT NULL,
  `data_anulowania` date DEFAULT curdate(),
  `powod` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `historia_adopcji`
--

CREATE TABLE `historia_adopcji` (
  `id_adopcji` int(11) NOT NULL,
  `id_uzytkownika` int(11) NOT NULL,
  `id_zwierzecia` int(11) NOT NULL,
  `data_adopcji` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacje`
--

CREATE TABLE `rezerwacje` (
  `id_rezerwacji` int(11) NOT NULL,
  `id_uzytkownika` int(11) NOT NULL,
  `id_zwierzecia` int(11) NOT NULL,
  `data_rezerwacji` date DEFAULT curdate(),
  `data_wygasniecia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id_uzytkownika` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefon` varchar(15) DEFAULT NULL,
  `data_rejestracji` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id_uzytkownika`, `imie`, `nazwisko`, `email`, `telefon`, `data_rejestracji`) VALUES
(1, 'Jan', 'Kowalski', 'jan.kowalski@example.com', '123456789', '2023-11-01'),
(2, 'Anna', 'Nowak', 'anna.nowak@example.com', '987654321', '2023-12-05'),
(3, 'Piotr', 'Wiśniewski', 'piotr.wisniewski@example.com', '555666777', '2024-01-10'),
(4, 'Katarzyna', 'Zielińska', 'katarzyna.zielinska@example.com', '444555666', '2024-01-15'),
(5, 'Tomasz', 'Lewandowski', 'tomasz.lewandowski@example.com', '111222333', '2023-10-20'),
(6, 'Magdalena', 'Wójcik', 'magdalena.wojcik@example.com', '777888999', '2023-11-30'),
(7, 'Marek', 'Kamiński', 'marek.kaminski@example.com', '333444555', '2024-02-01'),
(8, 'Joanna', 'Dąbrowska', 'joanna.dabrowska@example.com', '222333444', '2023-09-25'),
(9, 'Paweł', 'Szymański', 'pawel.szymanski@example.com', '666777888', '2023-12-15'),
(10, 'Ewa', 'Chmielewska', 'ewa.chmielewska@example.com', '888999000', '2024-01-20');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zwierzeta`
--

CREATE TABLE `zwierzeta` (
  `id_zwierzecia` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `gatunek` enum('pies','kot','inne') NOT NULL,
  `rasa` varchar(50) DEFAULT NULL,
  `wiek` int(11) DEFAULT NULL,
  `data_przyjecia` date DEFAULT curdate(),
  `status` enum('dostepny','zarezerwowany','adoptowany') DEFAULT 'dostepny'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zwierzeta`
--

INSERT INTO `zwierzeta` (`id_zwierzecia`, `imie`, `gatunek`, `rasa`, `wiek`, `data_przyjecia`, `status`) VALUES
(1, 'Burek', 'pies', 'Owczarek Niemiecki', 4, '2023-05-10', 'dostepny'),
(2, 'Mruczek', 'kot', 'Perski', 2, '2024-01-15', 'dostepny'),
(3, 'Luna', 'pies', 'Labrador', 3, '2023-12-01', 'zarezerwowany'),
(4, 'Puszek', 'kot', 'Syberyjski', 1, '2024-02-20', 'dostepny'),
(5, 'Rex', 'pies', 'Bulldog', 5, '2023-07-18', 'adoptowany'),
(6, 'Fiona', 'inne', 'Królik', 2, '2023-11-10', 'dostepny'),
(7, 'Bella', 'pies', 'Golden Retriever', 3, '2024-03-05', 'dostepny'),
(8, 'Tosia', 'kot', 'Domowy', 4, '2023-09-12', 'zarezerwowany'),
(9, 'Max', 'pies', 'Beagle', 6, '2023-10-01', 'dostepny'),
(10, 'Klara', 'inne', 'Świnka morska', 1, '2024-04-01', 'dostepny');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `anulowane_rezerwacje`
--
ALTER TABLE `anulowane_rezerwacje`
  ADD PRIMARY KEY (`id_anulowania`),
  ADD KEY `id_rezerwacji` (`id_rezerwacji`);

--
-- Indeksy dla tabeli `historia_adopcji`
--
ALTER TABLE `historia_adopcji`
  ADD PRIMARY KEY (`id_adopcji`),
  ADD KEY `id_uzytkownika` (`id_uzytkownika`),
  ADD KEY `id_zwierzecia` (`id_zwierzecia`);

--
-- Indeksy dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD PRIMARY KEY (`id_rezerwacji`),
  ADD KEY `id_uzytkownika` (`id_uzytkownika`),
  ADD KEY `id_zwierzecia` (`id_zwierzecia`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id_uzytkownika`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeksy dla tabeli `zwierzeta`
--
ALTER TABLE `zwierzeta`
  ADD PRIMARY KEY (`id_zwierzecia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anulowane_rezerwacje`
--
ALTER TABLE `anulowane_rezerwacje`
  MODIFY `id_anulowania` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `historia_adopcji`
--
ALTER TABLE `historia_adopcji`
  MODIFY `id_adopcji` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rezerwacje`
--
ALTER TABLE `rezerwacje`
  MODIFY `id_rezerwacji` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id_uzytkownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `zwierzeta`
--
ALTER TABLE `zwierzeta`
  MODIFY `id_zwierzecia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anulowane_rezerwacje`
--
ALTER TABLE `anulowane_rezerwacje`
  ADD CONSTRAINT `anulowane_rezerwacje_ibfk_1` FOREIGN KEY (`id_rezerwacji`) REFERENCES `rezerwacje` (`id_rezerwacji`) ON DELETE CASCADE;

--
-- Constraints for table `historia_adopcji`
--
ALTER TABLE `historia_adopcji`
  ADD CONSTRAINT `historia_adopcji_ibfk_1` FOREIGN KEY (`id_uzytkownika`) REFERENCES `uzytkownicy` (`id_uzytkownika`) ON DELETE CASCADE,
  ADD CONSTRAINT `historia_adopcji_ibfk_2` FOREIGN KEY (`id_zwierzecia`) REFERENCES `zwierzeta` (`id_zwierzecia`) ON DELETE CASCADE;

--
-- Constraints for table `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD CONSTRAINT `rezerwacje_ibfk_1` FOREIGN KEY (`id_uzytkownika`) REFERENCES `uzytkownicy` (`id_uzytkownika`) ON DELETE CASCADE,
  ADD CONSTRAINT `rezerwacje_ibfk_2` FOREIGN KEY (`id_zwierzecia`) REFERENCES `zwierzeta` (`id_zwierzecia`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
