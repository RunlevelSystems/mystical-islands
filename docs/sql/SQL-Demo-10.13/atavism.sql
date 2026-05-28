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
-- Baza danych: `atavism`
--
DROP DATABASE IF EXISTS `atavism`;
CREATE DATABASE IF NOT EXISTS `atavism` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `atavism`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `backdating_tables`
--

CREATE TABLE `backdating_tables` (
  `DBName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `TableName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `oid_manager_Type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `DisplayName` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `LastUpdate` datetime DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=16384 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `custom_banned`
--

CREATE TABLE `custom_banned` (
  `name` varchar(20) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `bannedby` varchar(20) DEFAULT NULL,
  `expire` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `custom_profanity`
--

CREATE TABLE `custom_profanity` (
  `name` varchar(20) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `bannedby` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `history_objstore`
--

CREATE TABLE `history_objstore` (
  `id` int UNSIGNED NOT NULL,
  `obj_id` bigint DEFAULT NULL,
  `namespace_int` tinyint DEFAULT NULL,
  `world_name` varchar(64) DEFAULT NULL,
  `locX` int DEFAULT NULL,
  `locY` int DEFAULT NULL,
  `locZ` int DEFAULT NULL,
  `instance` bigint DEFAULT NULL,
  `metadata` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `persistence_key` varchar(255) DEFAULT NULL,
  `data` longblob,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mod_audit_logs`
--

CREATE TABLE `mod_audit_logs` (
  `id` bigint NOT NULL,
  `time` datetime DEFAULT '2000-01-01 00:00:00',
  `module` varchar(64) NOT NULL,
  `action` varchar(64) NOT NULL,
  `obj_id` bigint NOT NULL,
  `sub_id` bigint NOT NULL,
  `column1` varchar(64) NOT NULL DEFAULT '',
  `prev_value1` varchar(64) NOT NULL DEFAULT '',
  `new_value1` varchar(64) NOT NULL DEFAULT '',
  `column2` varchar(64) NOT NULL DEFAULT '',
  `prev_value2` varchar(64) NOT NULL DEFAULT '',
  `new_value2` varchar(64) NOT NULL DEFAULT '',
  `column3` varchar(64) NOT NULL DEFAULT '',
  `prev_value3` varchar(64) NOT NULL DEFAULT '',
  `new_value3` varchar(64) NOT NULL DEFAULT '',
  `column4` varchar(64) NOT NULL DEFAULT '',
  `prev_value4` varchar(64) NOT NULL DEFAULT '',
  `new_value4` varchar(64) NOT NULL DEFAULT '',
  `column5` varchar(64) NOT NULL DEFAULT '',
  `prev_value5` varchar(64) NOT NULL DEFAULT '',
  `new_value5` varchar(64) NOT NULL DEFAULT '',
  `column6` varchar(64) NOT NULL DEFAULT '',
  `prev_value6` varchar(64) NOT NULL DEFAULT '',
  `new_value6` varchar(64) NOT NULL DEFAULT '',
  `column7` varchar(64) NOT NULL DEFAULT '',
  `prev_value7` varchar(64) NOT NULL DEFAULT '',
  `new_value7` varchar(64) NOT NULL DEFAULT '',
  `column8` varchar(64) NOT NULL DEFAULT '',
  `prev_value8` varchar(64) NOT NULL DEFAULT '',
  `new_value8` varchar(64) NOT NULL DEFAULT '',
  `column9` varchar(64) NOT NULL DEFAULT '',
  `prev_value9` varchar(64) NOT NULL DEFAULT '',
  `new_value9` varchar(64) NOT NULL DEFAULT '',
  `column10` varchar(64) NOT NULL DEFAULT '',
  `prev_value10` varchar(64) NOT NULL DEFAULT '',
  `new_value10` varchar(64) NOT NULL DEFAULT '',
  `column11` varchar(64) NOT NULL DEFAULT '',
  `prev_value11` varchar(64) NOT NULL DEFAULT '',
  `new_value11` varchar(64) NOT NULL DEFAULT '',
  `column12` varchar(64) NOT NULL DEFAULT '',
  `prev_value12` varchar(64) NOT NULL DEFAULT '',
  `new_value12` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `namespaces`
--

CREATE TABLE `namespaces` (
  `namespace_string` varchar(64) NOT NULL,
  `namespace_int` tinyint NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=963 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `namespaces`
--

INSERT INTO `namespaces` (`namespace_string`, `namespace_int`) VALUES
('NS.transient', 1),
('NS.master', 2),
('NS.wmgr', 3),
('NS.combat', 4),
('NS.mob', 5),
('NS.inv', 6),
('NS.item', 7),
('NS.quest', 8),
('NS.playerqueststates', 9),
('NS.voice', 10),
('NS.wminstance', 11),
('NS.instance', 12),
('NS.trainer', 13),
('NS.classability', 14),
('NS.billing', 15),
('social', 16),
('NS.faction', 17),
('NS.combatinstance', 18),
('NS.mobserverinstance', 19);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `objstore`
--

CREATE TABLE `objstore` (
  `obj_id` bigint NOT NULL,
  `namespace_int` tinyint NOT NULL,
  `world_name` varchar(64) DEFAULT NULL,
  `locX` decimal(65,2) DEFAULT NULL,
  `locY` decimal(65,2) DEFAULT NULL,
  `locZ` decimal(65,2) DEFAULT NULL,
  `instance` bigint DEFAULT NULL,
  `metadata` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `persistence_key` varchar(255) DEFAULT NULL,
  `data` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `objstore`
--
DELIMITER ;;
CREATE TRIGGER `history_objstore_trigger` BEFORE UPDATE ON `objstore` FOR EACH ROW BEGIN
  IF OLD.data != NEW.data THEN
    INSERT INTO history_objstore (obj_id,
    namespace_int,
    world_name,
    locX,
    locY,
    locZ,
    instance,
    metadata,
    type,
    name,
    persistence_key,
    data)
      VALUES (NEW.obj_id, NEW.namespace_int, NEW.world_name, NEW.locX, NEW.locY, NEW.locZ, NEW.instance, NEW.metadata, NEW.type, NEW.name, NEW.persistence_key, NEW.data);
  END IF;
END
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oid_manager`
--

CREATE TABLE `oid_manager` (
  `token` int NOT NULL,
  `free_oid` bigint DEFAULT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=16384 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `oid_manager`
--

INSERT INTO `oid_manager` (`token`, `free_oid`) VALUES
(1, 9501),
(2, 2401);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_abilities`
--

CREATE TABLE `player_abilities` (
  `oid` bigint NOT NULL,
  `category` int NOT NULL DEFAULT '0',
  `world_name` varchar(64) NOT NULL,
  `template_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_bag`
--

CREATE TABLE `player_bag` (
  `oid` bigint NOT NULL,
  `player_oid` bigint NOT NULL,
  `world_name` varchar(64) NOT NULL,
  `storage_name` varchar(64) NOT NULL,
  `item_template_id` int DEFAULT NULL,
  `num_slots` int NOT NULL DEFAULT '16',
  `chest_lock` bigint NOT NULL DEFAULT '0',
  `lockable` tinyint(1) NOT NULL DEFAULT '0',
  `lock_limit` int NOT NULL DEFAULT '0',
  `bank` int NOT NULL DEFAULT '0',
  `use_type` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_bags`
--

CREATE TABLE `player_bags` (
  `player_oid` bigint NOT NULL,
  `storage_oid` bigint NOT NULL,
  `storage_name` varchar(64) NOT NULL,
  `storage_type` int NOT NULL,
  `storage_index` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `world_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_bag_bank`
--

CREATE TABLE `player_bag_bank` (
  `oid` bigint NOT NULL,
  `player_oid` bigint NOT NULL,
  `world_name` varchar(64) NOT NULL,
  `storage_name` varchar(64) NOT NULL,
  `item_template_id` int DEFAULT NULL,
  `num_slots` int NOT NULL DEFAULT '16',
  `chest_lock` bigint NOT NULL DEFAULT '0',
  `lockable` tinyint(1) NOT NULL DEFAULT '0',
  `lock_limit` int NOT NULL DEFAULT '0',
  `bank` int NOT NULL DEFAULT '0',
  `use_type` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_bag_bank_slots`
--

CREATE TABLE `player_bag_bank_slots` (
  `bag_oid` bigint NOT NULL,
  `slot_id` int NOT NULL,
  `item_oid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_bag_equip`
--

CREATE TABLE `player_bag_equip` (
  `oid` bigint NOT NULL,
  `player_oid` bigint NOT NULL,
  `world_name` varchar(64) NOT NULL,
  `storage_name` varchar(64) NOT NULL,
  `item_template_id` int DEFAULT NULL,
  `num_slots` int NOT NULL DEFAULT '16',
  `chest_lock` bigint NOT NULL DEFAULT '0',
  `lockable` tinyint(1) NOT NULL DEFAULT '0',
  `lock_limit` int NOT NULL DEFAULT '0',
  `bank` int NOT NULL DEFAULT '0',
  `use_type` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_bag_equip_slots`
--

CREATE TABLE `player_bag_equip_slots` (
  `bag_oid` bigint NOT NULL,
  `slot_id` int NOT NULL,
  `item_oid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_bag_guild`
--

CREATE TABLE `player_bag_guild` (
  `oid` bigint NOT NULL,
  `player_oid` bigint NOT NULL,
  `world_name` varchar(64) NOT NULL,
  `storage_name` varchar(64) NOT NULL,
  `item_template_id` int DEFAULT NULL,
  `num_slots` int NOT NULL DEFAULT '16',
  `chest_lock` bigint NOT NULL DEFAULT '0',
  `lockable` tinyint(1) NOT NULL DEFAULT '0',
  `lock_limit` int NOT NULL DEFAULT '0',
  `bank` tinyint NOT NULL DEFAULT '0',
  `use_type` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_bag_guild_slots`
--

CREATE TABLE `player_bag_guild_slots` (
  `bag_oid` bigint NOT NULL,
  `slot_id` int NOT NULL,
  `item_oid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_bag_slots`
--

CREATE TABLE `player_bag_slots` (
  `bag_oid` bigint NOT NULL,
  `slot_id` int NOT NULL,
  `item_oid` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_character`
--

CREATE TABLE `player_character` (
  `account_id` bigint DEFAULT NULL,
  `world_name` varchar(64) NOT NULL,
  `obj_id` bigint NOT NULL,
  `namespace_int` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_currencies`
--

CREATE TABLE `player_currencies` (
  `player_oid` bigint NOT NULL,
  `currency_id` int NOT NULL,
  `currency_value` bigint NOT NULL,
  `category` int NOT NULL DEFAULT '0',
  `world_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_faction`
--

CREATE TABLE `player_faction` (
  `oid` bigint NOT NULL,
  `faction` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_items`
--

CREATE TABLE `player_items` (
  `obj_id` bigint NOT NULL,
  `templateID` int NOT NULL,
  `stackSize` int NOT NULL DEFAULT '1',
  `inv.backref` bigint NOT NULL,
  `persistenceFlag` tinyint NOT NULL,
  `item_equipInfo` varchar(20) DEFAULT NULL,
  `world_name` varchar(64) NOT NULL,
  `enchant_level` int NOT NULL DEFAULT '0',
  `durability` int NOT NULL,
  `boundPlayerOid` bigint NOT NULL DEFAULT '0',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_item_sockets`
--

CREATE TABLE `player_item_sockets` (
  `item_oid` bigint NOT NULL,
  `socket_item_id` bigint NOT NULL DEFAULT '0',
  `socket_id` smallint NOT NULL,
  `world_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_pets`
--

CREATE TABLE `player_pets` (
  `world_name` varchar(64) NOT NULL,
  `player_oid` bigint NOT NULL,
  `pet_profile` int NOT NULL,
  `exp` bigint NOT NULL DEFAULT '0',
  `equip_bag_oid` bigint NOT NULL DEFAULT '0',
  `level` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_pvp`
--

CREATE TABLE `player_pvp` (
  `oid` bigint NOT NULL,
  `rank` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_skills`
--

CREATE TABLE `player_skills` (
  `oid` bigint NOT NULL,
  `category` int NOT NULL DEFAULT '0',
  `world_name` varchar(64) NOT NULL,
  `template_id` int NOT NULL,
  `current` int NOT NULL,
  `level` int NOT NULL,
  `level_max` int NOT NULL,
  `experience` int NOT NULL,
  `experience_max` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_stats`
--

CREATE TABLE `player_stats` (
  `oid` bigint NOT NULL,
  `world_name` varchar(64) NOT NULL,
  `template_id` int NOT NULL,
  `min` int NOT NULL,
  `max` int NOT NULL,
  `base` int NOT NULL,
  `current` int NOT NULL,
  `flag` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_stats_modifiers`
--

CREATE TABLE `player_stats_modifiers` (
  `id` bigint NOT NULL,
  `oid` bigint NOT NULL,
  `template_id` int NOT NULL,
  `world_name` varchar(64) NOT NULL,
  `tstring` varchar(128) DEFAULT '',
  `toid` bigint NOT NULL,
  `value` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `player_stats_modifiers_percentage`
--

CREATE TABLE `player_stats_modifiers_percentage` (
  `id` bigint NOT NULL,
  `oid` bigint NOT NULL,
  `template_id` int NOT NULL,
  `world_name` varchar(64) NOT NULL,
  `tstring` varchar(128) DEFAULT '',
  `toid` bigint NOT NULL,
  `value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `plugin_status`
--

CREATE TABLE `plugin_status` (
  `world_name` varchar(64) NOT NULL,
  `agent_name` varchar(64) NOT NULL,
  `plugin_name` varchar(64) NOT NULL,
  `plugin_type` varchar(16) NOT NULL,
  `host_name` varchar(64) NOT NULL,
  `pid` int DEFAULT NULL,
  `run_id` bigint DEFAULT NULL,
  `percent_cpu_load` int DEFAULT NULL,
  `last_update_time` bigint DEFAULT NULL,
  `next_update_time` bigint DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL
) ENGINE=MEMORY AVG_ROW_LENGTH=2388 DEFAULT CHARSET=utf8mb3;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `custom_banned`
--
ALTER TABLE `custom_banned`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `custom_profanity`
--
ALTER TABLE `custom_profanity`
  ADD PRIMARY KEY (`name`);

--
-- Indeksy dla tabeli `history_objstore`
--
ALTER TABLE `history_objstore`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `metadata` (`metadata`),
  ADD KEY `name` (`name`),
  ADD KEY `persistence_key` (`persistence_key`),
  ADD KEY `type` (`type`);

--
-- Indeksy dla tabeli `mod_audit_logs`
--
ALTER TABLE `mod_audit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `namespaces`
--
ALTER TABLE `namespaces`
  ADD PRIMARY KEY (`namespace_string`),
  ADD UNIQUE KEY `namespace_int` (`namespace_int`);

--
-- Indeksy dla tabeli `objstore`
--
ALTER TABLE `objstore`
  ADD PRIMARY KEY (`obj_id`,`namespace_int`),
  ADD KEY `metadata` (`metadata`),
  ADD KEY `name` (`name`),
  ADD KEY `persistence_key` (`persistence_key`),
  ADD KEY `type` (`type`),
  ADD KEY `type_name` (`type`,`name`),
  ADD KEY `world_name_instance_namespace_int` (`world_name`,`instance`,`namespace_int`),
  ADD KEY `world_name_namespace_int_name` (`world_name`,`namespace_int`,`name`),
  ADD KEY `obj_id_world_name` (`obj_id`,`world_name`);

--
-- Indeksy dla tabeli `oid_manager`
--
ALTER TABLE `oid_manager`
  ADD PRIMARY KEY (`token`);

--
-- Indeksy dla tabeli `player_abilities`
--
ALTER TABLE `player_abilities`
  ADD PRIMARY KEY (`oid`,`template_id`,`world_name`,`category`),
  ADD KEY `oid` (`oid`,`world_name`,`category`),
  ADD KEY `template_id` (`template_id`),
  ADD KEY `oid_world_name` (`oid`,`world_name`);

--
-- Indeksy dla tabeli `player_bag`
--
ALTER TABLE `player_bag`
  ADD PRIMARY KEY (`oid`,`player_oid`,`world_name`),
  ADD KEY `world_name_player` (`player_oid`,`world_name`);

--
-- Indeksy dla tabeli `player_bags`
--
ALTER TABLE `player_bags`
  ADD PRIMARY KEY (`player_oid`,`storage_oid`,`category`,`world_name`,`storage_name`),
  ADD KEY `world_name_player` (`player_oid`,`world_name`),
  ADD KEY `world_name_player_storage` (`player_oid`,`world_name`,`storage_oid`);

--
-- Indeksy dla tabeli `player_bag_bank`
--
ALTER TABLE `player_bag_bank`
  ADD PRIMARY KEY (`oid`,`player_oid`,`world_name`),
  ADD KEY `world_name_player` (`player_oid`,`world_name`);

--
-- Indeksy dla tabeli `player_bag_bank_slots`
--
ALTER TABLE `player_bag_bank_slots`
  ADD PRIMARY KEY (`bag_oid`,`slot_id`);

--
-- Indeksy dla tabeli `player_bag_equip`
--
ALTER TABLE `player_bag_equip`
  ADD PRIMARY KEY (`oid`,`player_oid`,`world_name`),
  ADD KEY `world_name_player` (`player_oid`,`world_name`);

--
-- Indeksy dla tabeli `player_bag_equip_slots`
--
ALTER TABLE `player_bag_equip_slots`
  ADD PRIMARY KEY (`bag_oid`,`slot_id`);

--
-- Indeksy dla tabeli `player_bag_guild`
--
ALTER TABLE `player_bag_guild`
  ADD PRIMARY KEY (`oid`,`player_oid`,`world_name`),
  ADD KEY `world_name_player` (`player_oid`,`world_name`);

--
-- Indeksy dla tabeli `player_bag_guild_slots`
--
ALTER TABLE `player_bag_guild_slots`
  ADD PRIMARY KEY (`bag_oid`,`slot_id`);

--
-- Indeksy dla tabeli `player_bag_slots`
--
ALTER TABLE `player_bag_slots`
  ADD PRIMARY KEY (`bag_oid`,`slot_id`);

--
-- Indeksy dla tabeli `player_character`
--
ALTER TABLE `player_character`
  ADD KEY `player_character_ibfk_1` (`obj_id`,`namespace_int`);

--
-- Indeksy dla tabeli `player_currencies`
--
ALTER TABLE `player_currencies`
  ADD PRIMARY KEY (`player_oid`,`currency_id`,`category`,`world_name`),
  ADD KEY `world_name_player` (`player_oid`,`world_name`);

--
-- Indeksy dla tabeli `player_faction`
--
ALTER TABLE `player_faction`
  ADD PRIMARY KEY (`oid`);

--
-- Indeksy dla tabeli `player_items`
--
ALTER TABLE `player_items`
  ADD PRIMARY KEY (`obj_id`,`world_name`),
  ADD KEY `inv_backref` (`inv.backref`,`world_name`);

--
-- Indeksy dla tabeli `player_item_sockets`
--
ALTER TABLE `player_item_sockets`
  ADD PRIMARY KEY (`socket_id`,`world_name`,`item_oid`),
  ADD KEY `item_oid_world_name` (`item_oid`,`world_name`);

--
-- Indeksy dla tabeli `player_pets`
--
ALTER TABLE `player_pets`
  ADD PRIMARY KEY (`world_name`,`player_oid`,`pet_profile`),
  ADD KEY `player_oid_world_name` (`world_name`,`player_oid`);

--
-- Indeksy dla tabeli `player_pvp`
--
ALTER TABLE `player_pvp`
  ADD PRIMARY KEY (`oid`);

--
-- Indeksy dla tabeli `player_skills`
--
ALTER TABLE `player_skills`
  ADD PRIMARY KEY (`oid`,`template_id`),
  ADD KEY `oid` (`oid`,`world_name`),
  ADD KEY `template_id` (`template_id`);

--
-- Indeksy dla tabeli `player_stats`
--
ALTER TABLE `player_stats`
  ADD PRIMARY KEY (`oid`,`world_name`,`template_id`),
  ADD KEY `oid_world_name` (`oid`,`world_name`);

--
-- Indeksy dla tabeli `player_stats_modifiers`
--
ALTER TABLE `player_stats_modifiers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oid_1` (`oid`,`template_id`,`tstring`,`toid`),
  ADD KEY `oid_2` (`oid`,`template_id`),
  ADD KEY `oid_3` (`oid`,`template_id`,`tstring`),
  ADD KEY `oid_4` (`oid`,`template_id`,`toid`),
  ADD KEY `oid_world_name` (`oid`,`world_name`);

--
-- Indeksy dla tabeli `player_stats_modifiers_percentage`
--
ALTER TABLE `player_stats_modifiers_percentage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oid_1` (`oid`,`template_id`,`tstring`,`toid`),
  ADD KEY `oid_2` (`oid`,`template_id`),
  ADD KEY `oid_3` (`oid`,`template_id`,`tstring`),
  ADD KEY `oid_4` (`oid`,`template_id`,`toid`),
  ADD KEY `oid_world_name` (`oid`,`world_name`);

--
-- Indeksy dla tabeli `plugin_status`
--
ALTER TABLE `plugin_status`
  ADD KEY `agent_name` (`agent_name`) USING BTREE,
  ADD KEY `plugin_name` (`plugin_name`),
  ADD KEY `world_name` (`world_name`) USING BTREE,
  ADD KEY `plugin_type` (`plugin_type`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `history_objstore`
--
ALTER TABLE `history_objstore`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `mod_audit_logs`
--
ALTER TABLE `mod_audit_logs`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `player_stats_modifiers`
--
ALTER TABLE `player_stats_modifiers`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `player_stats_modifiers_percentage`
--
ALTER TABLE `player_stats_modifiers_percentage`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `player_character`
--
ALTER TABLE `player_character`
  ADD CONSTRAINT `player_character_ibfk_1` FOREIGN KEY (`obj_id`,`namespace_int`) REFERENCES `objstore` (`obj_id`, `namespace_int`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
