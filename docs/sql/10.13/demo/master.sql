-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Czas generowania: 02 Kwi 2026, 18:47
-- Wersja serwera: 8.0.35-0ubuntu0.22.04.1
-- Wersja PHP: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `master`
--
DROP DATABASE IF EXISTS `master`;
CREATE DATABASE IF NOT EXISTS `master` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `master`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `account`
--

CREATE TABLE `account` (
  `id` int NOT NULL,
  `username` varchar(228) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `status` int DEFAULT '1',
  `birthdate` date DEFAULT NULL,
  `activated` tinyint(1) DEFAULT NULL,
  `suspended` tinyint(1) DEFAULT NULL,
  `activation_key` varchar(32) DEFAULT NULL,
  `current_world_id` int NOT NULL DEFAULT '-1',
  `created_at` datetime DEFAULT NULL,
  `last_modified_at` datetime DEFAULT NULL,
  `coin_current` int NOT NULL DEFAULT '0',
  `coin_total` int NOT NULL DEFAULT '0',
  `external_id` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `email`, `status`, `birthdate`, `activated`, `suspended`, `activation_key`, `current_world_id`, `created_at`, `last_modified_at`, `coin_current`, `coin_total`, `external_id`) VALUES
(1, 'admin', '8b7b2d5f1cc835112ce14775b6674f8c:d7cnh0mqqm6d01g9cnwgn8oxte25q7b0', 'admin@example.com', 1, NULL, NULL, NULL, NULL, -1, '2026-02-22 00:53:09', '2026-02-22 00:53:09', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `account_character`
--

CREATE TABLE `account_character` (
  `id` int NOT NULL,
  `account_id` int NOT NULL,
  `character_id` bigint NOT NULL,
  `world_server_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `account_purchases`
--

CREATE TABLE `account_purchases` (
  `id` int NOT NULL,
  `account_id` bigint NOT NULL,
  `itemID` int DEFAULT NULL,
  `itemCount` int DEFAULT NULL,
  `itemPurchaseDate` timestamp NOT NULL DEFAULT '2000-01-01 00:00:00',
  `itemClaimDate` timestamp NULL DEFAULT NULL,
  `itemClaims` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `account_purchases`
--
DELIMITER ;;
CREATE TRIGGER `account_purchases_trigger` BEFORE UPDATE ON `account_purchases` FOR EACH ROW BEGIN
  SET NEW.itemClaimDate = CURRENT_TIMESTAMP;
END
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `account_setting`
--

CREATE TABLE `account_setting` (
  `id` int NOT NULL,
  `account_id` int NOT NULL,
  `setting` varchar(45) NOT NULL,
  `settingValue` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bonuses`
--

CREATE TABLE `bonuses` (
  `id` int NOT NULL,
  `character_oid` bigint NOT NULL,
  `object` varchar(60) NOT NULL,
  `code` varchar(60) NOT NULL,
  `value` int NOT NULL,
  `valuep` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `developer`
--

CREATE TABLE `developer` (
  `dev_id` int NOT NULL,
  `email` varchar(64) NOT NULL,
  `company` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `size` varchar(64) DEFAULT NULL,
  `skill` varchar(64) DEFAULT NULL,
  `prior` varchar(64) DEFAULT NULL,
  `genre` varchar(64) DEFAULT NULL,
  `idea` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vip`
--

CREATE TABLE `vip` (
  `account_id` int NOT NULL,
  `character_oid` int NOT NULL,
  `world` varchar(20) NOT NULL,
  `vip_level` int NOT NULL,
  `vip_expire` bigint NOT NULL,
  `vip_points` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `world`
--

CREATE TABLE `world` (
  `world_id` int NOT NULL,
  `dev_id` int DEFAULT '-1',
  `world_name` varchar(64) DEFAULT NULL,
  `pretty_name` varchar(64) DEFAULT NULL,
  `description` text,
  `server_name` varchar(64) DEFAULT NULL,
  `server_ip` varchar(200) DEFAULT NULL,
  `server_port` int DEFAULT NULL,
  `public` int DEFAULT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `patcher_URL` varchar(255) DEFAULT NULL,
  `media_URL` varchar(255) DEFAULT NULL,
  `logo_URL` varchar(255) DEFAULT NULL,
  `detail_URL` varchar(255) DEFAULT NULL,
  `display_order` int DEFAULT NULL,
  `population` int NOT NULL DEFAULT '0',
  `max_population` int NOT NULL DEFAULT '100',
  `queue` int DEFAULT '0',
  `server_type` varchar(64) DEFAULT NULL,
  `status` varchar(64) DEFAULT NULL,
  `restriction_level` int NOT NULL DEFAULT '0',
  `last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `world`
--

INSERT INTO `world` (`world_id`, `dev_id`, `world_name`, `pretty_name`, `description`, `server_name`, `server_ip`, `server_port`, `public`, `approved`, `patcher_URL`, `media_URL`, `logo_URL`, `detail_URL`, `display_order`, `population`, `max_population`, `queue`, `server_type`, `status`, `restriction_level`, `last_update`) VALUES
(1, -1, 'Local', NULL, NULL, 'local', '127.0.0.1', 5042, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 1, NULL, 'Online', 0, '2023-12-18 20:59:01');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `username_2` (`username`),
  ADD KEY `externalid` (`external_id`);

--
-- Indeksy dla tabeli `account_character`
--
ALTER TABLE `account_character`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `account_purchases`
--
ALTER TABLE `account_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indeksy dla tabeli `account_setting`
--
ALTER TABLE `account_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `bonuses`
--
ALTER TABLE `bonuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `character_oid` (`character_oid`,`object`,`code`),
  ADD KEY `character_oid_2` (`character_oid`);

--
-- Indeksy dla tabeli `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`dev_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `email_2` (`email`);

--
-- Indeksy dla tabeli `world`
--
ALTER TABLE `world`
  ADD PRIMARY KEY (`world_id`),
  ADD UNIQUE KEY `world_name` (`world_name`),
  ADD KEY `world_name_2` (`world_name`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `account`
--
ALTER TABLE `account`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `account_character`
--
ALTER TABLE `account_character`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `account_purchases`
--
ALTER TABLE `account_purchases`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `account_setting`
--
ALTER TABLE `account_setting`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `bonuses`
--
ALTER TABLE `bonuses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `developer`
--
ALTER TABLE `developer`
  MODIFY `dev_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `world`
--
ALTER TABLE `world`
  MODIFY `world_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
