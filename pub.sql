-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Kwi 2023, 16:10
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `pub`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tabela1`
--

CREATE TABLE `tabela1` (
  `id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `filename` varchar(96) NOT NULL,
  `Tytul` varchar(50) NOT NULL,
  `userId` int(11) NOT NULL,
  `removed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `tabela1`
--

INSERT INTO `tabela1` (`id`, `timestamp`, `filename`, `Tytul`, `userId`, `removed`) VALUES
(15, '2023-03-29 15:12:18', 'img/73b91014a8dcff269286ca057aa2eb4a677b7fe598d09af880edd982b010ce76.webp', 'rtrt', 4, 1),
(16, '2023-03-29 15:57:54', 'img/e2c0681c8c22074b5d9c47c4214081d99734a5dd40012d2e8a069667805556b2.webp', 'rtrthgj', 4, 1),
(17, '2023-03-29 15:58:33', 'img/259e47ae805edd4b1eabd7ce63a7c97163d5d9e2c38010d487aa231466cb29a0.webp', 'ewq', 4, 0),
(18, '2023-04-19 15:14:19', 'img/2db2f0552775fe8821209f390d6d484e43dc24e4871cb7b2803d313e75f9a2fe.webp', 'niewiem', 5, 0),
(19, '2023-04-26 14:06:39', 'img/e1590fce29e2299abf1bffccfa2cf587b58cf26b0a1a83257c171df89bc95a30.webp', 'kozak', 6, 0),
(20, '2023-04-26 14:11:13', 'img/39c2900678f3092bf01fbe2a5b7786cd9b8c5716c46ae2a1d8c0b8453121900b.webp', 'kozak1', 6, 0),
(21, '2023-04-26 14:29:07', 'img/ca7237c59f4dff727cffd8e1919583e9f72c21def86b98b2a24dbc8d038f3349.webp', 'tesst', 6, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(1, 'menel@xd.pl', '$argon2i$v=19$m=65536,t=4,p=1$UUhkcWZwVFVkeE92NUpGOA$ilYmS83pWtBq35j2/uuMzVct29iUBnkDL2PooyMyWYU'),
(2, 'menel@xd.pl', '$argon2i$v=19$m=65536,t=4,p=1$Y3hBSXRrRS5zWG8uWUpFSA$71oztOD+VN9VpB23h7Rxdq62rUv8WEnmtmidT0S7RkI'),
(3, 'menel@xd.pl', '$argon2i$v=19$m=65536,t=4,p=1$VFBIOUpLTEUuNnJhSkl0Zw$qUSmZHn9vP45cHTzBcaeF7qAATZyGB2X9fFQUdDXOco'),
(4, 'lal@1', '$argon2i$v=19$m=65536,t=4,p=1$UVFnUFh1UkNuOUNBNUVVZQ$coePRSn/0mThZL5Wz7EzCTsWQZ8QpSJX7mWbh5Mv+/Y'),
(5, '124@123.pl', '$argon2i$v=19$m=65536,t=4,p=1$VlpvZG1YdFlBRmtIRWd5Qg$lYXQbVD3hHugXxMJBR3jH+aawnlKCcCycmB9uhHoXnM'),
(6, 'jaja@jaja', '$argon2i$v=19$m=65536,t=4,p=1$bXR3WFFFT0V0Zzg0WVVkeg$9M4winb98+bakIRW37xxwCT31trph+qFR8OUixNNP/U');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vote`
--

CREATE TABLE `vote` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `vote`
--

INSERT INTO `vote` (`id`, `post_id`, `score`, `user_id`) VALUES
(1, 21, -1, 6),
(2, 21, 1, 6),
(3, 21, 1, 6),
(4, 21, 1, 6),
(5, 21, 1, 6),
(6, 21, 1, 6),
(7, 20, -1, 6),
(8, 20, 1, 6);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `tabela1`
--
ALTER TABLE `tabela1`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `tabela1`
--
ALTER TABLE `tabela1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `vote`
--
ALTER TABLE `vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
