-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Czas generowania: 02 Kwi 2026, 17:53
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
-- Baza danych: `world_content`
--
DROP DATABASE IF EXISTS `world_content`;
CREATE DATABASE IF NOT EXISTS `world_content` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `world_content`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `abilities`
--

DROP TABLE IF EXISTS `abilities`;
CREATE TABLE IF NOT EXISTS `abilities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `icon` varchar(256) DEFAULT NULL,
  `abilityType` varchar(64) DEFAULT NULL,
  `skill` int DEFAULT NULL,
  `passive` tinyint(1) DEFAULT NULL,
  `activationCost` int DEFAULT NULL,
  `activationCostType` varchar(32) DEFAULT NULL,
  `activationLength` float DEFAULT NULL,
  `attack_time` float NOT NULL DEFAULT '0',
  `activationAnimation` varchar(32) DEFAULT NULL,
  `activationParticles` varchar(32) DEFAULT NULL,
  `casterEffectRequired` int DEFAULT NULL,
  `casterEffectConsumed` tinyint(1) DEFAULT NULL,
  `targetEffectRequired` int DEFAULT NULL,
  `targetEffectConsumed` tinyint(1) DEFAULT NULL,
  `weaponRequired` varchar(2048) DEFAULT NULL,
  `reagentRequired` int NOT NULL DEFAULT '-1',
  `reagentCount` int DEFAULT '1',
  `reagentConsumed` tinyint(1) DEFAULT NULL,
  `reagent2Required` int DEFAULT '-1',
  `reagent2Count` int DEFAULT '1',
  `reagent2Consumed` tinyint(1) DEFAULT '1',
  `reagent3Required` int DEFAULT '-1',
  `reagent3Count` int DEFAULT '1',
  `reagent3Consumed` tinyint(1) DEFAULT '1',
  `ammoUsed` int DEFAULT '0',
  `maxRange` int DEFAULT NULL,
  `minRange` int DEFAULT NULL,
  `aoeRadius` int NOT NULL DEFAULT '0',
  `aoeAngle` float NOT NULL DEFAULT '360',
  `aoeType` varchar(45) DEFAULT NULL,
  `reqTarget` tinyint(1) DEFAULT '1',
  `reqFacingTarget` tinyint(1) DEFAULT '0',
  `autoRotateToTarget` tinyint(1) DEFAULT '0',
  `relativePositionReq` int DEFAULT '0',
  `targetType` varchar(32) DEFAULT NULL,
  `targetSubType` varchar(64) NOT NULL DEFAULT '',
  `targetState` int DEFAULT NULL,
  `casterState` int NOT NULL DEFAULT '1',
  `speciesTargetReq` varchar(32) DEFAULT NULL,
  `specificTargetReq` varchar(64) DEFAULT NULL,
  `globalCooldown` tinyint(1) DEFAULT NULL,
  `cooldown1Type` varchar(32) DEFAULT NULL,
  `cooldown1Duration` float DEFAULT NULL,
  `weaponCooldown` tinyint(1) DEFAULT NULL,
  `startCooldownsOnActivation` tinyint(1) DEFAULT '0',
  `activationEffect1` int DEFAULT NULL,
  `activationTarget1` varchar(32) DEFAULT NULL,
  `activationEffect2` int DEFAULT NULL,
  `activationTarget2` varchar(32) DEFAULT NULL,
  `activationEffect3` int DEFAULT NULL,
  `activationTarget3` varchar(32) DEFAULT NULL,
  `activationEffect4` int DEFAULT '0',
  `activationTarget4` varchar(32) DEFAULT '0',
  `activationEffect5` int DEFAULT '0',
  `activationTarget5` varchar(32) DEFAULT '0',
  `activationEffect6` int DEFAULT '0',
  `activationTarget6` varchar(32) DEFAULT '0',
  `coordEffect1event` varchar(32) DEFAULT NULL,
  `coordEffect1` varchar(64) DEFAULT NULL,
  `coordEffect2event` varchar(32) DEFAULT NULL,
  `coordEffect2` varchar(64) DEFAULT NULL,
  `coordEffect3event` varchar(32) DEFAULT NULL,
  `coordEffect3` varchar(64) DEFAULT NULL,
  `coordEffect4event` varchar(32) DEFAULT NULL,
  `coordEffect4` varchar(64) DEFAULT NULL,
  `coordEffect5event` varchar(32) DEFAULT NULL,
  `coordEffect5` varchar(64) DEFAULT NULL,
  `tooltip` varchar(256) DEFAULT NULL,
  `interceptType` int DEFAULT NULL,
  `icon2` mediumtext NOT NULL,
  `chance` float NOT NULL DEFAULT '0',
  `castingInRun` tinyint(1) NOT NULL DEFAULT '0',
  `exp` int NOT NULL DEFAULT '0',
  `consumeOnActivation` tinyint(1) NOT NULL DEFAULT '0',
  `channelling` tinyint(1) NOT NULL DEFAULT '0',
  `channelling_cost` int NOT NULL DEFAULT '0',
  `channelling_pulse_num` int NOT NULL DEFAULT '1',
  `channelling_pulse_time` float NOT NULL DEFAULT '0.25',
  `channelling_in_run` tinyint(1) NOT NULL DEFAULT '0',
  `projectile` tinyint(1) NOT NULL DEFAULT '0',
  `projectile_speed` int NOT NULL DEFAULT '0',
  `activationDelay` float NOT NULL DEFAULT '0',
  `pulseCost` int DEFAULT '0',
  `pulseCostType` varchar(32) DEFAULT '',
  `pulseCasterEffectRequired` int DEFAULT '0',
  `pulseCasterEffectConsumed` tinyint(1) DEFAULT '0',
  `pulseTargetEffectRequired` int DEFAULT '0',
  `pulseTargetEffectConsumed` tinyint(1) DEFAULT '0',
  `pulseReagentRequired` int NOT NULL DEFAULT '-1',
  `pulseReagentCount` int DEFAULT '1',
  `pulseReagentConsumed` tinyint(1) DEFAULT '0',
  `pulseReagent2Required` int DEFAULT '-1',
  `pulseReagent2Count` int DEFAULT '1',
  `pulseReagent2Consumed` tinyint(1) DEFAULT '1',
  `pulseReagent3Required` int DEFAULT '-1',
  `pulseReagent3Count` int DEFAULT '1',
  `pulseReagent3Consumed` tinyint(1) DEFAULT '1',
  `pulseAmmoUsed` int DEFAULT '0',
  `skipChecks` tinyint(1) NOT NULL DEFAULT '0',
  `activationCostPercentage` float NOT NULL DEFAULT '0',
  `pulseCostPercentage` float NOT NULL DEFAULT '0',
  `aoePrefab` varchar(200) NOT NULL DEFAULT '',
  `stealth_reduce` tinyint(1) NOT NULL DEFAULT '0',
  `interruptible` tinyint(1) NOT NULL DEFAULT '0',
  `interruption_chance` float NOT NULL DEFAULT '0',
  `toggle` tinyint(1) NOT NULL DEFAULT '0',
  `tags` text NOT NULL,
  `tag_disable` int NOT NULL DEFAULT '-1',
  `tag_count` int NOT NULL DEFAULT '1',
  `speed` float NOT NULL DEFAULT '0',
  `chunk_length` float NOT NULL DEFAULT '1',
  `prediction` int NOT NULL DEFAULT '0',
  `aoe_target_count_type` int NOT NULL DEFAULT '0',
  `aoe_target_count` int NOT NULL DEFAULT '5',
  `attack_building` tinyint(1) NOT NULL DEFAULT '0',
  `damageType` varchar(256) NOT NULL DEFAULT '',
  `stealth_reduction_amount` int NOT NULL DEFAULT '0',
  `stealth_reduction_percentage` float NOT NULL DEFAULT '0',
  `stealth_reduction_timeout` bigint NOT NULL DEFAULT '0',
  `skill_up_chance` int NOT NULL DEFAULT '0',
  `miss_chance` float NOT NULL DEFAULT '0.05',
  `tags_on_caster` text NOT NULL,
  `tags_on_target` text NOT NULL,
  `tags_not_on_caster` text NOT NULL,
  `tags_not_on_target` text NOT NULL,
  `pulse_tags_on_caster` text NOT NULL,
  `pulse_tags_on_target` text NOT NULL,
  `pulse_tags_not_on_caster` text NOT NULL,
  `is_child` tinyint(1) NOT NULL DEFAULT '0',
  `combatState` int NOT NULL DEFAULT '2',
  `powerUpCoordEffect` varchar(128) NOT NULL DEFAULT '',
  `makeBusy` tinyint(1) NOT NULL DEFAULT '1',
  `checkBusy` tinyint(1) NOT NULL DEFAULT '1',
  `weaponMustBeDrawn` tinyint(1) NOT NULL DEFAULT '0',
  `drawnWeaponBefore` tinyint(1) NOT NULL DEFAULT '0',
  `enemyTargetChangeToSelf` tinyint(1) NOT NULL DEFAULT '0',
  `line_of_sight` tinyint(1) NOT NULL DEFAULT '0',
  `pulse_tags_not_on_target` text NOT NULL,
  `enterCombatState` tinyint DEFAULT '1',
  `pvp_enter` tinyint(1) DEFAULT '0',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  `abilitiescol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=862 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `abilities`
--
DROP TRIGGER IF EXISTS `abilities_trigger`;
DELIMITER ;;
CREATE TRIGGER `abilities_trigger` BEFORE UPDATE ON `abilities` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `abilities_coordeffects`
--

DROP TABLE IF EXISTS `abilities_coordeffects`;
CREATE TABLE IF NOT EXISTS `abilities_coordeffects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ability_power_id` int DEFAULT NULL,
  `coordEffectEvent` varchar(64) NOT NULL DEFAULT '',
  `coordEffect` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `abilityPowerId` (`ability_power_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `abilities_powerup_settings`
--

DROP TABLE IF EXISTS `abilities_powerup_settings`;
CREATE TABLE IF NOT EXISTS `abilities_powerup_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ability_id` int DEFAULT NULL,
  `thresholdMaxTime` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ability_id` (`ability_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `abilities_triggers`
--

DROP TABLE IF EXISTS `abilities_triggers`;
CREATE TABLE IF NOT EXISTS `abilities_triggers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ability_power_id` int NOT NULL DEFAULT '-1',
  `trigger_id` int NOT NULL DEFAULT '-1',
  `creationtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `ability_power_id` (`ability_power_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `abilities_triggers_actions`
--

DROP TABLE IF EXISTS `abilities_triggers_actions`;
CREATE TABLE IF NOT EXISTS `abilities_triggers_actions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `abilities_triggers_id` int NOT NULL,
  `target` int NOT NULL,
  `ability` int NOT NULL,
  `effect` int NOT NULL,
  `mod_v` int NOT NULL DEFAULT '0',
  `mod_p` float NOT NULL DEFAULT '0',
  `chance_min` float NOT NULL,
  `chance_max` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `abilities_triggers_profile`
--

DROP TABLE IF EXISTS `abilities_triggers_profile`;
CREATE TABLE IF NOT EXISTS `abilities_triggers_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `event_type` int NOT NULL,
  `tags` text NOT NULL,
  `race` int NOT NULL DEFAULT '-1',
  `class` int NOT NULL DEFAULT '-1',
  `action_type` tinyint NOT NULL,
  `chance_min` float NOT NULL DEFAULT '0',
  `chance_max` float NOT NULL DEFAULT '100',
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `creationtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ability_abilities`
--

DROP TABLE IF EXISTS `ability_abilities`;
CREATE TABLE IF NOT EXISTS `ability_abilities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ability_power_id` int NOT NULL,
  `target` varchar(64) NOT NULL,
  `ability` int NOT NULL,
  `delay` int NOT NULL,
  `chance_min` float NOT NULL,
  `chance_max` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ability_id` (`ability_power_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ability_combos`
--

DROP TABLE IF EXISTS `ability_combos`;
CREATE TABLE IF NOT EXISTS `ability_combos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ability_parent_id` int NOT NULL,
  `ability_sub_id` int NOT NULL,
  `chance_min` float NOT NULL DEFAULT '0',
  `chance_max` float NOT NULL DEFAULT '100',
  `show_in_center_ui` tinyint(1) NOT NULL DEFAULT '1',
  `replace_in_slot` tinyint(1) NOT NULL DEFAULT '1',
  `check_cooldown` tinyint(1) NOT NULL DEFAULT '1',
  `time` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ability_parent_id` (`ability_parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ability_effects`
--

DROP TABLE IF EXISTS `ability_effects`;
CREATE TABLE IF NOT EXISTS `ability_effects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ability_power_id` int NOT NULL,
  `target` varchar(64) NOT NULL,
  `effect` int NOT NULL,
  `delay` int NOT NULL,
  `chance_min` float NOT NULL,
  `chance_max` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ability_id` (`ability_power_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `achievements`
--

DROP TABLE IF EXISTS `achievements`;
CREATE TABLE IF NOT EXISTS `achievements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `category` varchar(32) NOT NULL,
  `subcategory` varchar(32) DEFAULT NULL,
  `points` int NOT NULL,
  `text` text,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `achievements`
--
DROP TRIGGER IF EXISTS `achievements_trigger`;
DELIMITER ;;
CREATE TRIGGER `achievements_trigger` BEFORE UPDATE ON `achievements` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `achievement_bonuses`
--

DROP TABLE IF EXISTS `achievement_bonuses`;
CREATE TABLE IF NOT EXISTS `achievement_bonuses` (
  `achievement_id` int NOT NULL,
  `bonus_settings_id` int NOT NULL,
  `value` int NOT NULL,
  `valuep` float NOT NULL,
  KEY `vip_level_id` (`achievement_id`,`bonus_settings_id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `achievement_categories`
--

DROP TABLE IF EXISTS `achievement_categories`;
CREATE TABLE IF NOT EXISTS `achievement_categories` (
  `name` varchar(64) NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB AVG_ROW_LENGTH=4096 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `achievement_categories`
--
DROP TRIGGER IF EXISTS `achievement_categories_trigger`;
DELIMITER ;;
CREATE TRIGGER `achievement_categories_trigger` BEFORE UPDATE ON `achievement_categories` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `achievement_criteria`
--

DROP TABLE IF EXISTS `achievement_criteria`;
CREATE TABLE IF NOT EXISTS `achievement_criteria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `achievementID` int NOT NULL,
  `event` varchar(32) NOT NULL,
  `eventCount` int DEFAULT NULL,
  `resetEvent1` varchar(32) DEFAULT NULL,
  `resetEvent2` varchar(32) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `achievement_criteria`
--
DROP TRIGGER IF EXISTS `achievement_criteria_trigger`;
DELIMITER ;;
CREATE TRIGGER `achievement_criteria_trigger` BEFORE UPDATE ON `achievement_criteria` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `achievement_settings`
--

DROP TABLE IF EXISTS `achievement_settings`;
CREATE TABLE IF NOT EXISTS `achievement_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL,
  `value` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `objects` varchar(2048) NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=2730 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `achievement_stats`
--

DROP TABLE IF EXISTS `achievement_stats`;
CREATE TABLE IF NOT EXISTS `achievement_stats` (
  `achievement_id` int NOT NULL,
  `stat` varchar(45) NOT NULL,
  `value` int NOT NULL,
  `valuep` float NOT NULL,
  KEY `vip_level_id` (`achievement_id`,`stat`)
) ENGINE=InnoDB AVG_ROW_LENGTH=2340 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `achievement_subcategories`
--

DROP TABLE IF EXISTS `achievement_subcategories`;
CREATE TABLE IF NOT EXISTS `achievement_subcategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `category` varchar(64) NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `category` (`category`)
) ENGINE=InnoDB AVG_ROW_LENGTH=3276 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `achievement_subcategories`
--
DROP TRIGGER IF EXISTS `achievement_subcategories_trigger`;
DELIMITER ;;
CREATE TRIGGER `achievement_subcategories_trigger` BEFORE UPDATE ON `achievement_subcategories` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `arena_categories`
--

DROP TABLE IF EXISTS `arena_categories`;
CREATE TABLE IF NOT EXISTS `arena_categories` (
  `id` int NOT NULL,
  `skin1` varchar(64) NOT NULL,
  `skin2` varchar(64) DEFAULT NULL,
  `skin3` varchar(64) DEFAULT NULL,
  `skin4` varchar(64) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `arena_categories`
--

INSERT INTO `arena_categories` (`id`, `skin1`, `skin2`, `skin3`, `skin4`, `isactive`, `creationtimestamp`, `updatetimestamp`) VALUES
(1, ' ', ' ', ' ', ' ', 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00');

--
-- Wyzwalacze `arena_categories`
--
DROP TRIGGER IF EXISTS `arena_categories_trigger`;
DELIMITER ;;
CREATE TRIGGER `arena_categories_trigger` BEFORE UPDATE ON `arena_categories` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `arena_teams`
--

DROP TABLE IF EXISTS `arena_teams`;
CREATE TABLE IF NOT EXISTS `arena_teams` (
  `id` int NOT NULL AUTO_INCREMENT,
  `arenaID` int NOT NULL,
  `name` varchar(32) NOT NULL,
  `size` int NOT NULL,
  `race` varchar(32) DEFAULT NULL,
  `goal` int DEFAULT NULL,
  `spawnX` float DEFAULT NULL,
  `spawnY` float DEFAULT NULL,
  `spawnZ` float DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=2048 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `arena_teams`
--
DROP TRIGGER IF EXISTS `arena_teams_trigger`;
DELIMITER ;;
CREATE TRIGGER `arena_teams_trigger` BEFORE UPDATE ON `arena_teams` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `arena_templates`
--

DROP TABLE IF EXISTS `arena_templates`;
CREATE TABLE IF NOT EXISTS `arena_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `arenaType` int DEFAULT '1',
  `name` varchar(64) NOT NULL,
  `arenaCategory` int DEFAULT '1',
  `arenaInstanceID` int NOT NULL,
  `length` int DEFAULT NULL,
  `defaultWinner` int DEFAULT NULL,
  `team1` int NOT NULL DEFAULT '-1',
  `team2` int DEFAULT '-1',
  `team3` int DEFAULT '-1',
  `team4` int DEFAULT '-1',
  `levelReq` int DEFAULT '1',
  `levelMax` int NOT NULL,
  `victoryCurrency` int DEFAULT NULL,
  `victoryPayment` int DEFAULT NULL,
  `defeatCurrency` int DEFAULT NULL,
  `defeatPayment` int DEFAULT NULL,
  `victoryExp` int DEFAULT NULL,
  `defeatExp` int DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `start_hour` int NOT NULL DEFAULT '0',
  `start_minute` int NOT NULL DEFAULT '0',
  `end_hour` int NOT NULL DEFAULT '0',
  `end_minute` int NOT NULL DEFAULT '0',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  `description` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=4096 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `arena_templates`
--
DROP TRIGGER IF EXISTS `arena_templates_trigger`;
DELIMITER ;;
CREATE TRIGGER `arena_templates_trigger` BEFORE UPDATE ON `arena_templates` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auction_profile`
--

DROP TABLE IF EXISTS `auction_profile`;
CREATE TABLE IF NOT EXISTS `auction_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `cost_price_value` int NOT NULL,
  `cost_price_value_percentage` float NOT NULL,
  `currency` int NOT NULL,
  `duration` int NOT NULL,
  `display_limit` int NOT NULL,
  `own_limit` int NOT NULL,
  `start_price_value` int NOT NULL,
  `start_price_percentage` float NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  `creationtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `auction_profile`
--

INSERT INTO `auction_profile` (`id`, `name`, `cost_price_value`, `cost_price_value_percentage`, `currency`, `duration`, `display_limit`, `own_limit`, `start_price_value`, `start_price_percentage`, `isactive`, `creationtimestamp`, `updatetimestamp`) VALUES
(1, 'Default', 2, 5, 3, 8, 100, 10, 1, 10, 1, '2021-09-14 16:50:42', '2021-09-16 00:08:09');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `behavior_conditions`
--

DROP TABLE IF EXISTS `behavior_conditions`;
CREATE TABLE IF NOT EXISTS `behavior_conditions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `conditions_group_id` int NOT NULL,
  `type` int NOT NULL COMMENT '0-Event; 1-Distance; 2-Stat; 3-Effect; 4-CombatState; 5-DeathState; 6-NumberOfTargets',
  `distance` float NOT NULL,
  `less` tinyint(1) NOT NULL,
  `stat_name` varchar(256) NOT NULL,
  `stat_value` float NOT NULL,
  `stat_vitality_percentage` tinyint(1) NOT NULL,
  `target` int NOT NULL DEFAULT '1' COMMENT '0-Caster; 1-Target',
  `effect_tag_id` int NOT NULL,
  `on_target` tinyint(1) NOT NULL,
  `combat_state` tinyint(1) NOT NULL,
  `death_state` tinyint(1) NOT NULL,
  `trigger_event_Id` int NOT NULL COMMENT '0-Parry; 1-Dodge; 2-Miss; 3-Damage; 4-Heal; 5-Critical; 6-Kill; 7-Stun; 8-Sleep',
  `target_number` int NOT NULL,
  `target_ally` tinyint(1) NOT NULL,
  `creationtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `conditions_group_id` (`conditions_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `behavior_conditions_group`
--

DROP TABLE IF EXISTS `behavior_conditions_group`;
CREATE TABLE IF NOT EXISTS `behavior_conditions_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_order` int NOT NULL,
  `behavior_id` int NOT NULL,
  `creationtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `behavior_id` (`behavior_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bonuses_settings`
--

DROP TABLE IF EXISTS `bonuses_settings`;
CREATE TABLE IF NOT EXISTS `bonuses_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(65) NOT NULL,
  `code` varchar(20) NOT NULL,
  `param` varchar(100) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 AVG_ROW_LENGTH=819 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `bonuses_settings`
--

INSERT INTO `bonuses_settings` (`id`, `name`, `code`, `param`, `isactive`) VALUES
(1, 'Exp Gain', 'ExpGain', 'vp', 1),
(2, 'Exp Lost PVE', 'ExpLostPVE', 'vp', 1),
(3, 'Exp Lost PVP', 'ExpLostPVP', '', 1),
(4, 'Price Merchant', 'PriceMerchant', 'vp', 1),
(5, 'Sell Factor', 'SellFactor', 'p', 1),
(6, 'Loot Chance', 'LootChance', 'p', 1),
(7, 'Auction Cost', 'AuctionCost', 'vp', 1),
(8, 'Auction Count', 'AuctionCount', 'v', 1),
(9, 'Enchanting Cost', 'EnchantingCost', 'vp', 1),
(10, 'Enchanting Chance', 'EnchantingChance', 'p', 1),
(11, 'Enchanting Time', 'EnchantingTime', 'v', 1),
(12, 'Socketing Cost', 'SocketingCost', 'vp', 1),
(13, 'Socketing Chance', 'SocketingChance', 'p', 1),
(14, 'Socketing Time', 'SocketingTime', 'v', 1),
(15, 'Reset Sockets Cost', 'ResetSocketsCost', 'vp', 1),
(16, 'Reset Sockets Chance', 'ResetSocketsChance', 'p', 1),
(17, 'Reset Sockets Time', 'ResetSocketsTime', 'v', 1),
(21, 'Harvest Time', 'HarvestTime', 'vp', 1),
(22, 'Crafting Chance', 'CraftingChance', 'p', 1),
(23, 'Crafting Time', 'CraftingTime', 'vp', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `building_grids`
--

DROP TABLE IF EXISTS `building_grids`;
CREATE TABLE IF NOT EXISTS `building_grids` (
  `id` int NOT NULL AUTO_INCREMENT,
  `instance` varchar(45) NOT NULL,
  `locX` float DEFAULT NULL,
  `locY` float DEFAULT NULL,
  `locZ` float DEFAULT NULL,
  `type` int DEFAULT NULL,
  `owner` bigint DEFAULT NULL,
  `layer_count` int DEFAULT '1',
  `building1` varchar(45) DEFAULT NULL,
  `building1_rotation` float DEFAULT NULL,
  `building2` varchar(45) DEFAULT NULL,
  `building2_rotation` float DEFAULT NULL,
  `building3` varchar(45) DEFAULT NULL,
  `building3_rotation` float DEFAULT NULL,
  `building4` varchar(45) DEFAULT NULL,
  `building4_rotation` float DEFAULT NULL,
  `building5` varchar(45) DEFAULT NULL,
  `building5_rotation` float DEFAULT NULL,
  `layer_height` float DEFAULT NULL,
  `blueprint1` int DEFAULT '-1',
  `blueprint2` int DEFAULT '-1',
  `blueprint3` int DEFAULT '-1',
  `blueprint4` int DEFAULT '-1',
  `blueprint5` int DEFAULT '-1',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `building_grids`
--
DROP TRIGGER IF EXISTS `building_grids_trigger`;
DELIMITER ;;
CREATE TRIGGER `building_grids_trigger` BEFORE UPDATE ON `building_grids` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `build_object_limits`
--

DROP TABLE IF EXISTS `build_object_limits`;
CREATE TABLE IF NOT EXISTS `build_object_limits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profile_id` int NOT NULL,
  `object_category` int NOT NULL,
  `count` int NOT NULL,
  `isactive` int NOT NULL DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `profile_id` (`profile_id`),
  KEY `profile_id_2` (`profile_id`,`isactive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `build_object_stage`
--

DROP TABLE IF EXISTS `build_object_stage`;
CREATE TABLE IF NOT EXISTS `build_object_stage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gameObject` varchar(256) NOT NULL,
  `nextStage` int NOT NULL DEFAULT '-1',
  `buildTimeReq` float NOT NULL DEFAULT '0',
  `repairTimeReq` float NOT NULL DEFAULT '0',
  `interactionType` varchar(256) NOT NULL,
  `interactionID` int NOT NULL,
  `interactionData1` varchar(256) NOT NULL,
  `health` int NOT NULL DEFAULT '0',
  `lootTable` int NOT NULL,
  `lootMinPercentage` float NOT NULL,
  `lootMaxPercentage` float NOT NULL,
  `itemReq1` int DEFAULT NULL,
  `itemReq1Count` int DEFAULT NULL,
  `itemReq2` int DEFAULT NULL,
  `itemReq2Count` int DEFAULT NULL,
  `itemReq3` int DEFAULT NULL,
  `itemReq3Count` int DEFAULT NULL,
  `itemReq4` int DEFAULT NULL,
  `itemReq4Count` int DEFAULT NULL,
  `itemReq5` int DEFAULT NULL,
  `itemReq5Count` int DEFAULT NULL,
  `itemReq6` int DEFAULT NULL,
  `itemReq6Count` int DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=5461 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `build_object_stage`
--
DROP TRIGGER IF EXISTS `build_object_stage_trigger`;
DELIMITER ;;
CREATE TRIGGER `build_object_stage_trigger` BEFORE UPDATE ON `build_object_stage` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `build_object_stage_damaged`
--

DROP TABLE IF EXISTS `build_object_stage_damaged`;
CREATE TABLE IF NOT EXISTS `build_object_stage_damaged` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stage_id` int NOT NULL,
  `progress` smallint NOT NULL,
  `prefab` varchar(1000) NOT NULL,
  `trimesh` longblob,
  PRIMARY KEY (`id`),
  KEY `stage_id` (`stage_id`,`progress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `build_object_stage_items`
--

DROP TABLE IF EXISTS `build_object_stage_items`;
CREATE TABLE IF NOT EXISTS `build_object_stage_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stage_id` int NOT NULL,
  `item` int NOT NULL,
  `count` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `build_object_stage_progress`
--

DROP TABLE IF EXISTS `build_object_stage_progress`;
CREATE TABLE IF NOT EXISTS `build_object_stage_progress` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stage_id` int NOT NULL,
  `progress` smallint NOT NULL,
  `prefab` varchar(1000) NOT NULL,
  `trimesh` longblob,
  PRIMARY KEY (`id`),
  KEY `stage_id` (`stage_id`,`progress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `build_object_template`
--

DROP TABLE IF EXISTS `build_object_template`;
CREATE TABLE IF NOT EXISTS `build_object_template` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `icon` varchar(256) NOT NULL,
  `category` int NOT NULL DEFAULT '0',
  `skill` int NOT NULL DEFAULT '0',
  `skillLevelReq` int NOT NULL DEFAULT '0',
  `weaponReq` varchar(45) NOT NULL,
  `distanceReq` float NOT NULL DEFAULT '1',
  `buildTaskReqPlayer` tinyint(1) NOT NULL DEFAULT '1',
  `buildSolo` tinyint(1) NOT NULL DEFAULT '0',
  `fixedTime` tinyint(1) NOT NULL DEFAULT '0',
  `validClaimType` varchar(2000) NOT NULL DEFAULT '',
  `firstStageID` int NOT NULL DEFAULT '0',
  `availableFromItemOnly` tinyint(1) NOT NULL DEFAULT '0',
  `interactionType` varchar(45) DEFAULT NULL,
  `interactionID` int DEFAULT '-1',
  `interactionData1` varchar(45) DEFAULT NULL,
  `lockable` tinyint(1) DEFAULT '0',
  `lockLimit` int DEFAULT '1',
  `claim_object_category` int NOT NULL DEFAULT '-1',
  `attackable` tinyint(1) NOT NULL DEFAULT '0',
  `repairable` tinyint(1) NOT NULL DEFAULT '1',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  `icon2` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=16384 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `build_object_template`
--
DROP TRIGGER IF EXISTS `build_object_template_trigger`;
DELIMITER ;;
CREATE TRIGGER `build_object_template_trigger` BEFORE UPDATE ON `build_object_template` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `character_create_gender`
--

DROP TABLE IF EXISTS `character_create_gender`;
CREATE TABLE IF NOT EXISTS `character_create_gender` (
  `id` int NOT NULL AUTO_INCREMENT,
  `character_create_id` int NOT NULL,
  `gender` int NOT NULL,
  `model` varchar(256) NOT NULL DEFAULT '',
  `icon` varchar(512) NOT NULL DEFAULT '',
  `icon2` mediumtext NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `character_create_gender`
--

INSERT INTO `character_create_gender` (`id`, `character_create_id`, `gender`, `model`, `icon`, `icon2`, `isactive`, `creationtimestamp`, `updatetimestamp`) VALUES
(1, 1, 413, 'Assets/Resources/HumanMaleNonUma.prefab', 'Assets/Dragonsan/AtavismObjects/Textures/NewUi/Character Selection/male.png', 'iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAYAAADDPmHLAAAACXBIWXMAAAsTAAALEwEAmpwYAAAgAElEQVR4nO29B3hc1bU2LLg3+W6SL/cSW9L0GU0fjTT1zKhavVer9957tXrvXZZk2ZZtuWMwNhjbuBdswMY2LeQGAgkESMBwaSEJhGJsn+9595kxJiHk/28IBnnW8+xnRlOOZma/e+1V3rW2nZ1NbGITm9jEJjaxiU1sYhOb2MQmNrGJTWxiE5vYxCY2sYlNbGITm9jEJjaxiU1sYhOb2MQmt6XcIZPJ/o+DyMzmSdzlfAml4cpMBo6UMuL2mxy4JgZP7qYTytzUTk4GkUzm9p92dnb/dqt/hNtV7lCr1T90FLuyOApqBV9mzuRLqSq+3NTEk1EtuP1Gh4xqxnUFMqqeJzcXC2SGGK6TSWnnoP6/dsnJNhB860JRP+DzdTy+XOfGl7ul8yWmJpZI0+fAVw3Z85XDuP2mB67LEqkHuBJDp0BGlQtkVChAsIzRBDb5NoWlDfkJV2rwFEpN2QKFuYErM3Y7ClXddzmK2v+VYxlX3smWaHsEclObQAEQmGLYTgaRbfa/ZfmZhPovrswYzZcbm9gSbTdf5Tao802e846r3uKbUL8Nt9/kWBFfsxXXdY8o2CAzBI5zJdoeaAK+wlwkkhucbQD4lkWoWfEzgdSYwpMa+pZxJV1Orj5DsWXTR0tHj18unzzzHm6/yVE2fvp/cN3szt2/MEcUbVjGlXRiO2BsAjedDQDfsvDVHsv4MmMmV2oYucuR3yXRBgxltOy82LrlBbpn9xs0bv/58eKN0bHzFbp392W6YurMe9AEd9kL2mETwDCEd2ADwC0BAJXBlRmG73IUdkm0fkMZzTseb970S7pr12s0bpv+iYH3Ny8+RzcvPk+3LD5Pt29/me6+5/d05dTZ/1mRWLf1LkcGAPAO4CbaAHArACCn0rkyw5AVAMkNG8/VrrlIN296jsbtPzXmLtA1c4/TNbOP0zUz5+m6+SfoVRuepYsGD132WlmxBQYhPAO4iDYA3GIALGM7ERtgZfnMuZKRY3T16sfo0tHjdNnoCbps7ORN4wR5HK8pGTn6laN09BhdOnKMLh46TBf07adzu/bSWe330tmd99F5PQ/QSTXrLlMhuVuW8eTtLKHaBoDvBgAkXU6u3kPheQPnstrvoQv6D9A5nffRuZ17yASS0b2Xzuu+n0wiRn4vxj7LrfX+Prqgdx95PrvjXjq9aSudXLdAx1fO0fFVc3Ri9Vo6Irf/st43dYu9QNnOcnK1AeDWG4HUyDKujAAgIKXlEiYss2Unndq4SKc1bqHTVm2l05q2ksnMbL2bgCG/70ECksL+g8wYOEgXDj5EFw48RBf07ydgwWtTGxbppNp1dELVGjqhep5Oql1PR+QN2gDwD+SOvxp3/i/GHX81vkYDUEP2fFWXUO055BVT/lh4Tv+1mKIxOjJ/+Fpkwci1qMJRMqILx67FV81fy2rbdR2TXzx8hC4ZsW4Hx+gSy9YAMOR27aEzWxkQJddvIFogpWETndq4mY4qHr2s90+zaYCvmni+B/9HfLV6mUBp4ArlJglb5qaGjyxQGkyI2pGYvbPBl6/S+5HhbPDFY1yp2ZOvMJm5crNeIDW78KUGGU/mxucoKHsORf3YroeA4kuC8CtfSsXx5RSJzPFV5iHNioS73SOLzgIInlGlZz1jynD/jEdU8WmP8KITQRkdF9NWbXmjoH//X0pGjl8tnzhNV0w8TJePnyK2Afb9/J4HaGwjGS3b6bRVW+iUhkVm8ldtJpokumT8sjHQBoAvi5/fvy+Tyf6Tp9Hw+SqTK0dBefMU7hFchTlFoDTnkZCpgqrnK9yaBUpTO19JdWLgPk9hbkEol68wVfKVpgK+3JTGlZmj+XKzL8DDdjaI/kunu8tOrf7hzdpgudLrp1yJIYgvNVby5KZ2npzqEyhMAwKlW/9fD57c0Ifn3SMKF1PqNz1TNHDw/bKxk1cqp8/SVdOP0BUTp+mS4aPE6Mvp2E1ntOyg05u30elN28gWkoqtBNtI8zY6pmTCBgA+3+NHZHWqKSFHQanYSrOJJdX5syXOEY4i1/jlImWGPd+5cDlfUWHPU9Qt58ua7XnSduzVy3nS3uUcaR8ZPGnvMq6s254r71jOkbXY8xT1DnxFpT1fVeTIc85yELoksiSuUSyJNpAlp9yhUSRqSijUaH6G/88W6tVChSFIIDfnwR9niVzbHISqFgeeotWBp2j5mYNw1U+X8xtFLp597hFFG6KLJ47mdO75bdnIiY8qJs9crVr9CF05dYYuGz1ObIHc7vvpbKz+1p0EBBnN2+n0JmgCZvKhFVaWTt7eAKDsqB8sk2n4HKmR4ijNYXylOYMvN1fz5MZ2rtTQwZHq2zliTbsjhsilgxnOZNgLnDvs+crOLw2Bc4cjhuU1jni92IVcA9fiSnUdXLmhg6cwIOSaw5O7RwJwDlK1jCXROnKlLgKu2BTMk1ClPBnVypNTvVjtfIWxhy107mQ7abs9o4oXk+s3PV3Qf/DtsrFTn2LVV888RldOP0Jcw6KBh4iHkNVxL53VvotsAVltu4gdYNUGuMXfK8umLxsDM7bYww28XQAA0gXID0IVxWHL9GqsSLZYk8wSuxQ6OjnXOvKdO9kSzbCTy4pJtVvUrM43bZ1baP4mz+jyrT7xtTv8U5p2Baa37Q7J6rovNKt7b2h2LzOyuveGZHbuCUxv3x2Y0nyPb0LdTq/Yim3msMJFfUD6ehf32DmJ1neaK9aOOgpVPY4CdYOjUFPMkmpTOVJtmINcrxPK9GqelAoAH4BH4vJUL0vk0st20napzOFj3nE1WxOq5s8WDR7+n6rpRz+vnjlHAjtY/dj7iwYPWdy+3XRmGyZ/F3EBAYLMtrst2mA78SzgGdyGAKB+gJWGvZ0vNYfz5PocjsxYxxFr24jKFaja7AXKDoGS6tP5Jc36JzbsiCwcPZBUs3Amo3nnU7ld9z9fNHDotyXDxy6Xjp1+u3zizPsVk2c/wMD9svHT75SOHH+zaPDQq/nd+17Iatv1dHL9hkdjiiYPBae07jIEZqwVqj0HHYXKTvwvlkjdiv/NlhoauHJ9Lk9lSODKTDE8uSmBKzNW8OSGXke+qocv0fcgZp/Vdu/TpaOn3q6de/zT+vkn6drZx+mq6UfpsvGTzOR3P0Bnt997Y7Vj0gGAL0Cwi3n8dgOAn5/fvyPjBoucKzV5caT6lY5OmmKWRNPEkRr6xK5eEy5eK2dNwdkL3iurtgRndtwbWz51JG3V1vM5XXv/u3jw0CtlY6ex6v5YO3fh07r5J683LjxLwrQtm39FBu6v2vALun7tkwi9fla9+rE/l0+cfqd46Ohr+d37nsto2nEhvnLueGh2zx7f+Opt5rC8DRqfhDmJxmeSJzMOsKXaVWyJaxlXos/lSU3ZLCfXaq5M36Ogwia8oisWk+s2ni0ff/jt2rlLV/E/6uefoKsx+WOWye95gM7puI/ObNkBV+9qQtWaK6mNi1cx+Tmdu29vAMDIclS5efBkbskcOVXFkeiaYWA5ipzbeXJzn8YnaTY0o2tvSv3Gx/J6971YOnbyrcqps3+oWv3Yn6pnH/+odu7iJ3VrLl6pm3/iav26p641rHuablz/DN248HN61cKzZOA+HsNz9WufvF4//+TVujWXrtSuufBpzez5vwAQlVOPfFA6fvrtgv4DL6c2bb0YUTC0nwrMXAetwBZpOpbzFc0sJ00zR2ZoceDJWrAF+Kc07cxq3fV06ejJt3AtxPGh+ismH6ZLh4+RIBB8/ay2e8gkw92LKR77KCyr+/34ytm/IFaQ23nfDTsgvXn7bWMD3OFnx6x8jooycuWmNLZYV88S63oFKvO4ggqZ1PunrVkRV7M1snDkQGbLzidLho++Xj37+CerNjLZs1Ubf0E3LmBSn6Lr1z5B1625xCRWkFSZfZyunj1PV89Yxux5uoaMx8lratdcJEmX+nVPEWAg+UKyeoskuXOldOzEWzkd9z0bWzp1xDe5YQcVnLNWZYqcFKrMQzyFcUBuDBrziCrdkFy/8ZHy8dPv1s5duFo3f5Ekdch+P3SIhHtzLJMLNw/RvviKmU+D09p+6x1T8UxM0egbWa13X8/r3ntbAuDfWEKtmKswB/EUpmyu1NAAd2cZW9ohMwRN+CWvuju+av7hvN59L5SOn3q7avqxP9XOXfgEKxyrGWoWkwnrGkEWWNglw8fokqEjdPHgYaJ2EW4loVfLwGN4rnjoCPHFS0dPkPdWTp0lAAEgGhaeASiu16658FnVDNkm3oVGSK7f+BiMSGePyEmR2m3AP6lpZ0bLzidLR09dxpYCQFVMnaVLx07QhYOMm0fUOlHnO8nkx5ZOXg3O6HjbFJJzTOOxcnNEbv/FzJa7ryEgRIzA28QLuAO+/XKBgQt/HqxXnoJqFSipfrFmxaiLZ8wUVlxKw+KjhYOHXq2Ze/wzrEpm/36KrHKsZOJTj5+ki0eOWib7AJ3f+yCd37OPGFuYAMTZc7v33DTuJ8/l9ViSMf0HyHsJGMZOELUN9V235iIBGIAGTVMzf/Fa8eixNzJad1yC/bFiZeVmfL7yiYffq5m7+Dlej/fhs+QjwNPNqHys5rTGzXRK/UZ6ZfnMZyGZnf/jGVnytEIfvEGkdOsPy+w+QQDQu+/2AYDaTv1DJ6VJyZPoI1hibQH2e7aTa5dI5THgGVWymFyz/nR+74O/Kh8//Xb17PmPYUxh34Y7VT7xMImjI4zKJFQO0gUDB8hEFvRh7LcMy3083r//i2F5DpNUcON5JGoOEAARLTF0mMTpy8dP01Wrz9EN655ktM3c459UTJ59v3jo0CsFfft/jc9XO3fhCgHj5MMkvQvwERfP4s4huJNSt0DHlIxfDckgk39W7R69mSPW9AmU5t6QrO5TGc07rwGQxAUkwaBtxFBcmgBQq38oFFIcgUwfwpcbqhDQETi79SsMweNuIbnr4spnjpWNHX+9du7xK8ze/DTZr6umHiHx88KBQ3Re74M3Uq0krUqybQDCQ3TRIMYhAhCMEiRhbhrWx/GaIgBoEBm5gwQMuBZJ35Jr7yPROgChcvIM0ThEI8CwtBiSsDvq5i+R7aOYuHiWyF7zDmLopTZuYlZ+2fRnwent77hHlj7t4hG9lS8xdv+XI78R3zskqxvu6zX839sCACyluxNXYQhiSXT5iLwhiqY0ho4Fpqy6J6Np28WS4aO/r5m78DEMOjLx08zE4wcmq72fWb1kBZNVe5A8x2TbsKcfJ/u6lZQBY+zmYX0cryklrz1G3ktsBpKetVy/16JFcP2hQ+R1mGh8pgYYjAvPfjH5Q0eYyB5cuGbE85EW3kIn1q6jo4snPg/O6HgLSSMXz9htIrXPGNdJ14mwMQAQmtVzNrN11zWAGEEh2AsAUBbiA+330HEVM5eNQZlLAwBIqLCdzb48lamEJdE1I3GiMoVNesdUbEprXDxfOXn2T2SPn3+Crpk7fyNylt/HrMwbefUB6yo/yuzdI8eYyRw7TpdhWEDwdQOvKSOvtwABKdrho+SaVuMRmoEBwz66oO9BArTysZNkr69dc4FoBrw298bkI46/mU5p2EgnQe2XTn4WSFZ+ydMq96hFhIu5En0XX2bsWc6RtBANkNFxNm3Vtms5Xfcx9oIlGQQtADsgpnRqCWiA5OR/cxS7s4QqIwVSBU9ubMOeL9H4jwSmttyT0bLzUtnYyTdr11y8BjVbCXU/dpy4UcyKfJBZ8VYrnljvx26scGZFHycruWjgENnPsYLzblbpN28ZWN39+8mKx3sIncuqLcYsqVoYlkNHLFuE1UY4SDyMMrwOe/7wUXJNWPoggGCkNW2hE2vW0VFF458Hpbe96RZR9IjaI3YnAlmE2y/T90DrLecpCAB84mvPrSxfTSfXbaDjKmfpuPIZOq5sNR1fMUuIISGZne9pVyRtg3eE8Pf3khWMlc+TU+6EVSvVNiCN6uTiNUwFZc+nNmw+VzV97sO6tU/RNXMX6IrJM2T1MXv7Pjq/f/8NwwwTjz2ZmbATNyYfKhggIanV5h0WZs0CYdUQelXFLDMq1xCaFZ5Dzj29aRsJweK9sAu+uOYJAkCGwHGU2SJgN0DzWLQP0Uy9MPjuJcYeyBwEBM3bMJFXAtPb33OPLHpSZY7YwJMaerHqLYkjMhyE6hZoQHNo3tmAlKZroVlddGBaCx2Y2kIHpjTTQamtdFB6G+29suKys1vUFkeRSztbovveaYA7ENtHjp0vN8fDz3fgydsQSPGKKd+cULXmVPHQkddq11yi69Y+SfxxTKbVIMMqxQq0WuWlWKVjp4jrBzUOow5uX2br3VdT6jf9OaFqzVsxxRO/Dc8d+FVwZufPA1Kbn/BPWnXBL6n+vH9iw4WA5KaLgamtTwVndj0bltv/fHTR6MtxlbNvptRv+mNGy84rWM2YaKJdxk+SlW7VLswWwQABgMT/RfiWuG1Y+Y2bGQOueTsdWzr1tmd06aMqt6idApX7GMtJ08KRGqr4ClOFQGGqQxaRI9a3YSE4u8fcbQrJecwtLO+SKTTnnBkjOOecKSTngikk+5LOP+WoROc/x5Xou1GUwpdTVahKtvs+CFNN685CQSVPTpXy5IZ+e76iS2kMGUXMvXT0xJs1q89/iigdSBKYeEwCbr9wx5hVz6zO03T52GkyGVDLSKpgNceWTP0xPKf/pcDklgveMZWHTME5uzQrEhYUVOiMWOs/7qRZMSJ29RuTGYImlebwNa4+CRsNwZl3e0eXHghIajoXmt37YkzRxHsJVeuuIf5ONMLwUUbV438CDGMwLE9YaFwI7YLHt/OGwcdwAJkoXkzx+G/0fqmbeVL9AHIIUNs8OZXDk5kSSRZRQpWS6l+SRjYPCVXuQ6CYkdubh9p9iK9yH+IpTIN8mbGbLzM0M+/Xy+2+D8JiaX/CkphcuU6GWEeRpk6odBt1NkdN+yU0bMvt2vNs9cy5z5Atww9tpUdZ3S9Y3thjGUPNas2fJntwbueeq6kNW/68smz6jdCs7ud84+vPuUUUHdb7Z9yr9ozdJNMHz4nUnuM8iX7QQeTSiyJOB4FLL0es6ecrqGGRq9eE1BA46+IRvUHnl7bLLazgoG9czSPBGZ2/iCkZ/11yw8YPstrvuQI3Ef8XwSEAlOTyhw7TeT03G30MEZS4bhY3Lq5s+hWvyNJ7FYagSUwwV6JrYkuoXJJFVFIBXLE+GKQSMItAL3MUqrschaou5vbmoepiO7l2c2X6boGUagAnEZQ2LCq774NwVarlCPM6OumKl/OVjVKN3yjCuykNmx4tHTl2GTHzysmzTPTOqvIx+YOH6dKRo3TZKIIxJxke3RizPeR03EsnVq39E1a8T2zVCZ1v4qLSGDwtdvUZEzp7jJChdB/mK8zDmGyughoCkRMDfzPDPMxXug9bX4/oo8wYOKVZEbfgGVV6MDir+7n48pn3Mlt2XgMQMfkAQckIbI19xD3DSk+3TLx1WFk9STXr3ovI7b/kFVW6R6YPnGI5uTSzJdoypJDBbwCpRGihl4FjSD6flBqxfk7LGMZjPDnVD22BqmS+mHJzEKnZdiK//7D7zgtF/QCqCgkelsTQbC9wbndxXzmdUDV3omjo8GvlE6c/Rgy/dOT4DQsdqrVoEMEbTD5U/km6fIJZ+TC+Mlp2fhJfNftWaGbnzz0iS464eMRsdnL2GGGLXTochM6r7IXONWyxpoIj1RQhZcuWGbJgeGLl4JYDD0RmyMJzHKm+iC3RljsI1dWOInUjWEFCldugyhy+YArN3x+U1nJpZdnU62lNWz7K63ngOrFN+vfTcNeIqr9p4m8MC68vvWnbJ+lNO95YWTJ5zuCbto4t1nSwnfSruHIqlyfX68B3EIkMzoRjqCBEU/L5yO3NQ0ZlCGVUMk/uFiWSGjzRn8BOJvs/f4+5/J0RPp//Ix5oXHKND1ehqwSKeXJTv3towUJu555f1Mycv4KkCSxpxuBj/Hu4fWTvJSufUb1lE6eI8ZXZsvPzmOKJV/0S687qAlK3SbUBY0KlaQQqliM1tnNl+gqOTJ9Bwstyyp3rpFEu42n46OjBlukdWFqto71KxWE7OYvwHFthMnNk+hAuKn7lhlKOgmqBUYZrijQrRrUrEjatiKs+EZ438OvEmnWfEPYOydYx8fobA5k7MvFbmejfqs0kLlA+fvp6Qd/+l30TG3aI1F4D+A1gBHNkulAHqUHG4VD28I5kMtl/Esr53xngI0ok1H+xtNqfUBT1g+/85EPAqgXlmiPRxYNEIXL1HkctfVh27/2FA4d/h2APAIC4OapkoPZJQmbE6pMzBh8AUDR0+Hpmy87P4spnLvslNjyi8Uncjv3dXuTczhI6N/NkxlqewpDNlhrCeTKjB2rn7VUUh8Ph/PjvfLw78ZyjqzuLK9YqQCHnyKgQDvZXOVXNcnJpAhNI6Ow24uoVt+gZU3Y8NLv31diy6Y+Taheu31D1XwWAhkU6tWET2c5q5y7CjXwvtmTqCBWcvU6i85vkSDXtLKlLKltpMAmFmp/ZLVWBkYK9H+He5XzlKqUpfCo0u3NPWtPWS0WDh9+Dr08SJ72MxQ+1bw3ukPQsVv84+POn6ZzOPZ+tLJ16xS++/hGtT+IWJ2evEa5cPwqPgivTl/PkuiiewqDFKtfC6NRqfwLvw1Lw8ffkTryGw6F+rNVqf0L4CApKxZFRoRyxvhDBGr7cOOrk7D6sdo9abw7LOx6Y2vxibOnUR4j0WZM8iNdbY/dk9Tcg9r+BaIqSoaMA9oeZbbuejS4cOaDxSZwDsByF6mIQTcFwtluqwnb2FIGjz5Fo6sCg0fgkzCbVrDtTOPjQ74uGjnyMwAry5XC3ihBdI5N//IvJn3iYLhs5TjREcu3GdwOSmx/VeCXuEKm9x8HiZUk0LfCHuSpzNEuqc4GK/Gc/M4eifgybBSDgKqkyMH5YInUbDEa5MXjRHJJzIiS76/W4iplrmOivAwDuIyiV13n/Z4UDB9/KaN5+ETRxRPMcReoGsI3Zajf190Kd/y/kTmLpyqgyuDioaqWCs9Zmddz7i4qps58UDx+5zsT0GV+fZOxIdA9+Nvb9syTzVzRw8POUuo1/DMvu/aUxIGun0NljlCvVjyGWzpHoYSS5AWjLlcqf9vT0fN1q//8qd0B78OU6HmnTJjHGAwRcqXGULzeNOLtFbvSKrbgUmtXzXnzV3BUGAFZj0LL/Ny6S7B/Cuil1G+jM1l34Xlfy+w68vCKhdpuj0LnT0UndzVNQ9bBTLMUnS0rutNNqf8IS69xg8ECNChRuA95xVVvy+h58BaFerHRrsOdGhO9GLB7MnEeIa5jbtffDqIKRX3tElhyT6oOnoT7ZEtdunsJYB19YJNLdZWf3jUz8X8sdDmr1/yX9+pRUGVdm7AEvUejiNaL1Tdq/Iq76l9HF4x/A9/9bAID4sYlOqllPQtAo8gB/oXDw8Nsh2Z17nFy9B7F9oe4AVHdSgfT1W9X3S0Qiv/9YriQsnwCuVNvo5OIzqYfxl9e/L69332W4fZhwWP2I9zP7vmXyLXVz0AClo6fotKZtb/sm1h9zNkdsECjdxzhi1za2RFfKlRliBDJKmmz3r+2Vt0yu48E45MoMBRwnTTNXaRqRaP3WGoIyHozI6X8VKx15B2IU3uwFIA9Rt0AnVM2TrB6CSXnd9/8hqmTsuDk4Z16mC5hiAOAaxVLqnKB1lsxWgE5apJBD7BLNFrs2Kqmw1X4Jddvjq+bO5Hbf/y58e+z/DA2LWf3WBAyJtoFFO3qCzu3eh8TNS8bAzC0cqa6fI9UP8OXGVWiWiOtLJJJ/es//R8KhOD8m7pqMCuHLqWqQQFliTZ/CHLYmMKXl5yvLZ64xCaBtFjvgCy2ACl9kBJFwyu4AJ3AH8hQXg9Pbd7l4xs2BB+EgVCcRT0mhsF8yAGBJPB1RlctycklFYAZfNjJv8MH0pq3P5Hbf/8ebiZoIrHxZ9Z8l+fWC/gOfpzQsfhCW3XfJ2SNmntTESbStXKWpAGpZiT3/21CbtN0d8BIs3kEGoYEL1K1ije+EZ3TZw+F5/W/HV819xmwFO75sB4APULueTq5dsNgFm/6S2rD4fFz56sPG4KwFUsbGc87iy0x+iJcsGQDw5R5Qm6EOfHW+A1/ZpPdLmY+rnDuV23nfy3nd939U2HfAkk5lon03AwCGHwCQ2733z7El4y95x1YfkxtCVjsInZvZCPIoqJW4/rf+ndQey6AFECxyFLk2ily8RvUBaQ/6JjU8F1sy8QdMOhMZ/DIAUOOfVLOOpJ8Ta9Z9mtGy83cpjYuPuUcVLyLqaM9TFSM3gEKYJQMAkdLdiS83xjsInMvh/hkD0tcn1W08n9ez7828ngc+Lei1kDCw+m+ofwsAphkAZLfd+25YZudFQ2DGfU4an0m4TY4yTQZHQq3AZHzb34ml1f4Ehak8mT4ZlUDIM6g9onaA4hVZOPwG4gKIDn4ZAJvINgAAgNSRWD1/JbP17ndSV219xiu2fBtc2WV8OfoMp6E/wZIxBHnOejlfSWU4ilT1YLxQwdkbUhsXny7o3/+H/L59nzNBHyujxxrxYzJ9pG5+8mFE1173T6g9CgqVSO0xwZFoatkS10i2yOAMl+/b/k58vsePHAQuUlKgKtGWIYkk1QYsGAIy9oXn9r+ECQcArGlh4gk0oNMHsw0kVq+hE2vWXs1s3fnn1FVbXvCOrdgJANgLFA3oT2AhdywNALBdDM58BVXIclK1LOcpWk2huZvSmrY9Xzjw0Cf5/fuvWY2/4ht+PyafGUzjhIdhVL3iGVVyn1TjNytQmMc5Ul0VV6r3Qot2SyLkWy9P53JVy+1lWgNHpi9EYMhJ7bVa65WwLSyn75cI/nwZAPAENtPJDZssAJiHW3gts3n7ZykNm17zji2/BwBwECpa0KQCOYklAwBS0aswVTo6uXQu40nbzGEFi+lN218uGjh03crhJyFHG30AABkOSURBVBU5NwHA2k4NRiC2gtTGrb8xh+RuESrdRvhy0yjCvY4SjcaOz//RLfqh7rSzU//QUaiRsKX6HJJOVrqNunrErgvN6X0a7iDTJGrzDRCQQhBsA3ULxBsAaQWeQnLdhre8osvvs/Yw4CvNjVyV2XPJAACpTp7MVAsSBgOA/M1pzdteg8pHpu8fAQCRwJSGzb/S+WesY4l1fXySIzeU2Yu1ilttKC0XGLhIJwMAHKl2QGkKmw7J6rqEqB+SQqRLGPr6/A0A1pO4AGIGiTXr3vWKLt9DACBUdfNU5lYEtZYMAEjTJQXVwBK59C/jSdvNYXlb0pq2/p6wdUkxBsPC/QIAzIA9gAQRHkuu3/Sci0/inD1f1Y22rLC+sQff6u/mKHZlEVKrghpyEDj3yvUBYyEZHReg5kEOYbp6LRJNYHH9SEg4yQIARAXjq9e+7xFdthca0kGg7CX9i5wNvksKAHw51Yiu1lYApDYuvoFVzwCAMQC/BADw9FGGhZKvkeN0cv3Ccy7ecbPgDloBAPV7q78bW6Z3sALAXqjolmh8R4LS285DxSMY9I8AgHhBXPnsBx6RJTcAQJpXLU0AQAPI29HiNKVu0xvg6hPjj/j/6JN3U+EGqNeEgHmaLh4GADY8p/NNnIOKRGduogFklPS7BQBVt5PGdyQwve18QvVaOm3VNpIEQhiYAQByAot0St1GEgxKqlmgU+sX6ZiSyQ/cIwr3sp00nQ4i56UJALRnY4lc+hgAZG9Jqln4PUqsAIKvB8BJoh2S6jf8igrMWIeuIFw5OHGG0u+CDeB40xbAEmt6pYbg8cD0tguoPSD9/b4WAIgKrqejC0bfN4fmEQA4Oql7sAUInI0+SwYAIGbACGQ7qXvA/zcGZ2yOr5p7LadrL13Yb6nCsZZxWQa2A/K4hXGbUr/xRfTXQzNmWNtciaEMOf9bnTrl85Ec0mXyleZhnBai9oxdHZLV+QQCPST+jxRwvXUbYIJBTGp4gUQDkR0Mz+t/1xSSswccQSYtbG5ZUkYg4wYaKwhJkydvMwSkLa4snX4po2XnNZRjfT0AmFKw1MbNL/nE1+1UuUVOCl28RrlifQVHaKSQaLKzs/v3W/C17gQL116il7MlmlwAQG4MHkOvoojcvmcYAGz6BwBYQ8eUTlwPye560xiYuZsAQOzSIVBRDUvKDUTihK80FIAG7SBQtWp9kzZG5g89l9q4+S95XfdfA7mTVNjcBAICAAsvAEmitKZtrwZldj2gD0ifF7uuGEf4le3k6seVmgQgm96S4hZHVxZbYjA5il2KhM6ewzrvhFnfhIadUQUjz2FlgwUEXz+5biMz8ZbJZ8YGOqFy7lpU4cingWmtr+j8UnaxxboO/EZksSypQJDaIOOrqHSOk0stGjxpvOIWgjO7nkqsXvd+TueeK18LgGHCoUON/OXokokTXjEVWySGwAlHkUsdS6yNQYEJ2sN+29+Jw6F+DBvEAWxekXM5aho9wos3RuQNHVhZOv0yAEASP8j+QQv8DQA20vGVs1cj8gb+5JfY8CtX7/gdAABH5FKHtrawm5YMAEDRQtaOLXItA8LVHtHrUHoVVz7zRnbHfZ+g2MM66X8NAObABNJ3/72UxsWnQrK771eYwieX8+WNbCeXbLbM5MdVmZffiuPiWGLKjSUxpC3jyWucNCuGA1NadiXVLJxLrF77JgCApM9XAQBhYoz4ipkrYTndb6+IrXzKxTN6K/gAbJGmArxJ8BtutYH7jYlA6cUFG5jtpMkFvVppDp9fEVt5PLpw9NfZ7fd8yOz/J74SAKRGoHc/ysM+yu3a+0pcxcxJ1xXxM8t5shayDcgNCRzJt8+k5aBHsdQYxpboy5dz5aukxqDRyILhg1mtu15Mbdj8RwCAqTj+GgCUr/40OKPjVWQQnd3CNwEALLG2EOxgsJuWDAA4Cj97llznhrauqAdA/Z05LO/+sJy+JzNb7/7AyvyFur/RM580ZbBU3PY8iB4A14pHjnyY1rztaUNg1lp0BeWI0UnEVILSKLSH9/P7FozBZLt/Iy3iJSZX1B1wpMY2B4G8TeUWPhlfuebR/N4H/5DRvP0qAABD8AYAblL9BACNi3Rc+fRfAlNa/psKyjwoNwSv40mN7Y5iXSZpZy/X8ZYMAPCDcZUaJUnfghPo6jOt8UnYEpjWciq9ads7VhLIDQDc6MpxmGnq0LOP6ckzfRbEkFfQ95e4g6j+kRmawdRFvgEg+Fd/l+VK5U/ZcoMzKo14Mn0tqeJVewyaQnPWpzQu/jeSW2gGRfoPYBv4CgBYtUFs6eSffOPrzmu843eINX6zAABbok3gKymN5bssDQAgXevoilIsWO36VQKV26RUHzjtFVO+N7l24Q3s8SQUbAXA8N8CAC4heAEF/fvfBZcQzZelev/x5TxZq4NQXclTUklcpUmJBpP/su/RY3cnjmdF3QE4AMs5kmZY/x6RxRtjSsaPZLTd/Tqo7UgDW8/3+SoAEFJI7Xo6qmDoD6hllBmCZwUqj0mu3NDJlugjuS4uAhx6sXQAgC8iEv0HR6qheDJDPQnlSg29hoD0xZjSiZdRX0farFj6+hAg3LwF9KI0/IDl70N/Kejb/2pi7cJpXUDqLHILDiKXfr7S1IQSaxlb72CplfvGexaLRLq7UHfAV5qrOWLtwDK2uENpDh+LLZ8+nNu999c5nXv+BBpYSuMmOqFqjk6o/uotAHmClWXTdEhW51vGgMzdAqW5jyuhhtEZDf0RLV7Nkpn8L8cDFFQRV6LDcadtzh5R88EZHU8nVM1/lNO555o1GPS3AHiQnKJV0IuKoUNXy8dPf1TQv/+FkKyu3QgM8ZSmMUcndReMTLRs5yg8VYxN8E1og547EWyCUYa9mSPRpKNTOFduHFUYgibQCTyna8/Py8ZP/TGn877PMdkgezAAmP8rADCqP65i9npYdt8nPvE1L7p4rdwC9w8dwnhyqoat0JtRQW23FAVBG57KlMCRG1Bs2Sw3BM24R5ScDM/teyWj9e6PSA3gGEMRv9F/B82Y+g6QUvGczj3EK0BvvoqJh/+Aps1B6W33qNyjJnDoA0DAVxqhCZK4cp3+m+AKLpO5/SdT0WSMRvEJW+Lahc5cUl3gCCYf7ejLxk69VbX6MTq7czeNxk4ry6cZzl+N1QtYuBERBC0spnTyU/+kxteNQVnnZPrgBbSd50j0tXylORPgtVuqwpatcOCrTH48qT6H7aRdhYMdXL3j7/FNrD+XXL/hHRhQpNsnAcDRL9zA/gOk+wZaqkMj4EDGqqlHrhQPH30jo2X7Bf+U5h0KKnwcq5IldulnidVVxJiSU25wEblc83LUCVoihl9XOHInDqVYrlT+lDkNzIOUg6HoxNHJtdRRqO7hSvWjUm3AKFrYpdQvninof+iV8vFTn6CbCYpDY0sn6ZVlU6QAhGH9MBqARANJKniBjsgf+rNnVNmTzh4xe0Uu3rPoC8SRaQvZCnM418UksFuqAlUK94kr08ZwpfpGgdI85uS6YrUxJGd3TMnkq1hBN3f9InyBQWYbwBZAztpDw6bBQ4QxVDP7+LXKqbPvpjVuOeef1LhTYQ4fX8aVdsAw5EgMzRy5sYQtNyXwZXo/NFBCXwCUd/2dCNsddhzOj8ExZIsMzgKoewW1ktQdyKlGlKAt44jbJBrfYa/YisWk6rWnKsZOv1E9c/4qQIq9H4EfrP748pmbYgALN/Z+5P/RlSwks/MdKijrgFTjQ/iNPKmxDexicvyNgkJByNIUrC6kT7lSV08UiZJjVcS6PpVH9Log2ALVaz/G0aikI9fI8ZsAwBykiMknp2923kcX9T9Eau2rZ85dKxo8/DuAAM2adb6pczJd4ARo2mwpYuvaagcnlxyEje2dNL5ckU6/3EmjBJmEJdI5oVMZ7iOs6yh21TpIdN5skSbCUaLJYIk1lRypvo2vcBsUa33HXb0Tpv0TG7cn1y6cLuw78Jua1ec/wWdAz3+o+7iKGdLP78tBoC8AEFcxS4fn9F3xxd7vGbuVnCImNfTxZKY62C4oBgHb2G6Jyx344ck+LdU3ssTaNokuYNIcXnAkNKv7N6kNix+iNJw5P++IBQSWDp3ott2JzpnombuT/I3XVU8/eqVy9aPv5/cdeDGxZv3DPnF12+X6oDG2k0snaOj2XGkDyR0gcijWV4BPCD4BgkjMMKC2sAxRPZbYtcrRyaUW78EpY+DpIebgHlG8iH7Fed0P/KJy6uzbVavPfVo+duo67JPUho10bNkUseytjRyJ+id7PwMA4vYVjX7im1j/GhWc9bBMHzBPDqKSGJvQKQyxhX+pC/tdEuJOIYYv0+WzxdpGodJjxNk9cptHVOmp2NKp3+GkDGuhCLwBbAtMk8gHSat1qx8NwgXavtfMniOHO1TPnPuoePDIq8l1mx4JTGvdZQrNWw8amcIUNinRBU6I1N5j6EiG6mS4omyJbhiDK9ENg2iK5/Aaic5/AodSILePLh5+iY3b4yvXnCzsf+jXVdOPfYAzf9CaHq4pKF3xlbM4x48BQCWOd137JQCQraFsig7O6HzbHJb3mMotcpfQ2WOSI9G1cKS6YpyBhO4ldreLIJPGdUJbeFMEsX7lplGByn3c1XvlRjRsjKuY+xhtVqH+ra1erQcxg2cHNyuufDUZ+IHhHlZMoHP349dq1lz6uGL60ffQcCqzfdczKEELzeje6xFdvhndOGR6/3H06LPnKrrvchR23mUv6rBny7p4Yl0/ega6esXPuIUXbQpMa98dWzp1PL15xxOFAwd/WzF55p26uUsf1s5d/Bxl6mAygeWLz4DJxeSjpSt8fzL5NeuY417rF4hdEJLZecU7pvIFtWcsehpM8mTUOIliSqk4ntigtfAabg9BoOanXPNyjtTDyJdRhRwp1QtCJFKq5vD8QyFZXa8m1qz7KKf7ftIXEN4BegdA7UOdJlTOEWs7umiUXlk6ReLqcBNRQILOotbjYiqnH/2wcPDQKxktdz+5smLueFh2715UJXtGFC0Y/dPntCsSV2u9k6YNfqmz7qH563EETUhW932xpdNH0ldtv5Dft/8lnD+E3kW4JtrAo1YRyan0VdvI5DOfYZLZ+y2+vxUA0FIM42fgY5+46svGgPQzElefaVC/QG1DNxOOhPJG6xzYR3a3l/TcybhZxmgEQOAL49xdhTliAQ0aUV6VVL/hOoxCcpJmx27CrcOPCwBgVcWWTNCxJcyPD24dWqnDY6ha/Sjp2187/8S1mrkLH1VNP/oejm8pHjryasHAwZcK+h58Ibf7/udzu/b+EiOv+4Hn8nv3vVA4cOA3xUNHXikbO/l65dQj79bMPP5h3fwTnzese4bEHmCcogsp3Drs9QBhbOkEAUK8dfVXr2X4fmTyZ+mIvAHaP6nhdSoo/biCCtksUJnHuGJdByKiPKVbMopAUWVkdzsK+u/Az+bJqCSeXF/DU1KwiAfkhpAZr9iKMxEFQ+/HV6+5mtq4+TqOYE+sthyhXrWG/Lj44WNLp3DSFtqwIr9OIm3QBqgmqpl5nBzm0LD+ppPCNjxLjphp2vjfXxpY4eQ56wli65+xHiNHmlPA4ETHb4AvpmScjikeJQC4MflVsPznmapfcP0qMPmD1/wTG/5sDsm7pKRC1vFVpkEBGjzK9Y3oPobDqtHuze62lZ6eO2EQklM3lVQyX0E1syWGTrhw2hUJ2wCCoLS21yLyh65ilSegq3cNY2BZw61xFQDBBJkUTAhAQIoymrYR9wwGJLqM4FgZTCgmuWXxObplywt069ZfM2PLC3TL4vMEGA1rnyKHOqIghRz4gBM7yHl+oHAxq575XxOMz09cPqj9tZayb9gn03REbj/tn9T4pjkk57zaLfpesdpzHK1dcQYSDsLCaWjw+b+ZcPX3XPgeHj/iqdw8+EpTPoIuiA+InL1Gleawtabg7DM+8bXvhWR2XospnrjOrDRmlYFUmVA1S0BAtgSo5JIJsi9jMBphkXgO2LeRZYSdgEgi+hLVzl9ixtwFy3l+Z0j8oRANp7HlNG4h2gYaJrpohI61gAxGH/4ns/IZtU9G1RqikcJyeq/7Jdb/2RySe0lpCt8kUrmPC5Smfhh9zEFYboFoQXerf/fvlAiUBi6qfdGylSfTtyJbiA5gSlPYNkNA+sPesZW/CUrv+CiqYJhY3Ai1JpFY+1qy92IyrCCILh6Dz03AAFWMlUnOAVi1laxm9Osjx7J27maG5bBmpsX7NmJUWg04GHgMoMZuWvUzFmsf2giTP0+CQNGFI3RIZtenvvG1r6HVu4t79D0itdcEAj4CuaEDfYVYUsqfpdCKbSv/b+VODkdhz5Pq/EmgRmYgp2/ynd2HpTq/GZ1P8kHPqLJXA5JWfRKe03udqHvLlgDL+4ZdUDHDJGTKpomHABBAZUcXY4zd0A5/b0ThNcXjjJqHb09W/DS5Jq5t3e8Za38tHV+1hmiEiPwBOjC1+TOvmIo3jQEZJ+WGoHk0nEYrXJyEQg7CkugjlqGv762hsX/3BdawUKEVk9i9TJeJ7YAt03fxFaZBmT5oQbsi4ZB7eMFTvon1vwvO6PgwIn+I8cEt4VdrDh6TgpVPfHTs2aXM5EcVjtCRBcN0ZP7QV4+CIfKa6OLRGzZFnCW6h2tC6zDaBrbHDAFGZOEwVv1f/JIbL3tEFj+r90sm1r5QaR7GYQ4cGdXClRnyhXJ9MHoR3w6h3n9G7rDz8/t3NF5AUyliExCih7mPr6CG0KLV2RSOQx1OekSX/MYvseHj0MwuZNdIJA6TQuwCciTMFxrBaiMALIzrBlvhK4Zlf19ZPk3ew7yXOVKGrHhLJU9M6SQBS1hWN1y8z71iyl+jQrIfdXGP3oZeQQAsT2Ea4CnMrTgIi6cwBorQzp2pYlp6RI9/gdyJkitUxxDvQE5Vc2TaVlQWwaBSuIVv1fgkHTaH5j7tFVP+qn9y4ztBGZ0fhef1X4PBBtVPInMkN88AgAzctw5L4uZv/7a81rqVWPL7uB5AArCFZHV/7J/S9J53TOXv3cLyf6HzSz2hcou428nFe5ot0XYhpgE/HzWDOA2NpXAT37a+/v9S7rB6B2y1Xo2ULgkW4ZAluWlU6Ow2imaTcip4rat33G5TaM5jnjGlv/VJqP0wMLWZDs3qJnsyo86tqnyKidZhH6+YIy7lzcN6iBQBQBmMySnGbigapSPzB+mw7F46OL2N9k1s+NQrtuJ1c1j+ExqfhAdUVOgGic5nCl3E8dlI+3cF1UC6jKsoI1q/3+of83stIkuLea7MHM1B2Fimr0W3UZAoeHJDL/gEzu6Ru7S+SSep4Oyn3SMKX/ZeWfWGf3LDO0GprR+EZHZ+GJbV/UlEbt+VyLzBa1GFw8SiR+AopnjCMiwGImyEvKFrEbn9n4dm93wanNH5UXB62x8Dkle9u2Jl9ZsekcWvmkLysOLPgswh0fquwVkCpKBDqm1ky3T1yC5y5OZ4lpxyw1kEt/r3+/5LT8+diBiSKlzkDqSGcK7EmMeV6xEv6OMpzWNCZ69JsdZnRqIPmFeawxY1KxLvNwVnnnYPz3/SM7r0xRWxlW/4xFe/75dQ97F/cuNVaIngtDY6OL3DMtrooNQWOiCp8TrsCt+E2j+sWFl92Suq7CX3yMJnzKFZZ3W+yfud3SK3SA2Ba8VavxknF+8pkDlIZI9J6hRxpYZY0qzaySDCyk9O/lr2kU3+f8qdoHaB+k06aSqpZJBKCKdAomtiSTTNjiJNO3xuaAWVKXyrq2fsAzrfpGOGgLTHqOCsp0whec+5hRf8xi2i8FWPiOLX3SOK38DwiCx+3T286DX3sIKXTaG5z1MhWc8YAjPO63yTT2q8Yx9UuYfvwGpHFtFRrOnAcW+gt+N/M+f7mNK4clMw6hRx7MuSJXXecqGoH8AuwLaAhsqOMqMHVh1brs9BLgEt48ELFChMk04untNiF+9ZidZvXqoLXCczBi0oqJCNSmPoooIK26yiwreozF8MPMY8F7JRZgzeINUHrMd7xRqfObR/4yvdpnhy4xg54RPUdjSLlhvj+XKDLxI64BDedCiFzdL/10vPnaQ7h4TS8JSUP09pSiRhVlJ3oG+0jFU4mg3nEXMkmhaWxLWVJXZtY4lc29CW9eZBHsfAaySaFo5E0wzNYl3pzDA0kFbxCnMKVjyYx6SnL2VnW/G3QpBDB9sXbGOwf1F3wJa4mlCBhAobtkyfjB5+bImhFMQTTCpDw9L3cKSGfo5EP0iG1NDPkup6uXDhwNKR6Oq4oIdJdHlcqS6FJdbiBJIA1DeiKwkobWKxO4swm25BbwKbfJ3w+T9yUKvZqEXEhCHxQhpKq0xpaFIhUFDlaFcjUJgb+HLTKgzc5ylNtWhmiY6mfCWOasPJIFQIDpxCXQDOCcChF0umZn8Jyx3QDJaCDgeUprPQrFptkIlQmaRCVa+7lnEtwfk3GXCfJ3fT4TmcLsZz1suFCjcxCCu4BuhaIpEIhzLa9nab2MQmNrGJTWxiE5vYxCY2sYlNbGITm9jEJjaxiU1sYhOb2MQmNrGJTWxiE5vYxCbfQ/l/6A2J/2nHAVIAAAAASUVORK5CYII=', 1, '2021-09-15 18:46:34', '2024-12-21 20:44:16'),
(2, 1, 414, 'Assets/Resources/HumanFemaleNonUma.prefab', 'Assets/Dragonsan/AtavismObjects/Textures/NewUi/Character Selection/famale.png', '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', 1, '2021-09-15 18:46:34', '2024-12-21 20:44:16');
INSERT INTO `character_create_gender` (`id`, `character_create_id`, `gender`, `model`, `icon`, `icon2`, `isactive`, `creationtimestamp`, `updatetimestamp`) VALUES
(3, 2, 413, 'Assets/Resources/HumanMaleNonUma.prefab', 'Assets/Dragonsan/AtavismObjects/Textures/NewUi/Character Selection/male.png', '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', 1, '2021-09-15 18:47:23', '2024-12-20 22:08:12'),
(4, 2, 414, 'Assets/Resources/HumanFemaleNonUma.prefab', 'Assets/Dragonsan/AtavismObjects/Textures/NewUi/Character Selection/famale.png', 'iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAYAAADDPmHLAAAACXBIWXMAAAsTAAALEwEAmpwYAAAgAElEQVR4nO29B3Rc5bU2LJPk/jfJzU0C2JKmnDP9TC8a9d6LJav33nvv3eq9S5YtW7Zl44JtMG4Yd0wnIZCEQEJooddQg8GArfOv5z2SMSHh5n6XYJBnr/UutZmRNHu/uz57bysrC1nIQhaykIUsZCELWchCFrKQhSxkIQtZyEIWspCFLGQhC1nIQhaykIUsZCELWeh7TDfY2pp/IhA438gITTwFpRczIh2jFOi1MlpvUgiMDiq+3klJm1wYyuiKg8/lfL0TIzTZy2mDUSU0aJQ8vUIlMtFq2sGGpg2/oGn6P62srFZd63/OQl9PP5LdKPtvKU8jlAjMOoWt2V3ON65VCA3xcqEhUybUFzJCYwUjMNYqKFODXGhswiGfC4w1DGUsl1OGfLnQmC7jG2MZgV2QlGdykVFGtVDI8FavXv1fVlZWP7Aw4TtCemv9TxW25pulUnshw9MxSkpnltvoPKW2miDaVhlFr1EnU9aKHMpaUSJcI6viW0sahGukLdQaWTt/tbSDv1ratXQ6BGtk7fiZwFpWL1wjqxSuVhTR1kwWzVMmimxVEWJbZYBCqHaX8wxGtcAkkwsMfGiZJc1goW+bZDLZ/8fQBhFUuoI2hjCUXQojMpYrhMZGqVDfJOPrGiR8daPYVtlEkyNvFuKswZHitPzd4X5mK2/GY/EcMV/dhNfAa+E1oSkUtF2xSmRKUAqNATApMDNWVl4/tEjAv59WgekSifnnsMuw0wpK5yflaePFAk0ubaOuEvGU6+WUfsAgdxt11gVP+jhEbwh2Sdq8ziNra5RP/kKcX+nOxICKXSnB1btTQ2r2pITU7sVJDanakxRcuTshoHxXnH/xjiif/O1hnpnzQc6Jc17myA2O2oAJncx5RCrQ9Yt4qlaRrapcwlNnifn6GLlA5ykS6RiJRL+Gucn1Z2or9X9YhOHfQHhjaVptAxUMu66EnRYaKnE7RbbKBqG1rFG4Rt6iFNt3+znEzoCZhVEdR2pSxs+35Gx+pLNg5xN9xfufHSo/+NJo5aHXx6qOvDVRc+xtnLGqw2+NVB16bbDs9hf7im99uqNg5+NNWZt+VZU8ejY3qv2OGP/iHR6mdROM0NBJNIW1opG2VRLNIKdMZQxlSJEJjQFSoUEjsdav8bJohG+OzGbzj3SU7pdSgUmmoAxuEr4mWmKjLcCbr6CN3QaF+7C7IWwiwDlxNtwrZx43uySu/86GjNkHOgt2Pj5Yftvz49VH35iuO/nBxsZzF+ea71nc1vYgu9DxK3Zn1yPkLHQ8zG5te4Cdazp/ebbh9CfTdSfeG606/Hp/6f5nO/IXflufPnNvYUz3kaTAylvWeWZt8XeM2+CsD57QSl2G5EJTp1SgqRULNDlSni5cybdzRuQBTRVnFWdxGP+vpLzZbKsQ6t0VQlOCUmwqlQg0dZS1vE7MU7WopY7dvo4JG7IjWw/WZcw80Fu056mRikOvTdTc+depuhPvzzac/tts45lPNjXd/elc8/lLm1vuWZxvvY8we1s7zoNL5wF2a9v97JbW+9gtzfdcnmu+5/NNTec+nW088/GG+lN/g0BM1Nz59kjFoZe7C3c9UZ0yeU9aSN0+N1PEJEObO2lbppmyZuogCAraWKSkTdHwTdQC5xu/kVtwHdIqOFY8nsNNiM8VlCFVKtDXyoT6bq3UYchB7Tvs4xAzHeNXuL0gtudoe/7Co6NVh1/d1HjuU9xsHDCWY+q97OaWe9i55vPspqZz7EZyzrKzjV8++B5+tqn5bvJYPGfLkrBsX/8Qu6PjV+z29ofYDQ1nLgyV3f5ic/bcw9kR7QfDvfO3eJkjJ81K72Gl2H5QKtR1yPiGShJ68o0Gmczxv604TWDJIfzLpFb/h4pvlMuE5gC50JghF+hr+dbSJsEaWZurMWQ8Nbjq1uqU8fO9xXueGqs6+sZ0w8n3Nzadu7il5Z5FMGxzy72EqTP1p9ip2rvY8eqj7GjVYXak8g52uPIgO1xxOztU/uUzXHGQ/Gyk6hA7WnWEnag5Rp6L14BgQJCgKTa33HN5Y+PZj6fqTrw7Wnn41a6CW/5QkThyOsG/7BYIAe9mcQsiCIVQVyWjjclKkb2XyMZEW/IH/xrdIBAIfoxEjkxoCFQIoU6NTUqRfY9O7trvZggdTVlbvbsxc8NDwxUHX97YdO4SbibHmHvZueZz7GzDacK4seqj7EjlIXa4/HZ2oPQA21eyj+0t3sv2FO9he4p3s91FXz7c9/ewvSW3sn0l+9nBstvIc/Ea4zXH2Om6u9iNjWeIduCE4UF2Yf3D7MaGM58MlBx4vj51+nycX8l2F23gkE7q3K8Sm7oUIlODgjLmioV2HuI1WmtEMRZN8DVkbW39U4lAr5VThlApX5cnE+obJTx1m0Hm2hfrW7xQkzp1vrfk1j+O1xx9C7YdjJhvu4+dbTzNTtYeJ7d8uOIOdrD8dnaw7AA7QM5+dqB0P9uPU4KP+/6Fwz2HPLfsABEGaImRijvYsaojRMBgMubb7mc3t5xnNzScvjBefeQ1aIPKpOFToe4ZW5QSxx6JQN0mF+jqJEJdJgRawjfKod3+dVV4/dAqmRVifDUlo/RhjMhYIacNLVqJY49Z7TsU6pa+sTZl4tx4zbE3Njad+4wwvvU+dmPjWXaq7gQ7WnmIMKq3ZC/bi1tcvJftK7mVMHOgjLvNQ2W3s0NlUP9fc8oPLj3u9ivCg9fAa+E18dr4HK8HQZiuP8lubD5HhBA+A8zQcMXBl0ri+4/7OSXM2Cm9BlVih045jXSzoURBmfzEYq21JUz8OzJbmX+E20Fiab4uTy4wtDK0qctZFziatrbuQEv2ll+PVB5+ZVPz3RfJGw37XneCHas8wg6VH1y67fvZPtzeEu4GE6ZXQIXj1h4mDBurOkps+9cd7nFHiOrHjcdr4LXwmjAjV4Sq/DYiNGPVR9iZ+pPEwYRgzjaevTBcfvAvDemzDyAXYafxGZDTpk65UN8k4ekypLTBWy0xU9fmnn1HSWGruBkqUiY0Fsn42katyLHHWRc0EuNXtL01Z/7RmbqTH29uvZedazlP1D0YNFR2G9tXzN1MMAVCAKZwDt0dhIEwCWNVR4gTuHw4Rh/9J+fYlcctCwLnPB4ir4nXxu9Y1gzLmgbfn6g+RswC/kYI6WT18fdr06fvC/PKnjOr/YdUtH2XRKCrk1OGPIS1q1erUVi6vglJHooy28pFeicZbciSC43NEp623UkbMJwZ1nigLXf+N2PVR99aDsum6uDcHWaHwIQl1bzMfKjv5ds+Xn2Mnag9xo7XcIwcqThEmETU+tJN7ivhmEc+ll5tLg5w9h7O3xWBufNLkQQRhLIDRNvgNfA8fA+mCL93jtNSl4crDr3SlLXxwYSAil0GuXs//BkFbWyU07oklJ1lMuPquLjrOFmkVDrcJBfbeShEpjQ5patTi+27dTLXPtyatpztj25oPP0xmD/beIYwgmPe3q+oYcL4yi9uO2FYzTHy/f7SfWxnwU62NWeebcrcxNanzbA1KZNsdcrYlVOTOsHWpU2yDRkzbHPWJrYtdxvbXbSLHSw/QARq2Twsa4bRJfMAoVvWCNAGnfk72K7CnURQZhpOsZua7oaf8EFt+sy9vk4JU1qJU69KbO6SCXVVctqUqBAbHdTq61MTEKcPQA28EUjyoApnlLsNxvgW76hNnbh7pOLwa7CpEADcaNyw/qUbi5t8tX0HYyaXmL5843Ez23O3fdaQOftBZfLY68VxvX/Ji1z/VEZY0+MpIbWPJQdVPZIcVPXr5OCqR1LX1jyaEVr/++yI5ifzozqeLo0feKEmZfyt5qy5v3XkLVyG4F3RCNAuEIhq7ndBACFkXQW3sM3Zc2xT5kZ2ff52IhRLCabFgbLbni9LGDoR5pk9rxaZe5HTkAkNVQraEKmWqKklp/D6SRTRtNd/MjcxPFTSGJG5XMrXdgvWyFs9TZHjdanT941XHXlztuH0RWLvq49e8cI5VXuAHak8yI5WgSHc7UQIuBwG9pceYNfnLbA1qVOLxfEDf80Ob/lzUnDlA5E++ceCXFJ2exgj5xzVgRNmhfewHeM1iOSNkzpg3M0QNutnH7M9xDVtX7RP4V2pIbW/zo9c/3x5/NAH9ekbiBaB2h+vOkJ+F0JBaBoIIXyR9bnb2fqMDWxNygRblTLGNmRsYPvL9pMoZbru5Ccj5Xe8Up4weJdZ5dvPWyNrk9OGLqXILl8h0DjIbGSr1ddTeAiIlYrWm2Q2mhiJQFevFjsMuelDx9JCavf0F9/659mGM5eQ0AFzoWKvhF9LKn90+dbX3kmYAUZAHXcW7Py8IXPjB6XxA69khDU/GRdYdn+YR8adfk6xe9wMa7eYlV6TSrHDoJSv6xLZKNeLbBTtKCHja0Zk7jfIXEYdVD7THsawrYFOifsjvXJOJAVWPpy1ruWp8sTh16EReop2XUK2kGic6qNEE3UV3sK2ZG9m69Jn2OqUcbYiaZiYltbceRI9TNedYDfUn7rYkb/jtzG+xdvsVf6jKrH9gISvqZTxNGFqG6Pa2lr/U6vrhQCikFPmUJGNuoCyVTQ4a/xHUVxpzpx7EEkepF6hYuFk9V5x9G5jhys57x6hFxiA7NxE7Z3sUMVBtj1n62Jl4sh7WeEtf4ryzrvT0xS5xUHtN4FqoU7qPKCROg6oJPb9YDQjMvUxlKlPQRn6FJSpj3wtMverROZ+jdh+AI/XSp0GTQr3EUeN/6SPOWZ7nG/Rmdyo9mdrUiY+hDZYTiHDgWzL28o2Zs6SW1+XPs3WpE4Sv6ImdZx8D4mpmfpTi8MVd7xSmzp1Pt6v5Baj3H2AtpHXyAT6HAXfzlcgUF8fhSOkQ5USADRNWRK+ugFVvUDnhA21adP3DpcffHmy9vgnSLDAyfryzb/ji5tfs3Tza++Eml1syd78cXnC8KvpIbWPhrmlH3PVBc0hfSzmq5pFPKZWZKuqkArUJXJKly+j9dly2pApFxnTcYArQL1BJjBkKSh9jpyvLZAK1KW0rbKSVPh4mhaN2HHAw7huGzRC9rqmxyuTRt5qytx0sT1vG9uRv4NtydnCNmVtZBszN7INmZwQ1KZNspVJI2xV8hjbUbBjqcZw6EJ/2f7nyxMHTyKtjSqinDLUKYT6BJnQLF3xyCKoOZHIRMspo7+C1lfLaVOXRmzfFe9fttBfuv+ZDY1nLi2r/YGyfV+EeGB+5bLaP85O158g6h83vzl788WC6K5n4gJKz3ibo7YaFW5DuMVKkV2PTGhslAn1RRKePlEq0ATJBQZHEU/HiEQqGiBPAEygjSS2Zkq22ixlBDqdxNbgJqe0oTKBNkUq0JUgNGVE5j5oELPSa8TfOf6W+ICS+3LCW18oTxi81Jgxy7Zmb2Zbc7ewzVlzbGPWRnLr69NniBaASajLmGZbcjYTczHTcOrTjsIdvwtxT9vEiM1dDG3ukgl0xcgNCBkTb0VjDBH3ok4uFWoS5EJds0HhPhLgEDddGNN7bKzy8NtIqYLJXHIHN//AV2w+mI8zWH7bYkvOlovF8QMvxvoVnfGyi9iqkdj309byJolAU490soJvSlUITMGkpGyrVaIgY/VP32CvH8pudPxv+Y0GPpA9AJ/IePowhjZkQlhFfGUDbatq1smchz3NYbdEeObclx7a8HpJTO9nDekzbFvuPNuas4WLBIg2mL2iCapSRtnqtHG2v2wfSR0PlO1/MWNd8wEPu8gpvcxlCDgCqcAQqRCb9IafG35htVJJZWOiFbR9iNhWmSu2VTd52IVP5UW2H2zL3fLYSMUdHyK9C9WPRA1387/M/Km64+wMuf3H2c6CHReK4nqejvYrOuNhFzankzr2M7R+QCbQr5dShjwpbQomjLQ138wwzM+AIF7ytG/4539h3A9wA9Wr1f8FeDm9Wm0D4KdMaFono3XFcqGhi6GNA3q506C7Ye3COveM+9JD6l+oTBz5DMxvy91CbvoXmmCWaAJoARyYDGiBvpJb327ImH04Laxhn6PGf5SyYWolPF2mgrLzBaTMaqWSmjKqFZQpTcxXVsH+hbinzTVlzj44ULb/taGKgxdHSSUPWb4l5i+rfTh89XeRkArZvd6SvYu1qZOvQO27GUO3qSQOfUDwIt+upOxKFLQpWCSyZ8B0q/8jAY5GegxExgiVyK5Cytc3wS/QSpyG3XQhuyK98u7Pj+r4K9R9S/Ymti1nnm3Nhk+wiSSeYCJqU6eIAOBzCEF30a4LvcV7X6xOGT/nZY6YBBRdwtdUMJQxFs0oVisV1AkbzIjsKkQ8ZTttw7TE+BRu7y3Z+8xUzfFPh8pvX+QyfFwqFtm2sSvAjOPshoZTpOjSX7bvs5q0yXczwhoe8bGPmkc4hVspowwNDKWPIVAsWzOlXu31X1ZW7P85uYJULfB9ckonQReRTGBIUVD6NkZoHFRLHQa9zZG7EwLKnsiP7vigPn368/bcbWxb7tYlU7CJmAJoAZgCRAd1adNsR/7C4lj1kY+BNwx0Spjhr5E2SwTqdkZkKkATykpMCt0g+aX55xK+2pehDS1SytCvFjt2p4XW7RupuOPNTU1nyY1HORcCwNXdv7j9nABwQI/2/O3vZ0W0/DHELe2wHqGUrbxZLjR0AK+vpOzMzE3Mz/5Nb+APEKrJBSZPJW2qlvJ1HWK+ssnEeI4HOSecSg6ufKYyafSjtpytRACQF4ApQGZwOTysIjmCEQgAO1l7F9tTtPu5KO/8rXAE5bR+AL6GWKBxsLUy/2QlCcEqs635J7D/Er4yFAJgZDxGA5zip4tje08Mlt/2LvLmEACUc5dv/3g1d/u5rNtxdqbuJMkB1KVPvxDpnXfEXu23USUy90kEqnoFpctV0PpgmUwn+Le+cXFxPyDoZJEuAm1mUr66SS22H7TX+G4O88g4VRzb82ZT1hxxBmEGmokQLGmBjBm2OnWChIUwE/g/O/K2v5oR1ni7j33kpE7hPCIXaGukfI238malLbKlViuEVikJuNNoENswMfD+3YyhU8khNbtqUyce6i259UPYdThHuP1X235k+FABhACMVx1Fpm+xOLb3dx6G8Flk75SUXQ+6gWQiTaBYrFTo9f/+bBpNG34hESi1EAIGMTyl74Fz6GmO3J65runZyuQxkg+AALRACK7SArVpUyQ0hFAgf9CcNfd2aUL/ufjA0gUnjf+YlKeukVgrQ+U2GhU0ptUKoVU6vqNAJTB5im0UqVK+ptnPKX5jYVzfsZbs+Sd6i/deQIYPAoBzte3H7YfdhwD0lez7rD59+u3UkNrzyN8LreVNCqG+kTRlUGo1PPf167/Ow//G6AaJRPJzKaUzA+8nE2obEdE4afxn4vyKHymI6ny/JnXiEm45zAFnCq72BabIxyWheL8+febRvOj1Bz1M6yZFNkytyFoVr+TrnGU2xtVWK4RWoZlSSdmFUWsUuRCAUPf0+Zq06Xs7C255oadoz0Uu0/fV6h4Yj5oABKEjf8d7BdGdf4zwyDqsl7sO0DZMDdQwgCRKnvKmb/ufkvF1AoXAEIlkkcRWUw9fIMQl9WRaSO0zlUkjf4MfAIfwH/kCy5qgLn36o9bs+WcqkkdOo5sJmUfamslE3yGaT61WCK0i/fa0KVGwWlqC9GyEV+5CU9bcoz1Fe9/qLdn7GRI+IyTm/6rt57AAd7LNWZtfTQ6uvtfXHL1LI3HsF9mqy4C9R0//NxHu/W8JTR9yoZ0HyRjytNXoHfQwhe+L9St8uCx+4G1oAIR8RACuigjqMmbYmjQOj1CXNn2xPXfbqzUpEw8EOCVspKxl9bSNokhFGyLR+Gq1QugGoF8Y2pSNFm3k/qN9Cm9pzd7yp/6SfR/2l956CRrgas//6hIvBADfq8/Y8EyEZ84hJ43/HIo6Ep62UMHT+cEpEwicf/xt/1OyGx3/GyGbnK8NlQl1FWqpw5C91mc+1CP9rpK4vlfgA/wjAYAzWJsODTAODfB5W+7Wd2tSJx4NdE6co6xlDahBMLQxGVrTaoXQDUC+KCi7Ev5qGSn+xPqV7GnP3faXwbLbPh0o3X/5igBUL8G5loo9yP5BAOAT1KZN/SHAKXGnXu46wUjM/TKBPltK6ewUCvPNVmbzj77tf4qmvf5TSZltkTKWU4ZSdAXpFK6TAS4J+4riep5HfQACAOZzAjDHFYuuVAyJAFxuy936cXXy+JNBLkmb0eCKRlcFZczR2JhUViuEbsAIFiVtrkb3LgQgMaD81o68Ha8D0TtQdhsply6XeYHqgQBw5xjxAeAYViePP+ppiphlaLtBlG/lQn06qaDJgtFsccO1GkUj5mv1CtpYzNB2A0hK+TrEbSuK7X66JXuO5ANw8+EDED/gKmcQPgAgaK05WxarkkefDXRJnIdjK+JpWklOQ2CvtVohdAMqXUrK3IApHEQAAiv2d+bveBvhHpg/9DUCgAQQnMOKxJFfOWmDxsR8dTdXzzekCMlwhmtKq8Q8vYKhTYWMyNQvRThojNhYENX5Jw5bOP8/CMAGkjOoSBx5IcA5YSsnAOr1MqFdBcJmqxVCNyB7xtB2zUJreQcGLCQElh/oyN/xzjKm7krs/3e4fdh+9Obh5+UJQw/ZK30GhavlHQrK1As7KV4jtr7W/5xMqJEihQtwCVLcbrqQqbyo9ifh9YO5UPukLkAOVyXEzUdqGAKAXEF5/NBLAY4J2zChRGyr6lTQpir4TVYrSgAoU+vVAtCWt+29ZQEY+QcCQACe1Vz3DTREWcLgg2bGu59aI1u/LADA0l3rf05BppBxAkDZyFud1YETuRFtfwDjURkEw/+RAHAo5A1sU+YcWxLX/8oXAqDsltPGmhUtAPH+pQdacubf4xouwHyu5+4LHD6Yz+HwUQEcLLudLY0bfMhe7TdI28o7lCJOALSo73/XBEAbOJET0fYEKn9w/sDkq7UA5wjCDCAhtIF8Xhjd9YqfQ9w21DXEfE3XyhMAoZ3H1SYgxqfoQHPW3Dto8OAE4NDXCMBdBA9YnjD0KxdD8KhUqOsiAkAZUoAs/i6ZAIlA3e5hCJ3KiWh7Eoz/egGYJqcmbYrNjVr/kq9D9LIArDwTQCZ8UOYGykZBnMBo7/z9DekzbwPjjxbs5fj/agEA/BqCgXAQNYLK5JHf+NhHTaP2jyKQjDKkimxU9FIEcK0qZzeIxXoFmT8IQKnU3OXnGL0xN6L9TyTdm7XpKwIA34DLB3C1gYrkETYrvPkFb3PEVswVkCw5gQq+SW+10sJAYAAgAOGe2bfWJI+/1pm/YxHIn6v7974iADV3kn6A6tSJ34a6ZWxBHYBUAYW6DMwGRKXxGg1fuAHFJzHfpAemD5hBR43PQJh75vb8qM6nEev/TwIAkEhxXP/l9ND6ZzztwuY5AViJYSCZ5WdXTFkr6oGmCXVP310aP/CX1pwtJBF0dfPm1c2Z3HCGowQcWp8+8yS6bT0M6yaRCsZQJryuROKy5lo0VdBobhGaeGKhzkMqUJfp5S6Dvo6xk4mBlfuLY3v+gtu9HPLBHwDjOeYvoYczNrCVSaOXC6I7P04OrHrCwxi2WWKrbERdAVlTha1ZabXCUsFZtI2yCgIQ6Jy4Mz+644+NmRs/6Cvde+nrBACRAASgOWvzs7mRHYeDXVI3YwIHzVMVynlGfwnfSY6EzLVIBauEDhoxTxMm4SsrzUrvoSif/Pm8yI4T5YlDryyHeV8nABWJQ5/lRrS+E+dX/BtXfcicxFbZgGYRJW1MWkmp4FUECyg0JYitlSVSoa4ZLVgZoQ2P1qZNvtlTvPezL5h+lQBUHibpYQgBegM68ne8WpMyeV98QNlug9y1X2AtL1Pw9AnQAteiGKQExoGUuLWpQhtptaMmYCQzvGl/der4r6uTxwlGEGYAZ9kMcAdhIdc/UJ4w+El6aMOrEZ659ztqA2aBZpbxtIUqoTFiJRWDlsrB5lCxrSoHAuBpCptP8C+7pzxx6C/dhbsvfp0AoOULAtBTvOf99vyFP+VGth+xU3kNCNZIa2Q8fZFUoA/CfIFv+5+S8jRClIPFtupSgDrdjWHjpQn9p9py55+tS5v5CPYdWuDrBKA0vv+j5OCqp4NdU06ZVT4zGIEn5+kyVJTRf0WVgw0CZ74Kg5IE6hSp0NjspAnYGO6ZfbQ4pvsP3YW7Lixn/Ub/gQAgBCRDGMpu+3yw7LZ3KpNG78HwCKRNMekb0YBKqNIAC7j+26kJ/ID6ue6XKEMrAT/na5vQ2ezvFDtTnzHzm97iPR80ZW66BOjXshb4sgBsuCIAJfF978f7l/7G1yHudpPCYxLT0Bi+Lg7j7FcUIATqEmGNmK+JQacN/ll/x/hbcsJbHuzM3/EBGeRQjWkc3FQOrgefEwBuJsCty9HBYkvW5t8HuyRtxEhYtH/JKX05I9AHISIAKujf/c9QlO6X6CBSQE1Thjp0IGmlzt3RPrkLbTnzzyFrCSRQZfIo1xV0RQBmr/QPQhDgGxTGdL8V6Zt/1k0ftl0rdRmTC/Q1KC+jiQU+htVKIWeB848B1ZbwtWsZytCqkTiOOmr8p5KCKu9qyd78LiBhSPpcLQAjRAAOXhEAaAUARLoLd79YGN1xLMQ1dZNG5tQnsJbUSfm6fDltXKvhaYT/1pyAl9cPUfxR0oYoMU9ZLLSWNqHFPMonb740vu9MR/7CW+gGbsna/I8FIIMTABxoh9zI9leCXVJuMzLe4yqR/QgygAxf461GQ4oVqXKuGFpFFjnwDT4MbWyWCwz9gEKHe+beWp0y9kZ38R7S5/fVuTzcAChEAcuTQAZKD3zQWbDjqaLY7qOOOr8Bm5vFLVK+rhN4AxIW/lICMOU3bwq8rH5oa6u4Wco3eDOUsRZFG/4acbOPOWaiKnnsTFfBzuc68hc+AgwMt/tqEwAQCBGCJQGAb1CaMMCmrq171ssUPi8XGjrllHEAGUBGqLUXWAl+/H2Ghf8QTaBoxyDSy0cAABzzSURBVFoajEiYgSkYYBBQvBKBtg3hoJ99/Pa8yPVPN2TOXuwtuXURYJAvZvFwg5kAFrl6bt9wxR2fT1Qffa89d+ujMb6F23ADGco4QPPVjVKhNl5J65zhQeP3fxNvYlwc2sUMv5BIjHK5WOch5WvSMP9PSdsNOmn9hjNC6vf0luz540jlHX9rz9t2iZR6U7im0Fo0glwlACQMzJhlKxKHL2eFN1+I9il4DGBSwORkAn0bBkbIaY3qe8x884+AmGVoRqQU6xWMkOFdHaOLePYMFjvI+LpKgENd9CGbYv2KHyiJ73ulq2DXRW62DycAy0IAzUBmAC7N6YOvgImdGCFTnTx+Nsa7cLtJ7tmPMe5Soa4FAiaXGNcqaK3ym/AJdJTul2KxVi+XmKKVYlM1Mpm0jbzFSRs0nBRUubspY/bBydrjf4V5QodwedIwEjxLc4eQ7+eYTwRgCQ9QEtv7UXxAyQuBTvFnTAqPCbTJA1aG1jCYSqvvGa3CQGSELXLapBLx9U5insqfFqiDZQKtl1xkNMCjxUQwicRMYQ+PTKDNhvdsVHpO+TnG3Z4e2vBoS9bmD8lYN+IMflkAEAn0Ft+KThpiBrjpIXd+3Fe879nqlImzkV65c5jCBTUqIRM/1HlyWrtWwdfqsVzCQBt+AWH4n5tDrW5AcyjDuP6M/rnhF/ifsIZGKtRFiAXqEilf08VQ+gF7tc9gfGDZQmPmpvsHSw+8NF597DPUMxqzZolqx1yAfyQAcP7qUPyJbHs71D39QVdd0F6dxHGUhH9CXSZDm32+d82hzgLBjxVirV4m1ocBy4bhR2K+rgrZMalAXwO0DHoC8I8BwQM8vYzSx6CRUy1xGLZTeU9HeOcdrU4eewvO3jI4dDkTuDyfD2aAzPMl4932kTrBTMPpz0arjr5YkTR6KswzZ14nc+mzXU03AVypoA1VZPADpQ9T8kwuiBLEYqevaQ+3WmWt1/8U6V2gmFHBBOPJ0AgKw6oljcI14hZk/GL9ixfqMzbcM1V31xvT9Scu4e/GFDLg/MqThtiq5NErfYBEAJa8f1T/yhOH2NSQ2he87aP26aWuE0qx3aCc1tdIRcYIRmLWfa8aQnBbNEKNVCbWr8MoVBmlX6+gTUNGudeovcpnVCNxHoWDI+Xr06W01gVTweBFKyi9L7Z3oacPQyJ87WMXciPanm7I2PB5X/HefyoAGOrcnredtFzhTd/UfJ6drj/1SW/x3qcqksdPx/kVb3M1BI8gL48QUcbXN4p5mmKJrToJAyJkfJ0zRanVaPREIgc3HPh+ia2aQllXgvDOVuMm52vXyvjaVCR55EJdCyqQRsZt0NMUPp4cVLGrNn36/ED5bc/PNp75fEPjaXZ93nZi83Hzl6eC/L0AYEhEeeIgmx3RcjHap+C3jpqAjXhvGNrUiR0DUsroSpMVdd+TARG4LVCxjFC/TiE2lMgpQyvFU7arJQ69Qa5pc7E+BQuu+rUTlA3TKrJWNCgpU6lSbAxAj6CcpzYqKH2aVKitFgs1zY7awA3RPvnnC6O7XmzP2/7xcmsYGde6FA3ABKzPXyBvJm4YbCmmcI3XHF2cqT/18Xj1na9jCFNxXO/xtW7pm7Uyl15UHwWrJXXYAoY+AolQUySldHmkl5Ay5qDoQgovlDEHXT5khAxPU4ydQMI14irBalk98AtGxmsAO4cwCLqnaNcTU7V3vTVTf/IizBX8Eqj1soRBOHeE+ctZQDCf1AIyZ8nX+VGdf4vzK3nWzz7uBPYawQzKKWMt+hsALLGyWn8twK3/e4ItxY1Bf5yC0pVIKF2rRurYjwzdOs+sTcWxvUerk0fPJgaU7wSMCx4zABNSoT5dSens5AK1o5w2RWMuMPLfmLrhYQrbkxRYfn9z9txbXHPosgBw2cDuwl0EPwfbWhrfz1YmDZOWK0QGmCWIM1V74r3ekr1PlSYMnoj2Ldzm5xAz7aILHDUpvYdwg8mgKLSTU6Z+/D0ygY4cfA5Qp2ppQJRR4T5kVnoOuelDxvydEmbiA8p31qRMnBss3f/cTMOpD7mZwGeISQJzMRUMf1NF4ghbnYzhUJNfEgDMByiN719MW1v7cqBz0t1O6oAdmDskFWgxJCqb4Ru8kV20+j4Q8fIlOh2xrZShBIMZbFeLmxy0vkM5Ea0H23K3PjJSefjlsaojr2OrBjZ0uRlCJmlbpgONIZiVqxSYEhmhKVwmMCZjSJJMoO9By3iAU+KOuvTpZ5AAQkQARxDqH7cMEGtAqHDDYEfLceOSRohnDXj5dN1JjGf9fGPT2Q/Hq4++3lO858+N6RseKortOp4UXLkn2C1ls6th7QTMAxpLeTdL2tfcKGi1uVHQCrSyjNL3gPEexvApbAxLC6neVxrXf7I1a+6R/pJ9z07VHX9zU9O5j2Ybz16aqj1BJpjh78Gtx99TkQjbP0amkKLxA+EfNyZmhmiHzLDGTyK9ch9z1gVt1UgcRwAjlwl1lTA3aAa9FhXN/wdiV8lkGikmXHLjzxG7mnsNCte+aN+Cre252x6brr3r/fnW+1kMdx6pOvxaY8bsA0mBFbeYGM8+uVDXRcazCQ1VDN8cBwGQUQbUvzEsqTPYJXVLQ/rMU+gTBCQM9p+rBG4njEZcjTcZYRYEoDiul9w+TOki8/jqT5KJ3Vjxgjn+kzXH3ukp2v1nLJAqius+mhxSsyfSK2c+wClx2sMYMeasCxl21QWPYEBlkGvyhmjvgm1poQ37yhL7j7dkzz3cX3Lrc9O1d32I0fQL6x9it7TcSxBKCEkx/QN/Q0lcLxEAmKXqFNx+jvkk/k+fIX9rTmTbhWifwpf8HGKPQ1MiD0ImiIsMeUpbnVnxX4qbv/ODIrmdffo18I6VtLFYzNc0UzaKNhd9yFjWuqbbWnLmfz1RfezNTU13X8awZIxJ3dBw+tPx6mNvNGXNPZQcUrELNxCYPthWuUBfBrvMu0lUh/nAUd4FO0viB+7tKNjxxvJKF7zRcLDAfNJSlTrFTeIkQjDMliUMkNuFr4Gz6yzcSUzGpuVlDs3nP5ttOP3BZM3xN0Yq73ihv3T/0z3Fu/+IbWLr8xZ+tz5v+2Ptedt+i8+x7KGnaM+fsClstPLQS9O1d72FpVObm89fwu4hTC1FDwP8kGXGlsUPkr9heTAkzBPp/iWo3yniEOZGti/GB5Q+5+cQe6e9ynczLoxUqMWo2EpGZApH+jqOQzR9t5M/KIJIhSqNnK+PRjoXdlMtceyJ9ivc1pG3/fdTdXe9B/W4qfkcO44RqhWHyAImrHIZrTryGm5hYlDFLrPSq1fEU7eRCEBo6GCEho5gl9RNlUnjD3UW7Xqjv3TfxYHy/WxP0R7SWoXK2XJHLd5UaAG82bhxeIMhACXx/WxJ/AAZ0YqOHPgFQBNj4OTmpeVPuMUQCuwU2tr+D7aGkc1hD5DHkMe2Li2BaDzL3fqSvSSOR46f+339AKouef0I++D4QQAmyd9ImB/RtpgYWP5eiEvyeZPSYxLzDFS0uUtBGyqlQkO8VKozfxszDb4RIokebMm0UabLBZpWN0PIFGxrQ/rs/fCK55rvXsRIVMTxmLTdVbCThHOzDWfYmbpTn45VH3m9JXvuoaSgylswDh7awyB17YejWJs6ec9Q+cFXJmru/HSw7MBid+EtpKsGiRXcNk6dcilVfOTm7YyTmw8bjOQLGFKWOECYgZgbwgOmjVQeIsKAhQ4wTdvXP0x2Be7qfpTd3f0YObu6HmV3dP2amI4ty5tIao8TE4TkE2J8/F5y6xMG2dKE/q/c/Dpi97m2bwhGbkTbpXj/spdCXFLvddUF71Rx/YxtZP2sSJ+AwVNqgfrGb2mmwf+dkF+XCvTBAmtZNmbjYK1qZdLIuf6Sfc9hvx5uPgo37eiHy9zINmduIuPTsX4FbyhsM5wzaIL4gNKdeplbT5Bz8obmzLmHx6qPvIE9fVDdg6X7yeBFovJxm9KWberU0tfcWR7CSDRB8gixw2BKSXwfWxTbQz5CIzRlzV0Z9AzACYQBHjz+3s3YQ7C0Tg7x/GTdXUsDp/eTOT7cjR8hvkZxbA/x9Em4h3Rv8giZ/8fd/C/+Jvw8e13LYrx/2btBzkn3OKr9NmqlDoOI90nIh/CTMrp+T5y+f64B3I1rp7F3typ57MGO/IW/9hbvJs4aNydvE9uSNUdm4XQV7CIhHd7wmfqTn4xU3vFqe+7W3xTH9B2rTZ0+P1Z15NXZxtOfYgoYZgPgjSc3aWmq1vIwBTB4mQlQr8ux9rI2AEPgiePnEACc0vgBFiNbYDpIq1Y2eva3k9Gt8BegaXAgIB0FC2wb2rmX2rnwuhVJnLovjO0mv5vc+qVY/+8Zj+8XxXSzGeuaLsT6Fj8X6Jx0r7MucCfCPZg5TDPBiDy5UOeB5JPV943+3geASjMoPHqDXJN3ZITWP1kS1/tRderE5aalWXnQBFCdODAJcOxgIjY1370423DmwljV0bcma4+/M9d892e4kaj6rc/bRm47sPJgMAQAH8mtCm9dTAqsuJy2tpYtiO5gyxKGlpyu6SVt8IVfwGmDQSIAJfH9bGl8H/HWi2N72aJY7iMY+uWz9LO4XvLY0jjOzsO84LXwmsv2nvvbkOvn5v/h57mR7WxKUNXFSO/8F33to4/ZKT2nwHwVbe7ERnOswMNQ6CWkz/dvS8hyFABoF4YxygW6VolA225Sek0EOyceSvAv/W1eVPtfK5KGF9EJC22A24b4HQsUYEuR3p1rvpuYg7nmey5tbDx3Gd2/ULvteVu5saqw60sCgM+LY/tI6TTOv/SFtW7pj4V7Zf8xOajyjazwlgtgHHIBcMyWGbP8PCIICUOEgaVxfYTJhTFdbEF0J5tPTseXDr5fEN115bZDk+C5XzCey/BxgjZ2xezgOZnrmj5KCCx/Jcwj43fe5ui7zCrPzXD4ZJgnSBlr0couoXR+pJ39Gswy+AaJXaWWmmQMZYphKFOZgjK2YwOGTuw44GUKX4j1LfpDTnjrRzUpE5dxm4lqzd9BBADhXG/RHlLE2VB/Ch724kzD6UXU+TFXn9ykRM6xAkOhusGEjNDGj2N8il70t4+7y07lPeWkD1oIdk5+IMan8MWUoOpLeZHtbFFsN1HPVSjDklo8QkXk5jmNgFNxlVbgTv/fHe77ZYlI6XJMv3Ljk8evvC4Yj8dDmLLDW9jEwMpPorxznw1wTjznpAvYqhE7DzASU59KbO5UiEwE4y+hDG42XyyF+G6He/8TobSKEi8jNK2DEADlK7ZlmnUS5xE/h5jDcX7Fvy+M7n67Nm36MjxxLFPoLNhBBAACgbUvyz1/8LK5KhrnPJF0ahIya8PAy7GZ4Y0XYvyKnvF3iD9rVnlvRrFJKbUfdNYH78H31nlkPhnnV/xqakjNu9nhzZ8URHcuQnXDPJBsYeIwsc2cAIyQ1+Y+Ln1+9Vn+OQTwynO453MmZYgtietj86I6LmeGN11IDq58J8a34OUw9/Tf+dpHnXDSBuxQSh2GxDxNC+J8Bu1dQlOCQmh2l/LsAVX7fnj7/wpBkgnUm6+PllP6MuD80BuHydde5oiFOP/y3+VHd/2tIWP2Mta0IpULQbhyijjHC/NzoE5xe6Gul9VtSVzvYkZo/YUon/wXkUAxMp7jStquG+viFSJjD7xqACmctIHzPvbRh8I8Mh6J9it8JTGg/GJ6aD2bE97C5kd1cNFAXB+nyhOQrh0mWgK/8ysnaclsgOEJg2wZYv24PiKIeVHr4YOwaWvr2ISAsguRvvkvrHVNfcjbLuKAk8Z/k5FxG9NK7QcxvYTLbRgJuAPtXUs9C9eyf/HfQ0hgAOkro+zCVLSxCF6uhK9uRDHFzyHujoTAisdrUsbf6SnevcghevYQZxDmAIMTkLnjHChOHXO3jbt1RdHdFxL8S5/xtY8+a6f0mpMIdK0YokhGtNL6aoxXB55AQdt1GxnPGXdj6G3+TnH3rnVNfSLcK/ulWN+iN5OCK99JW1v/Yea6pgs54S2f5kW1f14Q1bF4RSji+q8cfF0Si/CxGxW7y3mRbZ9nh7dcxHNT19Z+kBhU/k6MX9Eb4Z5ZLwS7pjzu6xB7t5sh+FYD5hXRpg7ceLI6XqivVlJ2+WjswNha3felwPP/Tl4/hHpjRPogFHlklK4etxTjU73N0dvKEgYf7y3aexlLngDshDaAU4giCZwpjulDROUu5fgXyxOGPy+I7HhtnXvGnTqJ44hMoO1RUMb1qJkzlDEO2zVISZfWV3O/y2FYL3cZs2M8px1UPptcDcE7fRyjj4a4ptwX4Znzuyifgufi/UteTwwsez8puOKTlJCqRdzkjNAG+BfkI7QGoovk4MrLiUHlnyQElr4b61f8apRP/tPrPLIeC3JJPu9lH3XIRR+4YK/03mhUekwBxq0Um4e4+F5fi6oegXRfNaw6jlsbv6JpFRA0SpEhEDV2QJsY2tCllzn1Bjknz1Umj/2ur/jWy1jLjlZwqH1ECCRPnjz8FQ8bAlCROPJ5UXTXKxFe2Qf1UudumUC7XkGAJrpiqFX4HkDqYDW7nDKVYd8gWdDM1zZKeaoWCIWRcZ9x0QXd4mUXcdjPIf5ssEvSw2vdUn8f6pn+53WemS+Ee2a/EuGZ83qEZ+4bEZ7Zb4R7Zr8e7pn1crhn5vOhHulPhbil/DbQOfFBf8fY056m8DuctIELZDoZbegkAE6+rkEm0NWTdS+0XTFW30koO19U9bCfYCm3v7LJ1mz+CWBWmGoJNKuM0jXY3iSqx/LHCO/cW4rjeh9oy936OtnGXYbM2g5usxaJnbmYfflUX7HFCOHGYRI+TFtb96sQl9RbzArPYQA7RLaKBgVtqmYo+xi5SGOQoCQtMHqhPQt7gKRCfTUEhaGNgyqJ/ahe7jxhlLvP2Cm9N6II46D1n3fUBWxz0gcuuOiCdiA9e/XB98BoPMZB6zdvVvnMmZWes0aF+7RW6jKuFJlH5JSBpHPRjCIXGjKlXFXUDeGdUqm8iSylsPqOV/W+EWKtVmHTt4pvXMsIDQVSWteMKpde5tIT4pI8W5oweN/6/IU3eov3XkQ5F44fYFxkIsZS+nY5Zr86tgbzkfypTB69VJE4/HJBdMeDkZ65O82MZ5+SMvUqKGMPcH5ymiCKxFg4DYCJTGQOlAuMScAncAOcDeR2otQso3QNmOeLncRA4ACNjCO+6ix/zf1c24THkoPnLr0WXhMxPSM0FSqEdvHY7iESGQ1qWm2DTSNW1wsJBIIfy2QyATDyGI2CNwxATECzk4IrdzdkbLhvsPy2l6dq77w4WHb7ItKuzUs3n1ulxp0ref2lr78QADI+bbG3aPenQ+UH3mzM3PAQXtfdsHZCIlCv56+RVeHGMyK7IGD1wQCYIQXlKIZTyvCMrjJbbYDU1hgh5+kTgUCWCTTFMgJU1TUQh5Kv6wAoBAsruaPrkmDVjFDTQjp0+boKCU9fCKSuFBu9ePp1Er7eF5hCePYQPqCN0S+w1Ptw/RC6Y9C9giYMOW1sAsADgI61bqkbGzJnHxytPvrGxsazn6LAguFOYD7y+dVYnLRUOVsu4ix3z3whAJwvgFoCqnEAdYxWL4FKgjhQiVSo7QakixHqC+VigyPQxlc5WzcwVszPZDfqBBJrey3Ds3cFDB2JK5KHp+zyGcpczgjMNQxlV0cqc5SpgXwuNFcDtwhnFr0LcoFdlFJoDpDx7ZzlNiYVdbPS1trK+qcrLpz73xIKGUqhJlDMU2UDDuaqC55MDa7e15i+4f6JmmOvbGq++1MsgEDGD8kfFHWqrlrUjAoa4nKkXlE8WcbQX53ChcDAdGAx5Ez9yU8nau58vSVny4MoJbuZQifJRC5reZ1EqMtUioxef9cevgqzg1G7UK92sCEeucAkQ88CIzDrZLS9CSEavHWssMEhm8woOzMZZAFkMG1Wwq5rePZCbBrDypgltO71zXwQlhoBCSyyVeZjunWAY/xsberkvcPlt7+0sensx3Mt51l4/eiQxSy85dIpmL9UWl3MWtdyKTGg/NOU4OrPCqK7L1cQLD3nGBJ8XdIIQf8CCIoqIaBYY1VcKRmwbBPj3ofVrzKhvhtoXhSpbG1tf7Kism3f5bKwgtL50Tx1JjxzT7vw6cKY7iNtOfOP9xTvuYCqHlLABBWTPEoEYNnbL4zpXswMa/woxq/4+WDnlAfC3DMfSwmufjc3sv0yB+3C47lkEDQBMAGIIlBFnK4/+RngZa058w8lBpbvdDOETmJzl1SgLZVSGlcsgbzu7PG1IB5PeZOMVpkkfE004n5M7QIUPDOs6VhRXM+rpOiSOECya6SwspRfB0AjI7ThQpR3wYt+DnGnkMp11gZuD/XIeDIxqPLDvKj2y1y6lhMAkp2L7yfYANQSAOQAWmes6uhLFYnDJyM9c7eZFO5DFE9ZIqFUfoCpX1cLmK8Z0fR/Yu0q+v4Aa9ZJnPtd9MFDQc5JW6N8C+5JCq78S1po3cc5Ea2E6bjZBTGdi+mhDR9H+xQ842sfe8Je5b2ZEZq6NDLHEXdj2O2h7hmPInWbG9G6WBLHpYWRHkZtHs+Hj4BQEqvl1uctPJ25rvGAv0PcBvQTiAXqUolQ7c6tgv2edNWsAPoByXpRxhwlZWxTi+zW6+XOA0ie+NhHHwv3ynkpOaiKFFEKYrpQRLkQ7p37kq999EmDzG1UIdCvlwtNnYzY1IVOIhdd8I61rhlPJPiXfZQT0XqZA2EMEQ1QENNNwBZFcT2flicOvpW5rvEeL/O6SbXEvkdFsPX6QomA0VlxPsD1E49fa5JYS9aQTBxp8VJXS/maTjml6zcxHpv97KPvXeeZ/VJiYPmHqWtr/xbtW/Csj0PMabPSeys2bIl4qjoyDoXS1yKPgLy6uyHsUKhb2m+Tgir/mhPRsgh0TlFcD6ZosomB5Z8mBJS+iKXNQS6Ju9HcIRNo27GCDiPVaJrBRC2Lh/7tkvo/4A+gfZqh9eiva2NoQ4dW7DDooPab9zRHHF3rlvp4uGfmc34O0SeNcrcxBWWHwk4P2RwuNKaTfjyabOfu10odhlz1gQtr3dJ+H+9f+lFmeDObG9WGAs3n4Z5Zb/o7xN3toPKb1kic+jArGAOiELMjI4cZRN/yP2+hZRKLtdYMbfBBbhzlUAAg4Z2jjOtuXHvY2xx52lHjuwC1L+ZrmxS0sVElMqVhfrBMaA7Atg05tokKVS06idOwhzHs8FrX1Mfj/EveTg6u+luUTx5Mx4Nmpc8tUltNl9BaSXYEQ3gQjaj4RvlKWrL4vSPSKCozrkbfPwMhoIztKpGpD73/ernLOGrmGIKgoAy9CgoQKUMWYNGYvCGVopRsCidVPdrQogKoROoyhugA1bgwj4yn/BxiT5oYrw0ovUJ7YEcwd/NNftjZg9Ez1/o9sBAyhDbG1Qxt8JYLdRkKgaEE/X8ASRCgBBY7Ywa+yJyOx6ht1dSy8CjEJj02c8spUyl2CsgE2jYIgosmcJ+XKfKEg8pvG1A26EBW0sYmhdicKxMbA7At7Hqot39vCMyETyDhq+QKSuOmsNVFyIWadKkAvfj6NJlQv45MB1kaF7P8PKRtwUxGaB++BDRtwzZwndR5EuVcrdhpnGgPWt94xeZTZtvro+z6/aQfUJTSllTm+BpvDHFEQ4lEoNf+sxUvEALk4bkZuaZCaAyi6gW6OmDqUayBo4nXkkpXzhDlFUtIyGDIEvoIcFvhI2Dy5de0QJNBU2S8G2V0ZYS6cGzkxE4AuUCfiCGQqPuj7Asgyrf871joW6RVemv9GjWlVnNbRuDl653g6Rt+bviFhRPXAXEdSCi/qm3IECc4lzcxP7N4+xaykIUsZCELWchCFrKQhSxkIQtZyEIWspCFLGQhC1nIQhaykIUsZCELWchCFrKQhSyEd+D/B01ef5HnqRGbAAAAAElFTkSuQmCC', 1, '2021-09-15 18:47:23', '2024-12-20 22:08:12');
INSERT INTO `character_create_gender` (`id`, `character_create_id`, `gender`, `model`, `icon`, `icon2`, `isactive`, `creationtimestamp`, `updatetimestamp`) VALUES
(5, 3, 413, 'Assets/Resources/HumanMaleNonUma.prefab', 'Assets/Dragonsan/AtavismObjects/Textures/NewUi/Character Selection/male.png', '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', 1, '2021-09-15 18:48:38', '2024-12-20 22:08:42'),
(6, 3, 414, 'Assets/Resources/HumanFemaleNonUma.prefab', 'Assets/Dragonsan/AtavismObjects/Textures/NewUi/Character Selection/famale.png', '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', 1, '2021-09-15 18:48:38', '2024-12-20 22:08:42');
INSERT INTO `character_create_gender` (`id`, `character_create_id`, `gender`, `model`, `icon`, `icon2`, `isactive`, `creationtimestamp`, `updatetimestamp`) VALUES
(7, 4, 413, 'Assets/Resources/OrcMaleNonUma.prefab', 'Assets/Dragonsan/AtavismObjects/Textures/NewUi/Character Selection/male.png', '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', 1, '2021-09-15 18:56:14', '2024-12-20 22:09:13'),
(8, 4, 414, 'Assets/Resources/OrcFemaleNonUma.prefab', 'Assets/Dragonsan/AtavismObjects/Textures/NewUi/Character Selection/famale.png', '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', 1, '2021-09-15 18:56:14', '2024-12-20 22:09:13');
INSERT INTO `character_create_gender` (`id`, `character_create_id`, `gender`, `model`, `icon`, `icon2`, `isactive`, `creationtimestamp`, `updatetimestamp`) VALUES
(9, 5, 413, 'Assets/Resources/OrcMaleNonUma.prefab', 'Assets/Dragonsan/AtavismObjects/Textures/NewUi/Character Selection/male.png', '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', 1, '2021-09-15 18:57:23', '2024-12-20 22:09:39'),
(10, 5, 414, 'Assets/Resources/OrcFemaleNonUma.prefab', 'Assets/Dragonsan/AtavismObjects/Textures/NewUi/Character Selection/famale.png', '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', 1, '2021-09-15 18:57:23', '2024-12-20 22:09:39');
INSERT INTO `character_create_gender` (`id`, `character_create_id`, `gender`, `model`, `icon`, `icon2`, `isactive`, `creationtimestamp`, `updatetimestamp`) VALUES
(11, 6, 413, 'Assets/Resources/OrcMaleNonUma.prefab', 'Assets/Dragonsan/AtavismObjects/Textures/NewUi/Character Selection/male.png', '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', 1, '2021-09-15 18:58:25', '2024-12-20 22:10:10'),
(12, 6, 414, 'Assets/Resources/OrcFemaleNonUma.prefab', 'Assets/Dragonsan/AtavismObjects/Textures/NewUi/Character Selection/famale.png', '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', 1, '2021-09-15 18:58:25', '2024-12-20 22:10:10');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `character_create_items`
--

DROP TABLE IF EXISTS `character_create_items`;
CREATE TABLE IF NOT EXISTS `character_create_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `character_create_id` int NOT NULL,
  `item_id` int NOT NULL,
  `count` int NOT NULL DEFAULT '1',
  `equipped` tinyint(1) DEFAULT '0',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=1489 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `character_create_items`
--
DROP TRIGGER IF EXISTS `character_create_items_trigger`;
DELIMITER ;;
CREATE TRIGGER `character_create_items_trigger` BEFORE UPDATE ON `character_create_items` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `character_create_skills`
--

DROP TABLE IF EXISTS `character_create_skills`;
CREATE TABLE IF NOT EXISTS `character_create_skills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `character_create_id` int NOT NULL,
  `skill` int NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=442 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `character_create_skills`
--
DROP TRIGGER IF EXISTS `character_create_skills_trigger`;
DELIMITER ;;
CREATE TRIGGER `character_create_skills_trigger` BEFORE UPDATE ON `character_create_skills` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `character_create_stats`
--

DROP TABLE IF EXISTS `character_create_stats`;
CREATE TABLE IF NOT EXISTS `character_create_stats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `character_create_id` int NOT NULL,
  `stat` varchar(45) NOT NULL,
  `value` int NOT NULL,
  `levelIncrease` float NOT NULL DEFAULT '0',
  `levelPercentIncrease` float NOT NULL DEFAULT '0',
  `sendToClient` tinyint(1) DEFAULT '1',
  `serverPresent` tinyint(1) DEFAULT '1',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=405 AVG_ROW_LENGTH=210 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `character_create_stats`
--

INSERT INTO `character_create_stats` (`id`, `character_create_id`, `stat`, `value`, `levelIncrease`, `levelPercentIncrease`, `sendToClient`, `serverPresent`, `isactive`, `creationtimestamp`, `updatetimestamp`) VALUES
(1, 1, 'attack_speed', 2000, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:08'),
(2, 1, 'crush_resistance', 5, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:08'),
(3, 1, 'dexterity', 10, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:08'),
(4, 1, 'endurance', 15, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:08'),
(5, 1, 'health', 2000, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:08'),
(6, 1, 'health-max', 2000, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:08'),
(7, 1, 'intelligence', 5, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:09'),
(8, 1, 'mana', 1200, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:09'),
(9, 1, 'mana-max', 1200, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:09'),
(10, 1, 'movement_speed', 7, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:09'),
(11, 1, 'pierce_resistance', 5, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:09'),
(12, 1, 'potential', 5, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:09'),
(13, 1, 'slash_resistance', 5, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:09'),
(14, 1, 'strength', 15, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:09'),
(15, 1, 'willpower', 5, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:09'),
(16, 2, 'attack_speed', 2000, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:00'),
(17, 2, 'crush_resistance', 5, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:00'),
(18, 2, 'dexterity', 5, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:00'),
(19, 2, 'endurance', 10, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:00'),
(20, 2, 'health', 1500, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:00'),
(21, 2, 'health-max', 1500, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:00'),
(22, 2, 'intelligence', 15, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:00'),
(23, 2, 'mana', 2000, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:00'),
(24, 2, 'mana-max', 2000, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:00'),
(25, 2, 'movement_speed', 7, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:00'),
(26, 2, 'pierce_resistance', 5, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:00'),
(27, 2, 'potential', 15, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:00'),
(28, 2, 'slash_resistance', 5, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:00'),
(29, 2, 'strength', 5, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:00'),
(30, 2, 'willpower', 15, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:01'),
(75, 1, 'critic', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:09'),
(76, 1, 'evasion', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:09'),
(77, 1, 'magical_critic', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:09'),
(78, 1, 'magical_evasion', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:09'),
(79, 1, 'magical_resistance', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:09'),
(80, 1, 'parry', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:09'),
(81, 1, 'physical_critic', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:09'),
(82, 1, 'physical_defense', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:10'),
(83, 1, 'physical_evasion', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:10'),
(84, 2, 'critic', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:01'),
(85, 2, 'evasion', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:01'),
(86, 2, 'magical_critic', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:01'),
(87, 2, 'magical_evasion', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:01'),
(88, 2, 'magical_resistance', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:01'),
(89, 2, 'parry', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:01'),
(90, 2, 'physical_critic', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:01'),
(91, 2, 'physical_defense', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:01'),
(92, 2, 'physical_evasion', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:01'),
(93, 1, 'weight-max', 1000, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:10'),
(94, 2, 'weight-max', 600, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:01'),
(95, 1, 'weight', 1, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-21 19:45:10'),
(96, 2, 'weight', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:01'),
(97, 3, 'attack_speed', 2000, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:30'),
(98, 3, 'critic', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:30'),
(99, 3, 'crush_resistance', 5, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:30'),
(100, 3, 'dexterity', 5, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:30'),
(101, 3, 'endurance', 10, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:30'),
(102, 3, 'evasion', 20, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:30'),
(103, 3, 'health', 1800, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:30'),
(104, 3, 'health-max', 1800, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:30'),
(105, 3, 'intelligence', 15, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:30'),
(106, 3, 'magical_critic', 5, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:31'),
(107, 3, 'magical_evasion', 5, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:31'),
(108, 3, 'magical_resistance', 5, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:31'),
(109, 3, 'mana', 1800, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:31'),
(110, 3, 'mana-max', 1800, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:31'),
(111, 3, 'movement_speed', 7, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:31'),
(112, 3, 'parry', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:31'),
(113, 3, 'physical_critic', 30, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:31'),
(114, 3, 'physical_defense', 10, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:31'),
(115, 3, 'physical_evasion', 20, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:31'),
(116, 3, 'pierce_resistance', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:31'),
(117, 3, 'potential', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:31'),
(118, 3, 'slash_resistance', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:31'),
(119, 3, 'strength', 20, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:31'),
(120, 3, 'weight', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:31'),
(121, 3, 'weight-max', 800, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:32'),
(122, 3, 'willpower', 0, 0, 0, 1, 1, 1, '2000-01-01 00:00:00', '2024-12-20 21:09:32'),
(123, 4, 'attack_speed', 2000, 0, 0, 1, 1, 1, '2019-04-17 09:09:31', '2024-12-20 21:10:01'),
(124, 4, 'crush_resistance', 5, 0, 0, 1, 1, 1, '2019-04-17 09:09:31', '2024-12-20 21:10:01'),
(125, 4, 'dexterity', 10, 0, 0, 1, 1, 1, '2019-04-17 09:09:31', '2024-12-20 21:10:01'),
(126, 4, 'endurance', 15, 0, 0, 1, 1, 1, '2019-04-17 09:09:31', '2024-12-20 21:10:01'),
(127, 4, 'health', 2000, 0, 0, 1, 1, 1, '2019-04-17 09:09:31', '2024-12-20 21:10:01'),
(128, 4, 'health-max', 2000, 0, 0, 1, 1, 1, '2019-04-17 09:09:31', '2024-12-20 21:10:01'),
(129, 4, 'intelligence', 5, 0, 0, 1, 1, 1, '2019-04-17 09:09:31', '2024-12-20 21:10:01'),
(130, 4, 'mana', 1200, 0, 0, 1, 1, 1, '2019-04-17 09:09:31', '2024-12-20 21:10:01'),
(131, 4, 'mana-max', 1200, 0, 0, 1, 1, 1, '2019-04-17 09:09:31', '2024-12-20 21:10:01'),
(132, 4, 'movement_speed', 7, 0, 0, 1, 1, 1, '2019-04-17 09:09:31', '2024-12-20 21:10:01'),
(133, 4, 'pierce_resistance', 5, 0, 0, 1, 1, 1, '2019-04-17 09:09:31', '2024-12-20 21:10:02'),
(134, 4, 'potential', 5, 0, 0, 1, 1, 1, '2019-04-17 09:09:31', '2024-12-20 21:10:02'),
(135, 4, 'slash_resistance', 5, 0, 0, 1, 1, 1, '2019-04-17 09:09:31', '2024-12-20 21:10:02'),
(136, 4, 'strength', 15, 0, 0, 1, 1, 1, '2019-04-17 09:09:31', '2024-12-20 21:10:02'),
(137, 4, 'willpower', 5, 0, 0, 1, 1, 1, '2019-04-17 09:09:31', '2024-12-20 21:10:02'),
(138, 4, 'critic', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:32', '2024-12-20 21:10:02'),
(139, 4, 'evasion', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:32', '2024-12-20 21:10:02'),
(140, 4, 'magical_critic', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:32', '2024-12-20 21:10:02'),
(141, 4, 'magical_evasion', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:32', '2024-12-20 21:10:02'),
(142, 4, 'magical_resistance', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:32', '2024-12-20 21:10:02'),
(143, 4, 'parry', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:32', '2024-12-20 21:10:02'),
(144, 4, 'physical_critic', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:32', '2024-12-20 21:10:02'),
(145, 4, 'physical_defense', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:32', '2024-12-20 21:10:02'),
(146, 4, 'physical_evasion', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:32', '2024-12-20 21:10:02'),
(147, 4, 'weight-max', 1000, 0, 0, 1, 1, 1, '2019-04-17 09:09:32', '2024-12-20 21:10:02'),
(148, 4, 'weight', 1, 0, 0, 1, 1, 1, '2019-04-17 09:09:32', '2024-12-20 21:10:02'),
(149, 5, 'attack_speed', 2000, 0, 0, 1, 1, 1, '2019-04-17 09:09:42', '2024-12-20 21:10:27'),
(150, 5, 'crush_resistance', 5, 0, 0, 1, 1, 1, '2019-04-17 09:09:42', '2024-12-20 21:10:27'),
(151, 5, 'dexterity', 5, 0, 0, 1, 1, 1, '2019-04-17 09:09:42', '2024-12-20 21:10:28'),
(152, 5, 'endurance', 10, 0, 0, 1, 1, 1, '2019-04-17 09:09:43', '2024-12-20 21:10:28'),
(153, 5, 'health', 1500, 0, 0, 1, 1, 1, '2019-04-17 09:09:43', '2024-12-20 21:10:28'),
(154, 5, 'health-max', 1500, 0, 0, 1, 1, 1, '2019-04-17 09:09:43', '2024-12-20 21:10:28'),
(155, 5, 'intelligence', 15, 0, 0, 1, 1, 1, '2019-04-17 09:09:43', '2024-12-20 21:10:28'),
(156, 5, 'mana', 2000, 0, 0, 1, 1, 1, '2019-04-17 09:09:43', '2024-12-20 21:10:28'),
(157, 5, 'mana-max', 2000, 0, 0, 1, 1, 1, '2019-04-17 09:09:43', '2024-12-20 21:10:28'),
(158, 5, 'movement_speed', 7, 0, 0, 1, 1, 1, '2019-04-17 09:09:43', '2024-12-20 21:10:28'),
(159, 5, 'pierce_resistance', 5, 0, 0, 1, 1, 1, '2019-04-17 09:09:43', '2024-12-20 21:10:28'),
(160, 5, 'potential', 15, 0, 0, 1, 1, 1, '2019-04-17 09:09:43', '2024-12-20 21:10:28'),
(161, 5, 'slash_resistance', 5, 0, 0, 1, 1, 1, '2019-04-17 09:09:43', '2024-12-20 21:10:28'),
(162, 5, 'strength', 5, 0, 0, 1, 1, 1, '2019-04-17 09:09:43', '2024-12-20 21:10:28'),
(163, 5, 'willpower', 15, 0, 0, 1, 1, 1, '2019-04-17 09:09:43', '2024-12-20 21:10:28'),
(164, 5, 'critic', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:43', '2024-12-20 21:10:28'),
(165, 5, 'evasion', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:43', '2024-12-20 21:10:28'),
(166, 5, 'magical_critic', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:43', '2024-12-20 21:10:28'),
(167, 5, 'magical_evasion', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:44', '2024-12-20 21:10:29'),
(168, 5, 'magical_resistance', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:44', '2024-12-20 21:10:29'),
(169, 5, 'parry', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:44', '2024-12-20 21:10:29'),
(170, 5, 'physical_critic', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:44', '2024-12-20 21:10:29'),
(171, 5, 'physical_defense', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:44', '2024-12-20 21:10:29'),
(172, 5, 'physical_evasion', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:44', '2024-12-20 21:10:29'),
(173, 5, 'weight-max', 600, 0, 0, 1, 1, 1, '2019-04-17 09:09:44', '2024-12-20 21:10:29'),
(174, 5, 'weight', 1, 0, 0, 1, 1, 1, '2019-04-17 09:09:44', '2024-12-20 21:10:29'),
(175, 6, 'attack_speed', 2000, 0, 0, 1, 1, 1, '2019-04-17 09:09:52', '2024-12-20 21:10:58'),
(176, 6, 'critic', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:52', '2024-12-20 21:10:58'),
(177, 6, 'crush_resistance', 5, 0, 0, 1, 1, 1, '2019-04-17 09:09:52', '2024-12-20 21:10:58'),
(178, 6, 'dexterity', 5, 0, 0, 1, 1, 1, '2019-04-17 09:09:52', '2024-12-20 21:10:58'),
(179, 6, 'endurance', 10, 0, 0, 1, 1, 1, '2019-04-17 09:09:52', '2024-12-20 21:10:58'),
(180, 6, 'evasion', 20, 0, 0, 1, 1, 1, '2019-04-17 09:09:53', '2024-12-20 21:10:58'),
(181, 6, 'health', 1800, 0, 0, 1, 1, 1, '2019-04-17 09:09:53', '2024-12-20 21:10:58'),
(182, 6, 'health-max', 1800, 0, 0, 1, 1, 1, '2019-04-17 09:09:53', '2024-12-20 21:10:58'),
(183, 6, 'intelligence', 15, 0, 0, 1, 1, 1, '2019-04-17 09:09:53', '2024-12-20 21:10:58'),
(184, 6, 'magical_critic', 5, 0, 0, 1, 1, 1, '2019-04-17 09:09:53', '2024-12-20 21:10:58'),
(185, 6, 'magical_evasion', 5, 0, 0, 1, 1, 1, '2019-04-17 09:09:53', '2024-12-20 21:10:59'),
(186, 6, 'magical_resistance', 5, 0, 0, 1, 1, 1, '2019-04-17 09:09:53', '2024-12-20 21:10:59'),
(187, 6, 'mana', 1800, 0, 0, 1, 1, 1, '2019-04-17 09:09:53', '2024-12-20 21:10:59'),
(188, 6, 'mana-max', 1800, 0, 0, 1, 1, 1, '2019-04-17 09:09:53', '2024-12-20 21:10:59'),
(189, 6, 'movement_speed', 7, 0, 0, 1, 1, 1, '2019-04-17 09:09:53', '2024-12-20 21:10:59'),
(190, 6, 'parry', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:53', '2024-12-20 21:10:59'),
(191, 6, 'physical_critic', 30, 0, 0, 1, 1, 1, '2019-04-17 09:09:53', '2024-12-20 21:10:59'),
(192, 6, 'physical_defense', 10, 0, 0, 1, 1, 1, '2019-04-17 09:09:53', '2024-12-20 21:10:59'),
(193, 6, 'physical_evasion', 20, 0, 0, 1, 1, 1, '2019-04-17 09:09:54', '2024-12-20 21:10:59'),
(194, 6, 'pierce_resistance', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:54', '2024-12-20 21:10:59'),
(195, 6, 'potential', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:54', '2024-12-20 21:10:59'),
(196, 6, 'slash_resistance', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:54', '2024-12-20 21:10:59'),
(197, 6, 'strength', 20, 0, 0, 1, 1, 1, '2019-04-17 09:09:54', '2024-12-20 21:10:59'),
(198, 6, 'weight', 1, 0, 0, 1, 1, 1, '2019-04-17 09:09:54', '2024-12-20 21:10:59'),
(199, 6, 'weight-max', 800, 0, 0, 1, 1, 1, '2019-04-17 09:09:54', '2024-12-20 21:10:59'),
(200, 6, 'willpower', 0, 0, 0, 1, 1, 1, '2019-04-17 09:09:54', '2024-12-20 21:10:59'),
(201, 1, 'cast_time', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-21 19:45:10'),
(202, 1, 'cooldown', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-21 19:45:10'),
(203, 1, 'cost', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-21 19:45:10'),
(204, 1, 'damage_dealt', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-21 19:45:10'),
(205, 1, 'damage_rec', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-21 19:45:10'),
(206, 1, 'glob_cooldown', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-21 19:45:10'),
(207, 1, 'health_dealt', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-21 19:45:10'),
(208, 1, 'health_rec', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-21 19:45:10'),
(209, 1, 'health_shift', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-21 19:45:10'),
(210, 1, 'magical_crit_power', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-21 19:45:10'),
(211, 1, 'perception-stealth', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-21 19:45:10'),
(212, 1, 'physical_crit_power', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-21 19:45:10'),
(213, 1, 'range', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-21 19:45:11'),
(214, 1, 'sleep_chance', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-21 19:45:11'),
(215, 1, 'sleep_resistance', 0, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-21 19:45:11'),
(216, 1, 'stamina', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-21 19:45:11'),
(217, 1, 'stamina-max', 100, 1, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-21 19:45:11'),
(218, 1, 'stealth', 0, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-21 19:45:11'),
(219, 1, 'stun_chance', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-21 19:45:11'),
(220, 1, 'stun_resistance', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-21 19:45:11'),
(221, 1, 'weapon_cooldown', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-21 19:45:11'),
(222, 2, 'weapon_cooldown', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:09:01'),
(223, 2, 'stun_resistance', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:09:01'),
(224, 2, 'stun_chance', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:09:01'),
(225, 2, 'stealth', 0, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:09:01'),
(226, 2, 'stamina-max', 100, 1, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:09:02'),
(227, 2, 'stamina', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:09:02'),
(228, 2, 'sleep_resistance', 0, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:09:02'),
(229, 2, 'sleep_chance', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:09:02'),
(230, 2, 'range', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:09:02'),
(231, 2, 'physical_crit_power', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:02'),
(232, 2, 'perception-stealth', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:02'),
(233, 2, 'magical_crit_power', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:02'),
(234, 2, 'health_shift', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:02'),
(235, 2, 'health_rec', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:02'),
(236, 2, 'health_dealt', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:02'),
(237, 2, 'glob_cooldown', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:02'),
(238, 2, 'damage_rec', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:02'),
(239, 2, 'damage_dealt', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:02'),
(240, 2, 'cost', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:02'),
(241, 2, 'cooldown', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:02'),
(242, 2, 'cast_time', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:02'),
(243, 3, 'weapon_cooldown', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:09:32'),
(244, 3, 'stun_resistance', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:09:32'),
(245, 3, 'stun_chance', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:09:32'),
(246, 3, 'stealth', 0, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:09:32'),
(247, 3, 'stamina-max', 100, 1, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:09:32'),
(248, 3, 'stamina', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:09:32'),
(249, 3, 'sleep_resistance', 0, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:09:32'),
(250, 3, 'sleep_chance', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:09:32'),
(251, 3, 'range', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:09:32'),
(252, 3, 'physical_crit_power', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:32'),
(253, 3, 'perception-stealth', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:32'),
(254, 3, 'magical_crit_power', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:32'),
(255, 3, 'health_shift', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:32'),
(256, 3, 'health_rec', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:32'),
(257, 3, 'health_dealt', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:32'),
(258, 3, 'glob_cooldown', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:33'),
(259, 3, 'damage_rec', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:33'),
(260, 3, 'damage_dealt', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:33'),
(261, 3, 'cost', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:33'),
(262, 3, 'cooldown', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:33'),
(263, 3, 'cast_time', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:09:33'),
(264, 4, 'weapon_cooldown', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:10:02'),
(265, 4, 'stun_resistance', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:10:03'),
(266, 4, 'stun_chance', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:10:03'),
(267, 4, 'stealth', 0, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:10:03'),
(268, 4, 'stamina-max', 100, 1, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:10:03'),
(269, 4, 'stamina', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:10:03'),
(270, 4, 'sleep_resistance', 0, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:10:03'),
(271, 4, 'sleep_chance', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:10:03'),
(272, 4, 'range', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:10:03'),
(273, 4, 'physical_crit_power', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:03'),
(274, 4, 'perception-stealth', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:03'),
(275, 4, 'magical_crit_power', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:03'),
(276, 4, 'health_shift', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:03'),
(277, 4, 'health_rec', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:03'),
(278, 4, 'health_dealt', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:03'),
(279, 4, 'glob_cooldown', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:03'),
(280, 4, 'damage_rec', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:03'),
(281, 4, 'damage_dealt', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:04'),
(282, 4, 'cost', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:04'),
(283, 4, 'cooldown', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:04'),
(284, 4, 'cast_time', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:04'),
(285, 5, 'weapon_cooldown', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:10:29'),
(286, 5, 'stun_resistance', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:10:29'),
(287, 5, 'stun_chance', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:10:29'),
(288, 5, 'stealth', 0, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:10:29'),
(289, 5, 'stamina-max', 100, 1, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:10:29'),
(290, 5, 'stamina', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:10:29'),
(291, 5, 'sleep_resistance', 0, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:10:29'),
(292, 5, 'sleep_chance', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:10:29'),
(293, 5, 'range', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:10:29'),
(294, 5, 'physical_crit_power', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:30'),
(295, 5, 'perception-stealth', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:30'),
(296, 5, 'magical_crit_power', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:30'),
(297, 5, 'health_shift', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:30'),
(298, 5, 'health_rec', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:30'),
(299, 5, 'health_dealt', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:30'),
(300, 5, 'glob_cooldown', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:30'),
(301, 5, 'damage_rec', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:30'),
(302, 5, 'damage_dealt', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:30'),
(303, 5, 'cost', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:30'),
(304, 5, 'cooldown', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:30'),
(305, 5, 'cast_time', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:10:30'),
(306, 6, 'weapon_cooldown', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:10:59'),
(307, 6, 'stun_resistance', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:11:00'),
(308, 6, 'stun_chance', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:11:00'),
(309, 6, 'stealth', 0, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:11:00'),
(310, 6, 'stamina-max', 100, 1, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:11:00'),
(311, 6, 'stamina', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:11:00'),
(312, 6, 'sleep_resistance', 0, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:11:00'),
(313, 6, 'sleep_chance', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:11:00'),
(314, 6, 'range', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:06', '2024-12-20 21:11:00'),
(315, 6, 'physical_crit_power', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:11:00'),
(316, 6, 'perception-stealth', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:11:00'),
(317, 6, 'magical_crit_power', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:11:00'),
(318, 6, 'health_shift', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:11:00'),
(319, 6, 'health_rec', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:11:00'),
(320, 6, 'health_dealt', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:11:00'),
(321, 6, 'glob_cooldown', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:11:00'),
(322, 6, 'damage_rec', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:11:00'),
(323, 6, 'damage_dealt', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:11:01'),
(324, 6, 'cost', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:11:01'),
(325, 6, 'cooldown', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:11:01'),
(326, 6, 'cast_time', 100, 0, 0, 1, 1, 1, '2020-08-28 11:21:05', '2024-12-20 21:11:01'),
(327, 1, 'build_stat', 100, 0, 0, 1, 1, 1, '2021-06-26 16:41:06', '2024-12-21 19:45:11'),
(328, 2, 'build_stat', 100, 0, 0, 1, 1, 1, '2021-06-26 16:41:21', '2024-12-20 21:09:03'),
(329, 3, 'build_stat', 100, 0, 0, 1, 1, 1, '2021-06-26 16:41:39', '2024-12-20 21:09:33'),
(330, 4, 'build_stat', 100, 0, 0, 1, 1, 1, '2021-06-26 16:41:39', '2024-12-20 21:10:04'),
(331, 5, 'build_stat', 100, 0, 0, 1, 1, 1, '2021-06-26 16:41:39', '2024-12-20 21:10:30'),
(332, 6, 'build_stat', 100, 0, 0, 1, 1, 1, '2021-06-26 16:41:39', '2024-12-20 21:11:01'),
(333, 2, 'experience-max', 0, 0, 0, 1, 1, 1, '2024-09-30 16:53:21', '2024-12-20 21:09:03'),
(334, 2, 'experience', 0, 0, 0, 1, 1, 1, '2024-09-30 16:53:21', '2024-12-20 21:09:03'),
(335, 2, 'dmg-base', 0, 0, 0, 1, 1, 1, '2024-09-30 16:53:21', '2024-12-20 21:09:03'),
(336, 2, 'dmg-max', 0, 0, 0, 1, 1, 1, '2024-09-30 16:53:21', '2024-12-20 21:09:03'),
(337, 2, 'dmg-dealt-mod', 0, 0, 0, 1, 1, 1, '2024-09-30 16:53:21', '2024-12-20 21:09:03'),
(338, 2, 'dmg-taken-mod', 0, 0, 0, 1, 1, 1, '2024-09-30 16:53:21', '2024-12-20 21:09:03'),
(339, 2, 'gearScore', 0, 0, 0, 1, 1, 1, '2024-09-30 16:53:21', '2024-12-20 21:09:03'),
(340, 2, 'level', 0, 0, 0, 1, 1, 1, '2024-09-30 16:53:21', '2024-12-20 21:09:03'),
(341, 3, 'experience-max', 0, 0, 0, 1, 1, 1, '2024-09-30 19:34:19', '2024-12-20 21:09:33'),
(342, 3, 'experience', 0, 0, 0, 1, 1, 1, '2024-09-30 19:34:19', '2024-12-20 21:09:33'),
(343, 3, 'dmg-base', 0, 0, 0, 1, 1, 1, '2024-09-30 19:34:19', '2024-12-20 21:09:33'),
(344, 3, 'dmg-max', 0, 0, 0, 1, 1, 1, '2024-09-30 19:34:19', '2024-12-20 21:09:33'),
(345, 3, 'dmg-dealt-mod', 0, 0, 0, 1, 1, 1, '2024-09-30 19:34:19', '2024-12-20 21:09:33'),
(346, 3, 'dmg-taken-mod', 0, 0, 0, 1, 1, 1, '2024-09-30 19:34:19', '2024-12-20 21:09:33'),
(347, 3, 'gearScore', 0, 0, 0, 1, 1, 1, '2024-09-30 19:34:19', '2024-12-20 21:09:33'),
(348, 3, 'level', 0, 0, 0, 1, 1, 1, '2024-09-30 19:34:19', '2024-12-20 21:09:33'),
(349, 4, 'experience-max', 0, 0, 0, 1, 1, 1, '2024-10-01 12:22:48', '2024-12-20 21:10:04'),
(350, 4, 'experience', 0, 0, 0, 1, 1, 1, '2024-10-01 12:22:48', '2024-12-20 21:10:04'),
(351, 4, 'dmg-base', 0, 0, 0, 1, 1, 1, '2024-10-01 12:22:48', '2024-12-20 21:10:04'),
(352, 4, 'dmg-max', 0, 0, 0, 1, 1, 1, '2024-10-01 12:22:48', '2024-12-20 21:10:04'),
(353, 4, 'dmg-dealt-mod', 0, 0, 0, 1, 1, 1, '2024-10-01 12:22:48', '2024-12-20 21:10:04'),
(354, 4, 'dmg-taken-mod', 0, 0, 0, 1, 1, 1, '2024-10-01 12:22:48', '2024-12-20 21:10:04'),
(355, 4, 'gearScore', 0, 0, 0, 1, 1, 1, '2024-10-01 12:22:48', '2024-12-20 21:10:04'),
(356, 4, 'level', 0, 0, 0, 1, 1, 1, '2024-10-01 12:22:48', '2024-12-20 21:10:04'),
(357, 5, 'experience-max', 0, 0, 0, 1, 1, 1, '2024-10-01 12:23:02', '2024-12-20 21:10:30'),
(358, 5, 'experience', 0, 0, 0, 1, 1, 1, '2024-10-01 12:23:02', '2024-12-20 21:10:30'),
(359, 5, 'dmg-base', 0, 0, 0, 1, 1, 1, '2024-10-01 12:23:02', '2024-12-20 21:10:30'),
(360, 5, 'dmg-max', 0, 0, 0, 1, 1, 1, '2024-10-01 12:23:02', '2024-12-20 21:10:30'),
(361, 5, 'dmg-dealt-mod', 0, 0, 0, 1, 1, 1, '2024-10-01 12:23:02', '2024-12-20 21:10:31'),
(362, 5, 'dmg-taken-mod', 0, 0, 0, 1, 1, 1, '2024-10-01 12:23:02', '2024-12-20 21:10:31'),
(363, 5, 'gearScore', 0, 0, 0, 1, 1, 1, '2024-10-01 12:23:02', '2024-12-20 21:10:31'),
(364, 5, 'level', 0, 0, 0, 1, 1, 1, '2024-10-01 12:23:02', '2024-12-20 21:10:31'),
(365, 6, 'experience-max', 0, 0, 0, 1, 1, 1, '2024-10-01 12:23:19', '2024-12-20 21:11:01'),
(366, 6, 'experience', 0, 0, 0, 1, 1, 1, '2024-10-01 12:23:19', '2024-12-20 21:11:01'),
(367, 6, 'dmg-base', 0, 0, 0, 1, 1, 1, '2024-10-01 12:23:19', '2024-12-20 21:11:01'),
(368, 6, 'dmg-max', 0, 0, 0, 1, 1, 1, '2024-10-01 12:23:19', '2024-12-20 21:11:01'),
(369, 6, 'dmg-dealt-mod', 0, 0, 0, 1, 1, 1, '2024-10-01 12:23:19', '2024-12-20 21:11:01'),
(370, 6, 'dmg-taken-mod', 0, 0, 0, 1, 1, 1, '2024-10-01 12:23:19', '2024-12-20 21:11:01'),
(371, 6, 'gearScore', 0, 0, 0, 1, 1, 1, '2024-10-01 12:23:19', '2024-12-20 21:11:01'),
(372, 6, 'level', 0, 0, 0, 1, 1, 1, '2024-10-01 12:23:19', '2024-12-20 21:11:01'),
(373, 1, 'experience-max', 0, 0, 0, 1, 1, 1, '2024-10-01 18:14:19', '2024-12-21 19:45:11'),
(374, 1, 'experience', 0, 0, 0, 1, 1, 1, '2024-10-01 18:14:19', '2024-12-21 19:45:11'),
(375, 1, 'dmg-base', 0, 0, 0, 1, 1, 1, '2024-10-01 18:14:19', '2024-12-21 19:45:11'),
(376, 1, 'dmg-max', 0, 0, 0, 1, 1, 1, '2024-10-01 18:14:19', '2024-12-21 19:45:12'),
(377, 1, 'dmg-dealt-mod', 0, 0, 0, 1, 1, 1, '2024-10-01 18:14:19', '2024-12-21 19:45:12'),
(378, 1, 'dmg-taken-mod', 0, 0, 0, 1, 1, 1, '2024-10-01 18:14:19', '2024-12-21 19:45:12'),
(379, 1, 'gearScore', 0, 0, 0, 1, 1, 1, '2024-10-01 18:14:20', '2024-12-21 19:45:12'),
(380, 1, 'level', 0, 0, 0, 1, 1, 1, '2024-10-01 18:14:20', '2024-12-21 19:45:12'),
(381, 1, 'pet_count_1', 3, 0, 0, 1, 1, 1, '2024-12-20 22:06:12', '2024-12-21 19:45:12'),
(382, 1, 'pet_count_2', 2, 0, 0, 1, 1, 1, '2024-12-20 22:06:12', '2024-12-21 19:45:12'),
(383, 1, 'pet_count_3', 1, 0, 0, 1, 1, 1, '2024-12-20 22:06:12', '2024-12-21 19:45:12'),
(384, 1, 'pet_global_count', 6, 0, 0, 1, 1, 1, '2024-12-20 22:06:13', '2024-12-21 19:45:12'),
(385, 2, 'pet_count_1', 3, 0, 0, 1, 1, 1, '2024-12-20 22:08:11', '2024-12-20 22:08:11'),
(386, 2, 'pet_count_2', 2, 0, 0, 1, 1, 1, '2024-12-20 22:08:11', '2024-12-20 22:08:11'),
(387, 2, 'pet_count_3', 1, 0, 0, 1, 1, 1, '2024-12-20 22:08:11', '2024-12-20 22:08:11'),
(388, 2, 'pet_global_count', 6, 0, 0, 1, 1, 1, '2024-12-20 22:08:11', '2024-12-20 22:08:11'),
(389, 3, 'pet_count_1', 3, 0, 0, 1, 1, 1, '2024-12-20 22:08:41', '2024-12-20 22:08:41'),
(390, 3, 'pet_count_2', 2, 0, 0, 1, 1, 1, '2024-12-20 22:08:42', '2024-12-20 22:08:42'),
(391, 3, 'pet_count_3', 1, 0, 0, 1, 1, 1, '2024-12-20 22:08:42', '2024-12-20 22:08:42'),
(392, 3, 'pet_global_count', 6, 0, 0, 1, 1, 1, '2024-12-20 22:08:42', '2024-12-20 22:08:42'),
(393, 4, 'pet_count_1', 3, 0, 0, 1, 1, 1, '2024-12-20 22:09:12', '2024-12-20 22:09:12'),
(394, 4, 'pet_count_2', 2, 0, 0, 1, 1, 1, '2024-12-20 22:09:12', '2024-12-20 22:09:12'),
(395, 4, 'pet_count_3', 1, 0, 0, 1, 1, 1, '2024-12-20 22:09:13', '2024-12-20 22:09:13'),
(396, 4, 'pet_global_count', 6, 0, 0, 1, 1, 1, '2024-12-20 22:09:13', '2024-12-20 22:09:13'),
(397, 5, 'pet_count_1', 3, 0, 0, 1, 1, 1, '2024-12-20 22:09:39', '2024-12-20 22:09:39'),
(398, 5, 'pet_count_2', 2, 0, 0, 1, 1, 1, '2024-12-20 22:09:39', '2024-12-20 22:09:39'),
(399, 5, 'pet_count_3', 1, 0, 0, 1, 1, 1, '2024-12-20 22:09:39', '2024-12-20 22:09:39'),
(400, 5, 'pet_global_count', 6, 0, 0, 1, 1, 1, '2024-12-20 22:09:39', '2024-12-20 22:09:39'),
(401, 6, 'pet_count_1', 3, 0, 0, 1, 1, 1, '2024-12-20 22:10:09', '2024-12-20 22:10:09'),
(402, 6, 'pet_count_2', 2, 0, 0, 1, 1, 1, '2024-12-20 22:10:09', '2024-12-20 22:10:09'),
(403, 6, 'pet_count_3', 1, 0, 0, 1, 1, 1, '2024-12-20 22:10:09', '2024-12-20 22:10:09'),
(404, 6, 'pet_global_count', 6, 0, 0, 1, 1, 1, '2024-12-20 22:10:10', '2024-12-20 22:10:10');

--
-- Wyzwalacze `character_create_stats`
--
DROP TRIGGER IF EXISTS `character_create_stats_trigger`;
DELIMITER ;;
CREATE TRIGGER `character_create_stats_trigger` BEFORE UPDATE ON `character_create_stats` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `character_create_template`
--

DROP TABLE IF EXISTS `character_create_template`;
CREATE TABLE IF NOT EXISTS `character_create_template` (
  `id` int NOT NULL AUTO_INCREMENT,
  `race` int NOT NULL DEFAULT '-1',
  `aspect` int NOT NULL DEFAULT '-1',
  `instance` int NOT NULL,
  `pos_x` float NOT NULL,
  `pos_y` float NOT NULL,
  `pos_z` float NOT NULL,
  `orientation` float NOT NULL,
  `faction` int NOT NULL DEFAULT '1',
  `autoAttack` int NOT NULL DEFAULT '-1',
  `race_icon` varchar(256) NOT NULL DEFAULT '',
  `race_icon2` mediumtext NOT NULL,
  `class_icon` varchar(256) NOT NULL DEFAULT '',
  `class_icon2` mediumtext NOT NULL,
  `race_description` varchar(2048) NOT NULL DEFAULT '',
  `class_description` varchar(2048) NOT NULL DEFAULT '',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  `respawnInstance` int NOT NULL DEFAULT '-1',
  `respawnPosX` float(8,2) NOT NULL DEFAULT '0.00',
  `respawnPosY` float(8,2) NOT NULL DEFAULT '0.00',
  `respawnPosZ` float(8,2) NOT NULL DEFAULT '0.00',
  `startingLevel` int NOT NULL DEFAULT '1',
  `sprint` int NOT NULL DEFAULT '-1',
  `xpProfile` int DEFAULT '1',
  `dodge` int NOT NULL DEFAULT '-1',
  `stat_profile_id` int DEFAULT '-1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`race`,`aspect`)
) ENGINE=InnoDB AUTO_INCREMENT=7 AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `character_create_template`
--

INSERT INTO `character_create_template` (`id`, `race`, `aspect`, `instance`, `pos_x`, `pos_y`, `pos_z`, `orientation`, `faction`, `autoAttack`, `race_icon`, `race_icon2`, `class_icon`, `class_icon2`, `race_description`, `class_description`, `isactive`, `creationtimestamp`, `updatetimestamp`, `respawnInstance`, `respawnPosX`, `respawnPosY`, `respawnPosZ`, `startingLevel`, `sprint`, `xpProfile`, `dodge`, `stat_profile_id`) VALUES
(1, 22, 23, 29, -170, 74, 154, 0, 1, -1, 'Assets/Resources/Portraits/ChallengerT.png', 'iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAYAAADDPmHLAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAgAElEQVR4nOy9Z5Oc55EtqC+8Eq8kSpAAghBBECAIw4bpRptqW11dVV3ee++99953VftuWMKQEJ0oQ0kznNmJnd29sXft/Un7A85GZoOaOxsTd2NuDINqaT48UW3KvP3mycyTJ/N5+nsAvvfvC3+19+A7v4B/X/h3AHxbIDg8mGA86uL4cBe72yM062WUS3n8O+jw1xMBqqUcCrkEup06fvWrT/Ho4R5efvwIjx/t43h/jOPDbQw6deRSsX8RGPt7Ezx/9ugvFjTf+QV826tUyOL+8R6G/QZ67Sqa1TxqxQwKmRhK2SSG3Tpq5SyqxTS2t9rY2e5i2G9ie9zFeNSCQqFAIhZCOh5GLpPAsNf8iwLDd34B/71rf3vAhiDP3tke/TOj9DsV9DtVtFtVPH36CPeP9tDrNlEq5lAsZFHMxlEvZeB1O6FTq+B12RHwuZHPJtHtNNFu1vDs6WMcH+1y2ui2a+h1q39Rhj+1AGg1Smg3SqiVc2i1arDbrNhi765g0Kuj320gnYiiVMpif3+M8biPfqeOajGFQjqMXqeERi2PrWEb26MORvTaThW1cgadRgn7OyPs72yhWsqgUkjy81vNIgI+F1x2CzLJCPrdOu4fbXOEoM/9ru/JXxUAEtEQfB4XrBYzgl436pU8KqUMCrkUBt0qqhX6Oo7RoIVhv41ep4Z+pwaP3YxygTy8gmqlgHqlwK87Ohzz78MBD3KZJO4f7fI63Btj2K2i28yj1yqi3SjAZTMi4Hchk47CZjHA7bQhk47j6GgHD493TyUQvvML+O9ZPo8TR4e7qFYLMOi1GA4aGPaq7I2dVgnjUQe9dg1hnxvdZg0qmRTRgBvpeAh+jx3JeAQhnxOpeIifa9SrIRWvo1bJY29nC8eHO3h4fxetRg61UgqtRh6lQgL5dJg/ZzSsQ7y2ikwqgsm4j49efIjHj49wfDhBs366qozv/AL+tWvY76BWpRSQQT4T5rA/HNQwGbXRaZaY1LXqRSZ58ZAfQZ8T2WQUxVwK6WQUmWQYyaiXDTvo11ApphDw2uG2m5FJRPi5Dw63UUjHkAidPG/Yr6HbKjPAJlttjjDZVATdThndTpHTyc6kj+GgzZFnZ6uDdqvI5JGuuVEr/9mC4ju/gH/Nmox6aFYLnJ9DARcqhTTnbTZOt4J2s8QGJabfqheQSQSRigeRzyYwHvUw2eojl46gUqTcfsIZCvkYapUs8tkoYhEPdrd7ODoYY9BvIRH2otd69f7tCtr1An9ep1nBsNdAv1NGr5PHR8+foN+toVyMo9cpo5BLo1zKIpuOcbogsH7X9+7UA4AMOOjWmYRZzQZk01G0GkW0miW0m0U2IBmXvLBeyzPRa9SLKOYSaDUrXNZtb/VRK6eZ1G1P+vw6MhiF7UwqhHoli1G/ydwhlySgpLk8JOPubPcx3uqg1yqz8Uf9FnqdOpq1HFcaI45CDexMOui2S8imw+g0i3+2hj9VABj0GmjUCqDc73HaUM6nUMhF0KgXGATtRhmZVAz9Xgt+r4uJWrtVQT4TRyISYENtjTpo14toVNM4PNhiQEy22uh3KyeAqZfQo/TRKPH7R4MeXtlkBHs7Q+zsDBgIpBl0mmUc7k+wvdVDo5pHv11Fv1fF/l4fTx7uYjxqotHIMcCODrfx8PHRny0QvvML+G+ter2C0aiLWrWIcNAHtXITzVqRCVmllESnXcag18Zw0EGlnIdWo8by4gKiIT+q5QJS0QCyqTC2xz0WcFq1DCajJg72x/y4v93HoFPFVr+FfruGZiXL4TqbDLPxHWYDaqUstre6rCtQNGg3itgatHB0uIPxsMvf1ytpdFpFfs7zZ0c4PhjjaH+ERw/2cHywjclW798B8K81fjQcxMHBNjqtKkI+F9wOM6rFLBO8Uj6OTrvEytzWqI+AlwQdBWRSMXxuB5d4tWIahXQItXIK1XIajUoG3XaRw3WvV8P2mIhbl3UAWgSERoVCfgKFbAwRv5t1ADLqqNfgiqGYJSWwwQDYnYzQaVXQqOTQbOT4eihSjAYNbI1aONwd4cNHhzjaG6OUTzF/qBQSf3ZA+M4v4F9a+UwMw2Eb1VIWLrsJ8YgfhUyCQ20hE0GzVkAhn0HQ52H2noj6mBT6PQ40ynlMRl20mwXk0yEuC7vtMnpULfQbePTwkAEwGjWZuRMfGPbraDbyyKVDHFkoCvRaFQzaVWwNmygXUwj5XSe5v9fC1rCLyXiAZi2PLgtTRdYgdiZDpBIB5hOpWAj5TBJ2k55LTLNBh72dPgq56J8VCL7zC/j/LiJ3tWoOuWwci4vziIa97EHEvHPpKBOzgM8Do0EPmXQDiagfqZgfkZAPuXSMvZ/yMxG6Sj6OQe9EGyCFcH9/G9vbA7RaRUzGPVTLWTRqORaHivk48rkImnX6vorhsIUOsf9OBdGQB816AVuDJg4PdrC/u4VBr8XqYrOaQ6uex/ZWB1SlxKMejjiUpnweK6QbQty8cQPzc3MYdhrwuawcwb7r+/xnCYBsOsKlUyTkx9QHUwgF3KiU8ijmU8ilolzSKWVSyDcl0CrliATcyKdjSMUDSMZCaNXLTAj3Jn3kkkHUSklm5P1egznBwwdHaLfLaLfKGPU7KBYSXK9T+ZhNhTgK9Ck9bA8wmfTR75JEnGXjUyOJyB9VIod7Wxj16mhS7q/n0K7nsEtVwrB9oi90q1xZRCMeRCNeWEw6rC4tIRYOYFMiQirmY9L4Xd/vPysAVEt55LMpKOVyzN27x8avs+CTRyYR5qVXK2C3GqHXKpCKBVDIxFHIJxAJeblpQ2y/US1w3iYvq1Uy6LQrKBUyKOYz2B4PUC0lsL835rDeaVEZWEW5lOB8Tylia9TF4dEuS8jEDUhcokhAYs+gSz2HGg52t7gs7DQLaFYz6LQKHAH6REo7FY4UVB5yFCqkuFStlLLQqRRQyTZRyiXRahZQyCUZBAQq0jb+KgGQSoTQaTfRbtdht5phNGoQiwTY66j0o7CeSYTY+CTlup1mREJujgjEERKxIBu3322hTIbOJVArpVEupLhEK2QTKOQyqFeKnH9J06chkWrpRAyiWr1YiLPBRoMmHj445OGRMfUSeg3UKzl0mQt02fjUiDrYHaFVK/DnNGtZLiXHIwJIFeNhkwHwjXjUrOQ4egz7LQT9HgS8LsRCfk5VRGjpvVuNMl/7Xx0AwgE3YtEAtkZDBH1u+P1OJKJBLulqlRy3ZxMRH8IBF5Lk8bkYHFYDSvkE/z6XiTMv6HWoo9dAPhPl4Q8yWrWQZvLotFuQjkdPtPwcScdNVgnJWINeHVVi/uUMG4xKxS2Sc/utV4pfmVk+vXe3RcavMB+hVjR5Nr2mVaPw38PWqMlhfXvSxbBXZ2DRIpJI8jBpCx6HBUuCBUjFGwwCuhbiNKVCGlaL6U/S8V8NACjfUwcuFg0yi4+FfcikyFgZVvyS0QBCAQciIRdq1QwsRi1ymSh38SgCEAAa1Rw6zSorf0TKyOvr5SxiIS80ChmXiLncyWuadVINy2g1CtwKbnMNn2UOQB1BFoLoOY0Se3+vW2PpmbyTftaqldGoUr1fe8ULKlwlELsfDRssFBEBHW+1WZoeDZtcTVDkKOUSyCRDcDks0CjlrGfQc+kzqQehUioRCvn+egAQDniRTkRA7d1w0A1KBdEwMfk4N21oAice8SAe9aFSSsHtsvJzOp06506/x8kCEen4ZDTS94kAUuinho9aIYPLbkYqFUS1kmNtvt2u8vO7XQr9ZOgCuq0Kh2HydhJ96uUc9/upF9BtVRlQ9P7b4z4G3RYbjnoN9WqOu5DjYedEKKLSctjCh48fYHeXVMMqBq+mkOh9KI2lE0HYzQaeLXA7LHDYzFApZFhaFMBpNaLVqmK81eco8xcPAPJ2CnnhoAdhv5PDPAEhyYYPcPhOxANIp8Is86aTMdTrZe7qGdRKJKJh1Ksk7Z40h4gPEHioXve57PC6rIiHnRy+qRuXz8U51NereTQbBfR7dUy2+9jdHWE0bHM0oPcadE96ASdhn8ShAit+NFi6NegwQCick8xL4Bm0GxgPGhj0qrh/vIvnz55wGmi3SieDJpUsS9aVIhHRJJxWE1RyKRqNIoJ+NzxOO08h0fDKZNxBsZhFpZzhgZe/WACQ8UM+NyIhD+KvcnzQ62Q2H/J7mAfEIl7Eoj4U82ke4CiXcggFPAj6XdCp5Dy2RTm5Xa8gm4pyj99pN8PrtHGvPxF1cq9+0G8in4uelHyNMmsM+7tDHB7tsL5PYZ44QaOcQ7NGnT8K2XU2PvUZKHw/eniM+0f7nA6oLKTBEsr3NFPYrVP6KGHYr+Dly6d4/OiI5weopCTvT8T8KJfSXEVQuLeadDBqVSxHN6k6KOeYAG/vbmFrq4PxuIt4LIygz8Wg+YsDAOXmkN+NeNSPdDKERCwAn9vGHIAYcioeRjTkhc9j44jQaFSRScZgNhkQ8Dpg1CpZXWsTKavTkGcZTosRoYAXIa+LSWMs7MJo2OUSkESZOpVktTxzgMP9MfZZsm2xPkDzfpTXiZBNRn1m+/1286Sc7Db4eU8/fIiDvQlqJfLMDHMIWvlUFPUCjZLlsDWo4ZNPPjqJJFQZ9Gqo17KIR71cUh4cjDHa6nBq8rps3CQaDurIpRPQazUQi4RIJSOccuj+JGNB/pv/ogCQTIQ47MVjfmTSEc7VsZCPDR8JepgTUAqgG0QeEA16kU3FYdRqoFXJYLcYYNSoEIv4US5kkU3EEPZ7uESk9wn5nQj6HOh2GmjWieBluFqgMTHK81S+UbuXvJsmfwf9Jg+LkoRLk0C7O1vodxps6EYlfzJO1qvx76jD12+VMOjWMN5qcXQo51JoVvJo1/NcQn788Qu0m3mMRwScBmrVLLKZCHa3B9wYIoGJwn805GM5ejhogmTvVDyCJcE8HHYTdyUplZET0PNy2ROt4NQDgGbnvB4H4tEAkvEgM3giemToYMDNZWCCRrbcDgQ8DvjcdkTCATgsJh7pspl0kEs3YNap+cZE/F64rGY4TXoYNQp4XBZuGHVaddReDYQQu6dWMrFyYujEEwgYo0EX+7tjbgkfHe7h8IBauCcdQyKCJNRQDqb0QI2dve0BdraaON7fwuHeCDtbPe4MUt+BJo+I4NEcAkUKajhRlKGBUapcSGJ+/HAfh3vE+FswaVQsNvX7J1VHibhBLg6xaA0GnQqFfBLlYvZPAKAoQCnwVAMgmYjC7bSz90fClNdT/IfSH+j3OhEO+RCLBJnZEwAoJVBXz2E1wmrUwmzQcOhXSMQwa9Xw2C2w6tUwqRUwKWTwu+28Ws0azwlS6GYmT1PClKsLcRQyNEBSxu7OmJXA7XGH5wof3D/g/Ex1f4nGxhIhJm69XpXnBfd3R9gdd3G4O8Cjox3s0ugXGS4dRyroQykTRdBlxcHeNr/vZNLjzSckDRMPIDGLRCJSIYuZFAtALz5+ivGkh0olj2o5z/pFwGOHdE0Ii0GDEDmAy4oYpzM/spn06QaA026D1+WA3+dEJpNAsZjmZg/N44eDXg7/BAIvGZLm81xWeFx2ln0dVhMzZ51aDuWGCEa1Am6LATq5FB6bCeloiGv+eu2kD0ByMIVuMihrAtSurRVekbkj9nxqA+/R+PfeGINOGW2eIMpxficNn9j77s6Qh0PpebRz6HBnhK1eE51aAcVEBAGjFo18EpmQj+cHHx4fsmffP97Bwwe7HDVozmBvZ4Cjg11sbw2RT8T4/Xb3tpCKBVmb6PaaiIYDKOaSUG0IIV1egtOkRSro4e4mSeI055BIfDtdxG/d+F63Ax6XgwWQaDSIHHlZKsp/HIV5MnwiHuHIQCUcESCqj90OK8/h03NcNjOUUgm0kg3YDFpYtCq4bWYkIyGUsmmU82nO3fl0lEUayvFUqpFcS+Tu+HgPTz98xB5PBtiZULivsvFpN9DJiBepiRXO+dTtO9rfwYunTzAedNCpldBv1ZCP+FHJxBCzW9Cg6iQVRZFa16Qe9pp48uSIewLcK9jqcbQ4PphwC3pnq49yOo7tyQB+uxkeqxEl2qBSLXAFRH0Ni1wMM/U79Brkgx7YtLRpxYZs+tvrHn7rADAZ9SzHOm1m5LIpzvdetw0umwl+r4PFn3g8zIanEo+8nzyfo4HPySmCvpeJ1qHblEIrl8KkkkMvWkPQYkQ2GgLt/6MBUQrZVN+T2kfjXzvbAzy4v49HDw7x4PiQdwiR1NtrlrDVreNoZ4S9cR+TUQdbfZJya+y1O8MuRu0G+rUSytEguqU8mrk0KrEgsl4nqukY2sUsurRrqFlBq1rEi2ePMBl28PjhIZ48OsA+ef7eFh4c7XD06FTyyPhciNjMcGrV8JoNKCXDSAW9CLnsSEX88Kg2oRevwyTfRJX6BT4Hl7apROT0AsDjdnA7NBwKwO9zQ69VwWbSw+O0wu9zIR4Jcvs3FPTC6bDAatEzWaQVCLg5ElDtrFcpoJVvQi0RsfFtMglibjtqxRx7EY+OMYFLoFrMgMbHqWc/6jbRa1TQb5TRJYMmY+hUihi26myUdvVEAygmo+jWyqgmY6jGI6hEgigFvCj63WjnM6jFwsh7nRjWSxg0Khh1G9wdrJdy2N+mVFLnXUXPnpJmsI297T5XHXvbQ2wP2yjTeJrLgqBBg4jHgYjFiELQi7jLhgjNMZqN8MgkcMk2EFTJsB0LYDcRhNthY+JM8vipBIDTboVRr4HFpIdBq+K5PirnfB4HopEAiCD6PS4e+LRbTSDA0PpmuJPCPxFBnVIGuUiIzZVF2OQS+Ew6lNIJBG0mBMw6eDUKBO0mZOIhVAsZ5JJRxNwOxK1GZJzWk+WyoZpJoZSIIeV2ohQPI00cxG5FwmFD1mlHiQQYMrzXjYLHgYLXgZLPjZLfg34ph1LQi7TPjUo2yQ2nciaByZBI4gTPnj3C7riPRjGDUbeO3cmAhaKEw4KwXosY7T2I+JEMelDyOFDxORG3mpGNheDXquCRS5G3GVFz2bCXiOAgFYJLr4HHZf3WtrV/6wCwmPXc5rVYaIJHBLNBC6fNxCE+EY8iFovAYbfAZjFx7nc5bXDYTAiH/HA5rVwJmPUaaJUyiBcFUApXYVduwqtVwCndgFcmYY8J6ZTw6VQImvTwaZQIUfvYqEPWpEfOYkBCr0ElGkIxHEQ24EHcbkXYoEVEr0PUqEfSpEfRYUXV70Et6EfF70GF5gL5ey+a8RCDIOd2oJqOo1XOI+33YNRp4nB3jF6jzD/P+d1olbJoFHOoZBOI282I201IUZ6nFOJzoeSxoxX0oEE9EIcFeZ8LtYALrbAXda8DHb8Lx+kk9hJBZCwGHoPPZWJIp/7tucC3anwHeb9RC5NeC5NRC41azumA9tQF/G6EQn5ug7ocNq73iSuYjDoEAl543PYTIuiwwGLQQbiyDIVoHUalDFbxOoJKGaIaFZIGLdImPTJmAzIWI5J6NZJ6zZ+MzwAw0zIgYdAg6TQh6TAh4TAiYTMgadYjQc+xmlEiAHhdqAe9vBpUXQS9qPm9KHncKHjdaGQSnDryPjda+TR2ei200gk0Qj406TWRAAq009jv4RCf8TiR9rqQD7hQ9DrQCnvQi3jRCXnRCJyAoR50YZgIYScXxy61t4Nu7Cei2IkF0PLaodOquTylhtapA4DJpIfFYoBBr4HJoIWNSzsznA4rzBYjlAoZA8RuMfHvrZwGnAwK0g4oglBbV6uQcRNII16HXSZG3KBH1mJGzqRFwaxHy+PgVTTpUTLrUbYYUbWZUHVZkLPqkbPpkbcZUPM7UPHaUfXRo4N/XnLZUHbbUSXvi3gxiAbQjfp5tQgEfi/KQT+a2SQa2SSniFY8hFElj346imEiwqsTDaEfj6AW8KDkdqLgciBuNiJhNjCh64Q8GMaCGMWC6IY86ATdGIQ9GER8GMf9OCjEcJiPYTsexGEyhH7AgY7PAa1GxR3EXC5xugBg1Guh12lhICHHoGUuQAamkEaG1+nU2BRvQKtSgKoF0snpNWR4Sgl2mxE2ixFGnRom4g8SMUySDc73UYMOabMReZMeLa8Dk0QEdZcVRbMeTbcdHa8DXZ8DTa8NaYsWeZseDa8D/WiAw28r5EE34jsJxQE3erEgBrEQr2E8iEkygnEqgn4yjFEph2Exh14qgVEqjr1CGjulDPaKaeyX6TGF3VwKW8kYdtIJjJMxDOIR9CjlOO2o+TzYSoSwnYpiK04ACGAr5kc/7MUk5sdeOoq9VBj3Syk8rKSxl41gEvUxAJoeO9wqOYwGHbKZBLLZf9tW8bdmfDK8Wq06MbyBUoCOl8NhhVQsgs1mxaZUDIVcCq1aAa1aic2NDY4EZHwijVQC2cwG/r1iYx3q9XXY5FJ4tUoENWrkLCbUXTb0w34MQn5kDWqk1ArUHBYMQh5sRX1o+WwoOUyouy3ohzzoRQMYxILox4LYpro8ncCEH0++3s0mcFhI4qCQwk4hhUkpg0mevs7gYbOMD9sVPGlV8LBRxHE1z+uoksNhMYvDQhZHxRweVAo4KOewW0gzCA6KGTypF/CwmsVxMYX9VBT7qQi2CXRhD7YTQeylw+z99xkAUUwSfrR9NpTtJuY4ep0GPq8bmX9jVfBbA4DFYoZSoYBOq4Jep+Y/gHRts0kP8YYIDrsN8/dmINkQQaNWQKNUcASgn3OqMBnhsBhh0CohE69jc30VKrEIRpkETpUccQr1Thv61FgJ+dDxu5E1aFAw6ZlETciLYwQMJ3pBFyZRD3aTQYwSEWynY9jJJHC/nMdxKYejUg73K0U8qJbwqFLAk1rhxGCVPO5XMnjcKuFxq4pnvToD4GGjhAd1AkABxxUCQBZHJXqvPB6U87hfymO/kMEkm8B2LonHrQoe1fJ4Rq8rZ7CfjuBBNo7dZBhH2RjuFxK4n4/jIBfBYSGGvUwEk7gf3YCDARDVqmDle2eAw2E/HQCgpXgFAMr/BAALNXYUm0xqKPRvCNd4PIqeI5NJ+bQPh83KmyjoD9arldwAEq+tYFO0BpVEBJ1MymkgqFcjZ7eg5nGg6XOj6rGj5jSj53dgHPVjPxPj0LpD3pUK4X4+gQfFJI4KaTws5/C4VsSLdg0fNsr4sFHCx50GXvZb+KhdxbNGER/W8nhYSuGokMARh+YMnjYKeNEs4qNWGc9bZXxYL/L3j6t5PGtW8axVwfNW5eQ9KUrUi3hcL+JZu4oPq1k8q2bwqJjAXiKAo2wEB5kIXtTy+LhZxpNqBk8qGfyyV8OzVpE1AEpjdY8NEXIirRpm4799e/hbBQB59kl4V8BiNsBk0EOxKYaaQPAq7JPX6zRKmAw6eNwuWExG6DVqqOWbUEjFEC4LsLYogHh1CRqZBFqpBOZXAIib9SjYLej4fai4bWi4LBgGXdhNRnCYTeAgE8dOIoSDTAwPi2l8WM/jRauMj9sVfNKr4bNhE58Pmvhi2MKX4w6+3O7i81GLf/dxmwycw/MmgSGHZ40CPm4V8Wm3ik86VXzULOFZrYgnlRweFjN4WMnhQTmH+7yy/HhYyuABgaNVxYNCEsepEF7U0nhUiOJ+PsqA+LxdwWe9Oj5qlfCyU8bnWy287NfwuJzDIOjhFJc06qBRKU+fDqDTqKBWy6BRyWE1m16RPeruaTnMy6ViqFUymI06FoEcdjNHB2L9GoUcG2vLWF2Y5xRgUCugkoqhXFuFRSaFT6dGiDRzmwUtrwdlFwHAjFHEiwMyfi6BnWSYo8FuKoKjfAJPG0V83K/hZb/O67NRC1+MWvj1pIevDoa8frs7wFe7Q/x+f4Tf7Q7wx4MJvj4Y44+7Q3y1O8Dvdwb4atLHF8MmPuvW8bJdwbN6gT39YTXPhn9QoZSS5wjwUb+Bz7c6DLxH+Sg+bRbwSTOHJ+UkvuhU8JteA5/1agyqT3t1vOxU8KxZxMNyBjuJMFc2aYvpdErBFPbVqpMQT6WMSiFlQ1vNFAkkkG+KYdJrOC1QdWCzmqGQbUIll0EsXINYuMotYNoFpJbLsLEkgEq4BqtCigCJPno11/Blp40jQdNtxVbUj4NskkFAHjQMezkiUEp4XMvhRaeCj3s1fERe3DrxuF/v9PCb3T4vigQnEaGLr3YJBEP8/eEE/8PRNv7+YIK/O5jg749obeGr3R5+v9PDl6MWXvbqnAKetir8SGH/WaeGLyY9BtGXkw4+bRfwq14Zn7byeF5N4fNWGV92a/i8Q1Glgi8GTbxslfG0nsdBhohgCF2fCxmb5XQC4CQKKKFWK9jYlO/J24n5q5SbXN4ZtWrWAcj76feSdSEkQiHkkg2oZVLIxBu8VmZnIVyYg1Ik5IaJVS6Cl8QgnRopEoIsRpSdFnSDXowTEWzFghw+Wz4HxvEgdtJRHBdSeEJ5vF1m47/sVPHFuM2e//uDEb7aG7LByVifDZr4zXYfX2y18Xm/gV8NmvisT6G6iJftEr7a6eHXWy38btzCV+M2fjVs4tN+E5/0Gvhlr4GXnTqD4ON+E1/tjfDZsIXP2kW8rGfxUS2ND0sJPCun8AmllVYJv+yUOap82q/jw2oOu8koBmEv2j4Hsqc1AtCSiEVQ8H4+MSglUBqghpDJoIFBr4byVRlIUUK6IeK8r9eoOA0oNqUcKTbWViFZX4N8Yx0K4Rp0G0JYZSK4KBUQCLRqlkyTFiNKLgdqXheaQR+6VB7GQhjFw1zXH5cyeFwnhl/EEyKBrSo+H7bw63GXDU+h/3c7ffbozwcN/N3BmNfvCASU+1tFfFTPnRiuXcSLWobXR40cXtTzzAsolz8nElnN40Epj8eVIr6c9PCkWsSTYgoP0kE8TIfwspbFF50Sfjtq4veTDgPq97t9/HrSZoDuZWLoEAfw2JC1nmIAiETrEItFUCtlvEjoodEni5mIjRxK6vAp5TBoNVAr5GxwSgEq+SZkkg1OA2KOCquQiYSQr63AvCmCXSmBXSKGRyZFRKNChpY1bOkAACAASURBVCRdswEpiwEZUgC9LpTdVjT9Lmynk9jNpXFUynCeflQvcLn2qErEroJfdmr/RAaJEwxb7NG/HrXwh90B/rDTx+/Gbfx6WMfnHQrhRXzRreCTVgEf1zN4UozjIOHDfsyLw3QIx7kYjnIx7GaS2M+l8Em/iRetGj5plvBxNYMv2kX8ftzB3x1s4W92evhq3MIf9gb43c4Anw+beNmr4qiYZuWw7LKy4HVqAbC8tMiCj0wm4SPdqBqwkjSsU0GhkEEq2WCGS7t+15YWIVpdgXR9HZK1NYjX1/h70eIiA2BTuAr5yhLMsg1YFWK4ZZsMgIBShpRRh5hRh6BahoBahqrHiaxFh5rXwVFgJ5PGUZFYeY5BQPX/g1IOz2oFPCOy1irjk24Nv+o38EW/jk+pSujVGAx/3Bvibw+H+P12F78e1PCbYR2/HdbxZb+KL7plvKiQZ4dwmPBjL+bBQdKPh8UUDvMZPG9W8Yf9MT7tt/HH/TF+N+niN6MW/mZ3iK8PJ/gDpZJRA7+ddDgSvWiXTggj7VWMBVFyWJD8FqeDv3UAzM3NcQQg6fdE57dDT8aXSaBSKbC6vIT52Xu4d/s2VhYFEK2sQLRKXr8GuUQM2YaIp4HkYhFECwtQra3BrNiEX6dGWK9BSKOGX6VCTE+dPQ18yk24ZRtIGLUoOEyoemzoRQLYzqRwXM6wIEPrqESqXAaPKzkO2R+9Kg8/7VTxkmr7cgbPqWxsFvHlsMG5/ot+DZ91Svi8V8bn7RI+IUbfyOGjSooZ/mHSj92IC4eJAL/+qJBlAHy1N8YnvRZ+NergV5ReenV81qni11ttfs+XjRynF+IYL7s1PKnn8aSRx0EhwQQ3eZo5wPXrH/DMu8Vs5AYQhX0u/Swm3hJ1/f2rmJ+dgXB1mSVi4gFqUgWVck4FCqkE4qUlCGfvYWNhAWqRCFbZJsLk7d+AQKfmrwNqFTwKGcJEDC0mlDw21P0udCJ+bGfiOC6n8bieZx5wn04JLaTxqJLFi2YZz6iurxfwrJbHg0IC2ykijiHs52N4Uk7jee1EyHlWSeNZJYUnhTjup0N4kI3gcSGB40wE21EvRiEndhN+PMinsJdJ4mE5j89HbXzca/DnEEcgUD0pZ/AxfV3PszhESiCJT5T/jytpHFdO0lWDhmZMpzgF3L0zg02JGAa9jku8TckGnE47FHIZrr73Hm68fxVSsZiJIhFCjVrJipdOo8GaYAGCu3ewPD2NjUUBZMI1qEXr8KgVrAH4taQFnOgBQfpaq+UeAUWCjNXK3bhG0HMCgFQEh7kEizWk4BFJe1Klrwt43izjUTWPj0jnrxWwS0Me6Rh2cwnOxVQ9HGUSOMolcJxP4iAVYYVxK+LBXiLEci7Jzr2gE92Anb8mmXcYDWEvk+DS82mLFMMcHpbTuF9M4SAXx/1ikt+PdAoq+Y7yKTyskoaQxVE5wwrlTiZ2eiPAB1O3IRAsQCyiSkAG0doql4R6nQ6zMzO4eOEtrCwvQUahnoY+1UomiTqtBkuz9zB7+xaW781gdXb2BAArSzBSN1CrQkCnhl+t5GEO8pCQXoeQRoOwToeIXouUxYKcw8H9/H40yAZ9XCuwRPu0UcKLRglPCQiNIlcFjyk1VPOs6N2n8F1Mc6qgxtBuKnqiJaRj2OfOXYQbOmzoRIhX10/taBKlLBjH/LwGkSB20zHO5/er1DBKcb9/FA+iG6Hr8qEf9WMQ9XO+Pyok2fjH5SyXq8/bVY4CJbftdAJg6tZdCAQCiNbXsSnd5CaQbFMK4doafnHhAq5fu4qNdSHWV5c5MghXlrAhXMHivRkIpu9gdX4WK5QeBPOQLC1CtSSAQyaBX62GT62EV6VASKflRSNXFAHCupMpH0oBOYcT9YAXk3SEu2xPW1U879RYryct/+NOnWt2KgcfN6j5k+XUQDed0gQBhruC1FNIRbGTpkZNFHvcwElyRCAQtDw27kPUXSY0PWZsxXwYRrzYioewn0vggDqABKRcAuNEGN2wDw2/Cw2/E82gm9n+JBnGYS6JI4oQ1Syetsp40a7iRafGrz2VALh95y4WFhYgWhdCKpVBLpNBKt3EzRvX8faFC0z+xKJ1KOSbEK2tMPFbXRRgZX4OqwIBVhfmIFpZ5CUWCKBeXoKdWL9GDY9KDo9KAYdsE26lHF6VHF5KDSQRa1VI04SP241m0M8AIPb/lNS/fgMfD5oMghftGi+KAIelFHvoDpVvuSQOixkcU0uXOnqZGEeQ7W++fgUCUutIeiaxhoxfcmjR9jswiQV5qmcYDWI3G8Ne/p/eY0jzCAG6LjdXKLSoVKUoQLMCW9QmzqdwWM3iIXUQW1U8rJ/SnUF37sxgfn4BGyIRpBIpJBIpFuYXcOHNc3jv8rtcAdBpGetrqxBSuUcgoM0RG+uQUu0vWsfGyhJWZ+5CIhBAwRFAyh7uVSvhUshg25Twz3wqBYMgoFEhrFej6LGjSUpa1I9hMozdfJJbt4+aZe7r7+WS3K8/LGe5ZdtJRtFJhnkurxn28xzgVjLCYlI75EeXZggSIfSifh4eocESmuRp+V087VPz2lHx2HjOj4dM/C70In6M09GTlaKpoRCaJO6Q9wfdPIFUcNtQdNtR9jhQDflQj4bQSsfRSSfQySSwXS1i71s8P+hbBcDs3CKWllYglWxCuL6O5eVlvPP227j87rv44MZ1Pi5FtL6GmTu3cWdqCsLlRUhF6wyAzVfGF87OQLqy/CoCLMKnVnG+pwhA3m+TihkEboUMHiUNh35TAThQ9bswIoKViWErFUU/HeObSuNchaAPtXwGxUQMxUiYd/tUadNK0I9MKIB0MIC4y4mI046Q1YywSY+0w4KM3Yyii4xmQ8FlRd5h4e8LLguPmNGoWSvoZePSpBGNlDVDNIHkRYsMTDuegx6+trzLjrjTjpjLiWwiilTQj2wkhGw0jEIqjmI2iVo2hXomgUY0ePq6gVO372Hm3jxEG2LMz8/j1gcf4N2LF/HelSu4e+cOlpcWsChYwM2rJ1yAUgGVfQQAagKJV1cgWV3G+vwsNhfmYRSuwbG5CY9SwY8EAEoDTnqkNKBWcHSg5knOaeUoUKPxL9pNHPQiFw0hFw8jEfAiGQ4hGvTxptRY0I9EOIBowA+f24mAmw5yCiLg9SAWDiEc8MHvsMFrNcNn0CFk0iFi1CFq0CBu0iFh0SNGj2Ydck4LezkBkBaBI0fj4HYzCk4rci47cjQR7XYg7HQiRVvbIiHEYxF4vbQNTAelUgmzwQCb0YAwXYvHhWwkfPoAMDMrwPw8RYFl3L17l41+64Mp3Lh+A7P37oH6BGsry9CoVdCo1VApFPyPGDbFImyKRJAsL0EsmIV4doa93yYRs+HtEiksGxtwyDfhpCkiOg6GNolqqCTUcdmUsJoQ1OkQMuoRtloQ9brhd7vgsVvhtlphNRpg1mmgkEohFUuwvLSM6Zk5zM0tYmVlHTK5AnK5HDa7HT6fGwGfF0G/Dy67DVa9DkalEhYComITbrkUboUUQY0cSYseZa8DaZuZwZG2mZAw6ZiXBGjG32SEx2KG3WKG2+WC3U6DryYoFEosCJYwdWsGH0zdwZX3bmJFsASRYBlK0cbpTAHXb97G8soaZmZmcfPmFK68dxU3b9zEBzensCQQ8FpdWToZCVOpWPMXLi9xR3BNIIDg9m0s374F8dwMlEsC6FZXoBeusfEt4g1YJBsnaUC8weDwqJUI0Zg4nRRC84jrIiiXVyFfE0K6KsSmWMx8ZG15Fffu3sX07buYnp7Fe1dv4MLb7+Hsmxdx+b3rePvie3jrF1dw/eYd3L49g3nBEsRiKeRyJbRaHQxaHaxmMxwWC8xaLWTLy1CvLMEl30TUoEXSZuZWtU1CDSvqWWzArVHBa7XCY6dNr1bIZXII10W4N7uA23dmcend9/HmubfxszNv4cxPz+Ots2/jxpWrmLk5BcH0LO5N3Tp9EeDW7XsMAIFgEZfeeRdvvfUWLl96F/Nz80z8VldWuEewuSnm2UDBvXs8R0i9AMH0NKavX4dw+jbkgnkoaVMIg2CJje2SyWCTSmCViGGjYVKp5AQAJh0LRLq1NSzdvo2ZqSncuXUH71y8jOvvvY/bNz7A3L05TL1/A9cuXsI7Fy7izbO/wE/OnMOPfvxT/PCHP8aPXn8DP/7RGfz4h2dw7tzbuHz5fVy9egNX37+Jubl5KGQ0pWuA2WyGXqvlhpZobhYWiZhFKRoFD2jVvH9BtbwItVgEq14PvVYHlYpmI7QQrglx7dpNvP7a67hw/gJ+/PqP8cYbZ3D5wkXcvHwZszduYPraNUy99x7On/sF3nnn/dMFgH948RBfv3iIf/jlM3z97AF+/rNz+NmZs3jv8hUI5udwb+Yei0BS6QYrhevUBBKLoVarmf3fu/kBpm9cg3RuFvrVZaiXBFAvCmBYXTnJ+XIZXHIZ3EoZRwAihUG9lkEgXVzE1OWrOPezN/GLC+/i0qX3cOXdK7j41tu4cuEibly6wsa/efky7l69iqkrV/jnr7/+Bl5//fWTx9de/xfXvXuzWBMKIZPJoNZoIJPJIVhcguDOXeiFQnhVSsRMBoRoM4xICOHMPQiXlrC6toYNsRhisRgrKyt8FC6lwn/2/vz5b+CN18/g0vkLOH/mPM6+cRZn3jiLX1y4cnoA0E2nMCmXMCzk8HjQxpfHu/j62SN8NOzgzTfP4e7ULczfm+UoQOogGX9pfh4q0v+VCgiXl3Hn/au4feUqRDPTDAD96hLMonWYhEI4Nzc5AtA8gFu+CbtUzN5npQGSxSVcvniJPfrcm+/g3Ll38NMf/xxv8I39Zp3BxbPncf7MWf7+T4Z/7f9/nfvZOVy+fAV3707j7p1pTE/P4OrVqxBO3+W0FKENKw4bgjTptCRgI5554wxuXP8A5869hXcvvYsLF97G5pIAG/OzmJ+6iQtnzuC1117D+TNncOvKZb4Wui56Ha03z759ujjA+TMXcPYM3eDzcCjk2KXt0+M+fvtoH5/uDnm+f5FEIOE61leWuQG0ODfHbWORcI1/d/u99xgAsoV56FaWYVpfg0W0Dsv6GhwSMZxSCbxKBWv/TuosLi9DODuHSxcu48wb53D2Z7/A2XMXOaeSwSm88uMrEHxj8Ndeew2vfe81vPXWO7j87g3+/oN334V8ceG/CYSf//zn+OEPf8rvNXPtKiziNW5MpWxmNAJelqhJtZy/cePk8157Hf/xP/xHjjir03f5+5lb87jy3gd499338fbbl3Hj6gdw6cz4D9//Ad77xS/4OXTNZ39y7vQAgIz+Ot3U117jR1oXzl5EMejF434Lnx9u40G7BINYyDq/YGYGa0tLEMzNMg+griBJwbevXMbC1BTkggUmfzYJbZ2Wcb4n4/Oj7CQSECdQLC3y57DH/eRn+NlPL+AnPzr7z43+2uu4cekiX1vcE4ZJpcPUjbt4552reOfyVbx/9QNMf3APTq0eP/jBD6BaFvzLAPhTqD5ZdI1BtRIpqwF5lwVlj401AaoANmZm//Q64gNUzsZsdqRcHszdpm7oHbz55ju4cWMW4lU53CY7bCo9vv/aD/D97/8QP/3xT/lvOhUAWJuZ4Zz1jeFP1uu4e+Uyzp+9gHLIh+N2Fc/HPexVC3DIZRDOz2F9ZQVry0sQra3xTMDdG9cZACvTM5DMzcG4LuQyj/IrTQG5ZJsMAo9CzuTPIBTCKFqHfHERNy9d/mehntY3Of38z9+EQrQJu96KqDsEq0oHwdwq3r38Aa5fv4P5uVXcm5qHz2CGRrSJ8z8/B6NoFdcuXsSZbwB0+TIWbt7EzLVruHv1CqcoSkUllx07mSieNAs4qqTQpx5ByI35m1NYnb7NHGVjbhayFRHcWj0CBhOECyKsLssxN7uG9TXaK6GBRWOARLCKoMmIN370Bn7y45+AIuqpAIB8ZRVn6Ia/9hounTnzJ+TLlxfh0SgZBBXSx6sFPB920YqFIFs7Mf4KlYTLS1iYmcGd69cwffUKlm7fhXh2jvO7i7R+5Yno45bLuMzz6jWwbW4y+RLOzODaRQr//+Tx//WaunIVZqkEwjkBNBty2HUW2LVmbIp1EAhkWF6iMlQHyZIEWpEEwtl5fP/73+fyLmbScwUinJ6GTDAP/foqdMIVBodpfZXnEssuB+6X0/hk1MQnwzo+7lVwv5SERbKOgssGk2iNw//y9Bxki2vQiKRQCyVYWZRBuqHG6rICklUphHNL6CRiPP4upEHY6enTc0zc+tw8Zq5cwfyVK1ifmsLNi5dw5eJFuOhsP5uFa/S5W3eR8bqwXcphp5SDXaOEdHUFi3PzWF1cwvKCAFPvv89lEAFgc37+BAByGXu8T6mEV3HSCHIqlbDJZDBJJBDNz3PZN33tKhanpjB34xoWb01BMDXFWgLNFBjE6/Do1RjmEyh47NBt6iBZlUEi0kEiMmJTpIFiRQjBnXu8qbPq97PQFNbrUfC4uOdApadXLYdHLecKJKRWIm0xohPy48NmEV8/2MY/Pj3A10db+HxYR9So5d3HXdL4YxFUQkHk3C7UQn70EzG0oyGMUglsZVIYpJIIm4xQrK5idXoW2rU1/tuChlMyEmYQb2Bzdgay6bswrq1As7zIRojT/9j1OJDzuhA0amGUSpD3ulCLBBC2mrG5soJlwQIW5xcgXF7BHGkA126wIUUzMzCLaUfwSfuXZgBoBbQa+Kjs02jg0ahh3BDBtLEOo2gNG7MzWLk9hQ0WkBahXVuFfGkRlKKUqyswSWioVIas245BNoGtfJK19lYyhFLQzYdMuFQyJCwWtKJRNEJB+DQaOGQnIKQaP2pQI2bQIGXSoWgzYTsVwiedIv7H+xP8Xx89xP/++BBf7/V5NjCip/6EHhaJBIrlFdYMNoj0CgSQCBahWRdBRWLV0jI25gWYvTkF5dIKLJtSeNRqdp5TAQDN2ir0i4swLi/CvL4G9bIAsqVF1KNBNOhfulDDJezjVGCTyznP+Y0GiBYXIBQImAtINzZw/dIV3L56FfM3b75KASeqH3UASe71KDYRIYnXYkLUYkaSDpJQKWARr3M/gBpEhvU16NdWuBY3ED9YXmYAzNy4yeBamZ7G6vQ0pAvzEM3PQSyYh3BuDrM3KL/fgODWLahWVhE26hkIXrUaXpo9NOheTR/rEaX9iRY6fEKHbtCF5/Uc/u5wC//l5RP838/u438+mvDsX57n+iwcsTYFi5h5VRkQP7lx+QoWb09j/tZt3LpyDVcuXMLVC5ehWRPCtimFT6tBynFKBkJoYoeObfFJJPDT9q5XEzwU7spBHxI2C9RrK8wRzp65AN26EH6DDnqRCOLVVTb+yuIiblGz6OpVzJIQtLDAB0K5lDJW+CImA88DJuwWxGxWJB02pF12xCxmBHRaWGnrOesCJ/IwkUfyXLNYzJ+3QWnqxhQEt25j/uYtzN2cwt2rNzBz7SaLR0QYSR8gQunX6pG00RlBfuQ9HuRdDlS4wWNF1mZC7BUA0kYtH0RB4+A05v2/PjvGf3nxAP/bwz18Ne6gHfLybELMYoVXo4FetMEE9+blKwyCb+p9WsT4ZYIlmEQbMIlIWTQiaT8lAFidnTvxCpMRFToYUqNE0GhEzuOEfmPjhJFT7f2977G6Rc/30K5hmQwKUtc2NtjzqTQ8AcE1JkG0GdS6KeFQH7OZ2SPSLgcbn25OwmblSBAyGhEyGhDQ6+BSKmCjMlEug536BbJNqFdWObzSZ39zw994VSl8QxaXb92Ffn0dAYMOKbsDRa8P9XAEtSD18oN8vgD1+wtOGtfWImvWIWPSMhBoRvBXvQr+8cEO/o8XD/CPRyN8NWrxTEE3HETe5UTa5oBbpWbuYqW/e3EZgqnbDEJaG7PzsGxswilTwKVQIWaxIO9xnw4AXDh/iYWQIm3ZjgQQtRjg1+sRtZj45rLoQt7/xhu4duECLp6/CK9eB4daBZ1CAcX6BhamZ7giuHbpMku25KHkuQQCh1KBkMmEuM2CpMOBlNOOtPPkMUNfMyjsiNus/LkOhZK9n5dSCYdSxUu/LoFobgHLd2c5CixM3YZ8cQU2KZFLLSIGEzIuF4o+Lyp+PxqhEFphOgIm8urYGA9P8tDoedJAZxKdRAIaDfuwlMTf7nbxf758hP/paIg/bNX5sKdOmM79o7OGKJK4kLDZETVZkHHYETLo4dfp4JQr4VZq4NUY4JApOe1ETCYU3I7TAQBaGaeNT9ZqRoIIGnVM1BxyCRZuXmPjU52+evcuNmbn2BvJ+61yOdTiDQbBxiopgXO4+qqCuHvtBuRLS5zHLSQAyeXwUpvXbELUauHj3RJ2G9KvwMBRwWFH1GJhsNDNpRW12hBzuBC22OFQqOFUa+BS0VLDo9bCp9EjZrYhYbEj6/Sg5PWjFQmhEw2jH4ugH4uiFaTpIB+PatMBT2k6fUyrREKnQFIvR9GswSTk4o0i/8uH+/hPD8f4elzDYSqAut+DcSqGTiSMmt+PgsuFtN3Ox9HFzGYkrBbELRaEjRa4VTpYxFI4FUok7dbTwwG+WVTfNyJBuFQq2OQyrp2Xb97Ewo0bkM7PQy1cw+biIhM3j1YDvUQCtVgMo0YDpUzGJI0aNVcuXuIosDYzC8XKMnS0L3BtlcmRV6NG0Gjg0E9hkm4SASJpt3N0iNtsCJnNcGn18OjpLEELAkYzgiYTEnYHMm4P0h4Pkg4XQkZ6DzsyDvJOLwpuP+qhKLbzOewXctjNZ9CLR/kIOZr0KTosqPqcyNGuHWL4+hMAZAwqVKw6TIIufNmr4D8/P8TXkyb24l6U3Q7eoDKKR9COBFH2enhqmQwf1Ou5/KO/w681wiZTQL++ATdVAHYH/12nCgB5Nx2J5mHhxUWz/kuLkM3NQi2Y53JNtbrCMm8/nUTB6+FcqJcpYNbrIRdLILg3y+yYjH/p/EXOjeuzc6wJSOZmYFpfh1Mmg1+t4hFwYuW0MZQIIqWHFEUAm4XTgE2hhktrgEdvhtdoQchiQ8zuRNzhQtxBN9eGoNGMhM2BvIfOBwyiGY1hlMlhv1jEbj6PcZqUvSgqdA6Bx4GMxcQjYTQOljVpkdarkDWqUTBrULJoMfa58LKaxn9+foyvxw3cT4VQdtnRDvowjIV4PI1KSzp6LkXpSqOFS65gccsklUK9RpWLGAGDgQFA0e5UASDrcrBwQjUt1cAumRgWkRCOTTGcMikraXevXEE/GUUzHIBHp4dRpYFOJod4ZQW3rn+Ai+cvcAQgAFB3b+7mLaxNz7AuIBMIYJVQM+hkBjBm1CJu0iJBG0NpPo8OZfS6kfNQrrWykOLV6eHXmxA0WRA0meHVG+E3mBAyUzXhQM5FaSuGYTqLnWIJk3wR27kstrNpjFJJjgD1oI8BkLOaeFafBJ68RY+CWYuCRYeW04yGw4Qtrx3P8gn8zW4fv+uV8aKUQM1t41nBQTSI7WSYTw2jYVM6gi5hNsGrVMEuk0EnEkG7TnxHiRClMaoc9PrTBQAKZaSizd++i4zDwlJowkh1swYOqRiSuVncvnqDuUIj5EdAr4dsbR16hQLyDTFLutRToJKIAHCB1tmLXKMv374L0cwspwLH5gY8yk2EtEoGAU3ipF02ZFx2BkDR70Xe62aOQNWBR0vCkZYB59Ub4DeaELPbkfV40IyGWI3bK+axV8hhks9gkk7yGiViGMTo/D8fKl4nz/lVPDQF7OATyKp2A28K6dHGEJcZQ68NjzNR3vb9ZaeE33QKfHRNL+hBP+jGViyAcYImi4M8YVyj/5NkNiOg1XLY92l1CJvNiFrtCJjMXDGcKgCcP3sR/WQcHrUKJZJ98wkun0pOO5/o4VXIuF0cNJLE6oRXq4FMKIRWJsfm6irLwBfOXsAbb5xlAFC1cPHsRRZJiBRSDS+Zn2N9nfoCfrWCW7Exqwlxq4lLxaTdgiwNZNLRam4Xl4sEzIiFPN6GlMuFvJcOgAyhFSfPT2Gcy+CgVMBBMc/nAdKZf7vZJMZ0WEM0yHIvjXTTGHfeYeUhzxL9W3ubHnWHAT2vFcOAHdsRD+8Z/E/Pj/DVqIHf90t4kAnxXoFuwIVBxIvhqx1BdCYhTQxXvEQKrVzKEq8Jm00IGk0MiG/L+N8aAGh1YlH2xKLfg+PayZl63Sih3c0j0YR63boIUTr6jLaNLS5Br1RDLhRBKFjElQsXuE7nuYKzFzgCEAiuXrzMjR0CgWppkdU/B2kEShmCBiJTBsRYITQiQSeJelwoBfwo+DzIez0oeL2ohkKohsJoRqNoJxIYZtLYLWSxX8zjsJTHYTGH7VwK+/k0Dugxl8IkGUU/EkTD70aBlD2zns8iyNlMyJvUqNp1aDgMGAXt2It6cT8dwT88PsDfbrfxx2GFo0DDY0efokDIy4dE0g4hSgvNgAf1gBtFErRMdLKoiR9JBjaJRacTAI1Y9P+pBn24eP4SWtEwPuzW8ID+W2YpzceqNvw+NipN+VrFYkhXVqGRbkK1KcPKvVlcvXCJFTlWx14B4L9eJJcu37rNAyNaOjNAtMZDmRQNSKun3cIROk3UYeVSq0zn/fo9XNvXwiE0Y7RPIIVxPotJPoudfAYHRWL9GeznM9gj4xcyJyuf5g2jxOAJAGT0mFaFkFqGtEWPuEaGtF6BkkWDrtfCh0U8yEbxxaCOf3y4ja+3m/h1t4iK3YRhxMdHv/RonwAdRE09EdrDQCeT262IGmivo4Enml0KOeSLgtMJAFqDVAJXL12FcnkZ++Usvjqc4IvtAV4OO3xD2wEPN0Royle2uga1TA6FRMpaOc3s0djW2TMnXIBSwgkQ/mndunwFS1O3sDEzDfXiAk8NEcmkaEA9AdoxzCeBW0wouGj3jRMVj4uPbqVSbJiMYUx5PpPCmMJ9Lo29fIYf6TwBOv71qJjlAyAPckk+e6hOB1JS/U/b0eVSBP/f6r5sya0sBFH2sgAAIABJREFUu44vFQ6qJVazxKpkkskkkkkQIIAEQMzzfDFcABe4uJguLuYZyAE5Z5JJsthVPcjdUnsIhfWmkMPhsJ8c4U+w/8IP/gZ/gB+WY28kq7pkhdQttdRVD6eRZCXZVXn22cPaa68txDHOJjAvCuwJ3qgV/HSk4d8dTfCfvrzA//ybv8J//9fv8F8/nOMXEw2vaecAeYBBGzf08rUGrrQmC1oc1avoF/M829AR85ATcYTsP6B28G+eoDfyv97PRzhuq/xiJxUZv1jt41cXJ/gPX77D3/zia/z7ixME7HZuewph0gXIwu90w2snnFzHRE0KBVQRrClm3zWC7QebsO7swms0ImazIuP1shFwSKBJoVyaO4c0Lj6v0rDoeornWG0wMPN2PMCHGY1tTfHTxa2kyxFJyaylX3+9WuDfHO/jV0eUCNJEbwcnahUzUieT8jioSFhKIvalLHsAwgNuWgp+MWnjL4+n+G+/fI//8Td/xZf/Xz5c4M/nXRwrEt73VHwYdvC2Rwahsic4azV5oKUnikxzo9dPP5fdbd0PzwDG4/H/1lqp/zuvVxgRDNqd0G/vYlAqsSv+6ugAv76+xFdHS3itVoScTq7/MykB0WAIiXAUe89fwLC9zZ6AqNJkAOwN/pYXoH9G3EGfycQgUyHgZ+4gcfHrqTiPjHFIKOQwq0jrqaFaldW8b4YkED3E1/MpS8eSAbDe78khu32aFP71aolfHkzxbtzGcaOCqZTDtJzFQiZhqiIOqQSsFjAnMKiYxRutip9POiwq8Z9/SuJTX+Kvb1b4y9MZvhqonDBeqVWuCG66Gt71NLzpazgmeLtcZIPV0inUYmEUfO4f3uJIRVH+T6MeQbHg4Zf/djJaY/NUeol5LscIpqWErZlJI+nxwmcjCTgf4uEoUnHSD0xx29a0vaZtU1OIoGGmSd8mhX9XOPCbzUg4HMh53MxFKAS8UGJhrhQoJyBmz7KqYNWgGr7B+v7vRn18NaOJ4AXH/V/RwOhqyYpivyb3f7xkmTmSoh2KAjQhhq6YwplawUWrguOahFU1zwZwqBRYnPrrscY8gL/+8jUrif5yOcLPp128addxqSo4rkp43VFZxJJ0DckQjqtrWLktRNGMh1GNBnki6gdlALISQEVyIyvYkElZEQ2ZOMun8mvVVnHS1rCo1bjB0RJzKAQCyHh9TIqI+oLIpUkaJrc2AOLcPdfz66av6YIpMSR84CPj+OMhA9h6sMmJYcBsQcrhQNpFhuCCHPJDTUR5Hw8JSM1KIidxpCx6oZH7bePDZISfk/vnpG/J2kG/PiEZmQPWBKAybVktMaClZRJYKkW8GzbxftjEaaOEI4Xg4Cwbw3VLwc8nXfzb1YLFp/7icIafTXv80q+1Grt8LR7GaUPhXOBDX8M1ydwrEmb5LLpCHGoyDCUaYl7CD8YAFCWEouRFMmZBKm5BJGRCyE/1/Ba3cS/7Xfxkf4630zGXY6OKzGWOFAkzWSMZifGcHk3dpBIJxgJcNjvnAy4iaezqYdjScdzfePDRCB58xwjokKcgKnbSbkMp4EUjFmEDUBMRtFMxDMQUZmURx3WZ9wy86aos5fLzgzkrfv85KYifHuGXx0v2CiQvc9io8OXLYT8KAQ/2qyVckxTMvIertoJ9pYBJMcN7CU6bMr4akVzcGL/an/Arv2H1kBquSPOvUsBEFDAtZHChKuwVXlNeQjJ3hSw66ThayQgK/vVMwQ/CAGpKGErZj3jEglDQxC/f49HzcTl20BSzoJLw3XyM15MhTnodLslm9SrUvMgEiZg/iJDHi2w6w2EgFgzCZ7PDZ7MgYDXDb7HAaTByf8DwMUHcWIND1DX8aACGbR18RiOiVivyXjeasRBffDed4NfVzyUxLqSxkPO4btfxpttkfP6jB/gL0vo/PuDdASQvR+GikxNQDgdR9PuYbjaWsrhoV3HVrWFZKWIgptFIhFGPhbCoSDhvrvcV0LqXk5qMaT6NhZTDsixiXEyjFgtBS8WxrBTYCK5aNZzWSliWRAyyKTRIHt/l/GGsj5fLQUgFD+JRK8IhM/xeA7xuPWw2HSyWbXhcuzDvGiDFY9yqPe11cTHs4/V0jOvJCCOlwi3elC8AISlAzGQhyzKyKQEhp4PJnFGHHSnyEn4/dwpNuh1m76w/d7hioFBhvj3EQ6RcQPJ70YiHoaViGOUEPuN8GlMpg6UssgoneYG3oy6+oiqAFkMcUCWwj6/IWHsaS9HWYhFIAR9SLge8RhNa6QQmMukUi3xZcbsdDhr4MJugRIOY0g7gWgmLUp5fc97nRC0SQD+TQC+bZOOc0rKqQgZHVQnHtRKO62XWNRzk06hEw9wy/94bQKMWQUkKIBq2IOQzwusxwOnYgc2yjd2dDbhdu8imrMgmrSCyiNNoYTz+pNvBa+qvT0aYN2scIjLhCIQkqYSJKIgibw9xvnzJ3LwECUfQ3IDzFXPy6bLp4q2UJ1COYNDDaTQyh5BCh9to4n5DkbiJQT/UeBjDXAqzQgaLksgv72MIuCElj/GAe/W06oUWShBGT80e6i8Qta2eCKMhxBCwmBmYogHVYsAHt17P8wL3Po5y3b3HOUrKbkc56EfR6+HvMW1vI2gmr2SBRbfD1HklEuCEkrwJgUlEKNmvkN5RhrmM5Mm+1wbQbsRQr0aQiNv5xbudu3DYd2AybUG/u8G/lxHsKGbtEOJmJCIGruN3tnYgJ1P88mdE5sxnUYiF8Wz7OXTbzxALR5GIxZgSRvE/RkOVfh/P3vktJvjMJjj0ek6QHMQxMJl4+MJnMTMF3Gs2w2kw3FYDHshBP2fVbSGGST6NpZxnA+CYLa+z8ffjAW5GPbwd9TjmH7eqGORzaMSjUFMxtG/X0pVDfr7o9cDmmkYWN+4iatiBb3cbju1NNoa1IdznQ1//5vk4K1Hn0fEoBoUMawos5QLmZVI+I5qYh8vf760B9LU42o0oclk7u3y7dYcvfXvrPgz6TQR8RhRFJ0qSC1nBikTYhETEiJxgYT4eNYt2t3aQ8HrhNBFHb83Lo8Qu6A8iFonBQQoiHpoV8MC3Z0bEZuVJYeIIuvQGuE1mZtNSeIg6bAhYLOw2ae6OjCF0+/1y0IcObeNMJzDKpbAoU/1OP+wc5wHnVA20W+seRUflzuW8UkKf5vlFmgnI4bStMi2LYOaky3H76teX6dbp4Dfq4TXswrmrux2J+9YjfPQOTIm7s6bEUQubBCXa2ST6BWpkiZxHdDMJdHMpNmLyat9LA1CrITSVIESBLl8Pq2Ubuu0HuHPnDrY278PnMaBwe/mFnINffzRkRDphgShYkeFPG7Nv6Yfx7dzeJ3j4xSa83gC8Hh+KYh65dBp7VA2YjAhZLUg47NwFpITQb7UhYHMgYLUgZLMh5XYi7nTAZzZz1UDfQ3+GSCj1SBBaKop+Jokpo3h0+Wse3+q2XX3SqjNKuKiWMSkV+AyotCOxyV6bu5aE0BFII0VCty95faHOHR3suzroNze+MxLHhnD7+ZEPSdUEXTgdUhTp3mobtzNx9LIJdPNpZgv/S1z+72wATSWEsuhCJGCEy66D0bCJzc17fPl0HDZS/bRAzNghJK1Ixc2IRagqMCKbtCGdsCIVsyCdtCIZNa/bvBtb7BXICB49fopIJMbSLIWcCEUusWRcxOtF2GFDzGVH3EkGYEXY5ULM4+OpH3r9ZABkHIG9PYQsVnhNFnhNZkTtVhT9btRiQQ4D1MAZcRVACycL2KfVsjUFy6rMSOGoJGJI+33LpPdTxxEpeHVUzKi7WFcwqJRwPJ9g0e+glsshT5vPggGErFaehPpoGPSp29jgbJ72HPXqCk4OFjiZj9EtZDEs5zEu56GlidhCotdxBpiUZBQe26vvlwHQ8qe6EkQx64DbscMJ3ubGtxdPx+3YRSpmhpCyIBYxIhw0MA5An9GgEULcikTEjOTtiYfNjOZRa5d6/hQGXrwws45gRaa1cWWWjCXRKFILz8aj8FvNCFotiDgciPsDSIVCPD9HP3wa56Z5OrqMpMPJ9G5ypUGrGRm3k2v4OlUEt6tmh/ksRoUMl3gfUcIRXbwkYiwXsd+osdsnYzjUGphrDRwMurg4WuLm4hTXJ4e4Pj/GcjLCsKOhkhch53MsbWul3GTPwhpE7ZqCoabi8vQI72+u8fbijP/cgtrKPY29DOUY5BlaQpy1kEhS93tlAFo9hJxgQ9BLEy2f8OU/eHCXL/7u3U/g8xiRSVqRTdgQDxs5NHjdu/C59Qj6DQj6yAhIBs6ISGD9NXkRYvqQBg71+MkLPHyog81OQhFZSJIEMSfCabLAaTTw0kiSiyMXT68+FQpyD4G6ZVQdFJMxFm0qxxMokhKH04nIKzuiTidyPKXkRiUSRJcXTGT5s0tik2nSGqSeQYovol/MMrWdBllOxwO+qIN+F8tBl/cBv7s8463hb68v8OHda5yuDrCcjjHudTDutVEt5NAoSViM+mwcR4sZ9mmj6OtLvHt9iTeXZ/x5dXKM1ydHWA27zJtspCKcFO6ZXjIW8r0xgEYjDkl0IUDx3ryerTcZiK3zCcymbfi9RiRj9KotiAWNCHlJ/VsHu1UHh03HQBAdj3MXPtcu/B49/11y0c1cAYfJzPQw3cYW/vT+JosyxeMJBANBJGIJ+F1uRAN+iMkE5HweUbeL6/xMNIqAdY8TQElIIp+IMvu4msmgksmgnM2gQivnSYLG50XS40A57Gc4uC+mmZWkCpSEUea9HiejX5MHOKbVr9MR3l6e4fz4CMf7c1ydHuNnP3mHN5eneP/2NT68f4Ovv7zBzfUFjvcXOJxNMCFhCNpTMBngcDLE+Yq8xCmOl3OcHh3g/ZtLvCUjuLrg9favL85wfjCHlhOgxEK8Oj4ZjSKbSmEyHv/hk8BWMwJFDiEWscLGl38Hu7oHnOmbzToEfAT3mtgz+N16+F07cFq3YTFtcX5gNm2x0dgsW2wETpsOXs8uynk3GoqfDcBlWo9orb3AfYTDtGEkyRo8hAlUZZkl1WiRpFzII3ILDmViMXip9KMcwLaHyCsbCoKAFm0qp0GTZBzVQh5yRkDW50ba62LJFiKntgRqF6fQoynf9PrlkxFQCFjWyjikIQ567TfXeP/mGm/fXOPD29d4c3GO67MT/PQn7/H2zSXevbnE6dE+aw/S59Fsgmm7hcWwzx7j+vQYN5enuFgd4uz4CFfnp7g+P8Hri1O8ub7AxdkxTg+WGNI+5WSEPRHtUqzTfMBw8Ic3AK0Rh1z0IegzfRPrTYYt2Kw6OB2769rfpoPDug27dZuNxGzYxO7OAy4LzaZNGHY3YLNus1dwO3dQEl2oltxQlQC2NnVwmy0I2h3M9Xv08An0LyzweYPIZnMoFgqoyGW01QbKtINYzKGUyyAXj7OAJKmIh1wupGNRKFIRzWqF5wtopwAZAHkAhQwhRSxbgcfMaaaApOUo5nay5AVIeSTJY9z7Wh3TVhNnh0tcnZ/g6uIUb19f4fXVBd6+vsDJ/oIv72cf3uH8+BAXx4f8umc0CHN5jqPJGMtuB6vFDMeLCa7OVrhYHeDscMEe4PhwH0f7C5yuDnF6fIST1SEuz06wPxkxm6kmJBF0udBpqZhNJ1DV5h+uF1DO+6DWYqjLUWxvrcs8/c4mnLYduAjwMW6xJzAZ14devNGwAd32fWxt3WcDoNdP5+Pllwtu1GQfGhUfGrKP9Xyolk+6PfDb7JwMkl6O1ergMFCSJE4E69UKKrR0MhZj5nClWEBeSCFM8jHZLNR6FXW5xF5CoiUTtFUkl0VFzPGKuQYri5OYZIZVSZqkMEYqI6kED5PSACklfoejHpbjEb/WN1fnOFsd4fL8lC/r/ITOCmeH+3h3fY7D+RQnixkOaEH0dIgzyvDHA5zMJzjbX+BytY/X5yc4no5wyd5hjOVogBlJwc6mOFjOcLi/YCPYn47RIU0hWpQVj2LQ62F/OYCmaX84A4hHrKiUA2gqMUiiBzvbD2C3rGO74Rb0obOje8CHXj1dPv2efmeDPYHdsgWHbf365aIHtbKXXz6d+q0B+CxU27sRd3uYA0Aw6bNnBrxyOJHN5FC+NQIKBVqjhmZVWXuEvIh6pcL7BCk0KMUC1JqCNLnQksQ5QMrjRiEeQykeZfyeZwRTybXYRDbDn+QNRuUSDnsdzLqd9QulCz89xupgH6uDJVaH9LnA6cmKL/Fkf84Xejaf4HjQ42TxaNDBUU/Dea+FN8s5blYHuDk9wmrQxn6vhQWVku0Wpv0uRh0N40Efg24bUzIIEoZoNVgJnZLb6XSAfr+F6biA09N/PnGIv9cAzMZtFPIe1JQIapUgtjbv8eVS1v+b5R/lBQ/u38XGg7vQERJIrt+4uY795m2O+zK9/LIXNdkLtRqEWg2gVvJge3MHHrOVNQSygQDCpChKY9pmOzweEpFMQ6ahDk3j02rU0SSZV7nE+wZHgz66ahOdZh1drYmmIrMULP0e5QOpoB/5ZAKCx80M4gppDSfjtxIzGR4371ASSMBPS+VXfbic4/hwifl0zBq+o14bo26bM/35aIhFr4uDyQiLXgdH4yFG9SpqYhZSOsmagJVIgKeUruZjHA66rC9cojyE5O1KJXTrNbSqCorZNJo1Mugqu/xuo4oybUaNRlkzuNNWUa0I0NTgH8YASEYtFrZClnxoVMPfufS/fagi2NHd5+rAatqC3brFFx/w6CHnXXz5ddnLrp8u/1sD0HESWAiH1rxAnxevTBa8eGGBw+FCKiWgUKDV82WUSxIUWebxMaUkoUakEmLR9nvQalU0SR9Aa/HlNytl1OQSMqQ8TspcHjdEvx8yDZgmYhzz1WScX3+7KGLa0TAf9rCYjDAb9VkcOhkKoN1S0ahWIJO3oOmdagUaYRREZknRLsQ0vG43zMaX+JyUyX70Y2zdf4CQ2YRCgmRpI7BbrXix+xzPtp9h+9E2dFs6OF45WCs5lUwy96FZr6FZqaBGKiSyjE6njVqtCtq45nb+ATiB+awHn9z9BFazDumUE1UlDK0Z+bsv/+4n7B2M+o3bbF+HsF+PfNoKueBCpUhJ39r9N29df63kRV5McU/AbbaiFI2ikojyoAeJPe0+fQ6SmY3FEgiGIohH49whJAXtZq0KjbQHNHKRAyxmEzSUCuRcDoOuhnpBRKOYR7VYQMzlQjYcYg9A42QkJkVyMSQbQ+RR0e/lV9emsFJXoNHrbNJWswKElAC5VEYkHGYxSI/LjT3LHl7oXzAR5dHnGwzz/uhf/eg7sC8fwv8/uYuvahV8qMr4oFTwoV6//f17+PRHn+LRxiNsfvEQT7aecKKbFwSkQyHWH+71uvD5fN8m3qZ/QZUwIeVCLu1aNzXu3kUkZIUiB9FqxP5OA+A8YPs+v/iQT49cyoxmxcV1frXkhUKXzwbg4ctvyF6IQhSJyJozaNWbIRGJU0iimoihEA7C+sKIF4Y9hMKxtUizkEZWSEOIx1GvKmgQfbpD8XOIUb+//qGxGniTEblSWlgniqkkhFCQ+wXUJBJ8PtYKImMQSXg6EUOVxrHqdRQytMRSQDQa5T1HdDnPdp6xvL1u6wn/+khIYpXL4SSXxVlRxJUs4Y2i4F2threyjBs6ZQlfqw38Wb+LX/Q6+ClRzjQV10oVl7Umbro9HNVrPBtJRrNnNiMWDnMukwqHUSU5mk4br+y27/ycDfp/HnbQd34RDdmQiNqRiNq+aV74PCaUix42ALUe/M6/FCV9FOsJ2EnHzCgXnGgqPlSKHiiSB5ri52yfLl2R3GwIVcmDTDKMBw/W8qiUB5Rj5I6TLL1OAk6kHLK7a4LN5kIoFIHb7cUz3XMmi0j5PJqNOmMDzVodzXodo34P49GA5eClTBq5WBQFEpxIxOHQG1hkwmezIRuP8wgaoYRkCDnSNMpmUaatpbksr7chSfuYw8ZydOMcMX3zWIgZzDIC5ukMFoUSThUFl7Ua3nc6+OX+Pv78aIWvxyN86PfxVbeFn/U0/GIywE9HA3zd7+MtqYyoGq7aHfz86BAfljP+76W2tdtqQ9Tvg0ikmEAA9VoFjUaN5Wf/9mPb2Lj7ezeCb75IEKMnYEYkSBZp4cYOXZDLoUc+64Zaj2HQiX0T8+nyqf4P+fXc5VNlL2qKB3LBAznvRkvxo1sPQqv50ZR9bACVggu5VBhG/c43/1EWvQm5YJBLIJJkU5IxxNwe7O68gMFoZQ1/00sr5wSJOBFG8qjX6igVJcjlEhvDoNeB1mxiPBigocicD5QINfT6mDTi2bNBIJl4pws+K7WLLQi/skEIBrmCyNFoWjCICCGGbhea2Qza+RxGRWL9FJk3sF+RcSgrmOWLOJIVnNdquGw08Lql4cs+bQ3r4Jq2lFUreK818GW7hTdEOm1puNK6OGmq+JLG0JYzXI+HmCky0h4Pw9nEgySV9CzxJEZNVBWJ4fPfbLT9Zr71ezcAcvHUnIkETchlnCgX3UjF7Az12m07yOc8qFeDaKtxLvcspk047TrEwwbIRec3rr1S8DDQw6+/FkS3EYBao9jvRTnvhJx3QhS+TShzgQA8FhsygSCPRqvpNOpCAvlgEFajCbRx5KX5Fba2X+Dp9nP4/UHuExQLRU4MCSjptDWojQa6nTYnbbTQgfKEyi1w5LTsIUGaxF4f9vR6uPb2EHC6EPP52JvQgmpywVGinPm8LGrZSKfRzK7X03dowkgU0cvlcChX+PKPlSpWioKlVMZMLOCoJONQknAklbHMF3BaKeOkImNaKGImlXGqtnFQoxV2AxxpNJTaAimp5IN+uF6+hJBKQczl+N+n31cxHVaRSZuRSBjgcn77WD6enZ0Hvzcj4P8Rs24URRdz+xRK0mQ/8hkXQgETXC49hJQTZckHQgbr1RCSUSP39CuSE6ri5yRPkbyQck42AMr4tap//foVKv/cKOcdCPodSCW+DSNZvw82gxnleJxFpQcSzQ5kWO8v+OoV9vZeQf9iD4+29Hj06BmcTjcy6Qyi0TiymSwURbmtEGgfcQVqvc5GQOUiJYySmIPd8BIJ2j4SJR1i2kUcgtf+Cul4HHnqGRQLPI5Ga+kED6l4ujlJzIcCbIwkTadlSZswj0lRwjhPQyAlHJA3IM0BQUA/lUY3IaAdF9BLCegLAoYkaClk0M/m0csWUIqEIQaDaJXLGFL1IksoRcNMZSuKIpLJBJSKhH5PxXgo4GAholS2QhBM8Ll3/7/uq8v1++EM3ClJfuSzLr54Ke9hdm+zFoJc9CIetSDkN0NIOFAuelGVw2g1IqhSTV/+mNh5uVlUyDhQFp1oyl50agH2CPR1vULf44ZSdCIccCMS8nwb0+5vwG4wQwyHoSSTPB9POoDUmKHMnZY6fP75Fh490ePRk+dwvHLD4XQjEAgiFAqjUJTW+wUSCdSUdXKYisb48mmjR05IsiI5NVhIeCpC84e0mSQchSRmuZSslsuMvkVf2ZB0ObmhRKwf4haQADWVqHIyxpVFW5ahFgusciJQmWp3QnR5IboCSDt8CJnt8BksyDjciFps2Li31vunE4/FuYytyzKaVMqmEix5Qy1rWjpRrSrodhvodpuYjBJYztNYzHNQqg6Iog1er4HpdvT6CYvR6x8gGjH9k43gjpByQMy4IIluFEQXSgUPG0BTCSOddCAcsECIkwH4UJaCDA9PunEu6+jlE8hDL58uv1GmxM+HVpXqfS8aChmJGzXJhUregWTcj82tDb78i+56ZtBrsaMcj6GZoanePI9xcXcsEePXwXr5XzzF4ycv8PiJHpa9V/C4ffD7A7znh/ICMgRZLvPCiUIux80UpVyGlM8hm07zKppSgdbW08r6LJSyBClPjaYyKqUiXAY9k0pYzNnt4suPENXMaWedQtr4UcoXIEsS5EKB63baIdRsNpHNpHn3AS3H9LhceGkw8mZUKuNoFxKFKTI6+hwOBoxe5mNxrkjESJgrFNqn2Gg00Gk30VLLGA1imIyTmE0EzKY5NNUAcjk7olHaxEosrC3us7hdO0gl/2ns4TvBgAlC0o5c2oms4EAh54Jaj6ChhJFJkZK3hfMBKeeBJPqglMJQa3Go1TBn9OW8i4kiDarzCelTfGjX/XzqCmX9Lih5YsXY4PfSqhgvGwANW1AHkOYGSQGjTfN7UpEXLTBKR/MC4SB/zxcbTzkMbG7podt5CfsrN/cLXtkdCAWC3DmMUeYvri+cljCVigV+WbSIiryD2mygToBRvY5qRYZckriSKIpZeEzGdalotTGtjAyAykaPiQimRkQ9HoS9pGYeYXygWq1yt248HmM0HmJC9PbREP1eF5rW4jq+3+9hPp9if7lgUIfAnW67gzIZh83GCGVTKkKWqOElQ23WUCBSSTmJfjuMcS+O8YCMIIPpOIN2OwSl5kUh52VvEArqEfDrEQ4ZIUv/+BHyOzTIkYpZkcs4OAGsSD7QoEdVDiERsXMIoHZwPk05gheyFEC1HGEjIKCH6n06FA7aVcr8Axg0Kfv3QS45IYkO5AXKws2wmogYGucFikSHshkMtx4gjm4xz7v5BmVaCkk9epJmzSLicOPBZ4/xxaYODzd3sPXUiOf6l9gjjT+Xl0s3YizRxVA2Tatp6fLppQvJFBsFNZIoJLS1FucIWktlL1CXZRSEFIIWK0K2PfYCSZ+HcQRC/2gkzWM082wi0dAdezbEIzGoTRWddocvfT6bYTAYYD6bYjoZYzQccCeP8hD6vdlswolqR2ujUa2iJIrIRiPIR0KoZARMx0P2DJVKCa2mjHLJBbXhR1cLYdSNYz4WcDDPYjEX0RtQqAuhIHqRSliQTJgRi5mZrEN39o8ygHxm/eoZ8q2FoDWjqClB1MohCDEH/D4Th4FkzI5c1gWp6GMjqNeiTAuvUx5Q9nDMb98mflqVmkheyEUHl4jJMHEGyHWZkBWivDiZ+u/EAvZZbShGaCO4yBKKXdLlAAATF0lEQVQv4wrt26EpWRHdXI7VPV9sP8Pnf/oIm4921wbwwsKhwPhyD1abA5lMjvsGVEqRu6UEkQ4BSISy8WtvNKCqKnuCwaDPr7+rtdCQy0hHwwwYlUiFvFbly6ct5axnSKtsqJ9ALn5vD0JsHQ6qZRnj4QiL2Qzj4ZA/9xcLLGZTrA4PuBKhr2eTEcb9PlTC/Sk0FQroNeroNhprA5iM0e10oFQqqFRooZQDjZofPS2CYSeO2SiFw3kGy0UB00kWk1kGnVYUZSqps3aeu0jHzSjmnOy5f2cDuDyt4OywiOU0h/kkywbQqkXQqoUg5f0I+mnax8ifFCqKoocrArnsY4hYqYTRUnwMALVrAS7/KAxQ3C9kLYiHiCK2i61Nmup9gEwyxCKLJLm++WCDewEkFUPTwjPasVeVMaRQUMhDo9ZvLIagzc4r1TYe6rD91IBtnZHLw81Hz/D8uYlDQigYRVrIcJXAJ5O77SOUINIKuXKJk7COpnG1QBczGQ8x6LTRoZIsGefLr0sFSIKAJolKKTK6pD04HEKIhCHlsqiWilBpXRyVbNR7aLUw7HaxGI9xNJvj/HiF86MVJp0uxuQNyEv0u5h0NAy7bbQbNfRaTcyGAzSkAnslCieUAxTzUUh5B2qKF5oaQoeMoEv5gIDJKMuhYDLOYDFKoF31opZzoJSyopSxQSbDoTto/W47Bu/MxmmMBilMBgL/4WaV3HsUWiMKYgELMTuc9l14XQYGiNIJB7eHKWmUi1QxREETQhTvKfmj8o+8AdX8QszEDaE1Q0iPjY0NBLxOXpxMcZ4WJBEhhHTxKAcYkQp3Yy0ATZu3SDePdH4JtnWZzPj0j3+Mh5tP8XjbgCc6I7a2jWwMO7svsbNrwkuzHU6nB7FYErmsiFKpzKSSfKGAcrnMiWGr2eSLP9ifs/vdn00wooSuUmZvQHw+VS5hPuxz63Y26OFoOYdSzGM6HGA+Hq75fuMBpr0ORjTjOOgwYZT4fWcH+3i9nGPUaPDfuxgOsJpPcEK0sNUB5qM+jg8X3F4+mE64cmk06mygGcGHgmhHuexCoxGApoXRboXR7ycxGgqYDNKYDDOYjQSMhgm05AA6jQA6mg9t1YuOGsCk/7tpCt1p05BHKw6NoF66TIUSwAi0egSqEkZJ9CLsNzMDyOvSM1JIOYMQt0EU1jkDDYn023F2+2vY14Nixo54yACfew1k7O7ssBFYzSZkU1F0CxlE7Dae7qHlji0xi3GljIksMyOXVqySWBKFgmoyjrjLzTJxRB///OE2Nh8/x6OtF2wElBxuPtZD94xWvxh5X7GQyrAB0KLHYlFCrVZDvVbj+D+bjrG/nGMxnXC/f9DW0KrIGLRUPtNuG5enK6z255gN+jg9XDJr55IYPidHuD5d4fpshSWtm+1ozAEcNCo4GfZwPOrj/cESp7MxBiREsZhi2evgw+sLXJ2d4OJ0havLU1xfnOD4YB+1ahWFgohAwM+eMpux8UxFo+FHWwtj0EuiP0ig04mh246j36YkUcBkmMRAi6KrkpcIY9ANYtyPYn/yuzGK73TUBCN8ZAAtMoBqEA0lyGVgsxJGQw4hmyI6OL3kbaaF09hX0GdELLQOC4rkR7+Twnwqoi4TFOzkgZCwz8DIIb363R0dTEY99Ds7iIV9bABU61Opl/H7GH6lKoAWNB80azhsVLEk1YyqzH178hJxt5uTMRoquf+nj/H5xlNsbj3n8/DxMzwlAzBYODdwOD0cBjLpHNLpDA+c5vN55hUsZmsDWM5n3PodtNvoNhuYDvs4Odxnfh+xeYjGdXN1jvPVAZNBidF7c32O66Ml3l2dMqGTaGJEISMO4OuDBW6INTSb4OLoACuSlz1Y4PXpCpcHC6xIGZV+fXmG10QhO9xHqSTB43ZBR8Ml9m1k0zZIkhO1uhftdgT9foINQK0FGaBrlELQajF0W+S10+h1Uhj0EhgN4piPEjicCZw3/NYG0KhRWUfunogfAdSUAJQSYfd+VAkUIi+Q9yARsbIBbGzcg9m4xRClz7PLFHAhYUdNDqLfTWExE7ksjFHsd+1CSETgcTtgMhqg313vxHM7aWYwjrTPzXN9ORrgpG0gxTxLvNFWbRJ1WrXqOGhUMaqUoSRTvEUjYnfAtrteuPCjP76PLx7q8IiM4PFzDgeUIG5vP4fxpR1uTwC0v9jnDyKZEphpTNs+x2PK3qeYjkecAxA7ZzYaMf3rcDljzh5d+E/e3+Dt9Tkzg4nY+e7NFU7mU6Z7nU3HeHdxguuTFfZHQyaJvD5Y4v35Kd5dnPHswH6/i8PRANfHhzg/OsAF/T2nK9y8vsLFyTH2lzN0OhrstnXnT6/fgJA0Q5IcqDd86Laj6HcTbARaMwRVDqCWp/wqCFWO8N30tQQmIwH9bgyDfgyTQQLjfuK3NwBF9qMq06X7UZa8fAgQknJujvVECq2U/IwSCkkH3C4DiC1E3EDqAhJMGQ6a+HvJmPo9ymwFhEkcYuMe/uNXN3A5rXDYTNjc3IBhVweTgRpI6348jX0RJExkza6U50SQPMBKbeCIVD8bVYaICZ8ntJBauV6zhT0BIWxkCLR2jUPCkxd8tp7oOScgZtELoxV7Vifcbj/jBjRvQHV6TalweUZJHDN/+j3MqEkzHTNP78t3N/jy7Ru+fHqtxBH88PYNbq4ucLac43w2wc35KU7mIxwQmWTQw/XqAFdHB3h3Se7+GMfzKY7GI/YiRColRjDRyK/OznB8dIh+v8slbDD4be8/HiUgyYlG3Y9OK4JBh1x+Ah01wjFfLQVQL/qhloPQKFRXI2jXIxwOht0oup0oxoPfwQCo/JPLfu4DFEU3SqKHkUGK7+T6xbQDUp4Mw89oIP2zaNAKr2s9AEIvnajh6STV/N61EXSjmE9SEDMJ+L1OeFw2uB0WbG48gNlIuPYGvE4bMvEgD3ZkvG5m5/SJmqWUMa+RolcN+/Uqj22NSmv1TAKMaHl0zOFgkIZm6EhK7k/ufY7PHlCVsIONzWfcPHrylJJEA3uHbZ0BOt0L2KyvEE8QclhALBZb995bLd7i3SXl8NkEB8sFjg6WzAkkEigxg9/fvGGK+NdfvuMQsJqNcUmTQRen+PLmAqv5FAezCXsCSvZohoDmAei1k2FcnR/j+vIUN9eXeE1zBKtDxguokxmNhmHQ7yDgc7MBhIIG5EUHlIoPLTXEl9/TYtxZ7SpedJUAukoQg1oUg0YKvXoCnWoU7UoYYzWGcTuKUfe3TwTvUK+/VPDy5edzLj40+JlJ2pGKWiAkbMgIDuQzdMFuNgRCBONhYsnoeSTc5dwFkUgJSaQykcbI2mqEY5HbaYXLYYHLboFum2jit0mhjihjLh71Svs8jP9rYoYNgMUdP3qAehXTqsKSMi0mciaRDwZ4lxALSenWe4DvfhMSdjg5fLxt5LP2Cno8fPQMT3Uv2Cs4XT5EInGUSiXODai93G23GdFbUF7Q73OIoByBjIEo33RxZATkCYgyTjkCUbopGbw4PeYkkc7Z6pCp4+9uiE5+hoP5BKujJX8vzQVcXZ6xARA6SPC185UVOt0WjMb1z8Xv00PK26HIHjQpEWxF0FHDGNaCGNVCGDVCGNXp6yhGzRS6tRhacgh9OYgRhYRqBL3ab48H3OFLzzoZCUyTuJNgRzZtZ52fWMSCRNTCyR5l/mQURSKKUsiQgsgk3fA4jdw2DvpNSCasEDPU8nWjUqRWcBSTvgCnnYZJLcwD0G2TfoDulmauQ8Dtghj08Q6+Zpa8wHr9KnmA03YLy7rCHoFWwpPoI/UJSD6VFlTR3h0qD6nnTwuXCFe4+8k9fPbZIzx8tMuX//DxLpeNH79+sv0cz1+YOSQEgyHk8wVkMlnG7YeDPobDPreXW2qDAR6Cck+PD/H2zRVu3lxyOCCv8ObyHGfHh9ifjXF8sMRyNsX+bIrjo32cHO3zJ33fYjrChMrDk/UcwMnJiiHiaIyYTklYTHrYbRa0tRrajTI87l1IOSsaZTu0qgta1YO24kO36mcjGDaC6Cm0WDKEgRyCVg5BkwLolwMYK2E2gm4p8NsbQE6wg06Glb1syCRtyKUdEFI2FnwiA6CZPprnI/iRvpdcPRmBXAggnXDB7TTAYd9FJExVgW3tNZJOlPMBxgmG/RScdgssRj2DQUYDLWeiFax3YbeYEPS4IceoIxhlfICUMpe1Kk41FYfsBRQWeaQJ3W4hh1oqwSPaGT9JzFlgNxKkbOYlUxQSPq51/fH9L/DjTzfw+AkZgAEPHz/H519s47neghcGK4wvrbz5OxqLMWpIr5JiMgFIhCB26P9/fx+ro328vbnG+fkJrukFH+3zq6dPAnSokqBEkmhpR/tLjAc9LKZjHK8O1lVGr4P9xYTnABbzKQpifs15jIRg1Ou4SuoPNHS6DTgdOoiCCbJoQ73khCZ70JX96MoB9G+9AL32XjkEVfRBk/zQCl50qRIrrQ2hnQ9g3v/tAKE7hZyT4zwfhoWdKFKDR6Rw4OQX/XG0mzBnGv0u5lyoSGtPQGBQMuqA26mH329YY9RRCxIRG7KCm/OLthrjbNZuMeLevbvY1W1hV7d9qymwCZfNvPYANKsniZjKa3lXCgNnnSYveVy1auwNpgrp6IrMISQiqRjycR5BegDE9PGZLRwSfnNr6J/86AGXjJ9v6NgzPHn6ko9u1wz9CysTTykkZKlVHCeuQQ65XA6VioJBv49Br4vL8xPs7y94RoD4iAc01HF8yHAykVDo92oVmT1GS20yyESunoyCmkfUDWzUG0jGUwgFInj4cJPzIf3uNnxuF/8sUqkID9ek40YUM1ZUi05okgedspc/taIbXcmLTtEHreBHQ/ShIXrQk/wYyEF0CJMpeKCKAcwGv10ecKda9vHQRinv5skdYgMpZR+fCpE6JQ9z/KjrR/gzUb6UEnkA+h4/aqUg5HwAqbgT8fA6BFAuQPgAVQ1UUVCPodtOML6wpjXdZfdP8DDRznZ02/C77VAzKX7hoxItgJB4+TJd/HG7gRNa16bVcdis8mKImhDnXURyPAzRH0DW60Pa4+VDSSLpBH1cD/9Hf/QpfvzZJu798WccHqhiWKOJL7GtewnDSztM5ldwOn3MNwgGI/D5ghwa2BtUiKqtQZapcmijXJahNuqYjEaQihJfLuELTFbtd7nUpKYTGQOFE/p7kkkBHocXHpefqeWffvoph0RKiIM+D5qK+M3PRogbIYk2KAUHVNEFNe9CI0tfO9EtePiSG6IXmuiBWgywQbT58r1Q8z7Ucz7E3Saew/gHDYDUPghgIEPgSy2tGUEq4wMhNCprYicxfojl25CJ7LHm9hNOQEBRoxJCRQoinXQxiYTCRzplQ4LEIFI2lMlbKAFGtShXWLOJNxgcov/ge/fucSbsddnQydOQZgGLqsxA0Df6vrScgfb1tGqYV8sYlfMstFBPxyFHoxD9PkihMBuC4F7v+XXojRwSfnN9+91P/giffbbJyeJjThCpt2DC02dm6HYtDDGTTgGHB48fLo8PgUAIkXAcYSKSSCVuPFHTiVBGUcyjVq/x14oicyuahlqTiTiHkVgsjkAwgpcv7fC88kCMp7Dqanj8+DF2dFswmQyw223Ip6OoloR1KRgxIp+xMIdSzbuhSV608m60Cy50Cm50Ch50il60JT/acngd+yuUFwTQk4LQ8gEUog7uKv6DBqA11o2f9WUH+DRrQdDvq40wf11X/OuZPhrroo5hPcR/hnoFBEaoVQIlIshnfGv3H7MgHrMgFjYhGbciTzSxagCaGsVwQMsi7vHF0w+AkkLyAvfv3+Pk0OO0rVetVsss3XLcokWNdRyTyne/g7OOxltIKDGc0Fq6goh6KgklHuND1CvyAtTJI4UQUhT7mBd83CJO5/79h1wyPn5iZE9AFcOW7uUaR3j6Ek+fmbCza8ZTnQFWmwuWPTtevXIjHkvCHwjB4yVWUgShcJTzBmpAUQih1+7x+GAwmrGzS3+3gcOM4YUVCV8Iw1KRvdrHut/jdcFhsyAeDaCQXZNuSVElTw2enBNN0Q2NLlzyrV18ngzADS3vhUaooBTGRAljvx7GuBbGqBZGtxxGOeGCqv7DyeAdQpK6apTx/FYtiI4aRVeLo9uJo61SU4hoYCGmhBMc2W5G0VFj6KoxtJsxdNQ4Os04Oo041FqEw0guTQQTO3sCQbBxaUmUM7UZQb+bRLebYlrTxsYD7GyvjYApYg9IZGptBItamd3+WUdlA1i1VN60RWtmqDwkz0CGQEbQk/K3G0KTnBvQ8EfC4UTIamOpGFIU293a+iY5XJeMn+FPfvQZJ4VUIj7efoHHT414/NTAn9R2JkOgUEFJJLGRHj1+Bt3OuhO5+9zMrGXDSxtevXIxYTWVSvNIG4lcGA027JnseKHfg8/u4tV1py0V520VxxoZwHrEzuVywmzUIxkLIptaD9+EA3rk0tThc3FvRav40K8E0KV8SqKXv379rZIfjUIQAyWEeSOMUT2Mwa0BiGE7GvUQysm/3wv8P9PSZUvRe63yAAAAAElFTkSuQmCC', 'Assets/Dragonsan/AtavismObjects/Icons/Custom/Weapons/Greatsword/TwoHand00T.png', 'iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAYAAADDPmHLAAAACXBIWXMAAFxGAABcRgEUlENBAAAgAElEQVR4nO2deXST95X3HwknJIFAKFkI+2pjDN53yZaszZIX7dZied839h0CIYHQACEsYQmL2Q1mN4QkEBoITZqmaZY2bdqet+20M5memXk775wzM+d93zN/TD/veR4tlhyTpm8SsEH3HKFHkmM98f3+7r2/e7/3/gRAiD64b/8Gd/0Gog+iAIiCgKgFiIKAqAuIgoBoDBAFAQMjCIzKvSFTpkwhCoB7XGQyWb/vr1u3jvr6+igABrfII1/Ket+TLmWBZwkIQ4THRw4TJk8ZT+exQ7z71mkefvjhqAsY1CIPX93yfle7+M5Dw4cJ6YlTMWmzeOXQCfjLf6BTpCL+fNQFDGKRBZ8lxYsrP6YPIIYI6WlJtNS6qfMVs/HFF/jLf/2O49uWhQK5KAAGmcjl8n6AEHhPNPmyIRIwpk9+CqdZzdK5NbTWuqiuruTXH/XAn28waeJYgq4iCoBBKjJx1YuaDj4EQRgSUHxNeRFrVs6lqc6LsVBLctxElrTXwX98wMZ1i5B+PuA+ogAYhCtfFvD1ku5lotoF4cnRw3FZ1WxYu4A1q5Zit9pISUtkTvxEsnNzePvKcf7p168z/JFHQ65DlCgABpnIwgI98erxUcOF4kIla59ZwLKlC/F4PCgVWSTOmYkiO43MxGl0tFTzf//556xa3Erf3UIUAINU+SNHjhRUyjmsW7eMl7dvpamlEVV+DhlpceTlJKNV56DJTsRQWMA7107x2Q8PMfThhyKUL0oUAANNZOEv5P3u71NmTaW1XMuLW57n2e9voqTUSGZaIsrsJPIV6Ri0uRg0WeSlTGHx0kX8yx/eo668NCyFKw99TRQAAzJTJ49YpeLP+H9KLiTPieW5ZXWseXYVDS3NqJQZFCiS0GdOwmHRUV7hRq9IQpMzE5+ziGuvHefwKytDpj+YIApKFAB3U2T9BXhDQis0GOkH9ZWYEMvGte1senkznsoaMjNS0GkyqDanU27TsGXDEpbPr0OZPYdiZTybX9rEv/7xAzSKlMDql0s7Bf92MboLuOsiC1NE/9YgJrDHlwsJs2NZu6yVTZuexetzkZGZQrE+C19hLPU1Xo6/9g7XLu3HasxAkzqV1qZqfvXLH3Ng53MIsgf8ig9CKyyDGLUAA0LkvVYgZAx6rUJy0iyeWz2X559dRrm3jNzcVCz6HOrt2bQ017HvzFtcudJNVZlBMv2eUgXnL5zmX//uFpMnjEHKEIbyBWK2MBoDDEyRhQd8/rRuTsp0XljRyIoVK7A47GTmpGIzZuEzzmLh4gWcfPMnXH3rPD57Aeqsmbj0Cax+Zjn/9o8/5cSrz0tJH8mthJQf/P1+iVqAuypy6d+g5Q/m9MV/h8gFQZebyNp5ThYsmkuBqYTU7HRKDZlUFibR2FjJwfNvcvnKRVwODaqcBNyqGTS31PPO22f4wwfdxMVODQV/otUPSxqGJAqAAQMAecjnPzhEEIpNStYvq6dt3nwMxkLy89NxF2bh0cVTV1/JoTNvcPxkJ8XGHNS5ibi1s6ipdHHy9DH+6WcXqKso8ef7ReWHqz3wXUHQRQHwHYosTMn9fhjSS6+PFmv0lsJcFrW5aV+6XFK+Ki8Zd1EWPt0Maqp9HOi+xJkzR3CW5FConCWBoqbCxv5DnXz+4zPs2boWYciDX+seowC4oyKP2OPLIq4FISYmRrCWFLCwxc3chYvQmDQoslPwFOfi1U/HYS1k665DnD51AGtRLrr8RMo1s6jxmthzYC+ffXCR44d38fjjj3/tO4oC4A6ITNZ/gif0ecBUF+oUrF3UwLLVyymyFKNUZEoRfUXhLGorPOzcf4ojh3ZiLc5Gn5eMR5dAU3UZnYcP8sHbZzl+/AATJk6mb7LnqyQKgO9U5F/9ccDsx8iHCGaTloXtlax/fg0Oh4lsRTqOohw8xjhqKj3s777E6bNHcFqUaHPj8epn0Vxl4cCRg7x7ZS/HDm7nqXETQ37/60oUAN+5yL9E1woxeGSCMGTIA4LXUciGNXNZvGQ+DmcJ+fmZOAyZONVxVNd42HvkNCdP7sdeokSXn4y7MJGGChv7Og/y8Y2jnD62HZHr11vm79/S9CdRAHznIo8s6gRTvbIhwtSJ41jUWs7KZXPpmNeK2awjT52D05iLtzCJ9o5mOrt66O46iLU0F6Mmk2pTCtXuEnbs38etayc417WTKVOn+/f74YTQKAAGisj7vBa3eoIwafxTrF3awLOrF+GqKJcUn6/KpawoG6c2jobGGo5cuk73mcPYLBoKtVlUm1Opsmt48eWXuHr6JX7w5lFSk/15flH5/sUfKBxFY4ABILL+ACAXxo0ZTVO9nZUrF+KrqZdMvqpAicuioso0m7pKL3uOn+XYicO4bPlYjNnUW9KpsCjZvGUrb53bxo0Lu1Cr8sIIHuHf+fXDgKgL+Kb6FW7ffBEyy8G4TC4I48aOodqZz5IFjfgam1EqU1GLyi/OorY0g/YlC+k8/Trd3Uewl+Zg1WTR6MzEW6Jg0+aXuHH1EB/eOEFxselbadGKAuAbifyvfCbvLbzJZcKkSVNoq7NIJdumjg7Ueelo9Wosxgzchlm0zZvLySs3udBzDK9NiVmTSlVpEm5jBlt3bOeDtzr5yfWjGPTab60/LwqAb13kfcgc/uexY8dKLN1Vy+fRPLcddYECvT4PlymbcmMqzc2NHD73Ome6D1Juz8NYkEJlaTp2Q7JU17/1eidvnNqM3VL0ZbP/DSQKgG8istu8HXIJ/sBs7Lgnqamwsmh+E03tzRQU5KDXqbEXZeHVz6ajpZHDF17n1CnR5yswG3KoKUnHZcpk154dfPpeD2+d2Y5SmS5183zdCP/rSBQA34rIb8vpS4idTJWniGdWL6O5qRa9Nh2TUYdNn0GZPoGm5jp2Hu6i+0wnFa58SnRZVFsy8ZjS2bH9JW68cZSbPa+g1yiQdB+23fs2JAqAbyiywL5eEnlYtU2QCwV5qSyeV86qFSvp6GhDq1VgMmqxGtOwaxJobKql88Q5jh/d7ff5hRm0OpRSPLB23Wounj7AzZ5OysqKA1u9L9PEvqlEAfAd5PuHCILgtJh4dnkDy1atob6xhgJNOgajFrshE4d2Fk1NDew7fo5zp3ZR7cijSJ1JjTMXtymJlUs76Dm5lV/8pIdnV68ItXFFFHajMcDAEVmwUyfQl6dVZbJqcQ1ti5ZQW1+HVpcp8fOdhek4xepdXSWHzl7i4sUufFYlRdoUWt0qKfsnAuPwnhf43UdnWbq0HbFC6Jdws/+35fu/SqIW4P+bxCGLyLgFs3BiBW9RWyUNrR24KzwYtKno9QocIpmjNIvGtiaOnL7AudNH8NpVFOoyaCjLx2tMZNnSxbx+8Ti//+RNtu3YeEdGsUQB8JUiD1vdwei7T6EljMZdkJtOS62F5gXzcVf6MOqyKbWaqLQVUGlX09zawImLr3H+3H7sVgVF6nSaXCos6ng6Fs7l8uWT/MNvbrJ315awlf/dShQAf2ugF5LISRyZabNornczf+lSqhpqpGjfZiukojhLUr5I7TosMnm6D+Aw51KkTaOxTIEjP55li+Zz7nwnn/7oDJs3veCv53+Lkf5XSRQAX1NkEZYguDpjhEeHPyKosxJpqHOxcNkiKusqMOiysFgK8ZQocRjTaWqp5/Tla5w5d1Sq55uUadQ58qWVP7+9huuvd/HZrS6+v34FQXKILGLYw3cnUQB8DZFF5PqDKzNGGDH8UaGm3CyZ/bnzO6iudWFQp0t5entRBq7CVBrF9O6lN7l08bhU0i1QJNBQpqFMN5N581u50tPFr987zosbVhMTE9xOflubvL8uUQB8zYBPCI8HBEF45KFhgtmQRK3HRE1rC97yEmkGT2mpljJjBqWaRGrra+h+7Ro95w9JZl+rSqPZnY9bF0tHRwNHju7j1z86z26xeyeQO7jTEgXAV4o8NIAh3OePHvG4UKRLp9qlp7G9mTKXGYNBia1Ug8uUg02TQH1zC0dO99B94lXKSnMxqJKosOVJ9O3mhkqOHNnDr396iatXuhkzZkzI7wd3+nfKBkQB8DdJjDB82MOS8ivsBloWLqPMXUKRUYHFosdjzaNUNR2P18m+IyfpPrZLKumKAV+VWNfPmyFx+l89sIvffNjD73/7CbPiZ/j9vvyvBZ3fjdzXAPCvNvlX0LeECKU8/PAwQaNMxmXW0rRkCS5PMSZDFharUQr4rAWzcDgt7Ny7nxNHX6asNJsSvbjPV2POm0JjUw3Huk/wyTvH+cWn75OXlxco7tw9ua8BEOyaiUyv9g+I4cOHC2plGm6Hkdb5c/H6rJgMGVJPvqsoHbM2BVdFBbte3cfpk6/gtuZTlJ9Ig0dDlTmD+hofh4538sk7J3nvxmXSMpIHxB/y/gZASCKap4Rwjp1MEITHRo0WxJXe2uxjwbJllHlKMZnysNtK8JqzsahmYPc4OXj0FJdO78HjyJO6d1u8BqlZ01dexqnuY3z+43Pcun6ejMSZAZ8v9GYV75IluK8BEEq4BAc19EOpjo2dSKWjkEqfhbkLWvF6LegLcymzF1NenIlZNQtXhYc9R7s4f+IVPG6txOETR7iIW72qMit79+/gT79+i88/vEpaUmyguNM3y/gV1LLvUKIACIKgn2JL3LTJ1JYX0tZcRUNTI6XF+RQXqyTlV5SkYVPHUl7h5cCxc3R37aKiTIO7WEF7hR6nbhZum5aTXUf47N1jvH/rPDnZ6dLK74+1G7UAd0GCWbfgda9i5EJ87BRqvIU011VJmbxSi0bi7Zc7jdRYc/CaUqlpaORA1wUunT9GhU2Bx5RJW5UOT+EcKlxFnL3Qxce3TvHbn/1A2jWEfn3ERZ97usNW4L62ANJKD2TdQv3zsiGCIjeTqnIz9fU+mpurKTIqsZfk43MXU2PLpThnGrXtHZy69BaXT++n3KHGWphJk09c+QmYC7Po6urkx2/u4da1c6xY0s7QoUN7J3iHhj7dfRDc3wAIKF1a+7IYYYh8qGA2KlncUU5rYx1erw2jUUmpWY3TWUR5cTpF2ZOpbWzizNV3Odu1G69Dgc2QTmOZHptmhtS1K+7z3339AB//9CbtHQ3+0ayBR2hIkzAw5J4HQG9lLTzSD16HtWcPkQs6dTpV7kKa2zvwVpRhNORgtWkpdxVTbspCmz4Bp9vKudeu8UbPEcoteViMmdQ51FK/nji9Y++Bg/zihyf4n3/6OevXr7/r+/z7HAAx/eR0+vbo+xs0xVl79W4T9fW1+KrKMOozsVoN+BxGyovSKFHPlAgeu/Ydpuf0PjzWHGlWT7NHi680DYs2g5d27eWXPzrBP/3hQzasWx6h/IEKhHsbAIE+uS8xd8IGJn7vsVGCzZhDs6+UlrZGvN5SSg1KrOYCPHaDxM41ZE7AU17GgRNnOXVkKxVWfw9fi6cApzGZUn0267ds5fP3u/ji8wu0tzVF7PPD5W5u+e4/AATJmrKwLV5Y8+TTYydS7zPT0VRO69wO7NYCTIY0yixaPGUG3MYUCjLGUVHlY9/JC5w6vJlqp1pa+U3lGmpt2RiVsTz73Fp+/tEbfPGzy8yrswcGNIRXEvve08BQ/j0PgKCf91uBMLMvkwnjxz2Nx2miudFD+/x5WEoLKC3KwWUvpNJdiK84nYK0p7E7LRw+f5Uzx/ZS5VTgMCtodBVQZ8/BrE1i1colvH1pH//jo8ssaK32K/82nM2BpPj7AgB+8dfZw2v5KYnxuErzaWmsoLWtDkdpARaxjGtW4SsrpMKcjjF7CvUNTXSeucyhPeuljh13SS6NHj0NbgMOfQKLFrVx9fxefv/ZDXbv3BKYydfbFTSQFX8fASA8ApQL4jTtcnMmNV4LTY312M0aSoxKXOYCfB6/8nXpY3H5yjj3xg85dXQHPkuGxOcXlV/vzMOiniaNYu05+yp/+OU7vP/jHzJx0pTAH8Y/ifNLtzBAQXBfAMD/p48RMtKTaPCVUF/loa61Tlr1ZosKW2kBtZX2AFUrVZrCfaC7h0P7NuItzcBszJai/ZqyAqzqOBprPZw6sZvf/+Iq588cZezTTxEKMwKtW4NhB3DvACC8bh8R9QdLuSOE3PSZVDkKAnl9H1azSoryvS491R4DZQZx5PoU5s5bwNk33+XYgS04TRlSVq/KpaXaqaFEOZWWBp80o++T6wc4dHAbjz7ibwbpO/XzThE67nMAhM/ECVtpwQyfTBAeeughoVA5E7cxjeoqLxWVZZSYcrFb1LgcOurLi6mxZqFJmYCvws2xnmscPLidSlsOFkMWFTYVDU49Lk0czbUOuroO8N6VV/jJu68xOyHOX9zpwxkcTDKoAeDvkwz/w4vhd++s/ZiHHhbEAcpeq0rqz3N5rZQWK7FbdThLFRKnz12cRmH2DBqbmzh+4QpHXn0BT0m6NHZdpHGJM3lcxjnUeG3sP7qfayc38tObp3E67X4iZz/0rcEEhEENgP72W8GVP378WAw5sVS7i5i3aCE+n00asFjmMuKxa6h2FeLUJ6JKnUR9YwPdb96gq/NFyk1JFGvS8DnU1LsLcRcmS9SuXbt20XPsBd66uA9jocaf3/+S2R98MrgBIFmABwIvelehSLR0lSrx2nS0tNZLSR1xj++w6SR/X19ukiZv5CWK+3wHh89c4NiBTThLMijRpuMzKyh3FOAzpUjDGrdv28LNi1v54Ho3DpclrFu3Pxkcvv+eAEBvvOW/EqlbiuwkfI58Kj12mtracTh1mIuVOKwFlDsN1HoKJSaPPnOadL6O2Kh5aPdGnOZsirWZVNsLpJ/xlKTiLEph68ubeP3sTn7+09d46eXAXj+cPxC8l295csedkkENgPCwf/q0KZj16Vh0qbS1N0kkDrGGL0b7dqtWMvviynfqk9FkTsbj9XHm9eucPbYDmymVooJUyS1Uu3VUO3Kw6tN4bv1aek5s5qO3u9nw4vd54IGhEW3g/mvZbXL9wqCQQQ+A4Y+OEnIyk3AYU7EWKVm8cjk19RUU6TKlAYtldn9ev8pTgkOXhC5nGr7KCk6cvyKNWC0rysRWlE2NQ017tYXWKiOFWRNZuHgRPcde5AenN7Fx/Sr/eJbgoUtfSwaHNRhQAPhy2bbvPJxw3v4QYU5iPLaiXIqVcVT57CxasQyPpwSxcaPMpsdpzsfr0EsZPnNBIqXqJBra2qQW7a7D26TUrtusot5noMGrp9GlokyfyNKlizlzeBPvnH+JV7et5aGhD0R872BR7iAAQH8t118euCTV7MPemzJ1AuaifNz6OWiSx9JY52X+kgWYi1SYDQrsZq0U8ImJngq3juL8BEzqJOYtWcKlqzc4dWIHVlMWZWYlLV4dlVa1NKbFrZ3J0tUrJbLHB1d2cOnsYaZNDUzg7tOzOUgs/MC3ALdLmfYeoxJ8QxBGjBgulBjzaK0opmD2U+gzJrJiWRsdHXVSTV4EgM2sp8ycj9OskaZzWbXJlGhTJT7/a9dvcPrEDqlR023Oo6WyUErvVtoUEpdv8eLF0lTuS53P8IOe/STMjgvRuUKsrpAFuDeswF0HwO0k3BUMiXlQyEybTUethVpLFnkzR0tEjRVLWmhv9GIvysNaopYeYmVPtACVbhPmvHgshgyWP/c8PddvcXTfRmzFGVhNOTR7Cqh1qfGac3Ho4mhpqOfVQwc5s3c5Zw++QGL8tMjmjcC9BBMNgyXIG9gACJr4QAdu3z588XXstPG4zDm0lavRJo4jO2407pJM5jWXUW5RSJG/vVis5RdIq140++WuIsyaWegUs1m2dh3X3vuAzj0bsBSmSwFflU2Nz5KDz5or7Qqqy53sefUVzh9+nk/fOYyuIDc0gTuyRbwPs+gekAEAgL598X7FP/HkKIyqZGmlmrKmMPOJoeTMHieNURUDOk3qOBzF2VS5TJiLNVJfvtOup85XjFk1G03WNBasWs3lmx9wcPd6aZfgLM6lxqmUEj2iC3AZknDaNLy8bTP7ty3mnUs7mddegeTrZX/t5u/MBI/7zgWMefwJDKosGipMlOTGMmf8I8we/yi6rDhJ8RkzRpA1YxSW/NlU2XXSai8tLcBh01PhMmJQzKAgJ5b5S5Zz+dpNXtn+LBZTmsTgFauBXrOSOrdeInqW6tJ4cdMGTh18hotHN+Lziids316xsnALdY+YgLsKgPD5eoLwgBAzRCZUlGlp8+lQxI4mK24MeamTUaRNJnXGE0weIZAV+z00aeOx6/0DGsS9vjiMSaRzi5x9TdYMFixbwmtv32TP9nWU6lOpKFFS71RR4Sygzmuk0pKBTZfGC5s2c/iVNXx44yRbN68OMHoiO4b6s1Z/SzZgoMvdBUDEK7/pT4gbhyF3Osr4MRiVyWSnTGHyYwLjR8ik1a9OGoc2cxplphyqHYEkj0uLPW8qOsUslj+/kR/88Icc3b0GszFVGtrQ4tVQaVdKpd1ap1bq2xNP5tr24lJ6jj9HT/crjHnyqd4c/wBq3Lh/8gDBDl1BJiRMnyj5+jEj5DwZI5A6ZSQ5caNJmT6K/ISxFOXE4TSl0VRjlNK7pVmTMCjiWbnxJd688R67ty7DVphItUVFk1tNtV0lAUAM+lz502ltbabz4F7e79nCJzePkRg3IWIE+2DN6w/KGKB3vx92rIYgCPHxkzAqEhg3TCBzxmjJ76dMfgzF7KekJo16j05yFdb8megVSSxet5HLV6+yfWO7FO2LPl/k8NV5VNTaRf+voqwgVmrzvvX+Tf7z9xfgP38ldf30Kr436SQT7g+56wAQJYK2HTZxOzt1OlZVAjNGP0Di+BFkxT2GMmGcVKoVx6uKuwNtVhyrN+/g3Q9+ysZVNRRp5kjDmOqd/n1+o1NDnUvtH9lWUSx17+zcMp//+ONVDu3fhiAXT9YOO9njW57FO9BlAACgb64/eOWvuGWmTceYOZGZT8SQMXkYFk2S1ItXpJiJxWzi+c0vce2tKzy3uhGDag4VVrXk58XUrljgEVm84mFL4ui2DRvXs3JhBc8tq6Onp5txY58M/c/0ZvkGF6NnkAMgjEIdRqYMtk8Hu3bjpz2BMnYkWXEjpECuwpKPzWbi+7s6+eizz1ixqFza94vbvJoyrRQUitx90ffbC9PQZk+VTuh6fnULC+v0fPjeG5iK9FLvXigH8TXatu9FuetBYH+NFOGfB8/ZS541EZsuBVWq3+yv27CeWx9/zKqlddJRquU2DXVlOsnXe6wK6bRtMSFUkDiB9hY3a1Y0UlOcyNF9Gzh8YDtiN3Coayjo/EPfee/k+geBC+iHRBGRifP74+TZU6QSb9KkkRQrprNpw0K2b1qOozQPj02F15Yv0bgt2jmUqGZjUMSRPXOURAhdvagWfcJjzC/P4+TRl1GpVBEHLPuJpX3uSYgC4A5mAsNHtYTx+gPvjX5sqFCiT8VmLZbm85iUCVLrVmHmVGk6h5ghLM6NRZc6EUX8KPISnpASRuJze00RBcnjMaQ8zs6tC1j//FokHuH9ZusHpAUIt7x9THBQ/48Me1RwmrJoqrJJK35RvZkGt5gpHIUiYZxU8ctLeVrKE2TGjiQ77glSJg0j4fEYmrwmSgsSiPuewJJGu8QASkpKiWD03u/C3c8ERiaDQoGZTBAef3IURfoUHNo0Niwp5/rRZ/DpprOiw87G1ZWYsmNRzvbnCHKmjyJj+mMkTXyEqSNlEttHnPA1/iEZ9oI5dB96gUqvdWDx2QaA3P0YINz0hwVjD8plQtvcBs5fOM3R/evYs9bOinoDRTmT0Cc/QVtdGQUZcWTHP0nS2KEkTBxG5oxRpE0eSV7iOBori4gbN4zECcPYuKKKC127GDt2TODmo6t/4OwCpMUenoOXC8MfjhFamrwcu3yT3/7xCz790TmO72inwZGDTxuPKTeOR4ePktzDnNjJFGZPIfZxMWP4BInjHqGkIAm9MoHRgkCzT8/F41uoqvT0jmy5j3L9A98FyMLzAXJh0pjHcFuyaW2tZd++bfR0bePQ3u9z9NA2VtZpKcqdxvBHR/Zmj2VDhPSkBAw5M6Wi0cRRMrSZc5jyxFDSp41i86pa9u3exLCRI/xbytD496gMCAvgX/y9Qd/0CU/QVm9lydxKnm0rZsPSGrZsWsPhvRuocyh58MEHw3YIvefppSbFokocjyJpErmpkxguyCk3Z3Ny/zpUBep+bjrqBgZGDNBniFPKtCdRJT1Ja2MFS+ZXSOSNzldWsXJhFaLJjxzx1vsLRPOeMjtWSgNPHj2EhHHD2PXCPNatWxLi9oXO4Ym6gDsEAHn/M/rCV264ZGXNYV5bLZVFs0me+BA2UybrO4p4ZkENDz7y8JeUGHwK79CdNO4x5kwcRnXhHE4d3EhakjiW3Z/oCc8vRGOAO2gBelesHwgxQUZN2N4/P2sOre1NvH6pmxsXdtNSlkWRJknq0X8wxt+Y4bf6kdoL+XRJsWIBSS7MmvoUh3ctYfnCxtBkbv+PRAabURG+WwD0TfKED2QOfiaqLzs1Vjp27bVrr/OX//4vOk90kp6ZwlOjH4s8Qy9UKg5X4JdbtMVLdV4m48aN623qkA6G6L/yeD8L37UFCPLnQjy7kCn2gyEjZQbzFzbQfeYwv/3le7x8sJOJ0+Lov1jUq8ze93q/KVJiAlF/1NjfdRfQn8LEd7LSE2iu93Dj+jn++e8/Yc3za5kyI3igQmT7d7AjN3jOT0QBL3xMy21ay0IX0u+KguIOAqDX78rlvUMb46eMwGJVc/2d9/mXLz7nmTXtJKZlItGxJKMReapG4FcELvqs9j48/vDe/Qi2UZDZGwXAnQJAYEX2oVvlpE5mXkcNJ7uO8unHt9i2ay9PTxzbe3xaH2q2342E7R5CI9kikzq3H8saPrQx8hzA+134zi1AeGOlIAhpqXNYsWol77z7A+C/2XvyKI+Pebq3Ph+KEwLgkch6YVYkgIrI0z56XUMks0jk+/W29UbmD6IA+OYAuKHj6HYAAALASURBVF1Zta9JDqzM9OTpOG1qLr52Bf4CuzoPMn3WzBArt1fuH0bOoLcAEboO7MWDl8Ecv/hO4rSRNNaW8cvPP+XfvviYlw4cYnZKup+VG/XLg9kFhPP5w/fcAZEJgkYxU2rd2rxxFf/wu/c4cmyvvzTrLwVGZVADIKR8f6Wtb8o3LWUGK5e2cvHSOf75z//I9j07mTx5ci8du9+IPOoCBgUAIlZ6uARcgTJjGouXzeXmO2/x5z//gRe2vczEqTMIHdoQVfTgDwLFVR/qqgk8Sz5/5liWzK3nJx/+iH//9z9x+cYNZqcpCO3Qg0+DZKr2vSrfwi5AlJiIt1LmTKHao2f14hp+dOMsR4+/ypzURGnl+yWY5An8N18q7kRdwKAAQCSPz7+205LjWbq0ld/85iO++PvPWL6gikkTn+49NTM4zDn4O/pk+qI2YFAAICwJE+qnE7t3xrNgcQc/+/RD/vf/+hWvHjtOanZ2WPdtVL33BABCqz6Qq3lq9FAqvS4WzG3ges9B/u5Xt9ja2cm0+HhpqzfQjkqLyrfgAkRlDn3oUUFRoMKlmy01a7yybx9v33yLl3e/zKTJUwNMnPA0rF+iQBj0FsCv0KT4CWzYsoGFazZx+tCL/J8vrnPpynkS0nMimDhRudcAIAjClAnfY+uzDaxZVMPm3Qf4+KMP+P2723lmYTXiwKeI1X+b56gMUgA8IBMEdU4cO7+/kEW1WtavaebS9fdon9vhX/lh4fztx6lHQTBoATBhzPew6lMoMWTywrOtrFlczs79WzFYvf78frD8ets5wFHlD2oATH56JGWmNBqrijnTtY2TR3aiyEoIrf6+jNt+V30UA4MXAA8/KAipydOkY1iyMuIZ9djwqD7vJwBEH9wXf4O7fgPRB1EAREFA1AJEQUDUBURBQDQGiIKAaBAYBQF3bBfw/wDdss90NcsF9gAAAABJRU5ErkJggg==', 'Human Race Description', 'Warrior Class Description', 1, '2000-01-01 00:00:00', '2024-12-21 19:45:14', 29, -170.00, 74.00, 154.00, 1, 220018, 1, 220047, -1);
INSERT INTO `character_create_template` (`id`, `race`, `aspect`, `instance`, `pos_x`, `pos_y`, `pos_z`, `orientation`, `faction`, `autoAttack`, `race_icon`, `race_icon2`, `class_icon`, `class_icon2`, `race_description`, `class_description`, `isactive`, `creationtimestamp`, `updatetimestamp`, `respawnInstance`, `respawnPosX`, `respawnPosY`, `respawnPosZ`, `startingLevel`, `sprint`, `xpProfile`, `dodge`, `stat_profile_id`) VALUES
(2, 22, 24, 29, -170, 74, 154, 0, 1, -1, 'Assets/Resources/Portraits/ChallengerT.png', 'iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAYAAADDPmHLAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAgAElEQVR4nOy9Z5Oc55EtqC+8Eq8kSpAAghBBECAIw4bpRptqW11dVV3ee++99953VftuWMKQEJ0oQ0kznNmJnd29sXft/Un7A85GZoOaOxsTd2NuDINqaT48UW3KvP3mycyTJ/N5+nsAvvfvC3+19+A7v4B/X/h3AHxbIDg8mGA86uL4cBe72yM062WUS3n8O+jw1xMBqqUcCrkEup06fvWrT/Ho4R5efvwIjx/t43h/jOPDbQw6deRSsX8RGPt7Ezx/9ugvFjTf+QV826tUyOL+8R6G/QZ67Sqa1TxqxQwKmRhK2SSG3Tpq5SyqxTS2t9rY2e5i2G9ie9zFeNSCQqFAIhZCOh5GLpPAsNf8iwLDd34B/71rf3vAhiDP3tke/TOj9DsV9DtVtFtVPH36CPeP9tDrNlEq5lAsZFHMxlEvZeB1O6FTq+B12RHwuZHPJtHtNNFu1vDs6WMcH+1y2ui2a+h1q39Rhj+1AGg1Smg3SqiVc2i1arDbrNhi765g0Kuj320gnYiiVMpif3+M8biPfqeOajGFQjqMXqeERi2PrWEb26MORvTaThW1cgadRgn7OyPs72yhWsqgUkjy81vNIgI+F1x2CzLJCPrdOu4fbXOEoM/9ru/JXxUAEtEQfB4XrBYzgl436pU8KqUMCrkUBt0qqhX6Oo7RoIVhv41ep4Z+pwaP3YxygTy8gmqlgHqlwK87Ohzz78MBD3KZJO4f7fI63Btj2K2i28yj1yqi3SjAZTMi4Hchk47CZjHA7bQhk47j6GgHD493TyUQvvML+O9ZPo8TR4e7qFYLMOi1GA4aGPaq7I2dVgnjUQe9dg1hnxvdZg0qmRTRgBvpeAh+jx3JeAQhnxOpeIifa9SrIRWvo1bJY29nC8eHO3h4fxetRg61UgqtRh6lQgL5dJg/ZzSsQ7y2ikwqgsm4j49efIjHj49wfDhBs366qozv/AL+tWvY76BWpRSQQT4T5rA/HNQwGbXRaZaY1LXqRSZ58ZAfQZ8T2WQUxVwK6WQUmWQYyaiXDTvo11ApphDw2uG2m5FJRPi5Dw63UUjHkAidPG/Yr6HbKjPAJlttjjDZVATdThndTpHTyc6kj+GgzZFnZ6uDdqvI5JGuuVEr/9mC4ju/gH/Nmox6aFYLnJ9DARcqhTTnbTZOt4J2s8QGJabfqheQSQSRigeRzyYwHvUw2eojl46gUqTcfsIZCvkYapUs8tkoYhEPdrd7ODoYY9BvIRH2otd69f7tCtr1An9ep1nBsNdAv1NGr5PHR8+foN+toVyMo9cpo5BLo1zKIpuOcbogsH7X9+7UA4AMOOjWmYRZzQZk01G0GkW0miW0m0U2IBmXvLBeyzPRa9SLKOYSaDUrXNZtb/VRK6eZ1G1P+vw6MhiF7UwqhHoli1G/ydwhlySgpLk8JOPubPcx3uqg1yqz8Uf9FnqdOpq1HFcaI45CDexMOui2S8imw+g0i3+2hj9VABj0GmjUCqDc73HaUM6nUMhF0KgXGATtRhmZVAz9Xgt+r4uJWrtVQT4TRyISYENtjTpo14toVNM4PNhiQEy22uh3KyeAqZfQo/TRKPH7R4MeXtlkBHs7Q+zsDBgIpBl0mmUc7k+wvdVDo5pHv11Fv1fF/l4fTx7uYjxqotHIMcCODrfx8PHRny0QvvML+G+ter2C0aiLWrWIcNAHtXITzVqRCVmllESnXcag18Zw0EGlnIdWo8by4gKiIT+q5QJS0QCyqTC2xz0WcFq1DCajJg72x/y4v93HoFPFVr+FfruGZiXL4TqbDLPxHWYDaqUstre6rCtQNGg3itgatHB0uIPxsMvf1ytpdFpFfs7zZ0c4PhjjaH+ERw/2cHywjclW798B8K81fjQcxMHBNjqtKkI+F9wOM6rFLBO8Uj6OTrvEytzWqI+AlwQdBWRSMXxuB5d4tWIahXQItXIK1XIajUoG3XaRw3WvV8P2mIhbl3UAWgSERoVCfgKFbAwRv5t1ADLqqNfgiqGYJSWwwQDYnYzQaVXQqOTQbOT4eihSjAYNbI1aONwd4cNHhzjaG6OUTzF/qBQSf3ZA+M4v4F9a+UwMw2Eb1VIWLrsJ8YgfhUyCQ20hE0GzVkAhn0HQ52H2noj6mBT6PQ40ynlMRl20mwXk0yEuC7vtMnpULfQbePTwkAEwGjWZuRMfGPbraDbyyKVDHFkoCvRaFQzaVWwNmygXUwj5XSe5v9fC1rCLyXiAZi2PLgtTRdYgdiZDpBIB5hOpWAj5TBJ2k55LTLNBh72dPgq56J8VCL7zC/j/LiJ3tWoOuWwci4vziIa97EHEvHPpKBOzgM8Do0EPmXQDiagfqZgfkZAPuXSMvZ/yMxG6Sj6OQe9EGyCFcH9/G9vbA7RaRUzGPVTLWTRqORaHivk48rkImnX6vorhsIUOsf9OBdGQB816AVuDJg4PdrC/u4VBr8XqYrOaQ6uex/ZWB1SlxKMejjiUpnweK6QbQty8cQPzc3MYdhrwuawcwb7r+/xnCYBsOsKlUyTkx9QHUwgF3KiU8ijmU8ilolzSKWVSyDcl0CrliATcyKdjSMUDSMZCaNXLTAj3Jn3kkkHUSklm5P1egznBwwdHaLfLaLfKGPU7KBYSXK9T+ZhNhTgK9Ck9bA8wmfTR75JEnGXjUyOJyB9VIod7Wxj16mhS7q/n0K7nsEtVwrB9oi90q1xZRCMeRCNeWEw6rC4tIRYOYFMiQirmY9L4Xd/vPysAVEt55LMpKOVyzN27x8avs+CTRyYR5qVXK2C3GqHXKpCKBVDIxFHIJxAJeblpQ2y/US1w3iYvq1Uy6LQrKBUyKOYz2B4PUC0lsL835rDeaVEZWEW5lOB8Tylia9TF4dEuS8jEDUhcokhAYs+gSz2HGg52t7gs7DQLaFYz6LQKHAH6REo7FY4UVB5yFCqkuFStlLLQqRRQyTZRyiXRahZQyCUZBAQq0jb+KgGQSoTQaTfRbtdht5phNGoQiwTY66j0o7CeSYTY+CTlup1mREJujgjEERKxIBu3322hTIbOJVArpVEupLhEK2QTKOQyqFeKnH9J06chkWrpRAyiWr1YiLPBRoMmHj445OGRMfUSeg3UKzl0mQt02fjUiDrYHaFVK/DnNGtZLiXHIwJIFeNhkwHwjXjUrOQ4egz7LQT9HgS8LsRCfk5VRGjpvVuNMl/7Xx0AwgE3YtEAtkZDBH1u+P1OJKJBLulqlRy3ZxMRH8IBF5Lk8bkYHFYDSvkE/z6XiTMv6HWoo9dAPhPl4Q8yWrWQZvLotFuQjkdPtPwcScdNVgnJWINeHVVi/uUMG4xKxS2Sc/utV4pfmVk+vXe3RcavMB+hVjR5Nr2mVaPw38PWqMlhfXvSxbBXZ2DRIpJI8jBpCx6HBUuCBUjFGwwCuhbiNKVCGlaL6U/S8V8NACjfUwcuFg0yi4+FfcikyFgZVvyS0QBCAQciIRdq1QwsRi1ymSh38SgCEAAa1Rw6zSorf0TKyOvr5SxiIS80ChmXiLncyWuadVINy2g1CtwKbnMNn2UOQB1BFoLoOY0Se3+vW2PpmbyTftaqldGoUr1fe8ULKlwlELsfDRssFBEBHW+1WZoeDZtcTVDkKOUSyCRDcDks0CjlrGfQc+kzqQehUioRCvn+egAQDniRTkRA7d1w0A1KBdEwMfk4N21oAice8SAe9aFSSsHtsvJzOp06506/x8kCEen4ZDTS94kAUuinho9aIYPLbkYqFUS1kmNtvt2u8vO7XQr9ZOgCuq0Kh2HydhJ96uUc9/upF9BtVRlQ9P7b4z4G3RYbjnoN9WqOu5DjYedEKKLSctjCh48fYHeXVMMqBq+mkOh9KI2lE0HYzQaeLXA7LHDYzFApZFhaFMBpNaLVqmK81eco8xcPAPJ2CnnhoAdhv5PDPAEhyYYPcPhOxANIp8Is86aTMdTrZe7qGdRKJKJh1Ksk7Z40h4gPEHioXve57PC6rIiHnRy+qRuXz8U51NereTQbBfR7dUy2+9jdHWE0bHM0oPcadE96ASdhn8ShAit+NFi6NegwQCick8xL4Bm0GxgPGhj0qrh/vIvnz55wGmi3SieDJpUsS9aVIhHRJJxWE1RyKRqNIoJ+NzxOO08h0fDKZNxBsZhFpZzhgZe/WACQ8UM+NyIhD+KvcnzQ62Q2H/J7mAfEIl7Eoj4U82ke4CiXcggFPAj6XdCp5Dy2RTm5Xa8gm4pyj99pN8PrtHGvPxF1cq9+0G8in4uelHyNMmsM+7tDHB7tsL5PYZ44QaOcQ7NGnT8K2XU2PvUZKHw/eniM+0f7nA6oLKTBEsr3NFPYrVP6KGHYr+Dly6d4/OiI5weopCTvT8T8KJfSXEVQuLeadDBqVSxHN6k6KOeYAG/vbmFrq4PxuIt4LIygz8Wg+YsDAOXmkN+NeNSPdDKERCwAn9vGHIAYcioeRjTkhc9j44jQaFSRScZgNhkQ8Dpg1CpZXWsTKavTkGcZTosRoYAXIa+LSWMs7MJo2OUSkESZOpVktTxzgMP9MfZZsm2xPkDzfpTXiZBNRn1m+/1286Sc7Db4eU8/fIiDvQlqJfLMDHMIWvlUFPUCjZLlsDWo4ZNPPjqJJFQZ9Gqo17KIR71cUh4cjDHa6nBq8rps3CQaDurIpRPQazUQi4RIJSOccuj+JGNB/pv/ogCQTIQ47MVjfmTSEc7VsZCPDR8JepgTUAqgG0QeEA16kU3FYdRqoFXJYLcYYNSoEIv4US5kkU3EEPZ7uESk9wn5nQj6HOh2GmjWieBluFqgMTHK81S+UbuXvJsmfwf9Jg+LkoRLk0C7O1vodxps6EYlfzJO1qvx76jD12+VMOjWMN5qcXQo51JoVvJo1/NcQn788Qu0m3mMRwScBmrVLLKZCHa3B9wYIoGJwn805GM5ejhogmTvVDyCJcE8HHYTdyUplZET0PNy2ROt4NQDgGbnvB4H4tEAkvEgM3giemToYMDNZWCCRrbcDgQ8DvjcdkTCATgsJh7pspl0kEs3YNap+cZE/F64rGY4TXoYNQp4XBZuGHVaddReDYQQu6dWMrFyYujEEwgYo0EX+7tjbgkfHe7h8IBauCcdQyKCJNRQDqb0QI2dve0BdraaON7fwuHeCDtbPe4MUt+BJo+I4NEcAkUKajhRlKGBUapcSGJ+/HAfh3vE+FswaVQsNvX7J1VHibhBLg6xaA0GnQqFfBLlYvZPAKAoQCnwVAMgmYjC7bSz90fClNdT/IfSH+j3OhEO+RCLBJnZEwAoJVBXz2E1wmrUwmzQcOhXSMQwa9Xw2C2w6tUwqRUwKWTwu+28Ws0azwlS6GYmT1PClKsLcRQyNEBSxu7OmJXA7XGH5wof3D/g/Ex1f4nGxhIhJm69XpXnBfd3R9gdd3G4O8Cjox3s0ugXGS4dRyroQykTRdBlxcHeNr/vZNLjzSckDRMPIDGLRCJSIYuZFAtALz5+ivGkh0olj2o5z/pFwGOHdE0Ii0GDEDmAy4oYpzM/spn06QaA026D1+WA3+dEJpNAsZjmZg/N44eDXg7/BAIvGZLm81xWeFx2ln0dVhMzZ51aDuWGCEa1Am6LATq5FB6bCeloiGv+eu2kD0ByMIVuMihrAtSurRVekbkj9nxqA+/R+PfeGINOGW2eIMpxficNn9j77s6Qh0PpebRz6HBnhK1eE51aAcVEBAGjFo18EpmQj+cHHx4fsmffP97Bwwe7HDVozmBvZ4Cjg11sbw2RT8T4/Xb3tpCKBVmb6PaaiIYDKOaSUG0IIV1egtOkRSro4e4mSeI055BIfDtdxG/d+F63Ax6XgwWQaDSIHHlZKsp/HIV5MnwiHuHIQCUcESCqj90OK8/h03NcNjOUUgm0kg3YDFpYtCq4bWYkIyGUsmmU82nO3fl0lEUayvFUqpFcS+Tu+HgPTz98xB5PBtiZULivsvFpN9DJiBepiRXO+dTtO9rfwYunTzAedNCpldBv1ZCP+FHJxBCzW9Cg6iQVRZFa16Qe9pp48uSIewLcK9jqcbQ4PphwC3pnq49yOo7tyQB+uxkeqxEl2qBSLXAFRH0Ni1wMM/U79Brkgx7YtLRpxYZs+tvrHn7rADAZ9SzHOm1m5LIpzvdetw0umwl+r4PFn3g8zIanEo+8nzyfo4HPySmCvpeJ1qHblEIrl8KkkkMvWkPQYkQ2GgLt/6MBUQrZVN+T2kfjXzvbAzy4v49HDw7x4PiQdwiR1NtrlrDVreNoZ4S9cR+TUQdbfZJya+y1O8MuRu0G+rUSytEguqU8mrk0KrEgsl4nqukY2sUsurRrqFlBq1rEi2ePMBl28PjhIZ48OsA+ef7eFh4c7XD06FTyyPhciNjMcGrV8JoNKCXDSAW9CLnsSEX88Kg2oRevwyTfRJX6BT4Hl7apROT0AsDjdnA7NBwKwO9zQ69VwWbSw+O0wu9zIR4Jcvs3FPTC6bDAatEzWaQVCLg5ElDtrFcpoJVvQi0RsfFtMglibjtqxRx7EY+OMYFLoFrMgMbHqWc/6jbRa1TQb5TRJYMmY+hUihi26myUdvVEAygmo+jWyqgmY6jGI6hEgigFvCj63WjnM6jFwsh7nRjWSxg0Khh1G9wdrJdy2N+mVFLnXUXPnpJmsI297T5XHXvbQ2wP2yjTeJrLgqBBg4jHgYjFiELQi7jLhgjNMZqN8MgkcMk2EFTJsB0LYDcRhNthY+JM8vipBIDTboVRr4HFpIdBq+K5PirnfB4HopEAiCD6PS4e+LRbTSDA0PpmuJPCPxFBnVIGuUiIzZVF2OQS+Ew6lNIJBG0mBMw6eDUKBO0mZOIhVAsZ5JJRxNwOxK1GZJzWk+WyoZpJoZSIIeV2ohQPI00cxG5FwmFD1mlHiQQYMrzXjYLHgYLXgZLPjZLfg34ph1LQi7TPjUo2yQ2nciaByZBI4gTPnj3C7riPRjGDUbeO3cmAhaKEw4KwXosY7T2I+JEMelDyOFDxORG3mpGNheDXquCRS5G3GVFz2bCXiOAgFYJLr4HHZf3WtrV/6wCwmPXc5rVYaIJHBLNBC6fNxCE+EY8iFovAYbfAZjFx7nc5bXDYTAiH/HA5rVwJmPUaaJUyiBcFUApXYVduwqtVwCndgFcmYY8J6ZTw6VQImvTwaZQIUfvYqEPWpEfOYkBCr0ElGkIxHEQ24EHcbkXYoEVEr0PUqEfSpEfRYUXV70Et6EfF70GF5gL5ey+a8RCDIOd2oJqOo1XOI+33YNRp4nB3jF6jzD/P+d1olbJoFHOoZBOI282I201IUZ6nFOJzoeSxoxX0oEE9EIcFeZ8LtYALrbAXda8DHb8Lx+kk9hJBZCwGHoPPZWJIp/7tucC3anwHeb9RC5NeC5NRC41azumA9tQF/G6EQn5ug7ocNq73iSuYjDoEAl543PYTIuiwwGLQQbiyDIVoHUalDFbxOoJKGaIaFZIGLdImPTJmAzIWI5J6NZJ6zZ+MzwAw0zIgYdAg6TQh6TAh4TAiYTMgadYjQc+xmlEiAHhdqAe9vBpUXQS9qPm9KHncKHjdaGQSnDryPjda+TR2ei200gk0Qj406TWRAAq009jv4RCf8TiR9rqQD7hQ9DrQCnvQi3jRCXnRCJyAoR50YZgIYScXxy61t4Nu7Cei2IkF0PLaodOquTylhtapA4DJpIfFYoBBr4HJoIWNSzsznA4rzBYjlAoZA8RuMfHvrZwGnAwK0g4oglBbV6uQcRNII16HXSZG3KBH1mJGzqRFwaxHy+PgVTTpUTLrUbYYUbWZUHVZkLPqkbPpkbcZUPM7UPHaUfXRo4N/XnLZUHbbUSXvi3gxiAbQjfp5tQgEfi/KQT+a2SQa2SSniFY8hFElj346imEiwqsTDaEfj6AW8KDkdqLgciBuNiJhNjCh64Q8GMaCGMWC6IY86ATdGIQ9GER8GMf9OCjEcJiPYTsexGEyhH7AgY7PAa1GxR3EXC5xugBg1Guh12lhICHHoGUuQAamkEaG1+nU2BRvQKtSgKoF0snpNWR4Sgl2mxE2ixFGnRom4g8SMUySDc73UYMOabMReZMeLa8Dk0QEdZcVRbMeTbcdHa8DXZ8DTa8NaYsWeZseDa8D/WiAw28r5EE34jsJxQE3erEgBrEQr2E8iEkygnEqgn4yjFEph2Exh14qgVEqjr1CGjulDPaKaeyX6TGF3VwKW8kYdtIJjJMxDOIR9CjlOO2o+TzYSoSwnYpiK04ACGAr5kc/7MUk5sdeOoq9VBj3Syk8rKSxl41gEvUxAJoeO9wqOYwGHbKZBLLZf9tW8bdmfDK8Wq06MbyBUoCOl8NhhVQsgs1mxaZUDIVcCq1aAa1aic2NDY4EZHwijVQC2cwG/r1iYx3q9XXY5FJ4tUoENWrkLCbUXTb0w34MQn5kDWqk1ArUHBYMQh5sRX1o+WwoOUyouy3ohzzoRQMYxILox4LYpro8ncCEH0++3s0mcFhI4qCQwk4hhUkpg0mevs7gYbOMD9sVPGlV8LBRxHE1z+uoksNhMYvDQhZHxRweVAo4KOewW0gzCA6KGTypF/CwmsVxMYX9VBT7qQi2CXRhD7YTQeylw+z99xkAUUwSfrR9NpTtJuY4ep0GPq8bmX9jVfBbA4DFYoZSoYBOq4Jep+Y/gHRts0kP8YYIDrsN8/dmINkQQaNWQKNUcASgn3OqMBnhsBhh0CohE69jc30VKrEIRpkETpUccQr1Thv61FgJ+dDxu5E1aFAw6ZlETciLYwQMJ3pBFyZRD3aTQYwSEWynY9jJJHC/nMdxKYejUg73K0U8qJbwqFLAk1rhxGCVPO5XMnjcKuFxq4pnvToD4GGjhAd1AkABxxUCQBZHJXqvPB6U87hfymO/kMEkm8B2LonHrQoe1fJ4Rq8rZ7CfjuBBNo7dZBhH2RjuFxK4n4/jIBfBYSGGvUwEk7gf3YCDARDVqmDle2eAw2E/HQCgpXgFAMr/BAALNXYUm0xqKPRvCNd4PIqeI5NJ+bQPh83KmyjoD9arldwAEq+tYFO0BpVEBJ1MymkgqFcjZ7eg5nGg6XOj6rGj5jSj53dgHPVjPxPj0LpD3pUK4X4+gQfFJI4KaTws5/C4VsSLdg0fNsr4sFHCx50GXvZb+KhdxbNGER/W8nhYSuGokMARh+YMnjYKeNEs4qNWGc9bZXxYL/L3j6t5PGtW8axVwfNW5eQ9KUrUi3hcL+JZu4oPq1k8q2bwqJjAXiKAo2wEB5kIXtTy+LhZxpNqBk8qGfyyV8OzVpE1AEpjdY8NEXIirRpm4799e/hbBQB59kl4V8BiNsBk0EOxKYaaQPAq7JPX6zRKmAw6eNwuWExG6DVqqOWbUEjFEC4LsLYogHh1CRqZBFqpBOZXAIib9SjYLej4fai4bWi4LBgGXdhNRnCYTeAgE8dOIoSDTAwPi2l8WM/jRauMj9sVfNKr4bNhE58Pmvhi2MKX4w6+3O7i81GLf/dxmwycw/MmgSGHZ40CPm4V8Wm3ik86VXzULOFZrYgnlRweFjN4WMnhQTmH+7yy/HhYyuABgaNVxYNCEsepEF7U0nhUiOJ+PsqA+LxdwWe9Oj5qlfCyU8bnWy287NfwuJzDIOjhFJc06qBRKU+fDqDTqKBWy6BRyWE1m16RPeruaTnMy6ViqFUymI06FoEcdjNHB2L9GoUcG2vLWF2Y5xRgUCugkoqhXFuFRSaFT6dGiDRzmwUtrwdlFwHAjFHEiwMyfi6BnWSYo8FuKoKjfAJPG0V83K/hZb/O67NRC1+MWvj1pIevDoa8frs7wFe7Q/x+f4Tf7Q7wx4MJvj4Y44+7Q3y1O8Dvdwb4atLHF8MmPuvW8bJdwbN6gT39YTXPhn9QoZSS5wjwUb+Bz7c6DLxH+Sg+bRbwSTOHJ+UkvuhU8JteA5/1agyqT3t1vOxU8KxZxMNyBjuJMFc2aYvpdErBFPbVqpMQT6WMSiFlQ1vNFAkkkG+KYdJrOC1QdWCzmqGQbUIll0EsXINYuMotYNoFpJbLsLEkgEq4BqtCigCJPno11/Blp40jQdNtxVbUj4NskkFAHjQMezkiUEp4XMvhRaeCj3s1fERe3DrxuF/v9PCb3T4vigQnEaGLr3YJBEP8/eEE/8PRNv7+YIK/O5jg749obeGr3R5+v9PDl6MWXvbqnAKetir8SGH/WaeGLyY9BtGXkw4+bRfwq14Zn7byeF5N4fNWGV92a/i8Q1Glgi8GTbxslfG0nsdBhohgCF2fCxmb5XQC4CQKKKFWK9jYlO/J24n5q5SbXN4ZtWrWAcj76feSdSEkQiHkkg2oZVLIxBu8VmZnIVyYg1Ik5IaJVS6Cl8QgnRopEoIsRpSdFnSDXowTEWzFghw+Wz4HxvEgdtJRHBdSeEJ5vF1m47/sVPHFuM2e//uDEb7aG7LByVifDZr4zXYfX2y18Xm/gV8NmvisT6G6iJftEr7a6eHXWy38btzCV+M2fjVs4tN+E5/0Gvhlr4GXnTqD4ON+E1/tjfDZsIXP2kW8rGfxUS2ND0sJPCun8AmllVYJv+yUOap82q/jw2oOu8koBmEv2j4Hsqc1AtCSiEVQ8H4+MSglUBqghpDJoIFBr4byVRlIUUK6IeK8r9eoOA0oNqUcKTbWViFZX4N8Yx0K4Rp0G0JYZSK4KBUQCLRqlkyTFiNKLgdqXheaQR+6VB7GQhjFw1zXH5cyeFwnhl/EEyKBrSo+H7bw63GXDU+h/3c7ffbozwcN/N3BmNfvCASU+1tFfFTPnRiuXcSLWobXR40cXtTzzAsolz8nElnN40Epj8eVIr6c9PCkWsSTYgoP0kE8TIfwspbFF50Sfjtq4veTDgPq97t9/HrSZoDuZWLoEAfw2JC1nmIAiETrEItFUCtlvEjoodEni5mIjRxK6vAp5TBoNVAr5GxwSgEq+SZkkg1OA2KOCquQiYSQr63AvCmCXSmBXSKGRyZFRKNChpY1bOkAACAASURBVCRdswEpiwEZUgC9LpTdVjT9Lmynk9jNpXFUynCeflQvcLn2qErEroJfdmr/RAaJEwxb7NG/HrXwh90B/rDTx+/Gbfx6WMfnHQrhRXzRreCTVgEf1zN4UozjIOHDfsyLw3QIx7kYjnIx7GaS2M+l8Em/iRetGj5plvBxNYMv2kX8ftzB3x1s4W92evhq3MIf9gb43c4Anw+beNmr4qiYZuWw7LKy4HVqAbC8tMiCj0wm4SPdqBqwkjSsU0GhkEEq2WCGS7t+15YWIVpdgXR9HZK1NYjX1/h70eIiA2BTuAr5yhLMsg1YFWK4ZZsMgIBShpRRh5hRh6BahoBahqrHiaxFh5rXwVFgJ5PGUZFYeY5BQPX/g1IOz2oFPCOy1irjk24Nv+o38EW/jk+pSujVGAx/3Bvibw+H+P12F78e1PCbYR2/HdbxZb+KL7plvKiQZ4dwmPBjL+bBQdKPh8UUDvMZPG9W8Yf9MT7tt/HH/TF+N+niN6MW/mZ3iK8PJ/gDpZJRA7+ddDgSvWiXTggj7VWMBVFyWJD8FqeDv3UAzM3NcQQg6fdE57dDT8aXSaBSKbC6vIT52Xu4d/s2VhYFEK2sQLRKXr8GuUQM2YaIp4HkYhFECwtQra3BrNiEX6dGWK9BSKOGX6VCTE+dPQ18yk24ZRtIGLUoOEyoemzoRQLYzqRwXM6wIEPrqESqXAaPKzkO2R+9Kg8/7VTxkmr7cgbPqWxsFvHlsMG5/ot+DZ91Svi8V8bn7RI+IUbfyOGjSooZ/mHSj92IC4eJAL/+qJBlAHy1N8YnvRZ+NergV5ReenV81qni11ttfs+XjRynF+IYL7s1PKnn8aSRx0EhwQQ3eZo5wPXrH/DMu8Vs5AYQhX0u/Swm3hJ1/f2rmJ+dgXB1mSVi4gFqUgWVck4FCqkE4qUlCGfvYWNhAWqRCFbZJsLk7d+AQKfmrwNqFTwKGcJEDC0mlDw21P0udCJ+bGfiOC6n8bieZx5wn04JLaTxqJLFi2YZz6iurxfwrJbHg0IC2ykijiHs52N4Uk7jee1EyHlWSeNZJYUnhTjup0N4kI3gcSGB40wE21EvRiEndhN+PMinsJdJ4mE5j89HbXzca/DnEEcgUD0pZ/AxfV3PszhESiCJT5T/jytpHFdO0lWDhmZMpzgF3L0zg02JGAa9jku8TckGnE47FHIZrr73Hm68fxVSsZiJIhFCjVrJipdOo8GaYAGCu3ewPD2NjUUBZMI1qEXr8KgVrAH4taQFnOgBQfpaq+UeAUWCjNXK3bhG0HMCgFQEh7kEizWk4BFJe1Klrwt43izjUTWPj0jnrxWwS0Me6Rh2cwnOxVQ9HGUSOMolcJxP4iAVYYVxK+LBXiLEci7Jzr2gE92Anb8mmXcYDWEvk+DS82mLFMMcHpbTuF9M4SAXx/1ikt+PdAoq+Y7yKTyskoaQxVE5wwrlTiZ2eiPAB1O3IRAsQCyiSkAG0doql4R6nQ6zMzO4eOEtrCwvQUahnoY+1UomiTqtBkuz9zB7+xaW781gdXb2BAArSzBSN1CrQkCnhl+t5GEO8pCQXoeQRoOwToeIXouUxYKcw8H9/H40yAZ9XCuwRPu0UcKLRglPCQiNIlcFjyk1VPOs6N2n8F1Mc6qgxtBuKnqiJaRj2OfOXYQbOmzoRIhX10/taBKlLBjH/LwGkSB20zHO5/er1DBKcb9/FA+iG6Hr8qEf9WMQ9XO+Pyok2fjH5SyXq8/bVY4CJbftdAJg6tZdCAQCiNbXsSnd5CaQbFMK4doafnHhAq5fu4qNdSHWV5c5MghXlrAhXMHivRkIpu9gdX4WK5QeBPOQLC1CtSSAQyaBX62GT62EV6VASKflRSNXFAHCupMpH0oBOYcT9YAXk3SEu2xPW1U879RYryct/+NOnWt2KgcfN6j5k+XUQDed0gQBhruC1FNIRbGTpkZNFHvcwElyRCAQtDw27kPUXSY0PWZsxXwYRrzYioewn0vggDqABKRcAuNEGN2wDw2/Cw2/E82gm9n+JBnGYS6JI4oQ1Syetsp40a7iRafGrz2VALh95y4WFhYgWhdCKpVBLpNBKt3EzRvX8faFC0z+xKJ1KOSbEK2tMPFbXRRgZX4OqwIBVhfmIFpZ5CUWCKBeXoKdWL9GDY9KDo9KAYdsE26lHF6VHF5KDSQRa1VI04SP241m0M8AIPb/lNS/fgMfD5oMghftGi+KAIelFHvoDpVvuSQOixkcU0uXOnqZGEeQ7W++fgUCUutIeiaxhoxfcmjR9jswiQV5qmcYDWI3G8Ne/p/eY0jzCAG6LjdXKLSoVKUoQLMCW9QmzqdwWM3iIXUQW1U8rJ/SnUF37sxgfn4BGyIRpBIpJBIpFuYXcOHNc3jv8rtcAdBpGetrqxBSuUcgoM0RG+uQUu0vWsfGyhJWZ+5CIhBAwRFAyh7uVSvhUshg25Twz3wqBYMgoFEhrFej6LGjSUpa1I9hMozdfJJbt4+aZe7r7+WS3K8/LGe5ZdtJRtFJhnkurxn28xzgVjLCYlI75EeXZggSIfSifh4eocESmuRp+V087VPz2lHx2HjOj4dM/C70In6M09GTlaKpoRCaJO6Q9wfdPIFUcNtQdNtR9jhQDflQj4bQSsfRSSfQySSwXS1i71s8P+hbBcDs3CKWllYglWxCuL6O5eVlvPP227j87rv44MZ1Pi5FtL6GmTu3cWdqCsLlRUhF6wyAzVfGF87OQLqy/CoCLMKnVnG+pwhA3m+TihkEboUMHiUNh35TAThQ9bswIoKViWErFUU/HeObSuNchaAPtXwGxUQMxUiYd/tUadNK0I9MKIB0MIC4y4mI046Q1YywSY+0w4KM3Yyii4xmQ8FlRd5h4e8LLguPmNGoWSvoZePSpBGNlDVDNIHkRYsMTDuegx6+trzLjrjTjpjLiWwiilTQj2wkhGw0jEIqjmI2iVo2hXomgUY0ePq6gVO372Hm3jxEG2LMz8/j1gcf4N2LF/HelSu4e+cOlpcWsChYwM2rJ1yAUgGVfQQAagKJV1cgWV3G+vwsNhfmYRSuwbG5CY9SwY8EAEoDTnqkNKBWcHSg5knOaeUoUKPxL9pNHPQiFw0hFw8jEfAiGQ4hGvTxptRY0I9EOIBowA+f24mAmw5yCiLg9SAWDiEc8MHvsMFrNcNn0CFk0iFi1CFq0CBu0iFh0SNGj2Ydck4LezkBkBaBI0fj4HYzCk4rci47cjQR7XYg7HQiRVvbIiHEYxF4vbQNTAelUgmzwQCb0YAwXYvHhWwkfPoAMDMrwPw8RYFl3L17l41+64Mp3Lh+A7P37oH6BGsry9CoVdCo1VApFPyPGDbFImyKRJAsL0EsmIV4doa93yYRs+HtEiksGxtwyDfhpCkiOg6GNolqqCTUcdmUsJoQ1OkQMuoRtloQ9brhd7vgsVvhtlphNRpg1mmgkEohFUuwvLSM6Zk5zM0tYmVlHTK5AnK5HDa7HT6fGwGfF0G/Dy67DVa9DkalEhYComITbrkUboUUQY0cSYseZa8DaZuZwZG2mZAw6ZiXBGjG32SEx2KG3WKG2+WC3U6DryYoFEosCJYwdWsGH0zdwZX3bmJFsASRYBlK0cbpTAHXb97G8soaZmZmcfPmFK68dxU3b9zEBzensCQQ8FpdWToZCVOpWPMXLi9xR3BNIIDg9m0s374F8dwMlEsC6FZXoBeusfEt4g1YJBsnaUC8weDwqJUI0Zg4nRRC84jrIiiXVyFfE0K6KsSmWMx8ZG15Fffu3sX07buYnp7Fe1dv4MLb7+Hsmxdx+b3rePvie3jrF1dw/eYd3L49g3nBEsRiKeRyJbRaHQxaHaxmMxwWC8xaLWTLy1CvLMEl30TUoEXSZuZWtU1CDSvqWWzArVHBa7XCY6dNr1bIZXII10W4N7uA23dmcend9/HmubfxszNv4cxPz+Ots2/jxpWrmLk5BcH0LO5N3Tp9EeDW7XsMAIFgEZfeeRdvvfUWLl96F/Nz80z8VldWuEewuSnm2UDBvXs8R0i9AMH0NKavX4dw+jbkgnkoaVMIg2CJje2SyWCTSmCViGGjYVKp5AQAJh0LRLq1NSzdvo2ZqSncuXUH71y8jOvvvY/bNz7A3L05TL1/A9cuXsI7Fy7izbO/wE/OnMOPfvxT/PCHP8aPXn8DP/7RGfz4h2dw7tzbuHz5fVy9egNX37+Jubl5KGQ0pWuA2WyGXqvlhpZobhYWiZhFKRoFD2jVvH9BtbwItVgEq14PvVYHlYpmI7QQrglx7dpNvP7a67hw/gJ+/PqP8cYbZ3D5wkXcvHwZszduYPraNUy99x7On/sF3nnn/dMFgH948RBfv3iIf/jlM3z97AF+/rNz+NmZs3jv8hUI5udwb+Yei0BS6QYrhevUBBKLoVarmf3fu/kBpm9cg3RuFvrVZaiXBFAvCmBYXTnJ+XIZXHIZ3EoZRwAihUG9lkEgXVzE1OWrOPezN/GLC+/i0qX3cOXdK7j41tu4cuEibly6wsa/efky7l69iqkrV/jnr7/+Bl5//fWTx9de/xfXvXuzWBMKIZPJoNZoIJPJIVhcguDOXeiFQnhVSsRMBoRoM4xICOHMPQiXlrC6toYNsRhisRgrKyt8FC6lwn/2/vz5b+CN18/g0vkLOH/mPM6+cRZn3jiLX1y4cnoA0E2nMCmXMCzk8HjQxpfHu/j62SN8NOzgzTfP4e7ULczfm+UoQOogGX9pfh4q0v+VCgiXl3Hn/au4feUqRDPTDAD96hLMonWYhEI4Nzc5AtA8gFu+CbtUzN5npQGSxSVcvniJPfrcm+/g3Ll38NMf/xxv8I39Zp3BxbPncf7MWf7+T4Z/7f9/nfvZOVy+fAV3707j7p1pTE/P4OrVqxBO3+W0FKENKw4bgjTptCRgI5554wxuXP8A5869hXcvvYsLF97G5pIAG/OzmJ+6iQtnzuC1117D+TNncOvKZb4Wui56Ha03z759ujjA+TMXcPYM3eDzcCjk2KXt0+M+fvtoH5/uDnm+f5FEIOE61leWuQG0ODfHbWORcI1/d/u99xgAsoV56FaWYVpfg0W0Dsv6GhwSMZxSCbxKBWv/TuosLi9DODuHSxcu48wb53D2Z7/A2XMXOaeSwSm88uMrEHxj8Ndeew2vfe81vPXWO7j87g3+/oN334V8ceG/CYSf//zn+OEPf8rvNXPtKiziNW5MpWxmNAJelqhJtZy/cePk8157Hf/xP/xHjjir03f5+5lb87jy3gd499338fbbl3Hj6gdw6cz4D9//Ad77xS/4OXTNZ39y7vQAgIz+Ot3U117jR1oXzl5EMejF434Lnx9u40G7BINYyDq/YGYGa0tLEMzNMg+griBJwbevXMbC1BTkggUmfzYJbZ2Wcb4n4/Oj7CQSECdQLC3y57DH/eRn+NlPL+AnPzr7z43+2uu4cekiX1vcE4ZJpcPUjbt4552reOfyVbx/9QNMf3APTq0eP/jBD6BaFvzLAPhTqD5ZdI1BtRIpqwF5lwVlj401AaoANmZm//Q64gNUzsZsdqRcHszdpm7oHbz55ju4cWMW4lU53CY7bCo9vv/aD/D97/8QP/3xT/lvOhUAWJuZ4Zz1jeFP1uu4e+Uyzp+9gHLIh+N2Fc/HPexVC3DIZRDOz2F9ZQVry0sQra3xTMDdG9cZACvTM5DMzcG4LuQyj/IrTQG5ZJsMAo9CzuTPIBTCKFqHfHERNy9d/mehntY3Of38z9+EQrQJu96KqDsEq0oHwdwq3r38Aa5fv4P5uVXcm5qHz2CGRrSJ8z8/B6NoFdcuXsSZbwB0+TIWbt7EzLVruHv1CqcoSkUllx07mSieNAs4qqTQpx5ByI35m1NYnb7NHGVjbhayFRHcWj0CBhOECyKsLssxN7uG9TXaK6GBRWOARLCKoMmIN370Bn7y45+AIuqpAIB8ZRVn6Ia/9hounTnzJ+TLlxfh0SgZBBXSx6sFPB920YqFIFs7Mf4KlYTLS1iYmcGd69cwffUKlm7fhXh2jvO7i7R+5Yno45bLuMzz6jWwbW4y+RLOzODaRQr//+Tx//WaunIVZqkEwjkBNBty2HUW2LVmbIp1EAhkWF6iMlQHyZIEWpEEwtl5fP/73+fyLmbScwUinJ6GTDAP/foqdMIVBodpfZXnEssuB+6X0/hk1MQnwzo+7lVwv5SERbKOgssGk2iNw//y9Bxki2vQiKRQCyVYWZRBuqHG6rICklUphHNL6CRiPP4upEHY6enTc0zc+tw8Zq5cwfyVK1ifmsLNi5dw5eJFuOhsP5uFa/S5W3eR8bqwXcphp5SDXaOEdHUFi3PzWF1cwvKCAFPvv89lEAFgc37+BAByGXu8T6mEV3HSCHIqlbDJZDBJJBDNz3PZN33tKhanpjB34xoWb01BMDXFWgLNFBjE6/Do1RjmEyh47NBt6iBZlUEi0kEiMmJTpIFiRQjBnXu8qbPq97PQFNbrUfC4uOdApadXLYdHLecKJKRWIm0xohPy48NmEV8/2MY/Pj3A10db+HxYR9So5d3HXdL4YxFUQkHk3C7UQn70EzG0oyGMUglsZVIYpJIIm4xQrK5idXoW2rU1/tuChlMyEmYQb2Bzdgay6bswrq1As7zIRojT/9j1OJDzuhA0amGUSpD3ulCLBBC2mrG5soJlwQIW5xcgXF7BHGkA126wIUUzMzCLaUfwSfuXZgBoBbQa+Kjs02jg0ahh3BDBtLEOo2gNG7MzWLk9hQ0WkBahXVuFfGkRlKKUqyswSWioVIas245BNoGtfJK19lYyhFLQzYdMuFQyJCwWtKJRNEJB+DQaOGQnIKQaP2pQI2bQIGXSoWgzYTsVwiedIv7H+xP8Xx89xP/++BBf7/V5NjCip/6EHhaJBIrlFdYMNoj0CgSQCBahWRdBRWLV0jI25gWYvTkF5dIKLJtSeNRqdp5TAQDN2ir0i4swLi/CvL4G9bIAsqVF1KNBNOhfulDDJezjVGCTyznP+Y0GiBYXIBQImAtINzZw/dIV3L56FfM3b75KASeqH3UASe71KDYRIYnXYkLUYkaSDpJQKWARr3M/gBpEhvU16NdWuBY3ED9YXmYAzNy4yeBamZ7G6vQ0pAvzEM3PQSyYh3BuDrM3KL/fgODWLahWVhE26hkIXrUaXpo9NOheTR/rEaX9iRY6fEKHbtCF5/Uc/u5wC//l5RP838/u438+mvDsX57n+iwcsTYFi5h5VRkQP7lx+QoWb09j/tZt3LpyDVcuXMLVC5ehWRPCtimFT6tBynFKBkJoYoeObfFJJPDT9q5XEzwU7spBHxI2C9RrK8wRzp65AN26EH6DDnqRCOLVVTb+yuIiblGz6OpVzJIQtLDAB0K5lDJW+CImA88DJuwWxGxWJB02pF12xCxmBHRaWGnrOesCJ/IwkUfyXLNYzJ+3QWnqxhQEt25j/uYtzN2cwt2rNzBz7SaLR0QYSR8gQunX6pG00RlBfuQ9HuRdDlS4wWNF1mZC7BUA0kYtH0RB4+A05v2/PjvGf3nxAP/bwz18Ne6gHfLybELMYoVXo4FetMEE9+blKwyCb+p9WsT4ZYIlmEQbMIlIWTQiaT8lAFidnTvxCpMRFToYUqNE0GhEzuOEfmPjhJFT7f2977G6Rc/30K5hmQwKUtc2NtjzqTQ8AcE1JkG0GdS6KeFQH7OZ2SPSLgcbn25OwmblSBAyGhEyGhDQ6+BSKmCjMlEug536BbJNqFdWObzSZ39zw994VSl8QxaXb92Ffn0dAYMOKbsDRa8P9XAEtSD18oN8vgD1+wtOGtfWImvWIWPSMhBoRvBXvQr+8cEO/o8XD/CPRyN8NWrxTEE3HETe5UTa5oBbpWbuYqW/e3EZgqnbDEJaG7PzsGxswilTwKVQIWaxIO9xnw4AXDh/iYWQIm3ZjgQQtRjg1+sRtZj45rLoQt7/xhu4duECLp6/CK9eB4daBZ1CAcX6BhamZ7giuHbpMku25KHkuQQCh1KBkMmEuM2CpMOBlNOOtPPkMUNfMyjsiNus/LkOhZK9n5dSCYdSxUu/LoFobgHLd2c5CixM3YZ8cQU2KZFLLSIGEzIuF4o+Lyp+PxqhEFphOgIm8urYGA9P8tDoedJAZxKdRAIaDfuwlMTf7nbxf758hP/paIg/bNX5sKdOmM79o7OGKJK4kLDZETVZkHHYETLo4dfp4JQr4VZq4NUY4JApOe1ETCYU3I7TAQBaGaeNT9ZqRoIIGnVM1BxyCRZuXmPjU52+evcuNmbn2BvJ+61yOdTiDQbBxiopgXO4+qqCuHvtBuRLS5zHLSQAyeXwUpvXbELUauHj3RJ2G9KvwMBRwWFH1GJhsNDNpRW12hBzuBC22OFQqOFUa+BS0VLDo9bCp9EjZrYhYbEj6/Sg5PWjFQmhEw2jH4ugH4uiFaTpIB+PatMBT2k6fUyrREKnQFIvR9GswSTk4o0i/8uH+/hPD8f4elzDYSqAut+DcSqGTiSMmt+PgsuFtN3Ox9HFzGYkrBbELRaEjRa4VTpYxFI4FUok7dbTwwG+WVTfNyJBuFQq2OQyrp2Xb97Ewo0bkM7PQy1cw+biIhM3j1YDvUQCtVgMo0YDpUzGJI0aNVcuXuIosDYzC8XKMnS0L3BtlcmRV6NG0Gjg0E9hkm4SASJpt3N0iNtsCJnNcGn18OjpLEELAkYzgiYTEnYHMm4P0h4Pkg4XQkZ6DzsyDvJOLwpuP+qhKLbzOewXctjNZ9CLR/kIOZr0KTosqPqcyNGuHWL4+hMAZAwqVKw6TIIufNmr4D8/P8TXkyb24l6U3Q7eoDKKR9COBFH2enhqmQwf1Ou5/KO/w681wiZTQL++ATdVAHYH/12nCgB5Nx2J5mHhxUWz/kuLkM3NQi2Y53JNtbrCMm8/nUTB6+FcqJcpYNbrIRdLILg3y+yYjH/p/EXOjeuzc6wJSOZmYFpfh1Mmg1+t4hFwYuW0MZQIIqWHFEUAm4XTgE2hhktrgEdvhtdoQchiQ8zuRNzhQtxBN9eGoNGMhM2BvIfOBwyiGY1hlMlhv1jEbj6PcZqUvSgqdA6Bx4GMxcQjYTQOljVpkdarkDWqUTBrULJoMfa58LKaxn9+foyvxw3cT4VQdtnRDvowjIV4PI1KSzp6LkXpSqOFS65gccsklUK9RpWLGAGDgQFA0e5UASDrcrBwQjUt1cAumRgWkRCOTTGcMikraXevXEE/GUUzHIBHp4dRpYFOJod4ZQW3rn+Ai+cvcAQgAFB3b+7mLaxNz7AuIBMIYJVQM+hkBjBm1CJu0iJBG0NpPo8OZfS6kfNQrrWykOLV6eHXmxA0WRA0meHVG+E3mBAyUzXhQM5FaSuGYTqLnWIJk3wR27kstrNpjFJJjgD1oI8BkLOaeFafBJ68RY+CWYuCRYeW04yGw4Qtrx3P8gn8zW4fv+uV8aKUQM1t41nBQTSI7WSYTw2jYVM6gi5hNsGrVMEuk0EnEkG7TnxHiRClMaoc9PrTBQAKZaSizd++i4zDwlJowkh1swYOqRiSuVncvnqDuUIj5EdAr4dsbR16hQLyDTFLutRToJKIAHCB1tmLXKMv374L0cwspwLH5gY8yk2EtEoGAU3ipF02ZFx2BkDR70Xe62aOQNWBR0vCkZYB59Ub4DeaELPbkfV40IyGWI3bK+axV8hhks9gkk7yGiViGMTo/D8fKl4nz/lVPDQF7OATyKp2A28K6dHGEJcZQ68NjzNR3vb9ZaeE33QKfHRNL+hBP+jGViyAcYImi4M8YVyj/5NkNiOg1XLY92l1CJvNiFrtCJjMXDGcKgCcP3sR/WQcHrUKJZJ98wkun0pOO5/o4VXIuF0cNJLE6oRXq4FMKIRWJsfm6irLwBfOXsAbb5xlAFC1cPHsRRZJiBRSDS+Zn2N9nfoCfrWCW7Exqwlxq4lLxaTdgiwNZNLRam4Xl4sEzIiFPN6GlMuFvJcOgAyhFSfPT2Gcy+CgVMBBMc/nAdKZf7vZJMZ0WEM0yHIvjXTTGHfeYeUhzxL9W3ubHnWHAT2vFcOAHdsRD+8Z/E/Pj/DVqIHf90t4kAnxXoFuwIVBxIvhqx1BdCYhTQxXvEQKrVzKEq8Jm00IGk0MiG/L+N8aAGh1YlH2xKLfg+PayZl63Sih3c0j0YR63boIUTr6jLaNLS5Br1RDLhRBKFjElQsXuE7nuYKzFzgCEAiuXrzMjR0CgWppkdU/B2kEShmCBiJTBsRYITQiQSeJelwoBfwo+DzIez0oeL2ohkKohsJoRqNoJxIYZtLYLWSxX8zjsJTHYTGH7VwK+/k0Dugxl8IkGUU/EkTD70aBlD2zns8iyNlMyJvUqNp1aDgMGAXt2It6cT8dwT88PsDfbrfxx2GFo0DDY0efokDIy4dE0g4hSgvNgAf1gBtFErRMdLKoiR9JBjaJRacTAI1Y9P+pBn24eP4SWtEwPuzW8ID+W2YpzceqNvw+NipN+VrFYkhXVqGRbkK1KcPKvVlcvXCJFTlWx14B4L9eJJcu37rNAyNaOjNAtMZDmRQNSKun3cIROk3UYeVSq0zn/fo9XNvXwiE0Y7RPIIVxPotJPoudfAYHRWL9GeznM9gj4xcyJyuf5g2jxOAJAGT0mFaFkFqGtEWPuEaGtF6BkkWDrtfCh0U8yEbxxaCOf3y4ja+3m/h1t4iK3YRhxMdHv/RonwAdRE09EdrDQCeT262IGmivo4Enml0KOeSLgtMJAFqDVAJXL12FcnkZ++Usvjqc4IvtAV4OO3xD2wEPN0Royle2uga1TA6FRMpaOc3s0djW2TMnXIBSwgkQ/mndunwFS1O3sDEzDfXiAk8NEcmkaEA9AdoxzCeBW0wouGj3jRMVj4uPbqVSbJiMYUx5PpPCmMJ9Lo29fIYf6TwBOv71qJjlAyAPckk+e6hOB1JS/U/b0eVSBP/f6r5sya0sBFH2sgAAIABJREFUu44vFQ6qJVazxKpkkskkkkkQIIAEQMzzfDFcABe4uJguLuYZyAE5Z5JJsthVPcjdUnsIhfWmkMPhsJ8c4U+w/8IP/gZ/gB+WY28kq7pkhdQttdRVD6eRZCXZVXn22cPaa68txDHOJjAvCuwJ3qgV/HSk4d8dTfCfvrzA//ybv8J//9fv8F8/nOMXEw2vaecAeYBBGzf08rUGrrQmC1oc1avoF/M829AR85ATcYTsP6B28G+eoDfyv97PRzhuq/xiJxUZv1jt41cXJ/gPX77D3/zia/z7ixME7HZuewph0gXIwu90w2snnFzHRE0KBVQRrClm3zWC7QebsO7swms0ImazIuP1shFwSKBJoVyaO4c0Lj6v0rDoeornWG0wMPN2PMCHGY1tTfHTxa2kyxFJyaylX3+9WuDfHO/jV0eUCNJEbwcnahUzUieT8jioSFhKIvalLHsAwgNuWgp+MWnjL4+n+G+/fI//8Td/xZf/Xz5c4M/nXRwrEt73VHwYdvC2Rwahsic4azV5oKUnikxzo9dPP5fdbd0PzwDG4/H/1lqp/zuvVxgRDNqd0G/vYlAqsSv+6ugAv76+xFdHS3itVoScTq7/MykB0WAIiXAUe89fwLC9zZ6AqNJkAOwN/pYXoH9G3EGfycQgUyHgZ+4gcfHrqTiPjHFIKOQwq0jrqaFaldW8b4YkED3E1/MpS8eSAbDe78khu32aFP71aolfHkzxbtzGcaOCqZTDtJzFQiZhqiIOqQSsFjAnMKiYxRutip9POiwq8Z9/SuJTX+Kvb1b4y9MZvhqonDBeqVWuCG66Gt71NLzpazgmeLtcZIPV0inUYmEUfO4f3uJIRVH+T6MeQbHg4Zf/djJaY/NUeol5LscIpqWErZlJI+nxwmcjCTgf4uEoUnHSD0xx29a0vaZtU1OIoGGmSd8mhX9XOPCbzUg4HMh53MxFKAS8UGJhrhQoJyBmz7KqYNWgGr7B+v7vRn18NaOJ4AXH/V/RwOhqyYpivyb3f7xkmTmSoh2KAjQhhq6YwplawUWrguOahFU1zwZwqBRYnPrrscY8gL/+8jUrif5yOcLPp128addxqSo4rkp43VFZxJJ0DckQjqtrWLktRNGMh1GNBnki6gdlALISQEVyIyvYkElZEQ2ZOMun8mvVVnHS1rCo1bjB0RJzKAQCyHh9TIqI+oLIpUkaJrc2AOLcPdfz66av6YIpMSR84CPj+OMhA9h6sMmJYcBsQcrhQNpFhuCCHPJDTUR5Hw8JSM1KIidxpCx6oZH7bePDZISfk/vnpG/J2kG/PiEZmQPWBKAybVktMaClZRJYKkW8GzbxftjEaaOEI4Xg4Cwbw3VLwc8nXfzb1YLFp/7icIafTXv80q+1Grt8LR7GaUPhXOBDX8M1ydwrEmb5LLpCHGoyDCUaYl7CD8YAFCWEouRFMmZBKm5BJGRCyE/1/Ba3cS/7Xfxkf4630zGXY6OKzGWOFAkzWSMZifGcHk3dpBIJxgJcNjvnAy4iaezqYdjScdzfePDRCB58xwjokKcgKnbSbkMp4EUjFmEDUBMRtFMxDMQUZmURx3WZ9wy86aos5fLzgzkrfv85KYifHuGXx0v2CiQvc9io8OXLYT8KAQ/2qyVckxTMvIertoJ9pYBJMcN7CU6bMr4akVzcGL/an/Arv2H1kBquSPOvUsBEFDAtZHChKuwVXlNeQjJ3hSw66ThayQgK/vVMwQ/CAGpKGErZj3jEglDQxC/f49HzcTl20BSzoJLw3XyM15MhTnodLslm9SrUvMgEiZg/iJDHi2w6w2EgFgzCZ7PDZ7MgYDXDb7HAaTByf8DwMUHcWIND1DX8aACGbR18RiOiVivyXjeasRBffDed4NfVzyUxLqSxkPO4btfxpttkfP6jB/gL0vo/PuDdASQvR+GikxNQDgdR9PuYbjaWsrhoV3HVrWFZKWIgptFIhFGPhbCoSDhvrvcV0LqXk5qMaT6NhZTDsixiXEyjFgtBS8WxrBTYCK5aNZzWSliWRAyyKTRIHt/l/GGsj5fLQUgFD+JRK8IhM/xeA7xuPWw2HSyWbXhcuzDvGiDFY9yqPe11cTHs4/V0jOvJCCOlwi3elC8AISlAzGQhyzKyKQEhp4PJnFGHHSnyEn4/dwpNuh1m76w/d7hioFBhvj3EQ6RcQPJ70YiHoaViGOUEPuN8GlMpg6UssgoneYG3oy6+oiqAFkMcUCWwj6/IWHsaS9HWYhFIAR9SLge8RhNa6QQmMukUi3xZcbsdDhr4MJugRIOY0g7gWgmLUp5fc97nRC0SQD+TQC+bZOOc0rKqQgZHVQnHtRKO62XWNRzk06hEw9wy/94bQKMWQUkKIBq2IOQzwusxwOnYgc2yjd2dDbhdu8imrMgmrSCyiNNoYTz+pNvBa+qvT0aYN2scIjLhCIQkqYSJKIgibw9xvnzJ3LwECUfQ3IDzFXPy6bLp4q2UJ1COYNDDaTQyh5BCh9to4n5DkbiJQT/UeBjDXAqzQgaLksgv72MIuCElj/GAe/W06oUWShBGT80e6i8Qta2eCKMhxBCwmBmYogHVYsAHt17P8wL3Po5y3b3HOUrKbkc56EfR6+HvMW1vI2gmr2SBRbfD1HklEuCEkrwJgUlEKNmvkN5RhrmM5Mm+1wbQbsRQr0aQiNv5xbudu3DYd2AybUG/u8G/lxHsKGbtEOJmJCIGruN3tnYgJ1P88mdE5sxnUYiF8Wz7OXTbzxALR5GIxZgSRvE/RkOVfh/P3vktJvjMJjj0ek6QHMQxMJl4+MJnMTMF3Gs2w2kw3FYDHshBP2fVbSGGST6NpZxnA+CYLa+z8ffjAW5GPbwd9TjmH7eqGORzaMSjUFMxtG/X0pVDfr7o9cDmmkYWN+4iatiBb3cbju1NNoa1IdznQ1//5vk4K1Hn0fEoBoUMawos5QLmZVI+I5qYh8vf760B9LU42o0oclk7u3y7dYcvfXvrPgz6TQR8RhRFJ0qSC1nBikTYhETEiJxgYT4eNYt2t3aQ8HrhNBFHb83Lo8Qu6A8iFonBQQoiHpoV8MC3Z0bEZuVJYeIIuvQGuE1mZtNSeIg6bAhYLOw2ae6OjCF0+/1y0IcObeNMJzDKpbAoU/1OP+wc5wHnVA20W+seRUflzuW8UkKf5vlFmgnI4bStMi2LYOaky3H76teX6dbp4Dfq4TXswrmrux2J+9YjfPQOTIm7s6bEUQubBCXa2ST6BWpkiZxHdDMJdHMpNmLyat9LA1CrITSVIESBLl8Pq2Ubuu0HuHPnDrY278PnMaBwe/mFnINffzRkRDphgShYkeFPG7Nv6Yfx7dzeJ3j4xSa83gC8Hh+KYh65dBp7VA2YjAhZLUg47NwFpITQb7UhYHMgYLUgZLMh5XYi7nTAZzZz1UDfQ3+GSCj1SBBaKop+Jokpo3h0+Wse3+q2XX3SqjNKuKiWMSkV+AyotCOxyV6bu5aE0BFII0VCty95faHOHR3suzroNze+MxLHhnD7+ZEPSdUEXTgdUhTp3mobtzNx9LIJdPNpZgv/S1z+72wATSWEsuhCJGCEy66D0bCJzc17fPl0HDZS/bRAzNghJK1Ixc2IRagqMCKbtCGdsCIVsyCdtCIZNa/bvBtb7BXICB49fopIJMbSLIWcCEUusWRcxOtF2GFDzGVH3EkGYEXY5ULM4+OpH3r9ZABkHIG9PYQsVnhNFnhNZkTtVhT9btRiQQ4D1MAZcRVACycL2KfVsjUFy6rMSOGoJGJI+33LpPdTxxEpeHVUzKi7WFcwqJRwPJ9g0e+glsshT5vPggGErFaehPpoGPSp29jgbJ72HPXqCk4OFjiZj9EtZDEs5zEu56GlidhCotdxBpiUZBQe26vvlwHQ8qe6EkQx64DbscMJ3ubGtxdPx+3YRSpmhpCyIBYxIhw0MA5An9GgEULcikTEjOTtiYfNjOZRa5d6/hQGXrwws45gRaa1cWWWjCXRKFILz8aj8FvNCFotiDgciPsDSIVCPD9HP3wa56Z5OrqMpMPJ9G5ypUGrGRm3k2v4OlUEt6tmh/ksRoUMl3gfUcIRXbwkYiwXsd+osdsnYzjUGphrDRwMurg4WuLm4hTXJ4e4Pj/GcjLCsKOhkhch53MsbWul3GTPwhpE7ZqCoabi8vQI72+u8fbijP/cgtrKPY29DOUY5BlaQpy1kEhS93tlAFo9hJxgQ9BLEy2f8OU/eHCXL/7u3U/g8xiRSVqRTdgQDxs5NHjdu/C59Qj6DQj6yAhIBs6ISGD9NXkRYvqQBg71+MkLPHyog81OQhFZSJIEMSfCabLAaTTw0kiSiyMXT68+FQpyD4G6ZVQdFJMxFm0qxxMokhKH04nIKzuiTidyPKXkRiUSRJcXTGT5s0tik2nSGqSeQYovol/MMrWdBllOxwO+qIN+F8tBl/cBv7s8463hb68v8OHda5yuDrCcjjHudTDutVEt5NAoSViM+mwcR4sZ9mmj6OtLvHt9iTeXZ/x5dXKM1ydHWA27zJtspCKcFO6ZXjIW8r0xgEYjDkl0IUDx3ryerTcZiK3zCcymbfi9RiRj9KotiAWNCHlJ/VsHu1UHh03HQBAdj3MXPtcu/B49/11y0c1cAYfJzPQw3cYW/vT+JosyxeMJBANBJGIJ+F1uRAN+iMkE5HweUbeL6/xMNIqAdY8TQElIIp+IMvu4msmgksmgnM2gQivnSYLG50XS40A57Gc4uC+mmZWkCpSEUea9HiejX5MHOKbVr9MR3l6e4fz4CMf7c1ydHuNnP3mHN5eneP/2NT68f4Ovv7zBzfUFjvcXOJxNMCFhCNpTMBngcDLE+Yq8xCmOl3OcHh3g/ZtLvCUjuLrg9favL85wfjCHlhOgxEK8Oj4ZjSKbSmEyHv/hk8BWMwJFDiEWscLGl38Hu7oHnOmbzToEfAT3mtgz+N16+F07cFq3YTFtcX5gNm2x0dgsW2wETpsOXs8uynk3GoqfDcBlWo9orb3AfYTDtGEkyRo8hAlUZZkl1WiRpFzII3ILDmViMXip9KMcwLaHyCsbCoKAFm0qp0GTZBzVQh5yRkDW50ba62LJFiKntgRqF6fQoynf9PrlkxFQCFjWyjikIQ567TfXeP/mGm/fXOPD29d4c3GO67MT/PQn7/H2zSXevbnE6dE+aw/S59Fsgmm7hcWwzx7j+vQYN5enuFgd4uz4CFfnp7g+P8Hri1O8ub7AxdkxTg+WGNI+5WSEPRHtUqzTfMBw8Ic3AK0Rh1z0IegzfRPrTYYt2Kw6OB2769rfpoPDug27dZuNxGzYxO7OAy4LzaZNGHY3YLNus1dwO3dQEl2oltxQlQC2NnVwmy0I2h3M9Xv08An0LyzweYPIZnMoFgqoyGW01QbKtINYzKGUyyAXj7OAJKmIh1wupGNRKFIRzWqF5wtopwAZAHkAhQwhRSxbgcfMaaaApOUo5nay5AVIeSTJY9z7Wh3TVhNnh0tcnZ/g6uIUb19f4fXVBd6+vsDJ/oIv72cf3uH8+BAXx4f8umc0CHN5jqPJGMtuB6vFDMeLCa7OVrhYHeDscMEe4PhwH0f7C5yuDnF6fIST1SEuz06wPxkxm6kmJBF0udBpqZhNJ1DV5h+uF1DO+6DWYqjLUWxvrcs8/c4mnLYduAjwMW6xJzAZ14devNGwAd32fWxt3WcDoNdP5+Pllwtu1GQfGhUfGrKP9Xyolk+6PfDb7JwMkl6O1ergMFCSJE4E69UKKrR0MhZj5nClWEBeSCFM8jHZLNR6FXW5xF5CoiUTtFUkl0VFzPGKuQYri5OYZIZVSZqkMEYqI6kED5PSACklfoejHpbjEb/WN1fnOFsd4fL8lC/r/ITOCmeH+3h3fY7D+RQnixkOaEH0dIgzyvDHA5zMJzjbX+BytY/X5yc4no5wyd5hjOVogBlJwc6mOFjOcLi/YCPYn47RIU0hWpQVj2LQ62F/OYCmaX84A4hHrKiUA2gqMUiiBzvbD2C3rGO74Rb0obOje8CHXj1dPv2efmeDPYHdsgWHbf365aIHtbKXXz6d+q0B+CxU27sRd3uYA0Aw6bNnBrxyOJHN5FC+NQIKBVqjhmZVWXuEvIh6pcL7BCk0KMUC1JqCNLnQksQ5QMrjRiEeQykeZfyeZwRTybXYRDbDn+QNRuUSDnsdzLqd9QulCz89xupgH6uDJVaH9LnA6cmKL/Fkf84Xejaf4HjQ42TxaNDBUU/Dea+FN8s5blYHuDk9wmrQxn6vhQWVku0Wpv0uRh0N40Efg24bUzIIEoZoNVgJnZLb6XSAfr+F6biA09N/PnGIv9cAzMZtFPIe1JQIapUgtjbv8eVS1v+b5R/lBQ/u38XGg7vQERJIrt+4uY795m2O+zK9/LIXNdkLtRqEWg2gVvJge3MHHrOVNQSygQDCpChKY9pmOzweEpFMQ6ahDk3j02rU0SSZV7nE+wZHgz66ahOdZh1drYmmIrMULP0e5QOpoB/5ZAKCx80M4gppDSfjtxIzGR4371ASSMBPS+VXfbic4/hwifl0zBq+o14bo26bM/35aIhFr4uDyQiLXgdH4yFG9SpqYhZSOsmagJVIgKeUruZjHA66rC9cojyE5O1KJXTrNbSqCorZNJo1Mugqu/xuo4oybUaNRlkzuNNWUa0I0NTgH8YASEYtFrZClnxoVMPfufS/fagi2NHd5+rAatqC3brFFx/w6CHnXXz5ddnLrp8u/1sD0HESWAiH1rxAnxevTBa8eGGBw+FCKiWgUKDV82WUSxIUWebxMaUkoUakEmLR9nvQalU0SR9Aa/HlNytl1OQSMqQ8TspcHjdEvx8yDZgmYhzz1WScX3+7KGLa0TAf9rCYjDAb9VkcOhkKoN1S0ahWIJO3oOmdagUaYRREZknRLsQ0vG43zMaX+JyUyX70Y2zdf4CQ2YRCgmRpI7BbrXix+xzPtp9h+9E2dFs6OF45WCs5lUwy96FZr6FZqaBGKiSyjE6njVqtCtq45nb+ATiB+awHn9z9BFazDumUE1UlDK0Z+bsv/+4n7B2M+o3bbF+HsF+PfNoKueBCpUhJ39r9N29df63kRV5McU/AbbaiFI2ikojyoAeJPe0+fQ6SmY3FEgiGIohH49whJAXtZq0KjbQHNHKRAyxmEzSUCuRcDoOuhnpBRKOYR7VYQMzlQjYcYg9A42QkJkVyMSQbQ+RR0e/lV9emsFJXoNHrbNJWswKElAC5VEYkHGYxSI/LjT3LHl7oXzAR5dHnGwzz/uhf/eg7sC8fwv8/uYuvahV8qMr4oFTwoV6//f17+PRHn+LRxiNsfvEQT7aecKKbFwSkQyHWH+71uvD5fN8m3qZ/QZUwIeVCLu1aNzXu3kUkZIUiB9FqxP5OA+A8YPs+v/iQT49cyoxmxcV1frXkhUKXzwbg4ctvyF6IQhSJyJozaNWbIRGJU0iimoihEA7C+sKIF4Y9hMKxtUizkEZWSEOIx1GvKmgQfbpD8XOIUb+//qGxGniTEblSWlgniqkkhFCQ+wXUJBJ8PtYKImMQSXg6EUOVxrHqdRQytMRSQDQa5T1HdDnPdp6xvL1u6wn/+khIYpXL4SSXxVlRxJUs4Y2i4F2threyjBs6ZQlfqw38Wb+LX/Q6+ClRzjQV10oVl7Umbro9HNVrPBtJRrNnNiMWDnMukwqHUSU5mk4br+y27/ycDfp/HnbQd34RDdmQiNqRiNq+aV74PCaUix42ALUe/M6/FCV9FOsJ2EnHzCgXnGgqPlSKHiiSB5ri52yfLl2R3GwIVcmDTDKMBw/W8qiUB5Rj5I6TLL1OAk6kHLK7a4LN5kIoFIHb7cUz3XMmi0j5PJqNOmMDzVodzXodo34P49GA5eClTBq5WBQFEpxIxOHQG1hkwmezIRuP8wgaoYRkCDnSNMpmUaatpbksr7chSfuYw8ZydOMcMX3zWIgZzDIC5ukMFoUSThUFl7Ua3nc6+OX+Pv78aIWvxyN86PfxVbeFn/U0/GIywE9HA3zd7+MtqYyoGq7aHfz86BAfljP+76W2tdtqQ9Tvg0ikmEAA9VoFjUaN5Wf/9mPb2Lj7ezeCb75IEKMnYEYkSBZp4cYOXZDLoUc+64Zaj2HQiX0T8+nyqf4P+fXc5VNlL2qKB3LBAznvRkvxo1sPQqv50ZR9bACVggu5VBhG/c43/1EWvQm5YJBLIJJkU5IxxNwe7O68gMFoZQ1/00sr5wSJOBFG8qjX6igVJcjlEhvDoNeB1mxiPBigocicD5QINfT6mDTi2bNBIJl4pws+K7WLLQi/skEIBrmCyNFoWjCICCGGbhea2Qza+RxGRWL9FJk3sF+RcSgrmOWLOJIVnNdquGw08Lql4cs+bQ3r4Jq2lFUreK818GW7hTdEOm1puNK6OGmq+JLG0JYzXI+HmCky0h4Pw9nEgySV9CzxJEZNVBWJ4fPfbLT9Zr71ezcAcvHUnIkETchlnCgX3UjF7Az12m07yOc8qFeDaKtxLvcspk047TrEwwbIRec3rr1S8DDQw6+/FkS3EYBao9jvRTnvhJx3QhS+TShzgQA8FhsygSCPRqvpNOpCAvlgEFajCbRx5KX5Fba2X+Dp9nP4/UHuExQLRU4MCSjptDWojQa6nTYnbbTQgfKEyi1w5LTsIUGaxF4f9vR6uPb2EHC6EPP52JvQgmpywVGinPm8LGrZSKfRzK7X03dowkgU0cvlcChX+PKPlSpWioKlVMZMLOCoJONQknAklbHMF3BaKeOkImNaKGImlXGqtnFQoxV2AxxpNJTaAimp5IN+uF6+hJBKQczl+N+n31cxHVaRSZuRSBjgcn77WD6enZ0Hvzcj4P8Rs24URRdz+xRK0mQ/8hkXQgETXC49hJQTZckHQgbr1RCSUSP39CuSE6ri5yRPkbyQck42AMr4tap//foVKv/cKOcdCPodSCW+DSNZvw82gxnleJxFpQcSzQ5kWO8v+OoV9vZeQf9iD4+29Hj06BmcTjcy6Qyi0TiymSwURbmtEGgfcQVqvc5GQOUiJYySmIPd8BIJ2j4SJR1i2kUcgtf+Cul4HHnqGRQLPI5Ga+kED6l4ujlJzIcCbIwkTadlSZswj0lRwjhPQyAlHJA3IM0BQUA/lUY3IaAdF9BLCegLAoYkaClk0M/m0csWUIqEIQaDaJXLGFL1IksoRcNMZSuKIpLJBJSKhH5PxXgo4GAholS2QhBM8Ll3/7/uq8v1++EM3ClJfuSzLr54Ke9hdm+zFoJc9CIetSDkN0NIOFAuelGVw2g1IqhSTV/+mNh5uVlUyDhQFp1oyl50agH2CPR1vULf44ZSdCIccCMS8nwb0+5vwG4wQwyHoSSTPB9POoDUmKHMnZY6fP75Fh490ePRk+dwvHLD4XQjEAgiFAqjUJTW+wUSCdSUdXKYisb48mmjR05IsiI5NVhIeCpC84e0mSQchSRmuZSslsuMvkVf2ZB0ObmhRKwf4haQADWVqHIyxpVFW5ahFgusciJQmWp3QnR5IboCSDt8CJnt8BksyDjciFps2Li31vunE4/FuYytyzKaVMqmEix5Qy1rWjpRrSrodhvodpuYjBJYztNYzHNQqg6Iog1er4HpdvT6CYvR6x8gGjH9k43gjpByQMy4IIluFEQXSgUPG0BTCSOddCAcsECIkwH4UJaCDA9PunEu6+jlE8hDL58uv1GmxM+HVpXqfS8aChmJGzXJhUregWTcj82tDb78i+56ZtBrsaMcj6GZoanePI9xcXcsEePXwXr5XzzF4ycv8PiJHpa9V/C4ffD7A7znh/ICMgRZLvPCiUIux80UpVyGlM8hm07zKppSgdbW08r6LJSyBClPjaYyKqUiXAY9k0pYzNnt4suPENXMaWedQtr4UcoXIEsS5EKB63baIdRsNpHNpHn3AS3H9LhceGkw8mZUKuNoFxKFKTI6+hwOBoxe5mNxrkjESJgrFNqn2Gg00Gk30VLLGA1imIyTmE0EzKY5NNUAcjk7olHaxEosrC3us7hdO0gl/2ns4TvBgAlC0o5c2oms4EAh54Jaj6ChhJFJkZK3hfMBKeeBJPqglMJQa3Go1TBn9OW8i4kiDarzCelTfGjX/XzqCmX9Lih5YsXY4PfSqhgvGwANW1AHkOYGSQGjTfN7UpEXLTBKR/MC4SB/zxcbTzkMbG7podt5CfsrN/cLXtkdCAWC3DmMUeYvri+cljCVigV+WbSIiryD2mygToBRvY5qRYZckriSKIpZeEzGdalotTGtjAyAykaPiQimRkQ9HoS9pGYeYXygWq1yt248HmM0HmJC9PbREP1eF5rW4jq+3+9hPp9if7lgUIfAnW67gzIZh83GCGVTKkKWqOElQ23WUCBSSTmJfjuMcS+O8YCMIIPpOIN2OwSl5kUh52VvEArqEfDrEQ4ZIUv/+BHyOzTIkYpZkcs4OAGsSD7QoEdVDiERsXMIoHZwPk05gheyFEC1HGEjIKCH6n06FA7aVcr8Axg0Kfv3QS45IYkO5AXKws2wmogYGucFikSHshkMtx4gjm4xz7v5BmVaCkk9epJmzSLicOPBZ4/xxaYODzd3sPXUiOf6l9gjjT+Xl0s3YizRxVA2Tatp6fLppQvJFBsFNZIoJLS1FucIWktlL1CXZRSEFIIWK0K2PfYCSZ+HcQRC/2gkzWM082wi0dAdezbEIzGoTRWddocvfT6bYTAYYD6bYjoZYzQccCeP8hD6vdlswolqR2ujUa2iJIrIRiPIR0KoZARMx0P2DJVKCa2mjHLJBbXhR1cLYdSNYz4WcDDPYjEX0RtQqAuhIHqRSliQTJgRi5mZrEN39o8ygHxm/eoZ8q2FoDWjqClB1MohCDEH/D4Th4FkzI5c1gWp6GMjqNeiTAuvUx5Q9nDMb98mflqVmkheyEUHl4jJMHEGyHWZkBWivDiZ+u/EAvZZbShGaCO4yBKKXdLlAAATF0lEQVQv4wrt26EpWRHdXI7VPV9sP8Pnf/oIm4921wbwwsKhwPhyD1abA5lMjvsGVEqRu6UEkQ4BSISy8WtvNKCqKnuCwaDPr7+rtdCQy0hHwwwYlUiFvFbly6ct5axnSKtsqJ9ALn5vD0JsHQ6qZRnj4QiL2Qzj4ZA/9xcLLGZTrA4PuBKhr2eTEcb9PlTC/Sk0FQroNeroNhprA5iM0e10oFQqqFRooZQDjZofPS2CYSeO2SiFw3kGy0UB00kWk1kGnVYUZSqps3aeu0jHzSjmnOy5f2cDuDyt4OywiOU0h/kkywbQqkXQqoUg5f0I+mnax8ifFCqKoocrArnsY4hYqYTRUnwMALVrAS7/KAxQ3C9kLYiHiCK2i61Nmup9gEwyxCKLJLm++WCDewEkFUPTwjPasVeVMaRQUMhDo9ZvLIagzc4r1TYe6rD91IBtnZHLw81Hz/D8uYlDQigYRVrIcJXAJ5O77SOUINIKuXKJk7COpnG1QBczGQ8x6LTRoZIsGefLr0sFSIKAJolKKTK6pD04HEKIhCHlsqiWilBpXRyVbNR7aLUw7HaxGI9xNJvj/HiF86MVJp0uxuQNyEv0u5h0NAy7bbQbNfRaTcyGAzSkAnslCieUAxTzUUh5B2qKF5oaQoeMoEv5gIDJKMuhYDLOYDFKoF31opZzoJSyopSxQSbDoTto/W47Bu/MxmmMBilMBgL/4WaV3HsUWiMKYgELMTuc9l14XQYGiNIJB7eHKWmUi1QxREETQhTvKfmj8o+8AdX8QszEDaE1Q0iPjY0NBLxOXpxMcZ4WJBEhhHTxKAcYkQp3Yy0ATZu3SDePdH4JtnWZzPj0j3+Mh5tP8XjbgCc6I7a2jWwMO7svsbNrwkuzHU6nB7FYErmsiFKpzKSSfKGAcrnMiWGr2eSLP9ifs/vdn00wooSuUmZvQHw+VS5hPuxz63Y26OFoOYdSzGM6HGA+Hq75fuMBpr0ORjTjOOgwYZT4fWcH+3i9nGPUaPDfuxgOsJpPcEK0sNUB5qM+jg8X3F4+mE64cmk06mygGcGHgmhHuexCoxGApoXRboXR7ycxGgqYDNKYDDOYjQSMhgm05AA6jQA6mg9t1YuOGsCk/7tpCt1p05BHKw6NoF66TIUSwAi0egSqEkZJ9CLsNzMDyOvSM1JIOYMQt0EU1jkDDYn023F2+2vY14Nixo54yACfew1k7O7ssBFYzSZkU1F0CxlE7Dae7qHlji0xi3GljIksMyOXVqySWBKFgmoyjrjLzTJxRB///OE2Nh8/x6OtF2wElBxuPtZD94xWvxh5X7GQyrAB0KLHYlFCrVZDvVbj+D+bjrG/nGMxnXC/f9DW0KrIGLRUPtNuG5enK6z255gN+jg9XDJr55IYPidHuD5d4fpshSWtm+1ozAEcNCo4GfZwPOrj/cESp7MxBiREsZhi2evgw+sLXJ2d4OJ0havLU1xfnOD4YB+1ahWFgohAwM+eMpux8UxFo+FHWwtj0EuiP0ig04mh246j36YkUcBkmMRAi6KrkpcIY9ANYtyPYn/yuzGK73TUBCN8ZAAtMoBqEA0lyGVgsxJGQw4hmyI6OL3kbaaF09hX0GdELLQOC4rkR7+Twnwqoi4TFOzkgZCwz8DIIb363R0dTEY99Ds7iIV9bABU61Opl/H7GH6lKoAWNB80azhsVLEk1YyqzH178hJxt5uTMRoquf+nj/H5xlNsbj3n8/DxMzwlAzBYODdwOD0cBjLpHNLpDA+c5vN55hUsZmsDWM5n3PodtNvoNhuYDvs4Odxnfh+xeYjGdXN1jvPVAZNBidF7c32O66Ml3l2dMqGTaGJEISMO4OuDBW6INTSb4OLoACuSlz1Y4PXpCpcHC6xIGZV+fXmG10QhO9xHqSTB43ZBR8Ml9m1k0zZIkhO1uhftdgT9foINQK0FGaBrlELQajF0W+S10+h1Uhj0EhgN4piPEjicCZw3/NYG0KhRWUfunogfAdSUAJQSYfd+VAkUIi+Q9yARsbIBbGzcg9m4xRClz7PLFHAhYUdNDqLfTWExE7ksjFHsd+1CSETgcTtgMhqg313vxHM7aWYwjrTPzXN9ORrgpG0gxTxLvNFWbRJ1WrXqOGhUMaqUoSRTvEUjYnfAtrteuPCjP76PLx7q8IiM4PFzDgeUIG5vP4fxpR1uTwC0v9jnDyKZEphpTNs+x2PK3qeYjkecAxA7ZzYaMf3rcDljzh5d+E/e3+Dt9Tkzg4nY+e7NFU7mU6Z7nU3HeHdxguuTFfZHQyaJvD5Y4v35Kd5dnPHswH6/i8PRANfHhzg/OsAF/T2nK9y8vsLFyTH2lzN0OhrstnXnT6/fgJA0Q5IcqDd86Laj6HcTbARaMwRVDqCWp/wqCFWO8N30tQQmIwH9bgyDfgyTQQLjfuK3NwBF9qMq06X7UZa8fAgQknJujvVECq2U/IwSCkkH3C4DiC1E3EDqAhJMGQ6a+HvJmPo9ymwFhEkcYuMe/uNXN3A5rXDYTNjc3IBhVweTgRpI6348jX0RJExkza6U50SQPMBKbeCIVD8bVYaICZ8ntJBauV6zhT0BIWxkCLR2jUPCkxd8tp7oOScgZtELoxV7Vifcbj/jBjRvQHV6TalweUZJHDN/+j3MqEkzHTNP78t3N/jy7Ru+fHqtxBH88PYNbq4ucLac43w2wc35KU7mIxwQmWTQw/XqAFdHB3h3Se7+GMfzKY7GI/YiRColRjDRyK/OznB8dIh+v8slbDD4be8/HiUgyYlG3Y9OK4JBh1x+Ah01wjFfLQVQL/qhloPQKFRXI2jXIxwOht0oup0oxoPfwQCo/JPLfu4DFEU3SqKHkUGK7+T6xbQDUp4Mw89oIP2zaNAKr2s9AEIvnajh6STV/N61EXSjmE9SEDMJ+L1OeFw2uB0WbG48gNlIuPYGvE4bMvEgD3ZkvG5m5/SJmqWUMa+RolcN+/Uqj22NSmv1TAKMaHl0zOFgkIZm6EhK7k/ufY7PHlCVsIONzWfcPHrylJJEA3uHbZ0BOt0L2KyvEE8QclhALBZb995bLd7i3SXl8NkEB8sFjg6WzAkkEigxg9/fvGGK+NdfvuMQsJqNcUmTQRen+PLmAqv5FAezCXsCSvZohoDmAei1k2FcnR/j+vIUN9eXeE1zBKtDxguokxmNhmHQ7yDgc7MBhIIG5EUHlIoPLTXEl9/TYtxZ7SpedJUAukoQg1oUg0YKvXoCnWoU7UoYYzWGcTuKUfe3TwTvUK+/VPDy5edzLj40+JlJ2pGKWiAkbMgIDuQzdMFuNgRCBONhYsnoeSTc5dwFkUgJSaQykcbI2mqEY5HbaYXLYYHLboFum2jit0mhjihjLh71Svs8jP9rYoYNgMUdP3qAehXTqsKSMi0mciaRDwZ4lxALSenWe4DvfhMSdjg5fLxt5LP2Cno8fPQMT3Uv2Cs4XT5EInGUSiXODai93G23GdFbUF7Q73OIoByBjIEo33RxZATkCYgyTjkCUbopGbw4PeYkkc7Z6pCp4+9uiE5+hoP5BKujJX8vzQVcXZ6xARA6SPC185UVOt0WjMb1z8Xv00PK26HIHjQpEWxF0FHDGNaCGNVCGDVCGNXp6yhGzRS6tRhacgh9OYgRhYRqBL3ab48H3OFLzzoZCUyTuJNgRzZtZ52fWMSCRNTCyR5l/mQURSKKUsiQgsgk3fA4jdw2DvpNSCasEDPU8nWjUqRWcBSTvgCnnYZJLcwD0G2TfoDulmauQ8Dtghj08Q6+Zpa8wHr9KnmA03YLy7rCHoFWwpPoI/UJSD6VFlTR3h0qD6nnTwuXCFe4+8k9fPbZIzx8tMuX//DxLpeNH79+sv0cz1+YOSQEgyHk8wVkMlnG7YeDPobDPreXW2qDAR6Cck+PD/H2zRVu3lxyOCCv8ObyHGfHh9ifjXF8sMRyNsX+bIrjo32cHO3zJ33fYjrChMrDk/UcwMnJiiHiaIyYTklYTHrYbRa0tRrajTI87l1IOSsaZTu0qgta1YO24kO36mcjGDaC6Cm0WDKEgRyCVg5BkwLolwMYK2E2gm4p8NsbQE6wg06Glb1syCRtyKUdEFI2FnwiA6CZPprnI/iRvpdcPRmBXAggnXDB7TTAYd9FJExVgW3tNZJOlPMBxgmG/RScdgssRj2DQUYDLWeiFax3YbeYEPS4IceoIxhlfICUMpe1Kk41FYfsBRQWeaQJ3W4hh1oqwSPaGT9JzFlgNxKkbOYlUxQSPq51/fH9L/DjTzfw+AkZgAEPHz/H519s47neghcGK4wvrbz5OxqLMWpIr5JiMgFIhCB26P9/fx+ro328vbnG+fkJrukFH+3zq6dPAnSokqBEkmhpR/tLjAc9LKZjHK8O1lVGr4P9xYTnABbzKQpifs15jIRg1Ou4SuoPNHS6DTgdOoiCCbJoQ73khCZ70JX96MoB9G+9AL32XjkEVfRBk/zQCl50qRIrrQ2hnQ9g3v/tAKE7hZyT4zwfhoWdKFKDR6Rw4OQX/XG0mzBnGv0u5lyoSGtPQGBQMuqA26mH329YY9RRCxIRG7KCm/OLthrjbNZuMeLevbvY1W1hV7d9qymwCZfNvPYANKsniZjKa3lXCgNnnSYveVy1auwNpgrp6IrMISQiqRjycR5BegDE9PGZLRwSfnNr6J/86AGXjJ9v6NgzPHn6ko9u1wz9CysTTykkZKlVHCeuQQ65XA6VioJBv49Br4vL8xPs7y94RoD4iAc01HF8yHAykVDo92oVmT1GS20yyESunoyCmkfUDWzUG0jGUwgFInj4cJPzIf3uNnxuF/8sUqkID9ek40YUM1ZUi05okgedspc/taIbXcmLTtEHreBHQ/ShIXrQk/wYyEF0CJMpeKCKAcwGv10ecKda9vHQRinv5skdYgMpZR+fCpE6JQ9z/KjrR/gzUb6UEnkA+h4/aqUg5HwAqbgT8fA6BFAuQPgAVQ1UUVCPodtOML6wpjXdZfdP8DDRznZ02/C77VAzKX7hoxItgJB4+TJd/HG7gRNa16bVcdis8mKImhDnXURyPAzRH0DW60Pa4+VDSSLpBH1cD/9Hf/QpfvzZJu798WccHqhiWKOJL7GtewnDSztM5ldwOn3MNwgGI/D5ghwa2BtUiKqtQZapcmijXJahNuqYjEaQihJfLuELTFbtd7nUpKYTGQOFE/p7kkkBHocXHpefqeWffvoph0RKiIM+D5qK+M3PRogbIYk2KAUHVNEFNe9CI0tfO9EtePiSG6IXmuiBWgywQbT58r1Q8z7Ucz7E3Saew/gHDYDUPghgIEPgSy2tGUEq4wMhNCprYicxfojl25CJ7LHm9hNOQEBRoxJCRQoinXQxiYTCRzplQ4LEIFI2lMlbKAFGtShXWLOJNxgcov/ge/fucSbsddnQydOQZgGLqsxA0Df6vrScgfb1tGqYV8sYlfMstFBPxyFHoxD9PkihMBuC4F7v+XXojRwSfnN9+91P/giffbbJyeJjThCpt2DC02dm6HYtDDGTTgGHB48fLo8PgUAIkXAcYSKSSCVuPFHTiVBGUcyjVq/x14oicyuahlqTiTiHkVgsjkAwgpcv7fC88kCMp7Dqanj8+DF2dFswmQyw223Ip6OoloR1KRgxIp+xMIdSzbuhSV608m60Cy50Cm50Ch50il60JT/acngd+yuUFwTQk4LQ8gEUog7uKv6DBqA11o2f9WUH+DRrQdDvq40wf11X/OuZPhrroo5hPcR/hnoFBEaoVQIlIshnfGv3H7MgHrMgFjYhGbciTzSxagCaGsVwQMsi7vHF0w+AkkLyAvfv3+Pk0OO0rVetVsss3XLcokWNdRyTyne/g7OOxltIKDGc0Fq6goh6KgklHuND1CvyAtTJI4UQUhT7mBd83CJO5/79h1wyPn5iZE9AFcOW7uUaR3j6Ek+fmbCza8ZTnQFWmwuWPTtevXIjHkvCHwjB4yVWUgShcJTzBmpAUQih1+7x+GAwmrGzS3+3gcOM4YUVCV8Iw1KRvdrHut/jdcFhsyAeDaCQXZNuSVElTw2enBNN0Q2NLlzyrV18ngzADS3vhUaooBTGRAljvx7GuBbGqBZGtxxGOeGCqv7DyeAdQpK6apTx/FYtiI4aRVeLo9uJo61SU4hoYCGmhBMc2W5G0VFj6KoxtJsxdNQ4Os04Oo041FqEw0guTQQTO3sCQbBxaUmUM7UZQb+bRLebYlrTxsYD7GyvjYApYg9IZGptBItamd3+WUdlA1i1VN60RWtmqDwkz0CGQEbQk/K3G0KTnBvQ8EfC4UTIamOpGFIU293a+iY5XJeMn+FPfvQZJ4VUIj7efoHHT414/NTAn9R2JkOgUEFJJLGRHj1+Bt3OuhO5+9zMrGXDSxtevXIxYTWVSvNIG4lcGA027JnseKHfg8/u4tV1py0V520VxxoZwHrEzuVywmzUIxkLIptaD9+EA3rk0tThc3FvRav40K8E0KV8SqKXv379rZIfjUIQAyWEeSOMUT2Mwa0BiGE7GvUQysm/3wv8P9PSZUvRe63yAAAAAElFTkSuQmCC', 'Assets/Dragonsan/AtavismObjects/Icons/Custom/Weapons/Staff/Staff00T.png', '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', 'Human Race Description', 'Mage Class Description', 1, '2000-01-01 00:00:00', '2024-12-21 19:45:14', 29, -170.00, 74.00, 154.00, 1, 220018, 1, 220047, -1);
INSERT INTO `character_create_template` (`id`, `race`, `aspect`, `instance`, `pos_x`, `pos_y`, `pos_z`, `orientation`, `faction`, `autoAttack`, `race_icon`, `race_icon2`, `class_icon`, `class_icon2`, `race_description`, `class_description`, `isactive`, `creationtimestamp`, `updatetimestamp`, `respawnInstance`, `respawnPosX`, `respawnPosY`, `respawnPosZ`, `startingLevel`, `sprint`, `xpProfile`, `dodge`, `stat_profile_id`) VALUES
(3, 22, 25, 29, -170, 74, 154, 0, 1, -1, 'Assets/Resources/Portraits/ChallengerT.png', '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', 'Assets/Dragonsan/AtavismObjects/Icons/Custom/Weapons/Bow/Bow02T.png', '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', 'Human Race Description', 'Rogue Class Description', 1, '2000-01-01 00:00:00', '2024-12-21 19:45:15', 29, -170.00, 74.00, 154.00, 1, 220018, 1, 220047, -1);
INSERT INTO `character_create_template` (`id`, `race`, `aspect`, `instance`, `pos_x`, `pos_y`, `pos_z`, `orientation`, `faction`, `autoAttack`, `race_icon`, `race_icon2`, `class_icon`, `class_icon2`, `race_description`, `class_description`, `isactive`, `creationtimestamp`, `updatetimestamp`, `respawnInstance`, `respawnPosX`, `respawnPosY`, `respawnPosZ`, `startingLevel`, `sprint`, `xpProfile`, `dodge`, `stat_profile_id`) VALUES
(4, 143, 23, 29, -170, 74, 154, 0, 1, -1, 'Assets/Resources/Portraits/OrcRace4A.jpg', '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', 'Assets/Dragonsan/AtavismObjects/Icons/Custom/Weapons/Greatsword/TwoHand00T.png', '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', 'Orc Race Description', 'Warrior Class Description', 1, '2019-04-17 09:09:30', '2024-12-20 21:11:02', 29, -170.00, 74.00, 154.00, 1, 220018, 1, 220047, -1),
(5, 143, 24, 29, -170, 74, 154, 0, 1, -1, 'Assets/Resources/Portraits/OrcRace4A.jpg', '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', 'Assets/Dragonsan/AtavismObjects/Icons/Custom/Weapons/Staff/Staff00T.png', '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', 'Orc Race Description', 'Mage Class Description ', 1, '2019-04-17 09:09:42', '2024-12-20 21:11:02', 29, -170.00, 74.00, 154.00, 1, 220018, 1, 220047, -1),
(6, 143, 25, 29, -170, 74, 154, 0, 1, -1, 'Assets/Resources/Portraits/OrcRace4A.jpg', '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', 'Assets/Dragonsan/AtavismObjects/Icons/Custom/Weapons/Bow/Bow02T.png', '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', 'Orc Race Description', 'Rouge Class Description ', 1, '2019-04-17 09:09:52', '2024-12-20 21:11:02', 29, -170.00, 74.00, 154.00, 1, 220018, 1, 220047, -1);

--
-- Wyzwalacze `character_create_template`
--
DROP TRIGGER IF EXISTS `character_create_template_trigger`;
DELIMITER ;;
CREATE TRIGGER `character_create_template_trigger` BEFORE UPDATE ON `character_create_template` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `claim_profile`
--

DROP TABLE IF EXISTS `claim_profile`;
CREATE TABLE IF NOT EXISTS `claim_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `coordinated_effects`
--

DROP TABLE IF EXISTS `coordinated_effects`;
CREATE TABLE IF NOT EXISTS `coordinated_effects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `prefab` varchar(256) NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AVG_ROW_LENGTH=1260 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `coordinated_effects`
--
DROP TRIGGER IF EXISTS `coordinated_effects_trigger`;
DELIMITER ;;
CREATE TRIGGER `coordinated_effects_trigger` BEFORE UPDATE ON `coordinated_effects` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `crafting_recipes`
--

DROP TABLE IF EXISTS `crafting_recipes`;
CREATE TABLE IF NOT EXISTS `crafting_recipes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `icon` varchar(256) DEFAULT NULL,
  `resultItemID` int DEFAULT NULL,
  `resultItemCount` int DEFAULT '1',
  `resultItem2ID` int DEFAULT '-1',
  `resultItem2Count` int DEFAULT NULL,
  `resultItem3ID` int DEFAULT '-1',
  `resultItem3Count` int DEFAULT NULL,
  `resultItem4ID` int DEFAULT '-1',
  `resultItem4Count` int DEFAULT NULL,
  `chance` float NOT NULL DEFAULT '100',
  `resultItem5ID` int NOT NULL DEFAULT '-1',
  `resultItem5Count` int NOT NULL DEFAULT '1',
  `resultItem6ID` int NOT NULL DEFAULT '-1',
  `resultItem6Count` int NOT NULL DEFAULT '1',
  `resultItem7ID` int NOT NULL DEFAULT '-1',
  `resultItem7Count` int NOT NULL DEFAULT '1',
  `resultItem8ID` int NOT NULL DEFAULT '-1',
  `resultItem8Count` int NOT NULL DEFAULT '1',
  `chance2` float NOT NULL DEFAULT '100',
  `resultItem9ID` int NOT NULL DEFAULT '-1',
  `resultItem9Count` int NOT NULL DEFAULT '1',
  `resultItem10ID` int NOT NULL DEFAULT '-1',
  `resultItem10Count` int NOT NULL DEFAULT '1',
  `resultItem11ID` int NOT NULL DEFAULT '-1',
  `resultItem11Count` int NOT NULL DEFAULT '1',
  `resultItem12ID` int NOT NULL DEFAULT '-1',
  `resultItem12Count` int NOT NULL DEFAULT '1',
  `chance3` float NOT NULL DEFAULT '100',
  `resultItem13ID` int NOT NULL DEFAULT '-1',
  `resultItem13Count` int NOT NULL DEFAULT '1',
  `resultItem14ID` int NOT NULL DEFAULT '-1',
  `resultItem14Count` int NOT NULL DEFAULT '1',
  `resultItem15ID` int NOT NULL DEFAULT '-1',
  `resultItem15Count` int NOT NULL DEFAULT '1',
  `resultItem16ID` int NOT NULL DEFAULT '-1',
  `resultItem16Count` int NOT NULL DEFAULT '1',
  `chance4` float NOT NULL DEFAULT '100',
  `skillID` int DEFAULT NULL,
  `skillLevelReq` int DEFAULT NULL,
  `skillLevelMax` int DEFAULT NULL,
  `stationReq` varchar(45) DEFAULT NULL,
  `creationTime` int DEFAULT '0',
  `recipeItemID` int DEFAULT NULL,
  `layoutReq` tinyint(1) DEFAULT '1',
  `qualityChangeable` tinyint(1) DEFAULT NULL,
  `allowDyes` tinyint(1) DEFAULT NULL,
  `allowEssences` tinyint(1) DEFAULT NULL,
  `crafting_xp` int NOT NULL,
  `component1` int DEFAULT '-1',
  `component1count` int DEFAULT NULL,
  `component2` int DEFAULT '-1',
  `component2count` int DEFAULT NULL,
  `component3` int DEFAULT '-1',
  `component3count` int DEFAULT NULL,
  `component4` int DEFAULT '-1',
  `component4count` int DEFAULT NULL,
  `component5` int DEFAULT '-1',
  `component5count` int DEFAULT NULL,
  `component6` int DEFAULT '-1',
  `component6count` int DEFAULT NULL,
  `component7` int DEFAULT '-1',
  `component7count` int DEFAULT NULL,
  `component8` int DEFAULT '-1',
  `component8count` int DEFAULT NULL,
  `component9` int DEFAULT '-1',
  `component9count` int DEFAULT '1',
  `component10` int DEFAULT '-1',
  `component10count` int DEFAULT '1',
  `component11` int DEFAULT '-1',
  `component11count` int DEFAULT '1',
  `component12` int DEFAULT '-1',
  `component12count` int DEFAULT '1',
  `component13` int DEFAULT '-1',
  `component13count` int DEFAULT '1',
  `component14` int DEFAULT '-1',
  `component14count` int DEFAULT '1',
  `component15` int DEFAULT '-1',
  `component15count` int DEFAULT '1',
  `component16` int DEFAULT '-1',
  `component16count` int DEFAULT '1',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  `icon2` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=5461 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `crafting_recipes`
--
DROP TRIGGER IF EXISTS `crafting_recipes_trigger`;
DELIMITER ;;
CREATE TRIGGER `crafting_recipes_trigger` BEFORE UPDATE ON `crafting_recipes` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `icon` varchar(256) NOT NULL,
  `description` varchar(225) DEFAULT NULL,
  `maximum` bigint NOT NULL DEFAULT '999999',
  `currencyGroup` int DEFAULT '0',
  `currencyPosition` int DEFAULT '1',
  `external` tinyint(1) DEFAULT '0',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  `icon2` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 AVG_ROW_LENGTH=4096 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `currencies`
--

INSERT INTO `currencies` (`id`, `category`, `name`, `icon`, `description`, `maximum`, `currencyGroup`, `currencyPosition`, `external`, `isactive`, `creationtimestamp`, `updatetimestamp`, `icon2`) VALUES
(1, 1, 'Gold', 'Assets/Dragonsan/AtavismObjects/Icons/Custom/Resources and craft/Resources and crafts_Billet_03_ver.png', '', 999999, 80, 0, 0, 1, '2000-01-01 00:00:00', '2023-04-19 20:20:22', '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');
INSERT INTO `currencies` (`id`, `category`, `name`, `icon`, `description`, `maximum`, `currencyGroup`, `currencyPosition`, `external`, `isactive`, `creationtimestamp`, `updatetimestamp`, `icon2`) VALUES
(2, 1, 'Silver', 'Assets/Dragonsan/AtavismObjects/Icons/Custom/Resources and craft/Resources and crafts_Billet_07_ver.png', '', 100, 80, 1, 0, 1, '2000-01-01 00:00:00', '2023-04-19 20:20:22', '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');
INSERT INTO `currencies` (`id`, `category`, `name`, `icon`, `description`, `maximum`, `currencyGroup`, `currencyPosition`, `external`, `isactive`, `creationtimestamp`, `updatetimestamp`, `icon2`) VALUES
(3, 1, 'Bronze', 'Assets/Dragonsan/AtavismObjects/Icons/Custom/Resources and craft/Resources and crafts_Billet_05_ver.png', '', 100, 80, 2, 0, 1, '2000-01-01 00:00:00', '2023-04-19 20:20:22', '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');
INSERT INTO `currencies` (`id`, `category`, `name`, `icon`, `description`, `maximum`, `currencyGroup`, `currencyPosition`, `external`, `isactive`, `creationtimestamp`, `updatetimestamp`, `icon2`) VALUES
(4, 1, 'Diamonds', 'Assets/Dragonsan/AtavismObjects/Icons/Custom/Gems/Gems_130_ver.png', 'Premium', 999999, 0, 0, 1, 1, '2000-01-01 00:00:00', '2023-04-19 20:20:22', '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'),
(5, 0, 'PvP', 'Z:/UnityClient/testX11_1_U6_vv2/Assets/Dragonsan/AtavismObjects/Textures/NewUi/Login/logo.png', 'PvP currency', 99999999, 457, 0, 0, 1, '2026-02-11 12:56:22', '2026-02-28 15:55:20', '');

--
-- Wyzwalacze `currencies`
--
DROP TRIGGER IF EXISTS `currencies_trigger`;
DELIMITER ;;
CREATE TRIGGER `currencies_trigger` BEFORE UPDATE ON `currencies` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `currency_conversion`
--

DROP TABLE IF EXISTS `currency_conversion`;
CREATE TABLE IF NOT EXISTS `currency_conversion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `currencyID` int NOT NULL,
  `currencyToID` int NOT NULL,
  `amount` int NOT NULL,
  `autoConverts` tinyint(1) NOT NULL DEFAULT '1',
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `currency_conversion`
--

INSERT INTO `currency_conversion` (`id`, `currencyID`, `currencyToID`, `amount`, `autoConverts`, `isactive`) VALUES
(1, 2, 1, 100, 1, 1),
(2, 3, 2, 100, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `damage_type`
--

DROP TABLE IF EXISTS `damage_type`;
CREATE TABLE IF NOT EXISTS `damage_type` (
  `name` varchar(45) NOT NULL,
  `resistance_stat` varchar(45) NOT NULL,
  `power_stat` varchar(256) NOT NULL,
  `accuracy_stat` varchar(256) NOT NULL,
  `evasion_stat` varchar(256) NOT NULL,
  `critic_chance_stat` varchar(256) NOT NULL,
  `critic_power_stat` varchar(64) NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`name`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AVG_ROW_LENGTH=4096 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `damage_type`
--

INSERT INTO `damage_type` (`name`, `resistance_stat`, `power_stat`, `accuracy_stat`, `evasion_stat`, `critic_chance_stat`, `critic_power_stat`, `isactive`, `creationtimestamp`, `updatetimestamp`) VALUES
('crush', 'crush_resistance', 'strength', 'dexterity', 'physical_evasion', 'physical_critic', 'physical_crit_power', 1, '2000-01-01 00:00:00', '2021-09-15 14:38:18'),
('magical', 'magical_resistance', 'potential', 'intelligence', 'magical_evasion', 'magical_critic', 'magical_crit_power', 1, '2000-01-01 00:00:00', '2021-09-15 14:38:18'),
('pierce', 'pierce_resistance', 'strength', 'dexterity', 'physical_evasion', 'physical_critic', 'physical_crit_power', 1, '2000-01-01 00:00:00', '2021-09-15 14:38:18'),
('slash', 'slash_resistance', 'strength', 'dexterity', 'physical_evasion', 'physical_critic', 'physical_crit_power', 1, '2000-01-01 00:00:00', '2021-09-15 14:38:18');

--
-- Wyzwalacze `damage_type`
--
DROP TRIGGER IF EXISTS `damage_type_trigger`;
DELIMITER ;;
CREATE TRIGGER `damage_type_trigger` BEFORE UPDATE ON `damage_type` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dialogue`
--

DROP TABLE IF EXISTS `dialogue`;
CREATE TABLE IF NOT EXISTS `dialogue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `openingDialogue` tinyint(1) DEFAULT '1',
  `repeatable` tinyint(1) DEFAULT '0',
  `prereqDialogue` int DEFAULT '-1',
  `prereqQuest` int DEFAULT '-1',
  `prereqFaction` int DEFAULT '-1',
  `prereqFactionStance` int DEFAULT '1',
  `reactionAutoStart` tinyint(1) DEFAULT '0',
  `text` text,
  `audioClip` varchar(256) NOT NULL,
  `option1text` varchar(256) DEFAULT NULL,
  `option1action` varchar(45) DEFAULT NULL,
  `option1actionID` int DEFAULT NULL,
  `option1itemReq` int DEFAULT '-1',
  `option2text` varchar(256) DEFAULT NULL,
  `option2action` varchar(45) DEFAULT NULL,
  `option2actionID` int DEFAULT NULL,
  `option2itemReq` int DEFAULT '-1',
  `option3text` varchar(256) DEFAULT NULL,
  `option3action` varchar(45) DEFAULT NULL,
  `option3actionID` int DEFAULT NULL,
  `option3itemReq` int DEFAULT '-1',
  `option4text` varchar(256) DEFAULT NULL,
  `option4action` varchar(45) DEFAULT NULL,
  `option4actionID` int DEFAULT NULL,
  `option4itemReq` int DEFAULT '-1',
  `option5text` varchar(256) DEFAULT NULL,
  `option5action` varchar(45) DEFAULT NULL,
  `option5actionID` int DEFAULT NULL,
  `option5itemReq` int DEFAULT '-1',
  `option6text` varchar(256) DEFAULT NULL,
  `option6action` varchar(45) DEFAULT NULL,
  `option6actionID` int DEFAULT NULL,
  `option6itemReq` int DEFAULT '-1',
  `option7text` varchar(256) DEFAULT NULL,
  `option7action` varchar(45) DEFAULT NULL,
  `option7actionID` int DEFAULT NULL,
  `option7itemReq` int DEFAULT '-1',
  `option8text` varchar(256) DEFAULT NULL,
  `option8action` varchar(45) DEFAULT NULL,
  `option8actionID` int DEFAULT NULL,
  `option8itemReq` int DEFAULT '-1',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `dialogue`
--
DROP TRIGGER IF EXISTS `dialogue_trigger`;
DELIMITER ;;
CREATE TRIGGER `dialogue_trigger` BEFORE UPDATE ON `dialogue` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dialogue_actions`
--

DROP TABLE IF EXISTS `dialogue_actions`;
CREATE TABLE IF NOT EXISTS `dialogue_actions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dialogueID` int NOT NULL,
  `actionOrder` int NOT NULL,
  `reqOpenedQuest` int NOT NULL DEFAULT '-1',
  `reqCompletedQuest` int NOT NULL DEFAULT '-1',
  `excludingQuest` int NOT NULL DEFAULT '-1',
  `audioClip` varchar(256) NOT NULL DEFAULT '',
  `text` varchar(256) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `actionID` int DEFAULT NULL,
  `itemReq` int NOT NULL DEFAULT '-1',
  `itemReqConsume` tinyint(1) NOT NULL DEFAULT '0',
  `currency` int NOT NULL DEFAULT '-1',
  `currencyAmount` int NOT NULL DEFAULT '0',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dialogue_actions_requirement`
--

DROP TABLE IF EXISTS `dialogue_actions_requirement`;
CREATE TABLE IF NOT EXISTS `dialogue_actions_requirement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dialogue_action_id` int NOT NULL,
  `editor_option_type_id` int NOT NULL,
  `editor_option_choice_type_id` varchar(45) NOT NULL,
  `required_value` int NOT NULL DEFAULT '1',
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` timestamp NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `dialogue_action_id` (`dialogue_action_id`,`isactive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `editor_option`
--

DROP TABLE IF EXISTS `editor_option`;
CREATE TABLE IF NOT EXISTS `editor_option` (
  `id` int NOT NULL AUTO_INCREMENT,
  `optionType` varchar(45) NOT NULL,
  `deletable` tinyint(1) DEFAULT '1',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `optionType_UNIQUE` (`optionType`)
) ENGINE=InnoDB AUTO_INCREMENT=37 AVG_ROW_LENGTH=744 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `editor_option`
--

INSERT INTO `editor_option` (`id`, `optionType`, `deletable`, `isactive`, `creationtimestamp`, `updatetimestamp`) VALUES
(1, 'Item Type', 0, 1, '2000-01-01 00:00:00', '2021-09-14 09:57:04'),
(2, 'Weapon Type', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(3, 'Armor Type', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(4, 'Species', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(5, 'Race', 0, 1, '2000-01-01 00:00:00', '2023-11-16 00:29:31'),
(6, 'Class', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(7, 'Crafting Station', 0, 1, '2000-01-01 00:00:00', '2021-06-07 23:38:47'),
(8, 'Dialogue Action', 0, 1, '2000-01-01 00:00:00', '2021-06-07 23:38:47'),
(9, 'Mob Type', 0, 1, '2000-01-01 00:00:00', '2021-06-07 23:38:47'),
(10, 'Stat Functions', 0, 1, '2000-01-01 00:00:00', '2021-06-26 13:41:27'),
(11, 'Target Type', 0, 1, '2000-01-01 00:00:00', '2020-08-28 10:22:55'),
(12, 'Item Effect Type', 0, 1, '2000-01-01 00:00:00', '2023-04-25 13:33:07'),
(13, 'Quest Objective Type', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(14, 'Stat Shift Requirement', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(15, 'Stat Shift Action', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(16, 'Requirement', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(17, 'Currency Group', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(18, 'Building Category', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(19, 'State', 0, 1, '2000-01-01 00:00:00', '2023-04-25 13:13:22'),
(20, 'Interaction Type', 0, 1, '2000-01-01 00:00:00', '2021-06-07 23:38:47'),
(21, 'Ammo Type', 0, 1, '2000-01-01 00:00:00', '2021-06-07 23:38:47'),
(22, 'Claim Object Interaction Type', 0, 1, '2000-01-01 00:00:00', '2021-06-07 23:38:47'),
(23, 'Sockets Type', 0, 1, '2000-01-01 05:00:00', '2018-08-03 20:42:50'),
(24, 'Item Quality', 0, 1, '2000-01-01 05:00:00', '2023-12-16 22:28:05'),
(25, 'Effects Tags', 0, 1, '2020-08-23 12:01:29', '2000-01-01 00:00:00'),
(26, 'Ability Tags', 0, 1, '2020-08-23 12:01:29', '2020-08-28 11:11:28'),
(27, 'Claim Type', 0, 1, '2021-06-26 12:24:56', '2021-06-26 12:27:38'),
(28, 'Claim Object Category', 0, 1, '2021-06-26 12:24:56', '2021-06-26 12:29:31'),
(29, 'Gender', 0, 1, '2021-07-01 10:25:22', '2021-07-02 17:09:50'),
(30, 'Item Slot Type', 1, 1, '2021-07-17 21:34:14', '2021-08-28 13:25:59'),
(31, 'Tool Type', 1, 1, '2021-08-28 18:45:24', '2021-09-01 17:00:30'),
(32, 'Mob Tags', 1, 1, '2022-07-31 04:53:42', '2022-08-09 06:05:14'),
(33, 'Target Sub Type', 0, 1, '2023-10-06 13:55:02', '2000-01-01 00:00:00'),
(34, 'Slots Sets', 0, 1, '2023-10-18 19:24:03', '2023-11-10 19:48:33'),
(35, 'Weapon Actions', 0, 1, '2023-11-13 23:25:19', '2023-11-17 21:43:19'),
(36, 'Game Settings Category', 1, 1, '2025-07-30 16:25:32', '2025-07-30 16:25:32');

--
-- Wyzwalacze `editor_option`
--
DROP TRIGGER IF EXISTS `editor_option_trigger`;
DELIMITER ;;
CREATE TRIGGER `editor_option_trigger` BEFORE UPDATE ON `editor_option` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `editor_option_choice`
--

DROP TABLE IF EXISTS `editor_option_choice`;
CREATE TABLE IF NOT EXISTS `editor_option_choice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `optionTypeID` int NOT NULL,
  `choice` varchar(45) NOT NULL,
  `deletable` tinyint(1) NOT NULL DEFAULT '0',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=460 AVG_ROW_LENGTH=128 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `editor_option_choice`
--

INSERT INTO `editor_option_choice` (`id`, `optionTypeID`, `choice`, `deletable`, `isactive`, `creationtimestamp`, `updatetimestamp`) VALUES
(1, 1, 'Weapon', 0, 1, '2000-01-01 00:00:00', '2021-09-14 09:57:04'),
(2, 1, 'Armor', 0, 1, '2000-01-01 00:00:00', '2021-09-14 09:57:04'),
(3, 1, 'Consumable', 0, 1, '2000-01-01 00:00:00', '2021-09-14 09:57:04'),
(4, 1, 'Material', 0, 1, '2000-01-01 00:00:00', '2021-09-14 09:57:04'),
(5, 2, 'Sword', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:49:08'),
(6, 2, 'Axe', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:49:10'),
(7, 2, 'Mace', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:49:15'),
(8, 2, 'Staff', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:49:20'),
(9, 2, 'Bow', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:49:04'),
(10, 2, 'Gun', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:49:18'),
(11, 3, 'Cloth', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:50:10'),
(12, 3, 'Leather', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:50:08'),
(13, 3, 'Mail', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:50:06'),
(14, 3, 'Plate', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:50:00'),
(15, 1, 'Junk', 0, 1, '2000-01-01 00:00:00', '2021-09-15 14:39:08'),
(16, 4, 'Humanoid', 0, 1, '2000-01-01 00:00:00', '2021-09-15 14:39:08'),
(17, 4, 'Beast', 0, 1, '2000-01-01 00:00:00', '2021-09-15 14:39:08'),
(18, 4, 'Dragon', 0, 1, '2000-01-01 00:00:00', '2021-09-15 14:39:08'),
(19, 4, 'Elemental', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:50:12'),
(20, 4, 'Undead', 0, 1, '2000-01-01 00:00:00', '2021-09-15 14:39:08'),
(22, 5, 'Human', 1, 1, '2000-01-01 00:00:00', '2023-11-16 00:29:31'),
(23, 6, 'Warrior', 1, 1, '2000-01-01 00:00:00', '2022-08-03 07:23:53'),
(24, 6, 'Mage', 1, 1, '2000-01-01 00:00:00', '2022-08-03 07:23:53'),
(25, 6, 'Rogue', 1, 1, '2000-01-01 00:00:00', '2022-08-03 07:23:53'),
(26, 7, 'Anvil', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:50:39'),
(27, 7, 'Smelter', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:51:00'),
(28, 7, 'Pot', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:50:40'),
(29, 7, 'Oven', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:50:58'),
(30, 7, 'Cauldron', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:50:55'),
(31, 7, 'Sawmill', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:50:53'),
(32, 7, 'Loom', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:50:48'),
(33, 7, 'Sewing', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:50:50'),
(34, 7, 'Tannery', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:50:45'),
(35, 7, 'Masonry', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:50:42'),
(36, 8, 'Dialogue', 0, 1, '2000-01-01 00:00:00', '2019-11-24 00:18:16'),
(37, 8, 'Quest', 0, 1, '2000-01-01 00:00:00', '2019-11-24 00:18:16'),
(38, 8, 'Ability', 0, 1, '2000-01-01 00:00:00', '2019-11-24 00:18:16'),
(39, 9, 'Normal', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(40, 9, 'Untargetable', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(41, 9, 'Boss', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(42, 9, 'Rare', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(45, 10, 'Critic Power', 0, 1, '2000-01-01 00:00:00', '2023-01-18 00:10:33'),
(46, 10, 'Critic Chance', 0, 1, '2000-01-01 00:00:00', '2023-01-18 00:10:33'),
(47, 10, 'Accuracy', 0, 1, '2000-01-01 00:00:00', '2023-01-18 00:10:33'),
(48, 10, 'Power', 0, 1, '2000-01-01 00:00:00', '2023-01-18 00:10:33'),
(49, 33, 'Enemy', 0, 1, '2000-01-01 00:00:00', '2023-10-06 13:55:02'),
(50, 33, 'Self', 0, 1, '2000-01-01 00:00:00', '2023-10-06 13:55:02'),
(51, 33, 'Friendly', 0, 1, '2000-01-01 00:00:00', '2023-10-06 13:55:02'),
(52, 33, 'Friend Not Self', 0, 1, '2000-01-01 00:00:00', '2023-10-06 13:55:02'),
(53, 11, 'Group', 0, 1, '2000-01-01 00:00:00', '2020-08-28 10:22:55'),
(54, 11, 'Single Target', 0, 1, '2000-01-01 00:00:00', '2023-10-06 13:55:02'),
(55, 11, 'AoE', 0, 1, '2000-01-01 00:00:00', '2023-10-06 13:55:02'),
(56, 1, 'Quest', 0, 1, '2000-01-01 00:00:00', '2021-09-14 09:57:04'),
(57, 12, 'Stat', 0, 1, '2000-01-01 00:00:00', '2023-04-25 13:33:07'),
(58, 12, 'UseAbility', 0, 1, '2000-01-01 00:00:00', '2023-04-25 13:33:07'),
(60, 13, 'item', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(61, 13, 'mob', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(62, 1, 'Bag', 0, 1, '2000-01-01 00:00:00', '2021-09-14 09:57:04'),
(63, 1, 'Container', 0, 1, '2000-01-01 00:00:00', '2021-09-14 09:57:04'),
(64, 12, 'ClaimObject', 0, 1, '2000-01-01 00:00:00', '2023-04-25 13:33:07'),
(65, 12, 'CreateClaim', 0, 1, '2000-01-01 00:00:00', '2023-04-25 13:33:07'),
(66, 12, 'StartQuest', 0, 1, '2000-01-01 00:00:00', '2023-04-25 13:33:07'),
(67, 14, 'combatstate', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(68, 14, 'deadstate', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(69, 15, 'death', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(72, 12, 'Currency', 0, 1, '2000-01-01 00:00:00', '2023-04-25 13:33:07'),
(74, 16, 'Level', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(75, 16, 'Skill Level', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(76, 16, 'Race', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(77, 16, 'Class', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(78, 16, 'Stat', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(80, 17, 'Gold', 1, 1, '2000-01-01 00:00:00', '2023-02-25 22:30:54'),
(82, 18, 'Wood', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:57:29'),
(83, 18, 'Stone', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:57:31'),
(84, 15, 'effect', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(85, 13, 'task', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(86, 19, 'underwater', 0, 1, '2000-01-01 00:00:00', '2023-04-25 13:13:22'),
(87, 19, 'chilled', 0, 1, '2000-01-01 00:00:00', '2023-04-25 13:13:23'),
(88, 19, 'exposed', 0, 1, '2000-01-01 00:00:00', '2023-04-25 13:13:23'),
(89, 20, 'ApplyEffect', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(90, 20, 'PlayCoordEffect', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(91, 20, 'StartQuest', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(92, 20, 'CompleteTask', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(93, 20, 'InstancePortal', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(94, 1, 'Ammo', 0, 1, '2000-01-01 00:00:00', '2021-09-14 09:57:04'),
(96, 21, 'Arrow', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:53:12'),
(97, 21, 'Bullet', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:53:20'),
(98, 2, 'Greatsword', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:49:06'),
(99, 19, 'satisfied', 0, 1, '2000-01-01 00:00:00', '2023-04-25 13:13:23'),
(100, 10, 'Weight', 0, 1, '2000-01-01 00:00:00', '2023-01-18 00:10:33'),
(103, 22, 'Chest', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(104, 22, 'Resource', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(105, 22, 'NPC', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(106, 20, 'PvP', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(107, 20, 'Sanctuary', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(108, 12, 'CraftsItem', 0, 1, '2000-01-01 00:00:00', '2023-04-25 13:33:08'),
(109, 19, 'vip', 0, 1, '2000-01-01 00:00:00', '2023-04-25 13:13:23'),
(110, 3, 'Fashion', 1, 1, '2000-01-01 00:00:00', '2021-09-15 18:50:03'),
(111, 22, 'Effect', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(112, 22, 'Instance', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(113, 22, 'LeaveInstance', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(114, 20, 'LeaveInstance', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(116, 3, 'Jewelry', 0, 1, '2000-01-01 00:00:00', '2021-09-15 14:39:09'),
(117, 9, 'World Boss', 0, 1, '2000-01-01 00:00:00', '2021-09-15 14:39:09'),
(120, 10, 'Evasion', 0, 1, '2000-01-01 00:00:00', '2023-01-18 00:10:33'),
(122, 10, 'Parry', 0, 1, '2000-01-01 00:00:00', '2023-01-18 00:10:33'),
(123, 10, 'Sleep Resistance', 0, 1, '2000-01-01 00:00:00', '2023-01-18 00:10:33'),
(124, 10, 'Stun Resistance', 0, 1, '2000-01-01 00:00:00', '2023-01-18 00:10:33'),
(125, 10, 'Slowdown Resistance', 0, 1, '2000-01-01 00:00:00', '2023-01-18 00:10:33'),
(126, 10, 'Immobilize Resistance', 0, 1, '2000-01-01 00:00:00', '2023-01-18 00:10:33'),
(128, 13, 'mobCategory', 0, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(129, 19, 'satisfied', 0, 1, '2000-01-01 00:00:00', '2023-04-25 13:13:23'),
(131, 12, 'Sockets', 0, 1, '2018-08-03 19:12:02', '2023-04-25 13:33:08'),
(133, 23, 'Gems', 1, 1, '2018-08-04 00:42:50', '2021-09-15 18:53:34'),
(134, 23, 'Runes', 1, 1, '2018-08-04 00:42:50', '2021-09-15 18:53:36'),
(135, 24, 'Poor', 1, 1, '2018-08-04 00:42:50', '2023-12-16 22:28:05'),
(136, 24, 'Common', 1, 1, '2018-08-14 23:12:34', '2023-12-16 22:28:05'),
(137, 24, 'Uncommon', 1, 1, '2018-08-14 23:12:34', '2023-12-16 22:28:05'),
(138, 24, 'Rare', 1, 1, '2018-08-14 23:12:34', '2023-12-16 22:28:06'),
(139, 24, 'Epic', 1, 1, '2018-08-14 23:12:34', '2023-12-16 22:28:06'),
(140, 24, 'Legendary', 1, 1, '2018-08-14 23:12:34', '2023-12-16 22:28:06'),
(141, 12, 'Blueprint', 0, 1, '2018-08-03 19:12:02', '2023-04-25 13:33:08'),
(143, 5, 'Orc', 1, 1, '2019-04-17 08:40:30', '2023-11-16 00:29:31'),
(144, 12, 'VipPoints', 0, 1, '2019-10-08 16:29:02', '2023-04-25 13:33:08'),
(145, 12, 'VipTime', 0, 1, '2019-10-08 16:29:02', '2023-04-25 13:33:08'),
(146, 12, 'Bonus', 0, 1, '2019-10-22 13:17:47', '2023-04-25 13:33:08'),
(148, 12, 'SkillPoints', 0, 1, '2019-11-16 11:27:12', '2023-04-25 13:33:08'),
(149, 12, 'TalentPoints', 0, 1, '2019-11-16 11:27:12', '2023-04-25 13:33:08'),
(150, 12, 'SkillReset', 0, 1, '2019-11-18 17:57:15', '2023-04-25 13:33:08'),
(151, 12, 'TalentReset', 0, 1, '2019-11-18 17:57:15', '2023-04-25 13:33:08'),
(152, 12, 'Achievement', 0, 1, '2019-11-20 16:55:28', '2023-04-25 13:33:08'),
(153, 8, 'Repair', 0, 1, '2019-11-24 00:18:16', '2000-01-01 00:00:00'),
(154, 10, 'Health', 0, 1, '2019-12-03 12:52:59', '2023-01-18 00:10:33'),
(155, 10, 'Movement Speed', 0, 1, '2019-12-03 12:52:59', '2023-01-18 00:10:33'),
(156, 10, 'Attack Speed', 0, 1, '2019-12-08 13:48:41', '2023-01-18 00:10:33'),
(157, 10, 'Ability Cost', 0, 1, '2020-04-09 20:22:28', '2023-01-18 00:10:33'),
(158, 10, 'Ability Cooldown', 0, 1, '2020-04-09 20:22:28', '2023-01-18 00:10:33'),
(159, 10, 'Ability Cast Time', 0, 1, '2020-04-09 20:22:28', '2023-01-18 00:10:33'),
(160, 10, 'Ability Global Cooldown', 0, 1, '2020-04-15 10:14:49', '2023-01-18 00:10:33'),
(161, 10, 'Ability Weapon Cooldown', 0, 1, '2020-04-15 10:14:49', '2023-01-18 00:10:33'),
(162, 10, 'Ability Health Receive', 0, 1, '2020-04-15 10:14:49', '2023-01-18 00:10:33'),
(163, 10, 'Ability Health Dealt', 0, 1, '2020-04-15 10:14:49', '2023-01-18 00:10:33'),
(164, 10, 'Ability Damage Receive', 0, 1, '2020-04-15 10:14:49', '2023-01-18 00:10:33'),
(165, 10, 'Ability Damage Dealt', 0, 1, '2020-04-15 10:14:49', '2023-01-18 00:10:33'),
(166, 10, 'Ability Range', 0, 1, '2020-04-15 10:14:49', '2023-01-18 00:10:33'),
(169, 10, 'Stealth', 0, 1, '2020-05-21 19:43:00', '2023-01-18 00:10:33'),
(170, 10, 'Perception Stealth', 0, 1, '2020-05-21 19:43:00', '2023-01-18 00:10:33'),
(171, 10, 'Sleep Chance', 0, 1, '2020-06-14 14:19:20', '2023-01-18 00:10:33'),
(172, 10, 'Stun Chance', 0, 1, '2020-06-14 14:19:20', '2023-01-18 00:10:34'),
(173, 10, 'Interuption Resistance', 0, 1, '2020-06-18 20:12:01', '2023-01-18 00:10:34'),
(174, 10, 'Interuption Chance', 0, 1, '2020-06-18 20:12:01', '2023-01-18 00:10:34'),
(175, 11, 'Location(Trap)', 0, 1, '2020-08-28 10:22:55', '2023-10-06 13:55:44'),
(176, 26, 'Sprint', 1, 1, '2020-08-28 11:08:06', '2021-09-15 18:54:08'),
(177, 2, 'Unarmed', 1, 1, '2020-08-28 12:54:21', '2021-09-15 18:49:13'),
(178, 8, 'Merchant', 0, 1, '2020-10-16 01:32:24', '2020-10-21 22:44:57'),
(179, 8, 'Bank', 0, 1, '2020-10-21 18:01:09', '2020-10-21 22:44:57'),
(180, 8, 'QuestProgress', 0, 1, '2020-10-21 18:01:09', '2021-09-13 22:26:47'),
(181, 8, 'Auction', 0, 1, '2020-10-21 18:01:09', '2020-10-21 22:44:57'),
(182, 8, 'Mail', 0, 1, '2020-10-21 18:01:09', '2020-10-21 22:44:57'),
(183, 8, 'GearModification', 0, 1, '2020-10-21 18:01:09', '2020-10-21 22:44:57'),
(184, 8, 'GuildWarehouse', 0, 1, '2020-10-21 18:01:09', '2020-10-21 22:44:57'),
(185, 8, 'GuildMerchant', 0, 1, '2020-10-21 22:44:34', '2020-10-21 22:44:57'),
(400, 16, 'Guild Level', 0, 1, '2020-08-30 21:18:36', '2020-11-15 00:08:56'),
(401, 27, 'Any', 0, 1, '2021-06-26 14:27:38', '2021-06-26 13:39:57'),
(402, 27, 'Residential', 1, 1, '2021-06-26 14:27:38', '2021-06-26 14:27:38'),
(403, 27, 'Farm', 1, 1, '2021-06-26 14:27:38', '2021-06-26 14:27:38'),
(404, 28, 'Wall', 1, 1, '2021-06-26 14:29:31', '2021-06-26 14:29:31'),
(405, 28, 'Foundation', 1, 1, '2021-06-26 14:29:31', '2021-06-26 14:29:31'),
(406, 28, 'Roof', 1, 1, '2021-06-26 14:29:31', '2021-06-26 14:29:31'),
(407, 28, 'Window', 1, 1, '2021-06-26 14:29:31', '2021-06-26 14:29:31'),
(408, 28, 'Door', 1, 1, '2021-06-26 14:29:31', '2021-06-26 14:29:31'),
(409, 28, 'Floor', 1, 1, '2021-06-26 14:29:31', '2021-06-26 14:29:31'),
(410, 28, 'Tradehouse', 1, 1, '2021-06-26 14:29:31', '2021-06-26 14:29:31'),
(411, 28, 'House', 1, 1, '2021-06-26 14:29:31', '2021-06-26 14:29:31'),
(412, 10, 'Build Speed', 0, 1, '2021-06-26 15:41:28', '2023-01-18 00:10:34'),
(413, 29, 'Male', 1, 1, '2021-07-02 19:09:49', '2021-07-02 19:09:49'),
(414, 29, 'Female', 1, 1, '2021-07-02 19:09:49', '2021-07-02 19:09:49'),
(415, 30, 'Weapon', 0, 1, '2021-07-17 21:34:15', '2021-09-15 18:55:01'),
(416, 30, 'Armor', 0, 1, '2021-07-17 21:34:15', '2021-09-15 18:55:03'),
(417, 30, 'Tool', 0, 1, '2021-07-17 21:36:18', '2021-09-15 18:55:05'),
(418, 1, 'Tool', 0, 1, '2021-08-20 00:56:08', '2021-09-15 18:48:45'),
(419, 31, 'Axe', 1, 1, '2021-08-28 18:45:24', '2021-09-01 17:00:30'),
(420, 31, 'Hammer', 1, 1, '2021-08-28 18:45:24', '2021-09-01 17:00:30'),
(421, 31, 'Saw', 1, 1, '2021-08-28 18:46:01', '2021-09-01 17:00:30'),
(422, 31, 'Pickaxe', 1, 1, '2021-09-01 19:00:19', '2021-09-01 19:00:19'),
(423, 7, 'Any', 0, 1, '2022-04-07 21:28:44', '2022-04-07 21:28:44'),
(438, 12, 'SocketAbility', 0, 1, '2023-04-25 15:33:08', '2023-04-25 15:33:08'),
(439, 12, 'SocketEffect', 0, 1, '2023-04-25 15:33:08', '2023-04-25 15:33:08'),
(440, 33, 'Friendly or Enemy', 0, 1, '2023-10-06 13:55:02', '2000-01-01 00:00:00'),
(441, 34, 'Set 1', 1, 1, '2023-11-10 20:48:34', '2023-11-10 20:48:34'),
(442, 34, 'Set 2', 1, 1, '2023-11-10 20:48:34', '2023-11-10 20:48:34'),
(443, 35, 'Action1', 1, 1, '2023-11-14 00:31:35', '2023-11-17 21:43:19'),
(444, 35, 'Action2', 1, 1, '2023-11-15 19:29:01', '2023-11-17 21:43:19'),
(450, 35, 'Action3', 1, 1, '2023-11-16 01:34:44', '2023-11-17 21:43:20'),
(451, 35, 'Action4', 1, 1, '2023-11-16 01:34:59', '2023-11-17 21:43:20'),
(452, 35, 'Action5', 1, 1, '2023-11-16 01:35:12', '2023-11-17 21:43:20'),
(453, 24, 'Coins', 1, 1, '2023-12-16 23:28:05', '2023-12-16 23:28:05'),
(454, 36, 'Default', 1, 1, '2025-07-30 16:25:32', '2025-07-30 16:25:32'),
(455, 26, 'pvp', 1, 1, '2026-02-12 23:51:07', '2026-02-12 23:51:07'),
(456, 25, 'pvpRegion', 1, 1, '2026-02-13 18:34:14', '2026-02-13 18:34:14'),
(457, 17, 'pvp', 1, 1, '2026-02-12 23:51:07', '2026-02-12 23:51:07');

--
-- Wyzwalacze `editor_option_choice`
--
DROP TRIGGER IF EXISTS `editor_option_choice_trigger`;
DELIMITER ;;
CREATE TRIGGER `editor_option_choice_trigger` BEFORE UPDATE ON `editor_option_choice` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `effects`
--

DROP TABLE IF EXISTS `effects`;
CREATE TABLE IF NOT EXISTS `effects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `displayName` varchar(64) DEFAULT NULL,
  `icon` varchar(256) DEFAULT NULL,
  `icon2` mediumtext NOT NULL,
  `effectMainType` varchar(64) DEFAULT NULL,
  `effectType` varchar(64) DEFAULT NULL,
  `isBuff` tinyint(1) NOT NULL DEFAULT '0',
  `skillType` int DEFAULT NULL,
  `skillLevelMod` float DEFAULT '0',
  `passive` tinyint(1) DEFAULT NULL,
  `stackLimit` int DEFAULT NULL,
  `stackTime` tinyint(1) NOT NULL DEFAULT '0',
  `allowMultiple` tinyint(1) DEFAULT NULL,
  `duration` float DEFAULT NULL,
  `pulseCount` int DEFAULT NULL,
  `tooltip` varchar(255) DEFAULT NULL,
  `bonusEffectReq` int NOT NULL DEFAULT '-1',
  `bonusEffectReqConsumed` tinyint(1) DEFAULT NULL,
  `bonusEffect` int NOT NULL DEFAULT '-1',
  `removeBonusWhenEffectRemoved` tinyint(1) NOT NULL DEFAULT '0',
  `pulseCoordEffect` varchar(256) DEFAULT NULL,
  `intValue1` int NOT NULL DEFAULT '0',
  `intValue2` int NOT NULL DEFAULT '0',
  `intValue3` int NOT NULL DEFAULT '0',
  `intValue4` int NOT NULL DEFAULT '0',
  `intValue5` int NOT NULL DEFAULT '0',
  `floatValue1` float NOT NULL DEFAULT '0',
  `floatValue2` float NOT NULL DEFAULT '0',
  `floatValue3` float NOT NULL DEFAULT '0',
  `floatValue4` float NOT NULL DEFAULT '0',
  `floatValue5` float NOT NULL DEFAULT '0',
  `stringValue1` varchar(256) NOT NULL,
  `stringValue2` varchar(256) NOT NULL,
  `stringValue3` varchar(256) NOT NULL,
  `stringValue4` varchar(256) NOT NULL,
  `stringValue5` varchar(256) NOT NULL,
  `boolValue1` tinyint(1) NOT NULL DEFAULT '0',
  `boolValue2` tinyint(1) NOT NULL DEFAULT '0',
  `boolValue3` tinyint(1) NOT NULL DEFAULT '0',
  `boolValue4` tinyint(1) NOT NULL DEFAULT '0',
  `boolValue5` tinyint(1) NOT NULL DEFAULT '0',
  `chance` float NOT NULL DEFAULT '0',
  `group_tags` text NOT NULL,
  `interruption_chance` float NOT NULL DEFAULT '0',
  `interruption_chance_max` float NOT NULL DEFAULT '0',
  `interruption_all` tinyint(1) NOT NULL DEFAULT '0',
  `show_effect` tinyint(1) NOT NULL DEFAULT '1',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `isactive` (`isactive`)
) ENGINE=InnoDB AVG_ROW_LENGTH=564 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `effects`
--
DROP TRIGGER IF EXISTS `effects_trigger`;
DELIMITER ;;
CREATE TRIGGER `effects_trigger` BEFORE UPDATE ON `effects` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `effects_triggers`
--

DROP TABLE IF EXISTS `effects_triggers`;
CREATE TABLE IF NOT EXISTS `effects_triggers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `event_type` int NOT NULL,
  `tags` text NOT NULL,
  `race` int NOT NULL DEFAULT '-1',
  `class` int NOT NULL DEFAULT '-1',
  `action_type` tinyint NOT NULL,
  `chance_min` float NOT NULL DEFAULT '0',
  `chance_max` float NOT NULL DEFAULT '100',
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `creationtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `effects_triggers_actions`
--

DROP TABLE IF EXISTS `effects_triggers_actions`;
CREATE TABLE IF NOT EXISTS `effects_triggers_actions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `effects_triggers_id` int NOT NULL,
  `target` int NOT NULL,
  `ability` int NOT NULL,
  `effect` int NOT NULL,
  `mod_v` int NOT NULL DEFAULT '0',
  `mod_p` float NOT NULL DEFAULT '0',
  `chance_min` float NOT NULL,
  `chance_max` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `data_type` varchar(32) DEFAULT NULL,
  `save_data` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(256) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=862 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `events`
--
DROP TRIGGER IF EXISTS `events_trigger`;
DELIMITER ;;
CREATE TRIGGER `events_trigger` BEFORE UPDATE ON `events` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `factions`
--

DROP TABLE IF EXISTS `factions`;
CREATE TABLE IF NOT EXISTS `factions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `factionGroup` varchar(64) DEFAULT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `defaultStance` int NOT NULL,
  `color` varchar(45) DEFAULT '',
  `icon` varchar(256) DEFAULT '',
  `icon2` mediumtext,
  `canEnterGuild` tinyint DEFAULT '1',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 AVG_ROW_LENGTH=2730 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `factions`
--

INSERT INTO `factions` (`id`, `category`, `name`, `factionGroup`, `public`, `defaultStance`, `color`, `icon`, `icon2`, `canEnterGuild`, `isactive`, `creationtimestamp`, `updatetimestamp`) VALUES
(1, 1, 'Human', '', 1, 1, '', '', NULL, 1, 1, '2000-01-01 00:00:00', '2019-09-23 22:08:13'),
(2, 1, 'Haters', '', 0, 1, '', '', NULL, 1, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(3, 1, 'Friendly', NULL, 0, 1, '', '', NULL, 1, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(4, 1, 'Neutral', NULL, 0, 0, '', '', NULL, 1, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(5, 1, 'Haters1', '', 0, 1, '', '', NULL, 1, 1, '2000-01-01 00:00:00', '2018-03-14 21:07:34'),
(6, 1, 'NPCFaction', '', 1, 1, '', '', NULL, 1, 1, '2000-01-01 00:00:00', '2019-09-25 12:35:36'),
(7, 1, 'Pet', '', 1, 1, '', '', NULL, 1, 1, '2000-01-01 00:00:00', '2018-03-23 12:25:13');

--
-- Wyzwalacze `factions`
--
DROP TRIGGER IF EXISTS `factions_trigger`;
DELIMITER ;;
CREATE TRIGGER `factions_trigger` BEFORE UPDATE ON `factions` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `faction_stances`
--

DROP TABLE IF EXISTS `faction_stances`;
CREATE TABLE IF NOT EXISTS `faction_stances` (
  `id` int NOT NULL AUTO_INCREMENT,
  `factionID` int NOT NULL,
  `otherFaction` int NOT NULL DEFAULT '-1',
  `defaultStance` int NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 AVG_ROW_LENGTH=1820 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `faction_stances`
--

INSERT INTO `faction_stances` (`id`, `factionID`, `otherFaction`, `defaultStance`, `isactive`, `creationtimestamp`, `updatetimestamp`) VALUES
(1, 2, 1, 1, 0, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(2, 5, 2, -2, 0, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(3, 1, 2, -2, 1, '2000-01-01 00:00:00', '2019-09-23 22:08:13'),
(4, 2, 1, -2, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(5, 6, 1, 1, 1, '2000-01-01 00:00:00', '2019-09-25 12:35:36'),
(6, 5, 1, -2, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(7, 7, 4, 0, 1, '2000-01-01 00:00:00', '2018-03-23 12:25:13'),
(8, 7, 2, -2, 1, '2000-01-01 00:00:00', '2018-03-23 12:25:13'),
(9, 7, 5, -2, 1, '2000-01-01 00:00:00', '2018-03-23 12:25:13'),
(10, 1, 5, -2, 1, '2000-01-01 00:00:00', '2019-09-23 22:08:13'),
(11, 1, 4, 0, 1, '2000-01-01 00:00:00', '2019-09-23 22:08:13'),
(12, 1, 6, 1, 1, '2019-09-23 22:08:13', '2000-01-01 00:00:00');

--
-- Wyzwalacze `faction_stances`
--
DROP TRIGGER IF EXISTS `faction_stances_trigger`;
DELIMITER ;;
CREATE TRIGGER `faction_stances_trigger` BEFORE UPDATE ON `faction_stances` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `game_setting`
--

DROP TABLE IF EXISTS `game_setting`;
CREATE TABLE IF NOT EXISTS `game_setting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(101) NOT NULL,
  `datatype` varchar(45) NOT NULL,
  `value` varchar(45) NOT NULL,
  `description` longtext,
  `sendtoclient` tinyint DEFAULT '0',
  `category` int DEFAULT '0',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`isactive`),
  KEY `send` (`isactive`,`sendtoclient`)
) ENGINE=InnoDB AUTO_INCREMENT=221 AVG_ROW_LENGTH=227 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `game_setting`
--

INSERT INTO `game_setting` (`id`, `name`, `datatype`, `value`, `description`, `sendtoclient`, `category`, `isactive`, `creationtimestamp`, `updatetimestamp`) VALUES
(1, 'PLAYER_BAG_COUNT', 'int', '4', 'How many bags players can have – Integer – Default value: 4', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(2, 'PLAYER_DEFAULT_BAG_SIZE', 'int', '16', 'How many slots does the first bag the player starts with have – Integer – Default value: 16', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(3, 'MOB_DEATH_EXP', 'bool', 'true', 'Do mobs give exp when they die? – Boolean (true/false) – Default value: true', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(4, 'PLAYER_CORPSE_LOOT_DURATION', 'int', '0', 'How long in seconds a players corpse stays on the ground to be looted? If set to 0 or negative numbers, no corpse will be left – Integer – Default value: 0', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(5, 'PLAYER_CORPSE_SAFE_LOOT_DURATION', 'int', '0', 'How long in seconds a players corpse can only be looted by themselves – Integer – Default value: 0', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(6, 'PLAYER_CORPSE_MOB_TEMPLATE', 'int', '0', 'What mob template is to be used for the display of the players corpse – Integer – Default value: 0', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(8, 'USE_SKILL_PURCHASE_POINTS', 'bool', 'true', 'Does the game allow purchasing skill points that are earned with each level – Boolean (true/false) – Default value: true', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(9, 'SKILL_POINTS_GIVEN_PER_LEVEL', 'int', '3', 'How many skill points are given on each level up (if USE_SKILL_PURCHASE_POINTS is true) – Integer – Default value: 3', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(11, 'EXP_MAX_LEVEL_DIFFERENCE', 'int', '10', 'How many levels higher can the player be than the mob and still receive experience from killing it? The experience will be decreased linearly if the mob level is higher than the player level  – Integer – Default value: 10', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(12, 'SELL_FACTOR', 'float', '0.25', 'The price of items is divided by when selling them to a merchant – Float – Default value: 4', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(13, 'REPAIR_RATE', 'float', '0.5', 'If not using a flat repair rate, what percent of the item value should it cost to repair it? For example: 1 = Full cost of item, 0.5 = half the cost – Float – Default value: 0.5', 1, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(14, 'PLAYER_CORPSE_DROPS_EQUIPMENT', 'bool', 'false', 'Does the player drop equipment after death – Boolean – Default value: false', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(15, 'RANGE_CHECK_VERTICAL', 'bool', 'true', ' Does the server take the y-axis value into account while checking the distance to attack – Boolean – Default value: true', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(16, 'RELEASE_ON_LOGIN', 'bool', 'false', 'Will players be auto-released when logging in if they logged out while dead – Boolean – Default value: false', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(18, 'EXP_BASED_ON_DAMAGE_DEALT', 'bool', 'true', 'Should the exp reward for a defeated mob be based on the amount of damage each player/group did to the mob? – Boolean – Default value: true', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(19, 'RESOURCE_DROPS_ON_FAIL', 'bool', 'false', 'Does the harvest count reduce when it fails to harvest the resource node? – Boolean (true/false) – Default value: true', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(20, 'AUTO_PICKUP_RESOURCES', 'bool', 'false', 'Do the resources get put straight into the players Inventory when harvested (no loot window comes up) – Boolean (true/false) – Default value: false', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(21, 'RESOURCE_GATHER_DISTANCE', 'int', '4', 'How close, in meters, a player must be a Resource Node to gather it – Integer – Default value: 4', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(22, 'RESOURCE_GATHER_CAN_FAIL', 'bool', 'false', 'Can the player fail to harvest a resource if they meet the required skill level? – Boolean (true/false) – Default value: true', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(23, 'GROUP_MAX_SIZE', 'int', '4', 'The maximum number of players that can be in a group – Integer – Default value: 4', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(24, 'REMOVE_ITEM_ON_BUILD_FAIL', 'bool', 'false', 'Will a player lose the items used when a building task fails – Boolean – Default value: false', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(25, 'BUILD_CAN_FAIL', 'bool', 'false', 'Can a players building task fail to be completed successfully? – Boolean – Default value: false', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(26, 'USE_CLAIM_RESOURCES', 'bool', 'true', 'A definition that allows you to put partial resources into a building and then add the rest and build the building. - Bool - Default value: true', 0, 454, 1, '2000-01-01 00:00:00', '2025-09-03 16:46:57'),
(27, 'ONLY_UPGRADE_CLAIM_OBJECT_WITH_ALL_ITEMS', 'bool', 'false', 'Must a player place all items required to upgrade a Building Object before they can upgrade it. Will be taken into consideration only if UPGRADE_CLAIM_OBJECT_ITEMS_FROM_INVENTORY is set to false – Boolean – Default value: false', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(28, 'COMBAT_TIMEOUT', 'int', '20', 'How long, in seconds, are players kept in combat state after the last casting or being the target of an ability – Integer – Default value: 3 (seconds)', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(29, 'LOGOUT_TIME', 'int', '10', 'How many seconds a player must wait while trying to log out – Integer – Default value: 5', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(30, 'LOGOUT_TO_CHARACTER_SELECTION', 'bool', 'true', 'Is the player logged out to the character selection screen? If set to false, it will send them to the login scene – Boolean – Default value: true', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(31, 'FALL_SAFE_HEIGHT', 'float', '10', 'How many meters a player needs to fall before damage will be applied – Integer – Default value: 10', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(32, 'FALL_DEATH_HEIGHT', 'float', '50', ' How many meters a player needs to fall to be instantly killed – Integer – Default value: 100', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(33, 'FALL_DAMAGE_STAT', 'string', 'health', 'Name of the statistic that the damage will be applied to – String – Default value: health', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(36, 'TOTAL_SKILL_MAX', 'int', '1000000', 'The maximum amount of Skill levels a player can have with all their skills combined – Integer – Default value: 1000000', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(37, 'SPIRIT_EFFECT', 'int', '-1', 'The ID of the Effect to be applied to players when they choose to release to Spirit Form when dead – Integer – Default value: 1 (No Spirit Effect)', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(38, 'USE_PLAYER_SET_RESPAWN_LOCATIONS', 'bool', 'true', 'Use a location saved to the player to respawn them when they release rather than using the Graveyard System – Boolean – Default value: true', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(42, 'SKILL_STARTING_MAX', 'int', '5', 'The default max level of a skill when a player learns the skill – Integer – Default value: 5', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(43, 'AUTO_ADD_ABILITIES_TO_ACTION_BAR', 'bool', 'true', 'Are abilities automatically added to the players action bar when they learn the ability – Boolean – Default value: true', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(44, 'CAN_HARVEST_WHILE_MOUNTED', 'bool', 'false', 'Can a player harvest from a Resource Node while they are mounted? – Boolean – Default value: false', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(46, 'USE_RESOURCE_GROUPS', 'bool', 'true', 'Should Resource Nodes be grouped together in the Server so fewer objects are created in the Server, increasing performance – Boolean – Default value: true', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(47, 'RESOURCE_GROUP_SIZE', 'int', '50', 'How large, in meters, should the Resource Groups be – Integer – Default value: 100 (meters, on both x and z-axes)', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(48, 'GRID_SIZE', 'int', '4', 'How many tiles across (or down) is the Crafting Grid? This number is squared to get the total size – as in, a Grid Size of 3 creates 9 tiles, a Grid Size of 4 creates 16 – Integer – Default value: 4', 1, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(49, 'CAN_CRAFT_WHILE_MOUNTED', 'bool', 'false', 'Can a player craft an item while they are mounted? – Boolean – Default value: false', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(50, 'WORLD_TIME_SPEED', 'float', '1', 'How fast time passes in the game world. 1 = Normal world speed, 5 = 5 times faster (5 game days within 1 real-life day), 0.5 = half as fast (takes 2 real-life days for 1 game day to pass) – Float – Default value: 1', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(53, 'RESISTANCE_STAT_MAX', 'int', '10000', 'Maximum resistance value which will be taken into account while combat calculations – Integer – Default value: 10000', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(54, 'PLAYER_PERCEPTION_RADIUS', 'int', '75', 'How far, in meters, mobs, and other players will be visible/loaded for the player. This value is also connected with a quad split which is set in the configuration file on the server – Integer – Default value: 75', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(55, 'AGGRO_RADIUS', 'int', '18', 'The radius, in meters, that aggressive mobs will aggro when entered – Integer – Default value: 18', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(60, 'SKILL_UP_RATE', 'float', '1.0', 'Multiplier factor related to a chance to gain a skill point for actions that require skills like combat abilities connected to skills, gathering, and crafting. A higher value means a higher chance to level skill (1.0 = 100%) – Float – Default value: 1.0', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(61, 'FLAT_ARMOR_DAMAGE_CALCULATIONS', 'bool', 'true', 'Is damage calculations should be more flat rather than linear – Boolean – Default value: true', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(66, 'GROUP_DISCONNECT_TIMEOUT', 'int', '30', 'How many seconds until a player will be removed from the group – Integer – Default value: 30', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(68, 'BANK_SLOTS_COUNT', 'int', '20', 'How many slots players will have in their bank, guild warehouse, and storage inside claimed lands – Integer – Default value: 20', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(69, 'GIVE_QUEST_ITEMS_TO_ALL_IN_GROUP', 'bool', 'true', 'Should all members of the group loot the same mob and gather quest items from it – Boolean – Default value: true', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(70, 'DAMAGE_HITROLL_MODIFIER', 'int', '35', 'How much damage will be randomized (percentage range between 100-DAMAGE_HITROLL_MODIFIER and 100) – Integer – Default value: 35', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(71, 'LOOT_BASED_ON_DAMAGE_DEALT', 'bool', 'true', 'Should the loot reward for a defeated mob be based on the amount of damage each player/group did to the mob? – Boolean – Default value: true', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(72, 'WEATHER_UPDATE_PERIOD', 'int', '600', 'Defines real-time interval between new weather updates in seconds – Integer – Default value: 600', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(73, 'WEATHER_MONTH_SERVER_TIME', 'bool', 'true', 'Defines if months should be related to WORLD_TIME_SPEED. It’s important in a case when WORLD_TIME_SPEED is set to a higher value so time in-game passes faster than in the real world and you would like to months pass relatively to it – Boolean – Default value: true', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(74, 'WORLD_TIME_ZONE', 'string', 'UTC', 'Defines timezone for Arena entry time restrictions. Possible values are UTC, GMT+1, GMT+2, etc. – String – Default value: UTC', 0, 454, 1, '2000-01-01 00:00:00', '2025-07-30 14:34:56'),
(75, 'PLAYER_SILENCE_TIMEOUT', 'int', '30', 'Set a number of seconds until your character will be present on the server after instantly closing the client – Integer – Default 30', 0, 454, 1, '2018-07-20 23:30:33', '2025-07-30 14:34:56'),
(76, 'DISTANCE_REQ_BETWEEN_CLAIMS', 'int', '10', 'Set additional distance, in meters, which will be taken into account during claims overlapping checks – Integer – Default 10', 0, 454, 1, '2018-07-20 23:30:50', '2025-07-30 14:34:56'),
(77, 'PET_DISTANCE_DESPAWN', 'float', '50', 'Mob will despawn if the distance value, in meters, between owner and pet will be higher – Integer – Default 50', 0, 454, 1, '2018-07-20 23:31:07', '2025-07-30 14:34:56'),
(78, 'MOB_FORCE_DESPAWN_IN_COMBAT', 'bool', 'false', 'Setting for Alternative Mob Spawner, so you can define if you want to enforce despawn during combat or not – Boolean – Default false', 0, 454, 1, '2018-07-20 23:31:26', '2025-07-30 14:34:56'),
(79, 'DURABILITY_LOSS_CHANCE_FROM_ATTACK', 'int', '10', 'Defines chance for durability loss during an attack – Integer – Default value 10 percentage', 0, 454, 1, '2018-11-14 00:16:05', '2025-07-30 14:34:56'),
(80, 'DURABILITY_LOSS_CHANCE_FROM_DEFEND', 'int', '5', 'Defines chance for durability loss during defense – Integer – Default value 5 percentage', 0, 454, 1, '2018-11-14 00:16:05', '2025-07-30 14:34:56'),
(81, 'DURABILITY_LOSS_CHANCE_FROM_GATHER', 'int', '50', 'Defines chance for durability loss during gathering resource nodes – Integer – Default value 50 percentage', 0, 454, 1, '2018-11-14 00:16:05', '2025-07-30 14:34:56'),
(82, 'DURABILITY_LOSS_CHANCE_FROM_CRAFT', 'int', '50', 'Defines chance for durability loss during crafting – Integer – Default value 50 percentage', 0, 454, 1, '2018-11-14 00:16:05', '2025-07-30 14:34:56'),
(83, 'DURABILITY_DESTROY_BROKEN_ITEMS', 'bool', 'false', 'Defines if the broken items (with durability 0) should be removed from the character or not – Boolean – Default value fals', 0, 454, 1, '2018-11-14 00:16:05', '2025-07-30 14:34:56'),
(92, 'ENCHANTING_TIME', 'int', '4', 'Defines the time for the enchanting process – Integer – Default value 4 seconds', 0, 454, 1, '2018-11-14 00:16:07', '2025-07-30 14:34:56'),
(93, 'SOCKET_FAILED_CLEAR', 'bool', 'false', 'Defines what the server should do if the socketing process fails, if it is set to true it will clear all previous sockets – Boolean – Default value false', 0, 454, 1, '2018-11-14 00:16:07', '2025-07-30 14:34:56'),
(94, 'SOCKET_CHANCE', 'float', '60', 'Defines socketing success rate – Integer – Default value 60 percentage', 0, 454, 1, '2018-11-14 00:16:07', '2025-07-30 14:34:56'),
(95, 'SOCKET_CREATE_TIME', 'int', '4', 'Defines time for the socketing process – Integer – Default value 4 seconds', 0, 454, 1, '2018-11-14 00:16:07', '2025-07-30 14:34:56'),
(96, 'SOCKET_PRICE_CURRENCY', 'int', '3', 'Defines currency type used for socketing – Integer – Default value 3 (which by default means Bronze currency)', 0, 454, 1, '2018-11-14 00:16:07', '2025-07-30 14:34:56'),
(97, 'SOCKET_PRICE_BASE', 'int', '1500', 'Defines base price required to start the socketing process – Integer – Default value 1500', 0, 454, 1, '2018-11-14 00:16:07', '2025-07-30 14:34:56'),
(98, 'SOCKET_PRICE_PER_GRADE', 'int', '50000', 'Defines the price required to start the socketing process per grade, this price will be added to the SOCKET_PRICE_BASE value to present the total price for the process – Integer – Default value 50000', 0, 454, 1, '2018-11-14 00:16:07', '2025-07-30 14:34:56'),
(99, 'SOCKET_RESET_TIME', 'int', '4', 'Defines time for reset sockets process – Integer – Default value 4 seconds', 0, 454, 1, '2018-11-14 00:16:07', '2025-07-30 14:34:56'),
(100, 'SOCKET_RESET_PRICE_CURRENCY', 'int', '3', 'Defines currency type used for reset sockets process – Integer – Default value 3 (which by default means Bronze currency)', 0, 454, 1, '2018-11-14 00:16:07', '2025-07-30 14:34:56'),
(101, 'SOCKET_RESET_PRICE_BASE', 'int', '1500', 'Defines base price required to reset sockets process – Integer – Default value 1500', 0, 454, 1, '2018-11-14 00:16:07', '2025-07-30 14:34:56'),
(102, 'SOCKET_RESET_PRICE_PER_GRADE', 'int', '50000', 'Defines the price required to reset the sockets process per grade, this price will be added to the SOCKET_RESET_PRICE_BASE value to present the total price for the process – Integer – Default value 50000', 0, 454, 1, '2018-11-14 00:16:07', '2025-07-30 14:34:56'),
(103, 'CHARACTER_NAME_MIN_LENGTH', 'int', '3', 'Defines the minimum length for a character name – Integer – Default value 3 characters', 0, 454, 1, '2018-11-14 00:16:07', '2025-07-30 14:34:56'),
(104, 'CHARACTER_NAME_MAX_LENGTH', 'int', '14', 'Defines the maximum length for a character name – Integer – Default value 14 characters', 0, 454, 1, '2018-11-14 00:16:07', '2025-07-30 14:34:56'),
(105, 'CHARACTER_NAME_ALLOW_SPACES', 'bool', 'true', 'Defines to allow spaces for a character name – Boolean – Default value true', 0, 454, 1, '2018-11-14 00:16:07', '2025-07-30 14:34:56'),
(106, 'CHARACTER_NAME_ALLOW_NUMBERS', 'bool', 'true', 'Defines to allow numbers for a character name – Boolean – Default value true', 0, 454, 1, '2018-11-14 00:16:07', '2025-07-30 14:34:56'),
(107, 'HIT_CHANCE_PERCENTAGE_CAP', 'float', '30', 'Defines maximum chance for miss – Integer – Default value: 30 percentage', 0, 454, 1, '2019-04-13 16:56:30', '2025-07-30 14:34:56'),
(108, 'PARRY_PERCENTAGE_CAP', 'float', '40', 'Defines if players should lose experience after death – Boolean – Default value: false', 0, 454, 1, '2019-04-13 16:56:57', '2025-07-30 14:34:56'),
(109, 'RESOURCE_HARVEST_XP_REWARD', 'int', '0', 'Defines the amount of experience that the player will get each time the resource node is being gathered – Integer – Default value: 0', 0, 454, 1, '2019-04-13 16:59:37', '2025-07-30 14:34:56'),
(110, 'UPGRADE_CLAIM_OBJECT_ITEMS_FROM_INVENTORY', 'bool', 'true', 'Defines if during the building upgrade process materials should be checked from the backpack or not – Default value: false', 0, 454, 1, '2019-04-13 17:01:13', '2025-07-30 14:34:56'),
(111, 'CHAT_LOG_DB', 'bool', 'false', 'Defines if the chat should be logged into the admin database in the chat_logs table. – Boolean – Default value: false', 0, 454, 1, '2019-08-21 10:29:12', '2025-07-30 14:34:56'),
(112, 'CHAT_LOG_FILE', 'bool', 'false', 'Defines if the chat should be logged into the log file which will reside in the logs directory. – Boolean – Default value: false', 0, 454, 1, '2019-08-21 10:29:25', '2025-07-30 14:34:56'),
(113, 'AUCTION_LOAD_DELAY', 'int', '10', 'Defines delay loading auctions by auction house server – Integer – Default value 10 seconds', 0, 454, 1, '2019-08-22 18:39:56', '2025-07-30 14:34:56'),
(116, 'DEATH_PERMANENTLY', 'bool', 'false', 'Defines if the character dies, then the player won’t be able to play it again, and he will have to create a new one – Boolean – Default value: false.', 0, 454, 1, '2019-10-06 21:09:59', '2025-07-30 14:34:56'),
(117, 'COLLECTION_SAVE_INTERVAL', 'int', '60', 'Defines how often data collection which gathers kills, crafts, etc. will be saved – Integer – Default value 60 seconds', 0, 454, 1, '2019-11-16 00:15:51', '2025-07-30 14:34:56'),
(118, 'RANKING_CALCULATION_INTERVAL', 'int', '10', 'Defines the interval between rankings calculations from the server startup – Integer – Default value 1440 minutes', 0, 454, 1, '2019-11-16 00:16:32', '2026-02-25 18:15:07'),
(119, 'USE_TALENT_PURCHASE_POINTS', 'bool', 'true', ' Defines if the talents should use talent points – Boolean – Default value true', 0, 454, 1, '2019-11-19 16:23:35', '2025-07-30 14:34:56'),
(120, 'TALENT_POINTS_GIVEN_PER_LEVEL', 'int', '3', 'Defines the number of talent points that players will gain with level up – Integer – Default value 3', 0, 454, 1, '2019-11-19 16:23:52', '2025-07-30 14:34:56'),
(121, 'SOCKET_RESET_CHANCE', 'float', '60', 'Defines reset sockets success rate – Integer – Default value 60 percentage', 0, 454, 1, '2018-11-14 00:16:07', '2025-07-30 14:34:56'),
(122, 'LOOT_FOR_ALL', 'bool', 'false', 'Personal loot distribution where every player who dealt any damage to the mob will have a chance for its separate loot- Boolean – Default value: false', 0, 454, 1, '2019-08-21 10:29:25', '2025-07-30 14:34:56'),
(124, 'DEATH_LOST_EXP', 'bool', 'false', 'Defines if players should lose experience after death – Boolean – Default value: false', 0, 454, 1, '2019-08-21 10:29:25', '2025-07-30 14:34:56'),
(125, 'DEATH_LOST_EXP_PERCENTAGE', 'float', '10', 'Defines the percentage of experience for the current player level that will be lost after players death – Float – Default value: 10 percentage', 0, 454, 1, '2018-11-14 00:16:07', '2025-07-30 14:34:56'),
(126, 'LOST_LEVEL', 'bool', 'false', 'Defines if the player should be able to lose his level after death – Boolean – Default value: false', 0, 454, 1, '2019-08-21 10:29:25', '2025-07-30 14:34:56'),
(127, 'LOOT_DICE_TIMEOUT', 'int', '30', 'Defines the time to roll the dice if applicable. After that time if the player won’t roll he will be considered as canceled – Integer – Default value: 30 seconds', 0, 454, 1, '2019-11-19 16:23:52', '2025-07-30 14:34:56'),
(128, 'GROUP_LOOT_DEFAULT_ROLL', 'int', '2', 'Defines default distribution where 0-Free For All, 1-Random, 2-Leader – Integer – Default value 0', 0, 454, 1, '2019-11-19 16:23:52', '2025-07-30 14:34:56'),
(129, 'GROUP_LOOT_DEFAULT_DICE', 'int', '0', 'Defines if distribution above item quality should use roll dice or not where 0-Normal, 1-Dice – Integer – Default value 0', 0, 454, 1, '2019-11-19 16:23:52', '2025-07-30 14:34:56'),
(130, 'GROUP_LOOT_DEFAULT_GRADE', 'int', '3', 'Defines item quality above which roll dice option will be taken into account – Integer – Default value 3 which is Uncommon. Definitions are stored in Atavism Editor -> Option Choices -> Item Quality', 0, 454, 1, '2019-11-19 16:23:52', '2025-07-30 14:34:56'),
(131, 'SAVE_COOLDOWN_LIMIT_DURATION', 'int', '60', 'Define cooldowns with the minimum cooldown duration (in seconds) which will be saved in the database – Integer – Default value: 60. Significantly reduced the number of database queries, in some cases even by 99%.', 0, 454, 1, '2020-08-23 11:24:14', '2025-07-30 14:34:56'),
(132, 'ABILITY_WEAPON_COOLDOWN_ATTACK_SPEED', 'bool', 'false', 'Defines if abilities should use weapons delays as cooldowns (true) or WEAPON_COOLDOWN game setting (false) – Boolean – Default value: false', 0, 454, 1, '2020-08-23 11:57:27', '2025-07-30 14:34:56'),
(133, 'WEAPON_COOLDOWN', 'float', '3', 'Defines weapon cooldown value for abilities (in seconds) – Float – Default value: 3', 0, 454, 1, '2020-08-23 11:57:27', '2025-07-30 14:34:56'),
(134, 'GLOBAL_COOLDOWN', 'float', '1', 'Defines global cooldown value for abilities (in seconds) – Float – Default value: 1', 0, 454, 1, '2020-08-23 11:57:27', '2025-07-30 14:34:56'),
(136, 'DUEL_DURATION', 'int', '120', 'Defines duel duration (in seconds)– Integer – Default value: 120.', 0, 454, 1, '2020-08-23 11:57:27', '2025-07-30 14:34:56'),
(137, 'FACTION_HATED_REP', 'int', '-3000', 'Defines reputation value to become hated by other entities (in points) – Integer – Default value: -3000', 0, 454, 1, '2020-08-23 11:57:27', '2025-07-30 14:34:56'),
(138, 'FACTION_DISLIKE_REP', 'int', '-1500', 'Defines reputation value to become disliked by other entities (in points) – Integer – Default value: -1500', 0, 454, 1, '2020-08-23 11:57:27', '2025-07-30 14:34:56'),
(139, 'FACTION_NEUTRAL_REP', 'int', '0', 'Defines reputation value to become neutral by other entities (in points) – Integer – Default value: 0', 0, 454, 1, '2020-08-23 11:57:27', '2025-07-30 14:34:56'),
(140, 'FACTION_FRIENDLY_REP', 'int', '500', 'Defines reputation value to become friendly by other entities (in points) – Integer – Default value: 500', 0, 454, 1, '2020-08-23 11:57:27', '2025-07-30 14:34:56'),
(141, 'FACTION_HONOURED_REP', 'int', '1500', 'Defines reputation value to become honored by other entities (in points) – Integer – Default value: 1500', 0, 454, 1, '2020-08-23 11:57:27', '2025-07-30 14:34:56'),
(142, 'FACTION_EXALTED_REP', 'int', '3000', 'Defines reputation value to become exalted by other entities (in points) – Integer – Default value: 3000', 0, 454, 1, '2020-08-23 11:57:27', '2025-07-30 14:34:56'),
(144, 'MOB_SPAWN_TICK', 'int', '300', 'Defines the delay between mobs spawned on the server – Integer – Default 300 milliseconds.', 0, 454, 1, '2020-08-23 11:57:27', '2025-07-30 14:34:56'),
(145, 'MOB_SPAWN_DELAY', 'int', '10000', ' Defines the delay for spawn mobs on the server – integer – Default value: 10 000 milliseconds.', 0, 454, 1, '2020-08-23 11:57:27', '2025-07-30 14:34:56'),
(146, 'FLAT_REPAIR_RATE', 'int', '25', 'If using a flat repair rate, what is the base cost of repairing – Integer – Default value: 25', 0, 454, 1, '2020-08-23 11:57:27', '2025-07-30 14:34:56'),
(147, 'FLAT_REPAIR_RATE_GRADE_MODIFIER', 'int', '10', 'If using a flat repair rate, how much does the cost go up based on the grade of the item – Integer – Default value: 10', 0, 454, 1, '2020-08-23 11:57:27', '2025-07-30 14:34:56'),
(148, 'USE_FLAT_REPAIR_RATE', 'bool', 'false', 'Should the repair cost for all items be the same, ignoring the value of the item – Boolean – Default value: false', 0, 454, 1, '2020-08-23 11:57:27', '2025-07-30 14:34:56'),
(150, 'EXP_MAX_DISTANCE', 'float', '40', 'Defines distance in which group members will receive experience if another group member kills a mob – Integer – Default 40 meters', 0, 454, 1, '2020-08-23 11:57:27', '2025-07-30 14:34:56'),
(154, 'DYNAMIC_NAVMESH_UPDATE_SAVE', 'bool', 'false', 'Defines if every generated navmesh on the server should be saved in a separate file so you can visualize it in the Recast4j Demo application – Boolean – Default value: false.', 0, 454, 1, '2021-06-26 20:37:57', '2025-07-30 14:34:56'),
(155, 'DYNAMIC_NAVMESH_UPDATE_INTERVAL', 'int', '1000', 'Defines how often the navmesh based on voxelized map and buildings will be recalculated – Integer – Default value: 1000 milliseconds.', 0, 454, 1, '2021-06-26 20:38:24', '2025-07-30 14:34:56'),
(156, 'PRIVATE_INVITE_TIMEOUT', 'int', '60', 'Defines how long the invitation to the player private instance will be valid – Integer – Default value: 60 seconds', 0, 454, 1, '2021-06-26 20:38:52', '2025-07-30 14:34:56'),
(157, 'PREFAB_LOAD_ELEMENT_LIMIT', 'int', '100', 'Defines how many item entries will be sent with each batch – Integer – Default value: 100', 0, 454, 1, '2021-06-26 20:39:23', '2025-07-30 14:34:56'),
(158, 'PVP_DAMAGE_REDUCTION_PERCENT', 'float', '0.1', 'Percentage value to which damage outcome will be reduced during PvP combat – Float – Default value: 0.1', 0, 454, 1, '2021-06-26 20:42:16', '2025-07-30 14:34:56'),
(159, 'PVP_DAMAGE_REDUCTION_USE', 'bool', 'true', 'Should damage reduction be applied in PvP – Boolean – Default value: true', 0, 454, 1, '2021-06-26 20:42:41', '2025-07-30 14:34:56'),
(160, 'AUTO_PAY_TAX_SYSTEM', 'bool', 'true', 'Defines if the tax should be automatically paid or not. – Boolean – Default value: true', 0, 454, 1, '2021-06-26 20:53:11', '2025-07-30 14:34:56'),
(161, 'USE_TAX_SYSTEM', 'bool', 'true', 'Defines if the tax system should be used. – Boolean – Default value: true', 0, 454, 1, '2021-06-26 20:53:37', '2025-07-30 14:34:56'),
(162, 'BUILDING_CORPSE_LOOT_DURATION', 'int', '60', 'Defines how long the loot will remain on the ground after the building will be destroyed – Integer – Default value: 60 seconds', 0, 454, 1, '2021-06-26 20:54:27', '2025-07-30 14:34:56'),
(163, 'BUILDING_CORPSE_MOB_TEMPLATE', 'int', '10009', 'Defines mob’s template id that will be presented as the loot item after the building will be destroyed – Integer – Default value: 10009', 0, 454, 1, '2021-06-26 20:54:51', '2025-07-30 14:34:56'),
(164, 'FALL_DAMAGE_TYPE', 'string', 'crash', 'The type of damage that will be dealt to the player when falling from a height. – String – Default value: crash', 0, 454, 0, '2021-07-07 17:13:02', '2025-09-03 16:46:57'),
(165, 'AUCTION_NPC_ONLY', 'bool', 'false', 'Defines if Auction House should be accessible from anywhere without interaction with an NPC – Boolean – Default value: false', 0, 454, 1, '2021-07-26 21:14:40', '2025-07-30 14:34:56'),
(166, 'LOOT_DISTANCE', 'float', '7', 'Defines distance in meters for automatic loot using the “F” button by default. – Float – Default value: 7', 0, 454, 1, '2021-08-02 23:21:29', '2025-07-30 14:34:56'),
(167, 'HIT_CHANCE_POINT_PER_PERCENTAGE', 'int', '10', 'Defines a number of points per one percent of hit chance – Int – Default value: 10', 0, 454, 1, '2021-09-15 18:43:41', '2025-07-30 14:34:56'),
(168, 'HIT_CHANCE_PERCENTAGE_PER_DIFF_LEVEL', 'int', '1', 'Defines hit chance reduction by percentage per level difference between defender and attacker – Integer – Default value: 1', 0, 454, 1, '2021-09-15 18:44:28', '2025-07-30 14:34:56'),
(169, 'STAT_RANDOM_HIT_STUN', 'float', '0', 'Percentage for additional randomization for stun chance, can be higher than 100 – Float – Default value: 0', 0, 454, 1, '2021-09-15 22:37:09', '2025-07-30 14:34:56'),
(170, 'STAT_RANDOM_HIT_SLEEP', 'float', '0', 'Percentage for additional randomization for sleep chance, can be higher than 100 – Float – Default value: 0', 0, 454, 1, '2021-09-15 22:37:38', '2025-07-30 14:34:56'),
(171, 'STAT_RANDOM_HIT_INTERRUPTION', 'float', '0', 'Percentage for additional randomization for interruption chance, can be higher than 100 – Float – Default value: 0', 0, 454, 1, '2021-09-15 22:38:09', '2025-07-30 14:34:56'),
(172, 'SKINNING_MAX_DISTANCE', 'float', '5', 'The maximum distance from which a mob can be skinned. - Float - Default value: 5', 1, 454, 1, '2021-09-15 22:38:09', '2025-09-03 16:46:57'),
(173, 'SERVER_DEVELOPMENT_MODE', 'bool', 'true', 'Defines if the server should be in development mode. This mode allows you to reload configuration in runtime and not have to restart it in most cases. An admin account is required to handle this in the in-game admin panel – Boolean – Default value: True', 0, 454, 1, '2022-04-08 18:22:51', '2025-07-30 14:34:56'),
(174, 'QUEST_CHECK_EQUIPED_ITEMS', 'bool', 'false', 'Defines if equipped items should be taken into account for quest objectives – Boolean – Default value: false', 0, 454, 1, '2022-04-08 18:22:51', '2025-07-30 14:34:56'),
(175, 'MOB_COMBAT_BEHAVIOR_SELECT_INTERVAL', 'int', '1000', 'Defines how often the server will check which behavior meets the conditions, in milliseconds – Integer – Default value: 1000', 0, 454, 1, '2022-09-18 16:24:41', '2025-07-30 14:34:56'),
(176, 'MOB_COMBAT_BEHAVIOR_USE_ABILITY_TIMEOUT', 'int', '20000', 'Defines the time within which the mob will try to use the ability, and when it will time out, then the server will randomize new ability to be used. It’s in milliseconds – Integer – Default value: 20 000', 0, 454, 1, '2022-09-18 16:31:47', '2025-07-30 14:34:56'),
(177, 'MOB_COMBAT_BEHAVIOR_MOVE_CHECK_INTERVAL', 'int', '250', 'Defines how often the target point will be defined for the mob, in milliseconds – Integer – Default value: 250', 0, 454, 1, '2022-09-18 19:03:32', '2025-07-30 14:34:56'),
(178, 'MOB_COMBAT_BEHAVIOR_DEFEND_CHANGE_TARGET_INTERVAL', 'int', '10000', 'Defines the time interval in milliseconds of how fast the defender will check who is the highest in the aggro table of the defended target – Integer – Default value: 10 000', 0, 454, 1, '2022-10-04 15:20:06', '2025-07-30 14:34:56'),
(180, 'STORE_BOUND_ITEM_IN_BANK', 'bool', 'false', 'defines if bound items could be stored in the player’s bank – Boolean – Default value: false', 0, 454, 1, '2022-10-15 13:49:06', '2025-07-30 14:34:56'),
(181, 'EXP_GROUP_ADD_PERCENTAGE', 'float', '0.1', 'defines the additional experience that the player will get when the player is in a group where 1 = 100% – float – Default value: 0.1', 0, 454, 1, '2022-10-21 22:04:37', '2025-07-30 14:34:56'),
(182, 'VIP_USE_TIME', 'bool', 'true', 'defines if the VIP should use time or be permanent – Boolean – Default value: true', 0, 454, 1, '2022-11-10 12:27:24', '2025-07-30 14:34:56'),
(183, 'MOB_COMBAT_BEHAVIOR_FLEE_ALLIES_CHECK_MAX_DISTANCE', 'float', '40', 'Defines maximum distance for the area where allies and enemies are being checked for Fleeing Behavior type and Flee type of To Group Friendly Mobs with Number of Targets condition, in meters – Float – Default value: 40', 0, 454, 1, '2022-09-18 16:24:41', '2025-07-30 14:34:56'),
(184, 'MOB_COMBAT_BEHAVIOR_EVENT_TIMEOUT', 'int', '10000', 'Defines how long the event for Mob Behavior with Event in Ability condition will be set to true when the event will occur on the mob, in milliseconds – Integer – Default value: 10 000.', 0, 454, 1, '2023-04-22 14:13:08', '2025-07-30 14:34:56'),
(185, 'MOB_COMBAT_BEHAVIOR_NUMBER_TARGETS_CHECK_MAX_DISTANCE', 'float', '40', 'Defines maximum distance for the area where allies and enemies are being checked for behavior profile with Number of Targets condition, in meters – Float – Default value: 40', 0, 454, 1, '2023-04-22 14:13:08', '2025-07-30 14:34:56'),
(186, 'VIP_PER_CHARACTER', 'bool', 'true', 'Defines if vip will be per account or per character - Bool - Default value: true', 0, 454, 1, '2022-12-19 20:06:41', '2025-09-03 16:46:57'),
(188, 'AUTO_ADJUSTMENT_MEMORY_THREADS_INTERVAL', 'int', '10', 'Defines interval for the auto-tuning system, how often the server will calculate memory and threads settings – Integer – Default: 10 (in minutes)', 0, 454, 1, '2023-04-25 16:04:45', '2025-07-30 14:34:56'),
(189, 'AUTO_ADJUSTMENT_MEMORY_THREADS', 'bool', 'false', 'Defines if the server should use the auto-tuning system for memory and threads – Boolean – Default value: true', 0, 454, 1, '2023-04-25 16:05:07', '2025-07-30 14:34:56'),
(190, 'PREFAB_MAX_INCOMING_MESSAGE_LENGTH', 'int', '800000', 'Defines the maximum length for messages to drop unwanted packets, like attacks or packets sent by mistake (in bytes) – Integer – Default value: 300 000', 0, 454, 1, '2023-09-04 20:33:23', '2025-07-30 14:34:56'),
(191, 'LOGIN_QUEUE_MAX_INTERVAL', 'int', '5000', 'Defines the maximum time interval in which the client must send a request to the server about its queue position to remain in the queue (in milliseconds) – integer – Default value: 5000', 0, 454, 1, '2023-11-10 20:47:05', '2025-07-30 14:34:56'),
(192, 'LOGIN_QUEUE_MAX_USERS', 'int', '1000', 'Defines the maximum number of users that can be logged in (related to the CCU number) – Integer – Default value: 100', 0, 454, 1, '2023-11-10 20:47:56', '2025-07-30 14:34:56'),
(193, 'LOGIN_QUEUE_RATE', 'float', '1', 'Defines the maximum number of logged players per second – Float – Default value: 1', 0, 454, 1, '2023-11-10 20:48:15', '2025-07-30 14:34:56'),
(194, 'INVENTORY_LOOT_ON_GROUND', 'bool', 'true', 'Defines if the server should drop items on the ground or use the default system – Boolean – Default value: false', 0, 454, 1, '2023-12-10 19:39:17', '2025-07-30 14:34:56'),
(195, 'INVENTORY_LOOT_ON_GROUND_TIMEOUT', 'int', '600', 'Defines how long the item remains on the ground (in seconds) – Integer – Default: value: 600', 0, 454, 1, '2023-12-12 19:11:30', '2025-07-30 14:34:56'),
(196, 'INVENTORY_LOOT_ON_GROUND_TIMEOUT_INTERVAL', 'int', '5', 'Defines interval in which the server will check if the item on the ground should be removed (in seconds) – long – Default value: 5', 0, 454, 1, '2023-12-12 19:11:59', '2025-07-30 14:34:56'),
(197, 'INVENTORY_LOOT_ON_GROUND_MAX_DISTANCE', 'int', '10', 'Defines range in which the item can be dropped on the ground (in meters) – Integer – Default value: 10', 0, 454, 1, '2023-12-14 14:17:56', '2025-07-30 14:34:56'),
(198, 'INVENTORY_LOOT_ON_GROUND_LOGOUT_QUALITY_MAIL', 'string', '5;6', 'Defines item qualities of items that will be mailed to the player who dropped them when the player is disconnected, logged out, or when will leave the instance – String – Default value: “5” (you can define more with “;” as a separator. The number is from the ordered list of item qualities from the Option Choices dictionary)', 0, 454, 1, '2023-12-14 16:52:13', '2025-07-30 14:34:56'),
(199, 'CONVERT_STAT_NAMES_TO_IDS', 'bool', 'true', 'Defines if the server should send statistic IDs instead of lengthy names – Boolean – Default value: true', 0, 454, 1, '2024-10-03 01:16:16', '2025-07-30 14:34:56'),
(200, 'MAIL_LIFE_DAYS', 'int', '30', 'Defines the lifetime of the mail – Integer – Default value: 30', 0, 454, 1, '2024-12-20 20:22:13', '2026-04-08 11:35:25'),
(201, 'MAIL_COD_LIFE_DAYS', 'int', '7', 'Defines the lifetime of mail of type COD (when sending an item, the sender can request a specific amount of currency in return to be able to receive the item) – Integer – Default value: 3', 0, 454, 1, '2024-12-20 20:22:32', '2026-04-08 11:35:40'),
(202, 'PET_ALLOW_TYPE_LIMIT_EXCEEDED', 'bool', 'false', 'Defines if the mob category count can be ignored in favor of global mob count – boolean – Default: false', 0, 454, 1, '2024-12-20 20:22:48', '2025-07-30 14:34:56'),
(203, 'PET_SPAWN_RANGE', 'float', '1', 'Defines range around the player (owner) where the pet will be spawned – float – default:1f (in meters)', 0, 454, 1, '2024-12-20 20:23:20', '2025-07-30 14:34:56'),
(204, 'PET_FOLLOW_RANGE', 'float', '5', 'Defines range around the player (owner) within which the mob will follow the owner – float – default 5f (in meters)', 0, 454, 1, '2024-12-20 20:23:40', '2026-04-08 11:37:50'),
(205, 'COMBAT_PET_SPEED_FROM_OWNER', 'bool', 'true', ' Defines if the pet should take speed from the owner – Boolean – Default value: true', 0, 454, 1, '2024-12-20 20:24:02', '2026-04-08 11:37:20'),
(206, 'COMBAT_PET_SPEED_MOD', 'float', '1.2', 'Defines the multiplier of the COMBAT_PET_SPEED_FROM_OWNER parameter. It only works if the COMBAT_PET_SPEED_FROM_OWNER is set to true – Float – Default value: 1.2', 0, 454, 1, '2024-12-20 20:24:56', '2026-04-08 11:38:27'),
(207, 'USE_VOXELS_TO_CHECK_MOB_VISIBILITY', 'bool', 'true', 'Defines if the server should use voxels for line of sight checks for aggroing mobs – Boolean – Default value: true', 0, 454, 1, '2025-12-28 23:35:15', '2026-04-08 11:39:47'),
(208, 'PVP_RANKING_RESET_INTERVAL', 'int', '720', 'Defines PvP rankings reset interval in hours. PvP rankings are of type “PvP Kill” and all “Currency” whereas the currency was set to the one assigned in PvP Ranks, by default, PvP currency – Integer – Default value: 720 (30 days)', 0, 454, 1, '2026-01-20 00:02:57', '2026-04-08 11:40:39'),
(209, 'PVP_RANKING_RESET_START_TIME', 'string', '2026-01-01 00:00:00', 'Defines the start time from which the PVP_RANKING_RESET_INTERVAL parameter will take effect. It’s in format (YYYY-MM-DD HH:MM:SS) – String – Default value: 2026-01-01 00:00:00', 0, 454, 1, '2026-01-20 00:05:48', '2026-04-08 12:03:08'),
(210, 'PVP_KILLED_MESSAGE', 'string', '{KILLED} was killed by {ATTACKER}', 'Defines announcement message. There are available tags: – String – Default value: “{KILLED} was killed by {ATTACKER}”\n\n    {ATTACKER} – Killer character’s name\n    {KILLED} – Killed character’s name\n', 0, 454, 1, '2026-02-14 23:25:05', '2026-04-08 12:08:15'),
(211, 'PVP_KARMA_POINTS_PER_KILL', 'int', '20', 'Defines the number of karma points the player killer will get upon killing another player that won’t fight back – Integer – Default value: 20', 0, 454, 1, '2026-02-15 00:08:05', '2026-04-08 12:07:53'),
(212, 'PVP_KARMA_POINTS_REDUCE', 'int', '10', 'Defines the number of karma points the player killer will lose upon killing mobs – Integer – Default value: 10', 0, 454, 1, '2026-02-15 00:09:34', '2026-04-08 12:07:43'),
(213, 'PVP_MARK_TIMEOUT', 'int', '20', 'Defines the timeout in seconds, after which an idle character tagged as chaotic becomes neutral – Integer – Default value: 20', 0, 454, 1, '2026-02-15 20:23:31', '2026-04-08 12:07:31');


--
-- Wyzwalacze `game_setting`
--
DROP TRIGGER IF EXISTS `game_setting_trigger`;
DELIMITER ;;
CREATE TRIGGER `game_setting_trigger` BEFORE UPDATE ON `game_setting` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `global_events`
--

DROP TABLE IF EXISTS `global_events`;
CREATE TABLE IF NOT EXISTS `global_events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `start_year` int NOT NULL DEFAULT '-1',
  `start_month` int NOT NULL DEFAULT '-1',
  `start_day` int NOT NULL DEFAULT '-1',
  `start_hour` int NOT NULL,
  `start_minute` int NOT NULL,
  `end_year` int NOT NULL DEFAULT '-1',
  `end_month` int NOT NULL DEFAULT '-1',
  `end_day` int NOT NULL DEFAULT '-1',
  `end_hour` int NOT NULL,
  `end_minute` int NOT NULL,
  `icon` varchar(256) NOT NULL,
  `icon2` mediumtext NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  `creationtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime NOT NULL DEFAULT '2010-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `global_events_bonuses`
--

DROP TABLE IF EXISTS `global_events_bonuses`;
CREATE TABLE IF NOT EXISTS `global_events_bonuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `global_event_id` int NOT NULL,
  `bonus_settings_id` int NOT NULL,
  `value` int NOT NULL,
  `valuep` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `graveyard`
--

DROP TABLE IF EXISTS `graveyard`;
CREATE TABLE IF NOT EXISTS `graveyard` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `instance` int NOT NULL,
  `locX` float DEFAULT NULL,
  `locY` float DEFAULT NULL,
  `locZ` float DEFAULT NULL,
  `factionReq` int DEFAULT '0',
  `factionRepReq` int DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `graveyard`
--
DROP TRIGGER IF EXISTS `graveyard_trigger`;
DELIMITER ;;
CREATE TRIGGER `graveyard_trigger` BEFORE UPDATE ON `graveyard` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `guild_level_requirements`
--

DROP TABLE IF EXISTS `guild_level_requirements`;
CREATE TABLE IF NOT EXISTS `guild_level_requirements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `level` int NOT NULL,
  `item_id` int NOT NULL,
  `count` int NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `creationtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `guild_level_settings`
--

DROP TABLE IF EXISTS `guild_level_settings`;
CREATE TABLE IF NOT EXISTS `guild_level_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `level` int NOT NULL,
  `members_num` int NOT NULL DEFAULT '1',
  `merchant_table` int NOT NULL DEFAULT '-1',
  `warehouse_num_slots` int NOT NULL DEFAULT '1',
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `creationtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `level` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `guild_level_settings`
--

INSERT INTO `guild_level_settings` (`id`, `level`, `members_num`, `merchant_table`, `warehouse_num_slots`, `isactive`, `creationtimestamp`, `updatetimestamp`) VALUES
(1, 1, 20, 42, 5, 1, '2020-11-23 07:37:25', '2020-11-23 01:37:25');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `interactive_object`
--

DROP TABLE IF EXISTS `interactive_object`;
CREATE TABLE IF NOT EXISTS `interactive_object` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `gameObject` varchar(256) DEFAULT NULL,
  `instance` int DEFAULT '-1',
  `locX` float DEFAULT NULL,
  `locY` float DEFAULT NULL,
  `locZ` float DEFAULT NULL,
  `interactionType` varchar(45) DEFAULT NULL,
  `interactionID` int DEFAULT '-1',
  `interactionData1` varchar(45) DEFAULT NULL,
  `interactionData2` varchar(45) DEFAULT NULL,
  `interactionData3` varchar(45) DEFAULT NULL,
  `questReqID` int DEFAULT '-1',
  `interactTimeReq` float DEFAULT '0',
  `interactDistance` float DEFAULT '9',
  `coordEffect` varchar(128) DEFAULT NULL,
  `respawnTime` int DEFAULT NULL,
  `profileId` int NOT NULL DEFAULT '-1',
  `despawnDelay` float DEFAULT '0',
  `despawnTime` float DEFAULT '0',
  `makeBusy` tinyint DEFAULT '1',
  `useLimit` int DEFAULT '-1',
  `minLevel` int DEFAULT '1',
  `maxLevel` int DEFAULT '99',
  `itemReq` int DEFAULT '-1',
  `itemCountReq` int DEFAULT '1',
  `itemReqGet` tinyint DEFAULT '1',
  `currencyReq` int DEFAULT '-1',
  `currencyCountReq` int DEFAULT '1',
  `currencyReqGet` tinyint DEFAULT '1',
  `icon` varchar(256) DEFAULT '',
  `icon2` mediumtext,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=1489 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `interactive_object`
--
DROP TRIGGER IF EXISTS `interactive_object_trigger`;
DELIMITER ;;
CREATE TRIGGER `interactive_object_trigger` BEFORE UPDATE ON `interactive_object` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `interactive_object_coordeffects`
--

DROP TABLE IF EXISTS `interactive_object_coordeffects`;
CREATE TABLE IF NOT EXISTS `interactive_object_coordeffects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `objId` int NOT NULL,
  `coordEffect` varchar(256) DEFAULT '',
  `order` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item_audio_profile`
--

DROP TABLE IF EXISTS `item_audio_profile`;
CREATE TABLE IF NOT EXISTS `item_audio_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(68) NOT NULL DEFAULT '',
  `use_event` varchar(256) NOT NULL DEFAULT '',
  `drag_begin_event` varchar(256) NOT NULL DEFAULT '',
  `drag_end_event` varchar(256) NOT NULL DEFAULT '',
  `delete_event` varchar(256) NOT NULL DEFAULT '',
  `broke_event` varchar(256) NOT NULL DEFAULT '',
  `pick_up_event` varchar(256) NOT NULL DEFAULT '',
  `fall_event` varchar(256) NOT NULL DEFAULT '',
  `drop_event` varchar(256) NOT NULL DEFAULT '',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item_enchant_profile`
--

DROP TABLE IF EXISTS `item_enchant_profile`;
CREATE TABLE IF NOT EXISTS `item_enchant_profile` (
  `id` int NOT NULL,
  `Name` varchar(64) NOT NULL,
  `level` int NOT NULL,
  `percentage` tinyint(1) NOT NULL,
  `all_stats` tinyint(1) NOT NULL,
  `add_not_exist` tinyint(1) NOT NULL,
  `stat_value` int NOT NULL,
  `chance` float NOT NULL,
  `lower_by` tinyint DEFAULT NULL,
  `lower_to` smallint DEFAULT NULL,
  `cost` int NOT NULL,
  `currency` int NOT NULL,
  `damage` int NOT NULL,
  `damagep` int NOT NULL,
  `effect1valuep` int DEFAULT '0',
  `effect1name` varchar(45) DEFAULT NULL,
  `effect1value` int DEFAULT '0',
  `effect2valuep` int DEFAULT '0',
  `effect2name` varchar(45) DEFAULT NULL,
  `effect2value` int DEFAULT '0',
  `effect3valuep` int DEFAULT '0',
  `effect3name` varchar(45) DEFAULT NULL,
  `effect3value` int DEFAULT '0',
  `effect4valuep` int DEFAULT '0',
  `effect4name` varchar(45) DEFAULT NULL,
  `effect4value` int DEFAULT '0',
  `effect5valuep` int DEFAULT '0',
  `effect5name` varchar(45) DEFAULT NULL,
  `effect5value` int DEFAULT '0',
  `effect6valuep` int DEFAULT '0',
  `effect6name` varchar(45) DEFAULT NULL,
  `effect6value` int DEFAULT '0',
  `effect7valuep` int DEFAULT '0',
  `effect7name` varchar(45) DEFAULT NULL,
  `effect7value` int DEFAULT '0',
  `effect8valuep` int DEFAULT '0',
  `effect8name` varchar(45) DEFAULT NULL,
  `effect8value` int DEFAULT '0',
  `effect9valuep` int DEFAULT '0',
  `effect9name` varchar(45) DEFAULT NULL,
  `effect9value` int DEFAULT '0',
  `effect10valuep` int DEFAULT '0',
  `effect10name` varchar(45) DEFAULT NULL,
  `effect10value` int DEFAULT '0',
  `effect11valuep` int DEFAULT '0',
  `effect11name` varchar(45) DEFAULT NULL,
  `effect11value` int DEFAULT '0',
  `effect12valuep` int DEFAULT '0',
  `effect12name` varchar(45) DEFAULT NULL,
  `effect12value` int DEFAULT '0',
  `effect13valuep` int DEFAULT '0',
  `effect13name` varchar(45) DEFAULT NULL,
  `effect13value` int DEFAULT '0',
  `effect14valuep` int DEFAULT '0',
  `effect14name` varchar(45) DEFAULT NULL,
  `effect14value` int DEFAULT '0',
  `effect15valuep` int DEFAULT '0',
  `effect15name` varchar(45) DEFAULT NULL,
  `effect15value` int DEFAULT '0',
  `effect16valuep` int DEFAULT '0',
  `effect16name` varchar(45) DEFAULT NULL,
  `effect16value` int DEFAULT '0',
  `effect17valuep` int DEFAULT '0',
  `effect17name` varchar(45) DEFAULT NULL,
  `effect17value` int DEFAULT '0',
  `effect18valuep` int DEFAULT '0',
  `effect18name` varchar(45) DEFAULT NULL,
  `effect18value` int DEFAULT '0',
  `effect19valuep` int DEFAULT '0',
  `effect19name` varchar(45) DEFAULT NULL,
  `effect19value` int DEFAULT '0',
  `effect20valuep` int DEFAULT '0',
  `effect20name` varchar(45) DEFAULT NULL,
  `effect20value` int DEFAULT '0',
  `effect21valuep` int DEFAULT '0',
  `effect21name` varchar(45) DEFAULT NULL,
  `effect21value` int DEFAULT '0',
  `effect22valuep` int DEFAULT '0',
  `effect22name` varchar(45) DEFAULT NULL,
  `effect22value` int DEFAULT '0',
  `effect23valuep` int DEFAULT '0',
  `effect23name` varchar(45) DEFAULT NULL,
  `effect23value` int DEFAULT '0',
  `effect24valuep` int DEFAULT '0',
  `effect24name` varchar(45) DEFAULT NULL,
  `effect24value` int DEFAULT '0',
  `effect25valuep` int DEFAULT '0',
  `effect25name` varchar(45) DEFAULT NULL,
  `effect25value` int DEFAULT '0',
  `effect26valuep` int DEFAULT '0',
  `effect26name` varchar(45) DEFAULT NULL,
  `effect26value` int DEFAULT '0',
  `effect27valuep` int DEFAULT '0',
  `effect27name` varchar(45) DEFAULT NULL,
  `effect27value` int DEFAULT '0',
  `effect28valuep` int DEFAULT '0',
  `effect28name` varchar(45) DEFAULT NULL,
  `effect28value` int DEFAULT '0',
  `effect29valuep` int DEFAULT '0',
  `effect29name` varchar(45) DEFAULT NULL,
  `effect29value` int DEFAULT '0',
  `effect30valuep` int DEFAULT '0',
  `effect30name` varchar(45) DEFAULT NULL,
  `effect30value` int DEFAULT '0',
  `effect31valuep` int DEFAULT '0',
  `effect31name` varchar(45) DEFAULT NULL,
  `effect31value` int DEFAULT '0',
  `effect32valuep` int DEFAULT '0',
  `effect32name` varchar(45) DEFAULT NULL,
  `effect32value` int DEFAULT '0',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  `gear_score` int NOT NULL DEFAULT '0',
  `gear_scorep` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`level`)
) ENGINE=InnoDB AVG_ROW_LENGTH=5461 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item_quality`
--

DROP TABLE IF EXISTS `item_quality`;
CREATE TABLE IF NOT EXISTS `item_quality` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `cost` int NOT NULL,
  `chance` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=2730 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item_set_items`
--

DROP TABLE IF EXISTS `item_set_items`;
CREATE TABLE IF NOT EXISTS `item_set_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `set_id` int NOT NULL,
  `template_id` int NOT NULL,
  `isactive` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `template_id` (`template_id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=910 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item_set_level`
--

DROP TABLE IF EXISTS `item_set_level`;
CREATE TABLE IF NOT EXISTS `item_set_level` (
  `id` int NOT NULL AUTO_INCREMENT,
  `set_id` int NOT NULL,
  `number_of_parts` int NOT NULL,
  `damage` int DEFAULT '0',
  `damagep` int DEFAULT '0',
  `effect1valuep` int DEFAULT '0',
  `effect1name` varchar(45) DEFAULT NULL,
  `effect1value` int DEFAULT '0',
  `effect2valuep` int DEFAULT '0',
  `effect2name` varchar(45) DEFAULT NULL,
  `effect2value` int DEFAULT '0',
  `effect3valuep` int DEFAULT '0',
  `effect3name` varchar(45) DEFAULT NULL,
  `effect3value` int DEFAULT '0',
  `effect4valuep` int DEFAULT '0',
  `effect4name` varchar(45) DEFAULT NULL,
  `effect4value` int DEFAULT '0',
  `effect5valuep` int DEFAULT '0',
  `effect5name` varchar(45) DEFAULT NULL,
  `effect5value` int DEFAULT '0',
  `effect6valuep` int DEFAULT '0',
  `effect6name` varchar(45) DEFAULT NULL,
  `effect6value` int DEFAULT '0',
  `effect7valuep` int DEFAULT '0',
  `effect7name` varchar(45) DEFAULT NULL,
  `effect7value` int DEFAULT '0',
  `effect8valuep` int DEFAULT '0',
  `effect8name` varchar(45) DEFAULT NULL,
  `effect8value` int DEFAULT '0',
  `effect9valuep` int DEFAULT '0',
  `effect9name` varchar(45) DEFAULT NULL,
  `effect9value` int DEFAULT '0',
  `effect10valuep` int DEFAULT '0',
  `effect10name` varchar(45) DEFAULT NULL,
  `effect10value` int DEFAULT '0',
  `effect11valuep` int DEFAULT '0',
  `effect11name` varchar(45) DEFAULT NULL,
  `effect11value` int DEFAULT '0',
  `effect12valuep` int DEFAULT '0',
  `effect12name` varchar(45) DEFAULT NULL,
  `effect12value` int DEFAULT '0',
  `effect13valuep` int DEFAULT '0',
  `effect13name` varchar(45) DEFAULT NULL,
  `effect13value` int DEFAULT '0',
  `effect14valuep` int DEFAULT '0',
  `effect14name` varchar(45) DEFAULT NULL,
  `effect14value` int DEFAULT '0',
  `effect15valuep` int DEFAULT '0',
  `effect15name` varchar(45) DEFAULT NULL,
  `effect15value` int DEFAULT '0',
  `effect16valuep` int DEFAULT '0',
  `effect16name` varchar(45) DEFAULT NULL,
  `effect16value` int DEFAULT '0',
  `effect17valuep` int DEFAULT '0',
  `effect17name` varchar(45) DEFAULT NULL,
  `effect17value` int DEFAULT '0',
  `effect18valuep` int DEFAULT '0',
  `effect18name` varchar(45) DEFAULT NULL,
  `effect18value` int DEFAULT '0',
  `effect19valuep` int DEFAULT '0',
  `effect19name` varchar(45) DEFAULT NULL,
  `effect19value` int DEFAULT '0',
  `effect20valuep` int DEFAULT '0',
  `effect20name` varchar(45) DEFAULT NULL,
  `effect20value` int DEFAULT '0',
  `effect21valuep` int DEFAULT '0',
  `effect21name` varchar(45) DEFAULT NULL,
  `effect21value` int DEFAULT '0',
  `effect22valuep` int DEFAULT '0',
  `effect22name` varchar(45) DEFAULT NULL,
  `effect22value` int DEFAULT '0',
  `effect23valuep` int DEFAULT '0',
  `effect23name` varchar(45) DEFAULT NULL,
  `effect23value` int DEFAULT '0',
  `effect24valuep` int DEFAULT '0',
  `effect24name` varchar(45) DEFAULT NULL,
  `effect24value` int DEFAULT '0',
  `effect25valuep` int DEFAULT '0',
  `effect25name` varchar(45) DEFAULT NULL,
  `effect25value` int DEFAULT '0',
  `effect26valuep` int DEFAULT '0',
  `effect26name` varchar(45) DEFAULT NULL,
  `effect26value` int DEFAULT '0',
  `effect27valuep` int DEFAULT '0',
  `effect27name` varchar(45) DEFAULT NULL,
  `effect27value` int DEFAULT '0',
  `effect28valuep` int DEFAULT '0',
  `effect28name` varchar(45) DEFAULT NULL,
  `effect28value` int DEFAULT '0',
  `effect29valuep` int DEFAULT '0',
  `effect29name` varchar(45) DEFAULT NULL,
  `effect29value` int DEFAULT '0',
  `effect30valuep` int DEFAULT '0',
  `effect30name` varchar(45) DEFAULT NULL,
  `effect30value` int DEFAULT '0',
  `effect31valuep` int DEFAULT '0',
  `effect31name` varchar(45) DEFAULT NULL,
  `effect31value` int DEFAULT '0',
  `effect32valuep` int DEFAULT '0',
  `effect32name` varchar(45) DEFAULT NULL,
  `effect32value` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=1820 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item_set_profile`
--

DROP TABLE IF EXISTS `item_set_profile`;
CREATE TABLE IF NOT EXISTS `item_set_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `isactive` tinyint NOT NULL DEFAULT '1',
  `creationtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=5461 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item_slots`
--

DROP TABLE IF EXISTS `item_slots`;
CREATE TABLE IF NOT EXISTS `item_slots` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `type` varchar(256) NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `item_slots`
--

INSERT INTO `item_slots` (`id`, `name`, `type`, `isactive`, `creationtimestamp`, `updatetimestamp`) VALUES
(1, 'Main Hand', '415;417', 1, '2021-07-10 15:26:06', '2023-11-10 20:51:59'),
(2, 'Off Hand', '415', 1, '2021-07-10 15:26:06', '2023-10-30 18:43:39'),
(3, 'Head', '416', 1, '2021-07-10 15:26:36', '2000-01-01 00:00:00'),
(4, 'Chest', '416', 1, '2021-07-10 15:26:36', '2000-01-01 00:00:00'),
(5, 'Shirt', '416', 1, '2021-07-10 22:55:52', '2000-01-01 00:00:00'),
(6, 'Legs', '416', 1, '2021-07-10 22:55:52', '2000-01-01 00:00:00'),
(7, 'Feet', '416', 1, '2021-07-10 22:57:23', '2000-01-01 00:00:00'),
(8, 'Hands', '416', 1, '2021-07-10 22:57:23', '2000-01-01 00:00:00'),
(9, 'Shoulder', '416', 1, '2021-07-10 22:58:25', '2000-01-01 00:00:00'),
(10, 'Weist', '416', 1, '2021-07-10 22:58:25', '2000-01-01 00:00:00'),
(11, 'Back', '415', 1, '2021-07-10 22:59:09', '2021-08-20 00:38:26'),
(12, 'Neck', '416', 1, '2021-07-10 22:59:09', '2000-01-01 00:00:00'),
(13, 'Main Ring', '416', 1, '2021-07-10 22:59:35', '2000-01-01 00:00:00'),
(14, 'Off Ring', '416', 1, '2021-07-10 22:59:35', '2000-01-01 00:00:00'),
(15, 'Main Earring', '416', 1, '2021-07-10 23:00:03', '2000-01-01 00:00:00'),
(16, 'Off Earring', '416', 1, '2021-07-10 23:00:03', '2000-01-01 00:00:00'),
(17, 'Fashion', '416', 1, '2021-07-10 23:01:02', '2000-01-01 00:00:00'),
(18, 'RangedWeapon', '415', 1, '2021-07-10 23:01:02', '2000-01-01 00:00:00'),
(19, 'TestWeapon', '415', 1, '2021-08-27 16:02:13', '2021-08-28 00:13:46'),
(20, 'TestArmor', '416', 1, '2021-08-27 16:04:57', '2021-08-27 16:04:57'),
(21, 'TestSlot', '415', 1, '2021-08-27 16:23:24', '2021-08-28 00:14:15'),
(22, 'toolslot', '417', 1, '2021-08-28 15:08:04', '2021-08-28 15:08:04'),
(23, 'test', '415', 1, '2021-08-28 15:23:48', '2021-08-28 15:23:48'),
(24, 'Axe', '417', 1, '2021-09-01 16:10:51', '2021-09-01 16:10:51'),
(25, 'Pickaxe', '417', 1, '2021-09-01 19:01:19', '2021-09-01 19:01:19'),
(26, 'test11', '415', 1, '2023-11-15 19:29:30', '2023-11-15 19:29:30');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item_slots_group`
--

DROP TABLE IF EXISTS `item_slots_group`;
CREATE TABLE IF NOT EXISTS `item_slots_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `all_slots` tinyint(1) NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `item_slots_group`
--

INSERT INTO `item_slots_group` (`id`, `name`, `all_slots`, `isactive`, `creationtimestamp`, `updatetimestamp`) VALUES
(1, 'Two Hand', 1, 1, '2021-07-10 15:27:18', '2000-01-01 00:00:00'),
(2, 'Any Hand', 0, 1, '2021-07-10 15:27:18', '2000-01-01 00:00:00'),
(3, 'Ring', 0, 1, '2021-07-10 15:27:18', '2000-01-01 00:00:00'),
(4, 'Earring', 0, 1, '2021-07-10 15:27:18', '2000-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item_slots_in_group`
--

DROP TABLE IF EXISTS `item_slots_in_group`;
CREATE TABLE IF NOT EXISTS `item_slots_in_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slot_group_id` int NOT NULL,
  `slot_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `item_slots_in_group`
--

INSERT INTO `item_slots_in_group` (`id`, `slot_group_id`, `slot_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 13),
(6, 3, 14),
(7, 4, 15),
(8, 4, 16);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item_slots_sets`
--

DROP TABLE IF EXISTS `item_slots_sets`;
CREATE TABLE IF NOT EXISTS `item_slots_sets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slot_id` int DEFAULT NULL,
  `set_id` int DEFAULT NULL,
  `race` int DEFAULT NULL,
  `class` int DEFAULT NULL,
  `creationtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `slot_id` (`slot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item_templates`
--

DROP TABLE IF EXISTS `item_templates`;
CREATE TABLE IF NOT EXISTS `item_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(86) NOT NULL,
  `icon` varchar(256) DEFAULT NULL,
  `icon2` mediumtext NOT NULL,
  `category` varchar(86) DEFAULT NULL,
  `subcategory` varchar(86) DEFAULT NULL,
  `itemType` varchar(86) DEFAULT NULL,
  `subType` varchar(86) DEFAULT NULL,
  `slot` varchar(86) DEFAULT NULL,
  `display` varchar(128) DEFAULT NULL,
  `slot1` varchar(86) NOT NULL DEFAULT '',
  `drawWeaponEffect1` text NOT NULL,
  `drawWeaponTime1` int NOT NULL DEFAULT '1',
  `holsteringWeaponEffect1` text NOT NULL,
  `holsteringWeaponTime1` int NOT NULL DEFAULT '1',
  `slot2` varchar(86) NOT NULL DEFAULT '',
  `drawWeaponEffect2` text NOT NULL,
  `drawWeaponTime2` int NOT NULL DEFAULT '1',
  `holsteringWeaponEffect2` text NOT NULL,
  `holsteringWeaponTime2` int NOT NULL DEFAULT '1',
  `slot3` varchar(86) NOT NULL DEFAULT '',
  `drawWeaponEffect3` text NOT NULL,
  `drawWeaponTime3` int NOT NULL DEFAULT '1',
  `holsteringWeaponEffect3` text NOT NULL,
  `holsteringWeaponTime3` int NOT NULL DEFAULT '1',
  `slot4` varchar(86) NOT NULL DEFAULT '',
  `drawWeaponEffect4` text NOT NULL,
  `drawWeaponTime4` int NOT NULL DEFAULT '1',
  `holsteringWeaponEffect4` text NOT NULL,
  `holsteringWeaponTime4` int NOT NULL DEFAULT '1',
  `slot5` varchar(86) NOT NULL DEFAULT '',
  `drawWeaponEffect5` text NOT NULL,
  `drawWeaponTime5` int NOT NULL DEFAULT '1',
  `holsteringWeaponEffect5` text NOT NULL,
  `holsteringWeaponTime5` int NOT NULL DEFAULT '1',
  `slot6` varchar(86) NOT NULL DEFAULT '',
  `drawWeaponEffect6` text NOT NULL,
  `drawWeaponTime6` int NOT NULL DEFAULT '1',
  `holsteringWeaponEffect6` text NOT NULL,
  `holsteringWeaponTime6` int NOT NULL DEFAULT '1',
  `slot7` varchar(86) NOT NULL DEFAULT '',
  `drawWeaponEffect7` text NOT NULL,
  `drawWeaponTime7` int NOT NULL DEFAULT '1',
  `holsteringWeaponEffect7` text NOT NULL,
  `holsteringWeaponTime7` int NOT NULL DEFAULT '1',
  `slot8` varchar(86) NOT NULL DEFAULT '',
  `drawWeaponEffect8` text NOT NULL,
  `drawWeaponTime8` int NOT NULL DEFAULT '1',
  `holsteringWeaponEffect8` text NOT NULL,
  `holsteringWeaponTime8` int NOT NULL DEFAULT '1',
  `slot9` varchar(86) NOT NULL DEFAULT '',
  `drawWeaponEffect9` text NOT NULL,
  `drawWeaponTime9` int NOT NULL DEFAULT '1',
  `holsteringWeaponEffect9` text NOT NULL,
  `holsteringWeaponTime9` int NOT NULL DEFAULT '1',
  `slot10` varchar(86) NOT NULL DEFAULT '',
  `drawWeaponEffect10` text NOT NULL,
  `drawWeaponTime10` int NOT NULL DEFAULT '1',
  `holsteringWeaponEffect10` text NOT NULL,
  `holsteringWeaponTime10` int NOT NULL DEFAULT '1',
  `itemQuality` tinyint DEFAULT NULL,
  `binding` tinyint DEFAULT NULL,
  `isUnique` tinyint(1) DEFAULT NULL,
  `stackLimit` int DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `purchaseCurrency` tinyint DEFAULT NULL,
  `purchaseCost` bigint DEFAULT '0',
  `sellable` tinyint(1) DEFAULT '1',
  `damage` int NOT NULL DEFAULT '0',
  `damageMax` int NOT NULL DEFAULT '0',
  `damageType` varchar(86) DEFAULT NULL,
  `delay` float DEFAULT NULL,
  `toolTip` varchar(255) DEFAULT NULL,
  `triggerEvent` varchar(86) DEFAULT NULL,
  `triggerAction1Type` varchar(86) DEFAULT NULL,
  `triggerAction1Data` varchar(86) DEFAULT NULL,
  `effect1type` varchar(86) DEFAULT NULL,
  `effect1name` varchar(86) DEFAULT NULL,
  `effect1value` varchar(86) DEFAULT '0',
  `effect2type` varchar(86) DEFAULT NULL,
  `effect2name` varchar(86) DEFAULT NULL,
  `effect2value` varchar(86) DEFAULT '0',
  `effect3type` varchar(86) DEFAULT NULL,
  `effect3name` varchar(86) DEFAULT NULL,
  `effect3value` varchar(86) DEFAULT '0',
  `effect4type` varchar(86) DEFAULT NULL,
  `effect4name` varchar(86) DEFAULT NULL,
  `effect4value` varchar(86) DEFAULT '0',
  `effect5type` varchar(86) DEFAULT NULL,
  `effect5name` varchar(86) DEFAULT NULL,
  `effect5value` varchar(86) DEFAULT '0',
  `effect6type` varchar(86) DEFAULT NULL,
  `effect6name` varchar(86) DEFAULT NULL,
  `effect6value` varchar(86) DEFAULT '0',
  `effect7type` varchar(86) DEFAULT NULL,
  `effect7name` varchar(86) DEFAULT NULL,
  `effect7value` varchar(86) DEFAULT '0',
  `effect8type` varchar(86) DEFAULT NULL,
  `effect8name` varchar(86) DEFAULT NULL,
  `effect8value` varchar(86) DEFAULT '0',
  `effect9type` varchar(86) DEFAULT NULL,
  `effect9name` varchar(86) DEFAULT NULL,
  `effect9value` varchar(86) DEFAULT '0',
  `effect10type` varchar(86) DEFAULT NULL,
  `effect10name` varchar(86) DEFAULT NULL,
  `effect10value` varchar(86) DEFAULT '0',
  `effect11type` varchar(86) DEFAULT NULL,
  `effect11name` varchar(86) DEFAULT NULL,
  `effect11value` varchar(86) DEFAULT '0',
  `effect12type` varchar(86) DEFAULT NULL,
  `effect12name` varchar(86) DEFAULT NULL,
  `effect12value` varchar(86) DEFAULT '0',
  `effect13type` varchar(86) DEFAULT NULL,
  `effect13name` varchar(86) DEFAULT NULL,
  `effect13value` varchar(86) DEFAULT '0',
  `effect14type` varchar(86) DEFAULT NULL,
  `effect14name` varchar(86) DEFAULT NULL,
  `effect14value` varchar(86) DEFAULT '0',
  `effect15type` varchar(86) DEFAULT NULL,
  `effect15name` varchar(86) DEFAULT NULL,
  `effect15value` varchar(86) DEFAULT '0',
  `effect16type` varchar(86) DEFAULT NULL,
  `effect16name` varchar(86) DEFAULT NULL,
  `effect16value` varchar(86) DEFAULT '0',
  `effect17type` varchar(86) DEFAULT NULL,
  `effect17name` varchar(86) DEFAULT NULL,
  `effect17value` varchar(86) DEFAULT '0',
  `effect18type` varchar(86) DEFAULT NULL,
  `effect18name` varchar(86) DEFAULT NULL,
  `effect18value` varchar(86) DEFAULT '0',
  `effect19type` varchar(86) DEFAULT NULL,
  `effect19name` varchar(86) DEFAULT NULL,
  `effect19value` varchar(86) DEFAULT '0',
  `effect20type` varchar(86) DEFAULT NULL,
  `effect20name` varchar(86) DEFAULT NULL,
  `effect20value` varchar(86) DEFAULT '0',
  `effect21type` varchar(86) DEFAULT NULL,
  `effect21name` varchar(86) DEFAULT NULL,
  `effect21value` varchar(86) DEFAULT '0',
  `effect22type` varchar(86) DEFAULT NULL,
  `effect22name` varchar(86) DEFAULT NULL,
  `effect22value` varchar(86) DEFAULT '0',
  `effect23type` varchar(86) DEFAULT NULL,
  `effect23name` varchar(86) DEFAULT NULL,
  `effect23value` varchar(86) DEFAULT '0',
  `effect24type` varchar(86) DEFAULT NULL,
  `effect24name` varchar(86) DEFAULT NULL,
  `effect24value` varchar(86) DEFAULT '0',
  `effect25type` varchar(86) DEFAULT NULL,
  `effect25name` varchar(86) DEFAULT NULL,
  `effect25value` varchar(86) DEFAULT '0',
  `effect26type` varchar(86) DEFAULT NULL,
  `effect26name` varchar(86) DEFAULT NULL,
  `effect26value` varchar(86) DEFAULT '0',
  `effect27type` varchar(86) DEFAULT NULL,
  `effect27name` varchar(86) DEFAULT NULL,
  `effect27value` varchar(86) DEFAULT '0',
  `effect28type` varchar(86) DEFAULT NULL,
  `effect28name` varchar(86) DEFAULT NULL,
  `effect28value` varchar(86) DEFAULT '0',
  `effect29type` varchar(86) DEFAULT NULL,
  `effect29name` varchar(86) DEFAULT NULL,
  `effect29value` varchar(86) DEFAULT '0',
  `effect30type` varchar(86) DEFAULT NULL,
  `effect30name` varchar(86) DEFAULT NULL,
  `effect30value` varchar(86) DEFAULT '0',
  `effect31type` varchar(86) DEFAULT NULL,
  `effect31name` varchar(86) DEFAULT NULL,
  `effect31value` varchar(86) DEFAULT '0',
  `effect32type` varchar(86) DEFAULT NULL,
  `effect32name` varchar(86) DEFAULT NULL,
  `effect32value` varchar(86) DEFAULT '0',
  `actionBarAllowed` tinyint(1) NOT NULL DEFAULT '0',
  `enchant_profile_id` int NOT NULL DEFAULT '-1',
  `weapon_profile_id` int NOT NULL DEFAULT '-1',
  `auctionHouse` tinyint(1) NOT NULL DEFAULT '1',
  `skillExp` int NOT NULL DEFAULT '0',
  `gear_score` int NOT NULL DEFAULT '0',
  `weight` int NOT NULL DEFAULT '0',
  `durability` int NOT NULL DEFAULT '0',
  `autoattack` int NOT NULL DEFAULT '-1',
  `socket_type` varchar(86) NOT NULL DEFAULT '',
  `ammotype` int NOT NULL DEFAULT '0',
  `death_loss` int NOT NULL DEFAULT '0',
  `parry` tinyint(1) NOT NULL DEFAULT '0',
  `oadelete` tinyint(1) NOT NULL DEFAULT '0',
  `passive_ability` int NOT NULL DEFAULT '-1',
  `shopSlots` int NOT NULL DEFAULT '0',
  `shopModel` varchar(256) NOT NULL DEFAULT '' COMMENT 'not use',
  `shopTag` varchar(256) NOT NULL DEFAULT '',
  `numShops` int NOT NULL DEFAULT '1',
  `shopDestroyOnLogOut` tinyint(1) NOT NULL DEFAULT '1',
  `shopMobTemplate` int NOT NULL DEFAULT '-1',
  `shopTimeOut` int NOT NULL DEFAULT '0',
  `repairable` tinyint DEFAULT '1',
  `ground_prefab` varchar(128) NOT NULL DEFAULT '',
  `audio_profile_id` int NOT NULL DEFAULT '-1',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=840 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Wyzwalacze `item_templates`
--
DROP TRIGGER IF EXISTS `item_templates_trigger`;
DELIMITER ;;
CREATE TRIGGER `item_templates_trigger` BEFORE UPDATE ON `item_templates` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item_templates_options`
--

DROP TABLE IF EXISTS `item_templates_options`;
CREATE TABLE IF NOT EXISTS `item_templates_options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `editor_option_type_id` int NOT NULL,
  `editor_option_choice_type_id` varchar(45) NOT NULL,
  `required_value` int NOT NULL DEFAULT '1',
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` timestamp NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`,`isactive`)
) ENGINE=InnoDB AVG_ROW_LENGTH=744 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `item_templates_options`
--
DROP TRIGGER IF EXISTS `item_templates_options_trigger`;
DELIMITER ;;
CREATE TRIGGER `item_templates_options_trigger` BEFORE UPDATE ON `item_templates_options` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item_weights`
--

DROP TABLE IF EXISTS `item_weights`;
CREATE TABLE IF NOT EXISTS `item_weights` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `prefix` tinyint(1) DEFAULT NULL,
  `stat1` varchar(64) DEFAULT NULL,
  `weight1` int DEFAULT NULL,
  `stat2` varchar(64) DEFAULT NULL,
  `weight2` int DEFAULT NULL,
  `stat3` varchar(64) DEFAULT NULL,
  `weight3` int DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `item_weights`
--
DROP TRIGGER IF EXISTS `item_weights_trigger`;
DELIMITER ;;
CREATE TRIGGER `item_weights_trigger` BEFORE UPDATE ON `item_weights` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `level_xp_requirements`
--

DROP TABLE IF EXISTS `level_xp_requirements`;
CREATE TABLE IF NOT EXISTS `level_xp_requirements` (
  `xpProfile` int NOT NULL DEFAULT '1',
  `level` int NOT NULL,
  `xpRequired` int DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  `reward_template_id` int DEFAULT '-1',
  PRIMARY KEY (`xpProfile`,`level`)
) ENGINE=InnoDB AVG_ROW_LENGTH=546 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `level_xp_requirements`
--

INSERT INTO `level_xp_requirements` (`xpProfile`, `level`, `xpRequired`, `isactive`, `creationtimestamp`, `updatetimestamp`, `reward_template_id`) VALUES
(1, 1, 200, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 2, 500, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 3, 800, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 4, 1100, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 5, 1400, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 6, 1700, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 7, 2000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 8, 10000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 9, 20000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 10, 50000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 11, 100000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 12, 200000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 13, 400000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 14, 800000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 15, 1600000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 16, 3200000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 17, 6400000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 18, 12800000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 19, 25600000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 20, 51200000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 21, 102400000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 22, 204800000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 23, 204800000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 24, 204800000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 25, 204800000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 26, 204800000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 27, 204800000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 28, 204800000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 29, 204800000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1),
(1, 30, 204800000, 1, '2000-01-01 00:00:00', '2000-01-01 00:00:00', -1);

--
-- Wyzwalacze `level_xp_requirements`
--
DROP TRIGGER IF EXISTS `level_xp_requirements_trigger`;
DELIMITER ;;
CREATE TRIGGER `level_xp_requirements_trigger` BEFORE UPDATE ON `level_xp_requirements` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `level_xp_requirements_rewards`
--

DROP TABLE IF EXISTS `level_xp_requirements_rewards`;
CREATE TABLE IF NOT EXISTS `level_xp_requirements_rewards` (
  `reward_id` int NOT NULL AUTO_INCREMENT,
  `reward_template_id` int DEFAULT NULL,
  `reward_type` varchar(86) DEFAULT NULL,
  `reward_value` int DEFAULT NULL,
  `reward_amount` int DEFAULT NULL,
  `give_once` tinyint(1) NOT NULL DEFAULT '1',
  `on_level_down` tinyint(1) NOT NULL DEFAULT '0',
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`reward_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `level_xp_requirements_reward_templates`
--

DROP TABLE IF EXISTS `level_xp_requirements_reward_templates`;
CREATE TABLE IF NOT EXISTS `level_xp_requirements_reward_templates` (
  `reward_template_id` int NOT NULL AUTO_INCREMENT,
  `reward_template_name` varchar(86) DEFAULT NULL,
  `reward_mail_subject` varchar(255) DEFAULT '',
  `reward_mail_message` text,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`reward_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `level_xp_requirements_templates`
--

DROP TABLE IF EXISTS `level_xp_requirements_templates`;
CREATE TABLE IF NOT EXISTS `level_xp_requirements_templates` (
  `xpProfile` int NOT NULL AUTO_INCREMENT,
  `xpProfile_name` varchar(86) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`xpProfile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `level_xp_requirements_templates`
--

INSERT INTO `level_xp_requirements_templates` (`xpProfile`, `xpProfile_name`, `isactive`, `creationtimestamp`, `updatetimestamp`) VALUES
(1, 'Profile1', 1, '2023-09-03 12:50:16', '2023-09-03 12:50:16');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `loot_tables`
--

DROP TABLE IF EXISTS `loot_tables`;
CREATE TABLE IF NOT EXISTS `loot_tables` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `item1` int NOT NULL DEFAULT '-1',
  `item1count` int DEFAULT '0',
  `item1chance` float(10,7) DEFAULT '0.0000000',
  `item2` int NOT NULL DEFAULT '-1',
  `item2count` int DEFAULT '0',
  `item2chance` float(10,7) DEFAULT '0.0000000',
  `item3` int NOT NULL DEFAULT '-1',
  `item3count` int DEFAULT '0',
  `item3chance` float(10,7) DEFAULT '0.0000000',
  `item4` int NOT NULL DEFAULT '-1',
  `item4count` int DEFAULT '0',
  `item4chance` float(10,7) DEFAULT '0.0000000',
  `item5` int NOT NULL DEFAULT '-1',
  `item5count` int DEFAULT '0',
  `item5chance` float(10,7) DEFAULT '0.0000000',
  `item6` int NOT NULL DEFAULT '-1',
  `item6count` int DEFAULT '0',
  `item6chance` float(10,7) DEFAULT '0.0000000',
  `item7` int NOT NULL DEFAULT '-1',
  `item7count` int DEFAULT '0',
  `item7chance` float(10,7) DEFAULT '0.0000000',
  `item8` int NOT NULL DEFAULT '-1',
  `item8count` int DEFAULT '0',
  `item8chance` float(10,7) DEFAULT '0.0000000',
  `item9` int NOT NULL DEFAULT '-1',
  `item9count` int DEFAULT '0',
  `item9chance` float(10,7) DEFAULT '0.0000000',
  `item10` int NOT NULL DEFAULT '-1',
  `item10count` int DEFAULT '0',
  `item10chance` float(10,7) DEFAULT '0.0000000',
  `category` int DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `item1` (`item1`)
) ENGINE=InnoDB AVG_ROW_LENGTH=4096 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `loot_tables`
--
DROP TRIGGER IF EXISTS `loot_tables_trigger`;
DELIMITER ;;
CREATE TRIGGER `loot_tables_trigger` BEFORE UPDATE ON `loot_tables` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `loot_table_items`
--

DROP TABLE IF EXISTS `loot_table_items`;
CREATE TABLE IF NOT EXISTS `loot_table_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `loot_table_id` int NOT NULL,
  `item` int NOT NULL DEFAULT '1',
  `count` int DEFAULT '1',
  `count_max` int NOT NULL DEFAULT '0',
  `chance` float(12,7) DEFAULT '0.0000000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `merchant_item`
--

DROP TABLE IF EXISTS `merchant_item`;
CREATE TABLE IF NOT EXISTS `merchant_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tableID` int NOT NULL,
  `itemID` int NOT NULL,
  `count` int DEFAULT '-1',
  `refreshTime` int DEFAULT '0',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=364 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `merchant_item`
--
DROP TRIGGER IF EXISTS `merchant_item_trigger`;
DELIMITER ;;
CREATE TRIGGER `merchant_item_trigger` BEFORE UPDATE ON `merchant_item` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `merchant_tables`
--

DROP TABLE IF EXISTS `merchant_tables`;
CREATE TABLE IF NOT EXISTS `merchant_tables` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AVG_ROW_LENGTH=3276 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `merchant_tables`
--
DROP TRIGGER IF EXISTS `merchant_tables_trigger`;
DELIMITER ;;
CREATE TRIGGER `merchant_tables_trigger` BEFORE UPDATE ON `merchant_tables` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mob_ability`
--

DROP TABLE IF EXISTS `mob_ability`;
CREATE TABLE IF NOT EXISTS `mob_ability` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mob_ability_order` int NOT NULL,
  `behavior_id` int NOT NULL,
  `abilities` text NOT NULL,
  `minAbilityRangePercentage` float NOT NULL,
  `maxAbilityRangePercentage` float NOT NULL,
  `mob_ability_type` int NOT NULL COMMENT '0-Abilites; 1-Start Abiliies; 2-End Abilities',
  `creationtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `behavior_id` (`behavior_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mob_ability_conditions`
--

DROP TABLE IF EXISTS `mob_ability_conditions`;
CREATE TABLE IF NOT EXISTS `mob_ability_conditions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `conditions_group_id` int NOT NULL,
  `type` int NOT NULL COMMENT '0-Event; 1-Distance; 2-Stat; 3-Effect; 4-CombatState; 5-DeathState; 6-NumberOfTargets',
  `distance` float NOT NULL,
  `less` tinyint(1) NOT NULL,
  `stat_name` varchar(256) NOT NULL,
  `stat_value` float NOT NULL,
  `stat_vitality_percentage` tinyint(1) NOT NULL,
  `target` int NOT NULL COMMENT '0-Caster; 1-Target',
  `effect_tag_id` int NOT NULL,
  `on_target` tinyint(1) NOT NULL,
  `combat_state` tinyint(1) NOT NULL,
  `death_state` tinyint(1) NOT NULL,
  `trigger_event_Id` int NOT NULL COMMENT '0-Parry; 1-Dodge; 2-Miss; 3-Damage; 4-Heal; 5-Critical; 6-Kill; 7-Stun; 8-Sleep',
  `target_number` int NOT NULL,
  `target_ally` tinyint(1) NOT NULL,
  `creationtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `conditions_group_id` (`conditions_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mob_ability_conditions_group`
--

DROP TABLE IF EXISTS `mob_ability_conditions_group`;
CREATE TABLE IF NOT EXISTS `mob_ability_conditions_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_order` int NOT NULL,
  `mob_ability_id` int NOT NULL,
  `creationtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `mob_ability_id` (`mob_ability_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mob_behaviors`
--

DROP TABLE IF EXISTS `mob_behaviors`;
CREATE TABLE IF NOT EXISTS `mob_behaviors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profile_id` int NOT NULL,
  `behavior_order` int NOT NULL,
  `type` int NOT NULL COMMENT '0-Melee; 1-Ranged Offensive; 2-Ranged Defensive; 3-Defend; 4-Flee; 5-Heal',
  `flee_type` int NOT NULL COMMENT '0-Opposite direction;1-Defined position;2-To group friendly mobs',
  `flee_loc_x` float DEFAULT NULL,
  `flee_loc_y` float DEFAULT NULL,
  `flee_loc_z` float DEFAULT NULL,
  `ability_interval` int NOT NULL,
  `mob_tag` int NOT NULL,
  `ignore_chase_distance` tinyint(1) NOT NULL DEFAULT '1',
  `weapon` int NOT NULL DEFAULT '-1',
  `creationtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `profile_id` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mob_behavior_points`
--

DROP TABLE IF EXISTS `mob_behavior_points`;
CREATE TABLE IF NOT EXISTS `mob_behavior_points` (
  `id` int NOT NULL AUTO_INCREMENT,
  `behavior_id` int NOT NULL,
  `loc_x` float NOT NULL,
  `loc_y` float NOT NULL,
  `loc_z` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `behavior_id` (`behavior_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mob_behavior_profile`
--

DROP TABLE IF EXISTS `mob_behavior_profile`;
CREATE TABLE IF NOT EXISTS `mob_behavior_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  `creationtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mob_display`
--

DROP TABLE IF EXISTS `mob_display`;
CREATE TABLE IF NOT EXISTS `mob_display` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `prefab` varchar(64) NOT NULL,
  `race` varchar(64) DEFAULT NULL,
  `gender` varchar(32) NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `mob_display`
--
DROP TRIGGER IF EXISTS `mob_display_trigger`;
DELIMITER ;;
CREATE TRIGGER `mob_display_trigger` BEFORE UPDATE ON `mob_display` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mob_loot`
--

DROP TABLE IF EXISTS `mob_loot`;
CREATE TABLE IF NOT EXISTS `mob_loot` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` int NOT NULL DEFAULT '1',
  `mobTemplate` int NOT NULL,
  `lootTable` int DEFAULT NULL,
  `dropChance` float(10,7) DEFAULT NULL,
  `count` int NOT NULL DEFAULT '1',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `mobTemplate` (`mobTemplate`)
) ENGINE=InnoDB AVG_ROW_LENGTH=780 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `mob_loot`
--
DROP TRIGGER IF EXISTS `mob_loot_trigger`;
DELIMITER ;;
CREATE TRIGGER `mob_loot_trigger` BEFORE UPDATE ON `mob_loot` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mob_stat`
--

DROP TABLE IF EXISTS `mob_stat`;
CREATE TABLE IF NOT EXISTS `mob_stat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mobTemplate` int NOT NULL,
  `stat` varchar(45) NOT NULL,
  `value` int NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `mobTemplate` (`mobTemplate`,`isactive`)
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `mob_stat`
--
DROP TRIGGER IF EXISTS `mob_stat_trigger`;
DELIMITER ;;
CREATE TRIGGER `mob_stat_trigger` BEFORE UPDATE ON `mob_stat` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mob_templates`
--

DROP TABLE IF EXISTS `mob_templates`;
CREATE TABLE IF NOT EXISTS `mob_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `displayName` varchar(200) NOT NULL DEFAULT '',
  `subTitle` varchar(64) DEFAULT NULL,
  `mobType` int NOT NULL,
  `display1` varchar(128) NOT NULL DEFAULT '-1',
  `display2` varchar(128) DEFAULT NULL,
  `display3` varchar(128) DEFAULT NULL,
  `display4` varchar(128) DEFAULT NULL,
  `scale` float DEFAULT NULL,
  `hitbox` int DEFAULT NULL,
  `baseAnimationState` int NOT NULL DEFAULT '1',
  `faction` int NOT NULL DEFAULT '0',
  `attackable` tinyint(1) NOT NULL,
  `minLevel` int NOT NULL,
  `maxLevel` int DEFAULT NULL,
  `species` varchar(64) NOT NULL,
  `subSpecies` varchar(64) NOT NULL,
  `skinningLootTable` int DEFAULT '-1',
  `skinningLevelReq` int DEFAULT '0',
  `skinningLevelMax` int NOT NULL DEFAULT '0',
  `skinningSkillId` int NOT NULL DEFAULT '-1',
  `skinningSkillExp` int NOT NULL DEFAULT '0',
  `skinningWeaponReq` varchar(200) NOT NULL DEFAULT '',
  `skinningHarvestTime` decimal(20,1) NOT NULL DEFAULT '2.0',
  `questCategory` varchar(32) DEFAULT NULL,
  `specialUse` varchar(32) DEFAULT NULL,
  `speed_walk` float DEFAULT NULL,
  `speed_run` float DEFAULT NULL,
  `minDmg` int DEFAULT NULL,
  `maxDmg` int DEFAULT NULL,
  `attackSpeed` float DEFAULT NULL,
  `dmgType` varchar(20) DEFAULT NULL,
  `primaryWeapon` int DEFAULT NULL,
  `secondaryWeapon` int DEFAULT NULL,
  `autoAttack` int NOT NULL DEFAULT '-1',
  `attackDistance` float DEFAULT '0',
  `ability0` int DEFAULT '-1',
  `abilityStatReq0` varchar(45) DEFAULT NULL,
  `abilityStatPercent0` int DEFAULT '0',
  `ability1` int DEFAULT '-1',
  `abilityStatReq1` varchar(45) DEFAULT NULL,
  `abilityStatPercent1` int DEFAULT '0',
  `ability2` int DEFAULT '-1',
  `abilityStatReq2` varchar(45) DEFAULT NULL,
  `abilityStatPercent2` int DEFAULT '0',
  `exp` int NOT NULL DEFAULT '0',
  `addExplev` int NOT NULL DEFAULT '0',
  `pet_count_stat` int DEFAULT '-1',
  `race_id` int DEFAULT '-1',
  `class_id` int DEFAULT '-1',
  `gender_id` int DEFAULT '-1',
  `aggro_radius` int NOT NULL DEFAULT '17',
  `send_link_aggro` tinyint(1) NOT NULL DEFAULT '0',
  `get_link_aggro` tinyint(1) NOT NULL DEFAULT '0',
  `link_aggro_range` int NOT NULL DEFAULT '0',
  `chasing_distance` int NOT NULL DEFAULT '60',
  `tags` text NOT NULL,
  `behavior_profile_id` int NOT NULL DEFAULT '0',
  `stat_profile_id` int DEFAULT '-1',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AVG_ROW_LENGTH=1489 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `mob_templates`
--
DROP TRIGGER IF EXISTS `mob_templates_trigger`;
DELIMITER ;;
CREATE TRIGGER `mob_templates_trigger` BEFORE UPDATE ON `mob_templates` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `npcdisplay`
--

DROP TABLE IF EXISTS `npcdisplay`;
CREATE TABLE IF NOT EXISTS `npcdisplay` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `race` varchar(64) DEFAULT NULL,
  `gender` varchar(32) NOT NULL,
  `skinColour` int NOT NULL DEFAULT '1',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=910 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `npcdisplay`
--
DROP TRIGGER IF EXISTS `npcdisplay_trigger`;
DELIMITER ;;
CREATE TRIGGER `npcdisplay_trigger` BEFORE UPDATE ON `npcdisplay` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `patrol_path`
--

DROP TABLE IF EXISTS `patrol_path`;
CREATE TABLE IF NOT EXISTS `patrol_path` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `startingPoint` tinyint(1) NOT NULL,
  `travelReverse` tinyint(1) NOT NULL,
  `locX` float NOT NULL,
  `locY` float NOT NULL,
  `locZ` float NOT NULL,
  `lingerTime` float NOT NULL DEFAULT '0',
  `nextPoint` int NOT NULL DEFAULT '-1',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `isactive` (`isactive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `patrol_path`
--
DROP TRIGGER IF EXISTS `patrol_path_trigger`;
DELIMITER ;;
CREATE TRIGGER `patrol_path_trigger` BEFORE UPDATE ON `patrol_path` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pet_profile`
--

DROP TABLE IF EXISTS `pet_profile`;
CREATE TABLE IF NOT EXISTS `pet_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(84) NOT NULL DEFAULT '',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pet_profile_level`
--

DROP TABLE IF EXISTS `pet_profile_level`;
CREATE TABLE IF NOT EXISTS `pet_profile_level` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profile_id` int NOT NULL,
  `level` int NOT NULL DEFAULT '1',
  `exp` int NOT NULL DEFAULT '1',
  `template_id` int NOT NULL DEFAULT '-1',
  `coordEffect` varchar(256) DEFAULT '',
  `slot_profile_id` int NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `pet_profile_id` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pvp_ranks_settings`
--

DROP TABLE IF EXISTS `pvp_ranks_settings`;
CREATE TABLE IF NOT EXISTS `pvp_ranks_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` int NOT NULL,
  `currency_id` int NOT NULL,
  `currency_increase` int NOT NULL,
  `currency_reduce` int NOT NULL,
  `diff_below` varchar(256) NOT NULL,
  `diff_above` varchar(256) NOT NULL,
  `title` varchar(96) NOT NULL,
  `effect_id` int DEFAULT NULL,
  `icon` varchar(256) DEFAULT NULL,
  `icon2` mediumtext,
  `creationtimestamp` datetime NOT NULL,
  `updatetimestamp` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `quests`
--

DROP TABLE IF EXISTS `quests`;
CREATE TABLE IF NOT EXISTS `quests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `faction` int NOT NULL,
  `chain` varchar(64) DEFAULT NULL,
  `level` int DEFAULT NULL,
  `zone` varchar(64) DEFAULT NULL,
  `numGrades` int NOT NULL,
  `repeatable` tinyint(1) NOT NULL,
  `description` varchar(2048) NOT NULL,
  `objectiveText` varchar(2048) NOT NULL,
  `progressText` varchar(2048) NOT NULL,
  `deliveryItem1` int NOT NULL DEFAULT '-1',
  `deliveryItem2` int NOT NULL DEFAULT '-1',
  `deliveryItem3` int NOT NULL DEFAULT '-1',
  `questPrereq` int NOT NULL DEFAULT '-1',
  `questStartedReq` int NOT NULL DEFAULT '-1',
  `completionText` varchar(2048) DEFAULT NULL,
  `experience` int DEFAULT NULL,
  `item1` int DEFAULT NULL,
  `item1count` int DEFAULT NULL,
  `item2` int DEFAULT NULL,
  `item2count` int DEFAULT NULL,
  `item3` int DEFAULT NULL,
  `item3count` int DEFAULT NULL,
  `item4` int DEFAULT NULL,
  `item4count` int DEFAULT NULL,
  `item5` int DEFAULT NULL,
  `item5count` int DEFAULT NULL,
  `item6` int DEFAULT NULL,
  `item6count` int DEFAULT NULL,
  `item7` int DEFAULT NULL,
  `item7count` int DEFAULT NULL,
  `item8` int DEFAULT NULL,
  `item8count` int DEFAULT NULL,
  `chooseItem1` int DEFAULT NULL,
  `chooseItem1count` int DEFAULT NULL,
  `chooseItem2` int DEFAULT NULL,
  `chooseItem2count` int DEFAULT NULL,
  `chooseItem3` int DEFAULT NULL,
  `chooseItem3count` int DEFAULT NULL,
  `chooseItem4` int DEFAULT NULL,
  `chooseItem4count` int DEFAULT NULL,
  `chooseitem5` int DEFAULT NULL,
  `chooseitem5count` int DEFAULT NULL,
  `chooseitem6` int DEFAULT NULL,
  `chooseitem6count` int DEFAULT NULL,
  `chooseitem7` int DEFAULT NULL,
  `chooseitem7count` int DEFAULT NULL,
  `chooseitem8` int DEFAULT NULL,
  `chooseitem8count` int DEFAULT NULL,
  `currency1` int DEFAULT NULL,
  `currency1count` int DEFAULT NULL,
  `currency2` int DEFAULT NULL,
  `currency2count` int DEFAULT NULL,
  `rep1` int DEFAULT NULL,
  `rep1gain` int DEFAULT NULL,
  `rep2` int DEFAULT NULL,
  `rep2gain` int DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `category` (`category`,`isactive`)
) ENGINE=InnoDB AVG_ROW_LENGTH=2340 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `quests`
--
DROP TRIGGER IF EXISTS `quests_trigger`;
DELIMITER ;;
CREATE TRIGGER `quests_trigger` BEFORE UPDATE ON `quests` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `quest_items`
--

DROP TABLE IF EXISTS `quest_items`;
CREATE TABLE IF NOT EXISTS `quest_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quest_id` int NOT NULL,
  `item` int NOT NULL,
  `count` int NOT NULL,
  `choose` tinyint(1) NOT NULL,
  `rewardLevel` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `quest_id` (`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `quest_objectives`
--

DROP TABLE IF EXISTS `quest_objectives`;
CREATE TABLE IF NOT EXISTS `quest_objectives` (
  `id` int NOT NULL AUTO_INCREMENT,
  `questID` int NOT NULL,
  `primaryObjective` tinyint(1) NOT NULL,
  `objectiveType` varchar(16) NOT NULL,
  `target` int NOT NULL DEFAULT '-1',
  `targetCount` int NOT NULL,
  `targetText` varchar(64) NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  `targets` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `questID` (`questID`,`isactive`)
) ENGINE=InnoDB AVG_ROW_LENGTH=1820 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `quest_objectives`
--
DROP TRIGGER IF EXISTS `quest_objectives_trigger`;
DELIMITER ;;
CREATE TRIGGER `quest_objectives_trigger` BEFORE UPDATE ON `quest_objectives` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `quest_requirement`
--

DROP TABLE IF EXISTS `quest_requirement`;
CREATE TABLE IF NOT EXISTS `quest_requirement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quest_id` int NOT NULL,
  `editor_option_type_id` int NOT NULL,
  `editor_option_choice_type_id` varchar(45) NOT NULL,
  `required_value` int NOT NULL DEFAULT '1',
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` timestamp NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `quest_requirement`
--
DROP TRIGGER IF EXISTS `quest_requirement_trigger`;
DELIMITER ;;
CREATE TRIGGER `quest_requirement_trigger` BEFORE UPDATE ON `quest_requirement` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ranking1`
--

DROP TABLE IF EXISTS `ranking1`;
CREATE TABLE IF NOT EXISTS `ranking1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `obj_id` int DEFAULT NULL,
  `data` int DEFAULT NULL,
  `blobdata` blob,
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `ranking1`
--
DROP TRIGGER IF EXISTS `ranking1_trigger`;
DELIMITER ;;
CREATE TRIGGER `ranking1_trigger` BEFORE UPDATE ON `ranking1` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ranking_settings`
--

DROP TABLE IF EXISTS `ranking_settings`;
CREATE TABLE IF NOT EXISTS `ranking_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL,
  `sub_type` int NOT NULL DEFAULT '0',
  `param1` int NOT NULL DEFAULT '-1',
  `param2` int NOT NULL DEFAULT '-1',
  `distinction` varchar(2048) DEFAULT '',
  `name` varchar(100) NOT NULL,
  `count` int NOT NULL,
  `description` varchar(2048) NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=2048 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE IF NOT EXISTS `region` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `instance` int DEFAULT '-1',
  `locX` float DEFAULT NULL,
  `locY` float DEFAULT NULL,
  `locZ` float DEFAULT NULL,
  `regionType` varchar(45) DEFAULT NULL,
  `actionID` int DEFAULT '-1',
  `actionData1` varchar(45) DEFAULT NULL,
  `actionData2` varchar(45) DEFAULT NULL,
  `actionData3` varchar(45) DEFAULT NULL,
  `pvpMode` int DEFAULT '-1',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimetamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=4096 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `region_shape`
--

DROP TABLE IF EXISTS `region_shape`;
CREATE TABLE IF NOT EXISTS `region_shape` (
  `id` int NOT NULL AUTO_INCREMENT,
  `regionID` int NOT NULL,
  `locX` float DEFAULT NULL,
  `locY` float DEFAULT NULL,
  `locZ` float DEFAULT NULL,
  `shape` varchar(45) NOT NULL,
  `size1` float DEFAULT '0',
  `size2` float DEFAULT '0',
  `size3` float DEFAULT '0',
  `loc2X` float NOT NULL DEFAULT '0',
  `loc2Y` float NOT NULL DEFAULT '0',
  `loc2Z` float NOT NULL DEFAULT '0',
  `orientX` float NOT NULL DEFAULT '0',
  `orientY` float NOT NULL DEFAULT '0',
  `orientZ` float NOT NULL DEFAULT '0',
  `orientW` float NOT NULL DEFAULT '1',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimetamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=3276 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `resource_drop`
--

DROP TABLE IF EXISTS `resource_drop`;
CREATE TABLE IF NOT EXISTS `resource_drop` (
  `id` int NOT NULL AUTO_INCREMENT,
  `resourceSubProfileId` int NOT NULL,
  `item` int NOT NULL,
  `min` int NOT NULL,
  `max` int NOT NULL,
  `chance` float NOT NULL DEFAULT '100',
  `chanceMax` float NOT NULL DEFAULT '100',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=1638 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `resource_drop`
--
DROP TRIGGER IF EXISTS `resource_drop_trigger`;
DELIMITER ;;
CREATE TRIGGER `resource_drop_trigger` BEFORE UPDATE ON `resource_drop` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `resource_grids`
--

DROP TABLE IF EXISTS `resource_grids`;
CREATE TABLE IF NOT EXISTS `resource_grids` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `count` int DEFAULT NULL,
  `locX` float DEFAULT NULL,
  `locY` float DEFAULT NULL,
  `locZ` float DEFAULT NULL,
  `rotation` float DEFAULT NULL,
  `instance` varchar(45) DEFAULT NULL,
  `resource1_type` varchar(45) DEFAULT NULL,
  `resource1_chance` int DEFAULT NULL,
  `resource2_type` varchar(45) DEFAULT NULL,
  `resource2_chance` int DEFAULT NULL,
  `resource3_type` varchar(45) DEFAULT NULL,
  `resource3_chance` int DEFAULT NULL,
  `resource4_type` varchar(45) DEFAULT NULL,
  `resource4_chance` int DEFAULT NULL,
  `resource5_type` varchar(45) DEFAULT NULL,
  `resource5_chance` int DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `resource_grids`
--
DROP TRIGGER IF EXISTS `resource_grids_trigger`;
DELIMITER ;;
CREATE TRIGGER `resource_grids_trigger` BEFORE UPDATE ON `resource_grids` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `resource_node_profile`
--

DROP TABLE IF EXISTS `resource_node_profile`;
CREATE TABLE IF NOT EXISTS `resource_node_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `spawnPercentage` float NOT NULL DEFAULT '100',
  `spawnPecentageMax` float NOT NULL DEFAULT '100',
  `maxHarvestDistance` float NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  `creationtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `resource_node_spawn`
--

DROP TABLE IF EXISTS `resource_node_spawn`;
CREATE TABLE IF NOT EXISTS `resource_node_spawn` (
  `id` int NOT NULL AUTO_INCREMENT,
  `instance` varchar(45) DEFAULT NULL,
  `resourceTemplate` int DEFAULT NULL,
  `respawnTime` int DEFAULT NULL,
  `locX` float DEFAULT NULL,
  `locY` float DEFAULT NULL,
  `locZ` float DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `resource_node_spawn`
--
DROP TRIGGER IF EXISTS `resource_node_spawn_trigger`;
DELIMITER ;;
CREATE TRIGGER `resource_node_spawn_trigger` BEFORE UPDATE ON `resource_node_spawn` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `resource_node_sub_profile`
--

DROP TABLE IF EXISTS `resource_node_sub_profile`;
CREATE TABLE IF NOT EXISTS `resource_node_sub_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profileId` int NOT NULL,
  `priority` int NOT NULL,
  `priorityMax` int NOT NULL,
  `skill` int DEFAULT NULL,
  `skillLevel` int DEFAULT NULL,
  `skillLevelMax` int DEFAULT NULL,
  `skillExp` int NOT NULL DEFAULT '0',
  `weaponReq` varchar(45) DEFAULT NULL,
  `equipped` tinyint(1) DEFAULT NULL,
  `gameObject` varchar(128) DEFAULT NULL,
  `harvestCoordEffect` varchar(256) DEFAULT NULL,
  `activateCoordeffect` varchar(256) NOT NULL DEFAULT '',
  `deactivateCoordeffect` varchar(256) NOT NULL DEFAULT '',
  `respawnTime` int DEFAULT NULL,
  `respawnTimeMax` int DEFAULT NULL,
  `harvestCount` int DEFAULT NULL,
  `harvestTimeReq` float DEFAULT '0',
  `cooldown` float NOT NULL,
  `deactivationDelay` float NOT NULL,
  `lootCount` int NOT NULL DEFAULT '10',
  `ensureLoot` tinyint(1) NOT NULL DEFAULT '1',
  `cursorIcon` varchar(1024) NOT NULL DEFAULT '',
  `cursorIcon2` mediumtext NOT NULL,
  `selectedIcon` varchar(1024) NOT NULL DEFAULT '',
  `selectedIcon2` mediumtext NOT NULL,
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `resource_node_template`
--

DROP TABLE IF EXISTS `resource_node_template`;
CREATE TABLE IF NOT EXISTS `resource_node_template` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `skill` int DEFAULT NULL,
  `skillLevel` int DEFAULT NULL,
  `skillLevelMax` int DEFAULT NULL,
  `skillExp` int DEFAULT '0',
  `weaponReq` varchar(45) DEFAULT NULL,
  `equipped` tinyint(1) DEFAULT NULL,
  `gameObject` varchar(128) DEFAULT NULL,
  `coordEffect` varchar(128) DEFAULT NULL,
  `instance` int DEFAULT NULL,
  `respawnTime` int DEFAULT NULL,
  `locX` float DEFAULT NULL,
  `locY` float DEFAULT NULL,
  `locZ` float DEFAULT NULL,
  `harvestCount` int DEFAULT NULL,
  `harvestTimeReq` float DEFAULT '0',
  `profileId` int NOT NULL DEFAULT '-1',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=1638 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `resource_node_template`
--
DROP TRIGGER IF EXISTS `resource_node_template_trigger`;
DELIMITER ;;
CREATE TRIGGER `resource_node_template_trigger` BEFORE UPDATE ON `resource_node_template` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `skills`
--

DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `icon` varchar(256) DEFAULT NULL,
  `aspect` int DEFAULT '-1',
  `oppositeAspect` int DEFAULT '-1',
  `mainAspectOnly` tinyint(1) NOT NULL DEFAULT '0',
  `primaryStat` varchar(45) NOT NULL,
  `primaryStatValue` int NOT NULL DEFAULT '0',
  `primaryStatInterval` int NOT NULL DEFAULT '0',
  `secondaryStat` varchar(45) NOT NULL,
  `secondaryStatValue` int NOT NULL DEFAULT '0',
  `secondaryStatInterval` int NOT NULL DEFAULT '0',
  `thirdStat` varchar(45) NOT NULL,
  `thirdStatValue` int NOT NULL DEFAULT '0',
  `thirdStatInterval` int NOT NULL DEFAULT '0',
  `fourthStat` varchar(45) NOT NULL,
  `fourthStatValue` int NOT NULL DEFAULT '0',
  `fourthStatInterval` int NOT NULL DEFAULT '0',
  `maxLevel` int DEFAULT '1',
  `automaticallyLearn` tinyint(1) DEFAULT '1',
  `skillPointCost` int DEFAULT '0',
  `parentSkill` int DEFAULT '0',
  `parentSkillLevelReq` int DEFAULT '1',
  `prereqSkill1` int DEFAULT '0',
  `prereqSkill1Level` int DEFAULT '1',
  `prereqSkill2` int DEFAULT '0',
  `prereqSkill2Level` int DEFAULT '1',
  `prereqSkill3` int DEFAULT '0',
  `prereqSkill3Level` int DEFAULT '1',
  `playerLevelReq` int DEFAULT '1',
  `skill_profile_id` int NOT NULL,
  `type` int NOT NULL DEFAULT '1',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  `icon2` mediumtext NOT NULL,
  `talent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=1365 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `skills`
--
DROP TRIGGER IF EXISTS `skills_trigger`;
DELIMITER ;;
CREATE TRIGGER `skills_trigger` BEFORE UPDATE ON `skills` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `skill_ability_gain`
--

DROP TABLE IF EXISTS `skill_ability_gain`;
CREATE TABLE IF NOT EXISTS `skill_ability_gain` (
  `id` int NOT NULL AUTO_INCREMENT,
  `skillID` int DEFAULT NULL,
  `skillLevelReq` int DEFAULT '1',
  `abilityID` int DEFAULT NULL,
  `automaticallyLearn` tinyint(1) DEFAULT '1',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=1820 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `skill_ability_gain`
--
DROP TRIGGER IF EXISTS `skill_ability_gain_trigger`;
DELIMITER ;;
CREATE TRIGGER `skill_ability_gain_trigger` BEFORE UPDATE ON `skill_ability_gain` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `skill_profile`
--

DROP TABLE IF EXISTS `skill_profile`;
CREATE TABLE IF NOT EXISTS `skill_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL,
  `profile_name` varchar(64) NOT NULL,
  `level_diff` text NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `skill_profile_levels`
--

DROP TABLE IF EXISTS `skill_profile_levels`;
CREATE TABLE IF NOT EXISTS `skill_profile_levels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profile_id` int NOT NULL,
  `level` int NOT NULL,
  `required_xp` int NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `slots_in_profile`
--

DROP TABLE IF EXISTS `slots_in_profile`;
CREATE TABLE IF NOT EXISTS `slots_in_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slot_profile_id` int NOT NULL,
  `slot_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `slots_profile`
--

DROP TABLE IF EXISTS `slots_profile`;
CREATE TABLE IF NOT EXISTS `slots_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `spawn_data`
--

DROP TABLE IF EXISTS `spawn_data`;
CREATE TABLE IF NOT EXISTS `spawn_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` int NOT NULL DEFAULT '1',
  `name` varchar(64) NOT NULL,
  `mobTemplate` int NOT NULL DEFAULT '-1',
  `mobTemplate2` int NOT NULL DEFAULT '-1',
  `mobTemplate3` int NOT NULL DEFAULT '-1',
  `mobTemplate4` int NOT NULL DEFAULT '-1',
  `mobTemplate5` int NOT NULL DEFAULT '-1',
  `markerName` varchar(64) DEFAULT NULL,
  `locX` float(8,2) DEFAULT NULL,
  `locY` float(8,2) DEFAULT NULL,
  `locZ` float(8,2) DEFAULT NULL,
  `orientX` float(8,4) DEFAULT NULL,
  `orientY` float(8,4) DEFAULT NULL,
  `orientZ` float(8,4) DEFAULT NULL,
  `orientW` float(8,4) DEFAULT NULL,
  `instance` int DEFAULT NULL,
  `numSpawns` int DEFAULT NULL,
  `spawnRadius` int DEFAULT NULL,
  `respawnTime` int DEFAULT NULL,
  `respawnTimeMax` int DEFAULT NULL,
  `corpseDespawnTime` int DEFAULT NULL,
  `spawnActiveStartHour` int DEFAULT '-1',
  `spawnActiveEndHour` int DEFAULT '-1',
  `alternateSpawnMobTemplate` int NOT NULL DEFAULT '-1',
  `alternateSpawnMobTemplate2` int NOT NULL DEFAULT '-1',
  `alternateSpawnMobTemplate3` int NOT NULL DEFAULT '-1',
  `alternateSpawnMobTemplate4` int NOT NULL DEFAULT '-1',
  `alternateSpawnMobTemplate5` int NOT NULL DEFAULT '-1',
  `combat` tinyint(1) NOT NULL,
  `roamRadius` int NOT NULL,
  `roamDelayMin` float DEFAULT '5',
  `roamDelayMax` float DEFAULT '5',
  `roamRollTimeEachTime` tinyint(1) DEFAULT '1',
  `startsQuests` varchar(256) NOT NULL,
  `endsQuests` varchar(256) NOT NULL,
  `startsDialogues` varchar(256) NOT NULL,
  `otherActions` varchar(256) NOT NULL,
  `baseAction` varchar(32) NOT NULL,
  `weaponSheathed` tinyint(1) NOT NULL,
  `merchantTable` int NOT NULL,
  `patrolPath` int NOT NULL DEFAULT '-1',
  `questOpenLootTable` int NOT NULL,
  `isChest` tinyint(1) NOT NULL DEFAULT '0',
  `pickupItem` int DEFAULT NULL,
  `shop_owner` bigint NOT NULL DEFAULT '0',
  `shop_oid` bigint NOT NULL DEFAULT '0',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `instance` (`instance`,`isactive`)
) ENGINE=InnoDB AVG_ROW_LENGTH=287 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `spawn_data`
--
DROP TRIGGER IF EXISTS `spawn_data_trigger`;
DELIMITER ;;
CREATE TRIGGER `spawn_data_trigger` BEFORE UPDATE ON `spawn_data` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stat`
--

DROP TABLE IF EXISTS `stat`;
CREATE TABLE IF NOT EXISTS `stat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `type` int DEFAULT '0',
  `stat_function` varchar(45) DEFAULT NULL,
  `mob_base` int DEFAULT NULL,
  `mob_level_increase` int DEFAULT NULL,
  `mob_level_percent_increase` float DEFAULT NULL,
  `min` int NOT NULL DEFAULT '0',
  `max` bigint DEFAULT '0',
  `maxstat` varchar(45) DEFAULT NULL,
  `canExceedMax` tinyint(1) DEFAULT '0',
  `sharedWithGroup` tinyint(1) DEFAULT '0',
  `shiftTarget` smallint DEFAULT '0',
  `shiftValue` int DEFAULT NULL,
  `shiftReverseValue` int DEFAULT NULL,
  `shiftInterval` int DEFAULT NULL,
  `isShiftPercent` tinyint(1) NOT NULL DEFAULT '0',
  `onMaxHit` varchar(45) DEFAULT NULL,
  `onMinHit` varchar(45) DEFAULT NULL,
  `shiftReq1` varchar(45) DEFAULT NULL,
  `shiftReq1State` tinyint(1) NOT NULL DEFAULT '0',
  `shiftReq1SetReverse` tinyint(1) NOT NULL DEFAULT '0',
  `shiftReq2` varchar(45) DEFAULT NULL,
  `shiftReq2State` tinyint(1) NOT NULL DEFAULT '0',
  `shiftReq2SetReverse` tinyint(1) NOT NULL DEFAULT '0',
  `shiftReq3` varchar(45) DEFAULT NULL,
  `shiftReq3State` tinyint(1) NOT NULL DEFAULT '0',
  `shiftReq3SetReverse` tinyint(1) NOT NULL DEFAULT '0',
  `startPercent` int NOT NULL DEFAULT '50',
  `deathResetPercent` int DEFAULT '-1',
  `releaseResetPercent` int DEFAULT '-1',
  `sendToClient` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 none,1 all,2 owner only',
  `serverPresent` tinyint(1) DEFAULT '1',
  `onThreshold` varchar(45) DEFAULT NULL,
  `onThreshold2` varchar(45) DEFAULT NULL,
  `onThreshold3` varchar(45) DEFAULT NULL,
  `onThreshold4` varchar(45) DEFAULT NULL,
  `onThreshold5` varchar(45) DEFAULT NULL,
  `threshold` float NOT NULL DEFAULT '-1',
  `threshold2` float NOT NULL DEFAULT '-1',
  `threshold3` float NOT NULL DEFAULT '-1',
  `threshold4` float NOT NULL DEFAULT '-1',
  `shiftModStat` varchar(45) NOT NULL DEFAULT '',
  `stat_precision` int DEFAULT '1',
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=62 AVG_ROW_LENGTH=630 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `stat`
--

INSERT INTO `stat` (`id`, `name`, `type`, `stat_function`, `mob_base`, `mob_level_increase`, `mob_level_percent_increase`, `min`, `max`, `maxstat`, `canExceedMax`, `sharedWithGroup`, `shiftTarget`, `shiftValue`, `shiftReverseValue`, `shiftInterval`, `isShiftPercent`, `onMaxHit`, `onMinHit`, `shiftReq1`, `shiftReq1State`, `shiftReq1SetReverse`, `shiftReq2`, `shiftReq2State`, `shiftReq2SetReverse`, `shiftReq3`, `shiftReq3State`, `shiftReq3SetReverse`, `startPercent`, `deathResetPercent`, `releaseResetPercent`, `sendToClient`, `serverPresent`, `onThreshold`, `onThreshold2`, `onThreshold3`, `onThreshold4`, `onThreshold5`, `threshold`, `threshold2`, `threshold3`, `threshold4`, `shiftModStat`, `stat_precision`, `isactive`, `creationtimestamp`, `updatetimestamp`) VALUES
(1, 'attack_speed', 0, 'Attack Speed', 2000, 0, 0, 1000, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(2, 'build_stat', 0, 'Build Speed', 100, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 1, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2021-06-26 16:34:37', '2024-10-02 15:46:36'),
(3, 'cast_time', 0, 'Ability Cast Time', 100, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2020-04-16 13:34:32', '2024-10-02 15:46:36'),
(4, 'cooldown', 0, 'Ability Cooldown', 100, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2020-04-16 13:31:29', '2024-10-02 15:46:36'),
(5, 'cost', 0, 'Ability Cost', 100, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2020-04-16 13:31:04', '2024-10-02 15:46:36'),
(6, 'critic', 0, '', 25, 2, 0, 0, 0, '', 0, 0, 0, 0, 0, 1, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(7, 'crush_resistance', 1, '~ none ~', 2, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(8, 'damage_dealt', 0, 'Ability Damage Dealt', 100, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 1, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2020-04-16 13:29:30', '2024-10-02 15:46:36'),
(9, 'damage_rec', 0, 'Ability Damage Receive', 100, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2020-04-16 13:29:02', '2024-10-02 15:46:36'),
(10, 'dexterity', 0, '', 10, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(11, 'endurance', 0, '~ none ~', 10, 2, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(12, 'evasion', 0, '~ none ~', 10, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(13, 'glob_cooldown', 0, 'Ability Global Cooldown', 100, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2020-04-16 13:33:30', '2024-10-02 15:46:36'),
(14, 'health', 2, 'Health', 1000, 100, 0, 0, 0, 'health-max', 0, 1, 0, 3, 0, 2, 1, '', 'death', 'deadstate', 0, 0, 'combatstate', 0, 0, '~ none ~', 0, 0, 100, -1, 50, 1, 1, '', '', '', '', '', -1, -1, -1, -1, 'health_shift', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(15, 'health-max', 0, '~ none ~', 1000, 100, 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(16, 'health_dealt', 0, 'Ability Health Dealt', 100, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2020-04-16 13:30:09', '2024-10-02 15:46:36'),
(17, 'health_rec', 0, 'Ability Health Receive', 100, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2020-04-16 13:29:52', '2024-10-02 15:46:36'),
(18, 'health_shift', 0, '~ none ~', 100, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2020-04-21 20:22:38', '2024-10-02 15:46:36'),
(19, 'intelligence', 0, '', 20, 1, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(20, 'magical_critic', 0, '', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(21, 'magical_crit_power', 0, '', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2020-04-16 13:32:28', '2024-10-02 15:46:36'),
(22, 'magical_evasion', 0, '', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(23, 'magical_resistance', 1, '~ none ~', 200, 6, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(24, 'mana', 2, NULL, 0, 0, 0, 0, 0, 'mana-max', 0, 1, 0, 3, 0, 2, 1, '', '', 'deadstate', 0, 0, '~ none ~', 0, 0, '~ none ~', 0, 0, 100, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(25, 'mana-max', 0, '~ none ~', 10, 5, 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(26, 'movement_speed', 0, 'Movement Speed', 7, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(27, 'parry', 0, 'Parry', 10, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(28, 'perception-stealth', 0, 'Perception Stealth', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2020-05-21 19:43:23', '2024-10-02 15:46:36'),
(29, 'physical_critic', 0, '', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(30, 'physical_crit_power', 0, '', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2020-04-16 13:32:53', '2024-10-02 15:46:36'),
(31, 'physical_defense', 0, '~ none ~', 10, 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(32, 'physical_evasion', 0, '', 10, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(33, 'pierce_resistance', 1, '~ none ~', 5, 1, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(34, 'potential', 0, '', 20, 1, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(35, 'range', 0, 'Ability Range', 100, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2020-04-16 13:28:31', '2024-10-02 15:46:36'),
(36, 'slash_resistance', 1, '~ none ~', 5, 1, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(37, 'sleep_chance', 0, 'Sleep Chance', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2020-06-14 20:33:22', '2024-10-02 15:46:36'),
(38, 'sleep_resistance', 0, 'Sleep Resistance', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2020-06-14 20:34:33', '2024-10-02 15:46:36'),
(39, 'stamina', 2, NULL, 0, 0, 0, 0, 0, 'stamina-max', 0, 0, 1, 5, 0, 2, 1, '', '', 'sprint', 0, 0, '~ none ~', 0, 0, '~ none ~', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '~ none ~', 0, 1, '2020-06-29 15:10:06', '2024-10-02 15:46:36'),
(40, 'stamina-max', 0, '~ none ~', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2020-06-29 15:10:19', '2024-10-02 15:46:36'),
(41, 'stealth', 0, 'Stealth', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2020-05-21 19:43:36', '2024-10-02 15:46:36'),
(42, 'strength', 0, '', 20, 1, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(43, 'stun_chance', 0, 'Stun Chance', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2020-06-14 20:33:38', '2024-10-02 15:46:36'),
(44, 'stun_resistance', 0, 'Stun Resistance', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2020-06-14 20:34:54', '2024-10-02 15:46:36'),
(45, 'weapon_cooldown', 0, 'Ability Weapon Cooldown', 100, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2020-04-16 13:35:04', '2024-10-02 15:46:36'),
(46, 'weight', 2, 'Weight', 0, 0, 0, 0, 0, 'weight-max', 1, 0, 1, 0, 0, 2, 1, 'effect:220012', '', '~ none ~', 0, 0, '~ none ~', 0, 0, '~ none ~', 0, 0, 0, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(47, 'weight-max', 0, '~ none ~', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '~ none ~', '~ none ~', '~ none ~', 0, 0, '~ none ~', 0, 0, '~ none ~', 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(48, 'willpower', 0, '~ none ~', 10, 2, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2000-01-01 00:00:00', '2024-10-02 15:46:36'),
(49, 'experience-max', 0, 'exp', 20000, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, '~ none ~', '~ none ~', '~ none ~', 0, 0, '~ none ~', 0, 0, '~ none ~', 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '1999-12-31 18:00:00', '2024-10-02 20:06:17'),
(50, 'experience', 3, 'exp', 0, 0, 0, 0, 0, 'experience-max', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2024-09-15 02:48:27', '2024-10-02 15:46:36'),
(51, 'dmg-base', 4, 'dmg', NULL, NULL, NULL, 0, 2000, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2024-09-15 02:48:27', '2024-10-02 15:46:36'),
(52, 'dmg-max', 4, 'dmg', NULL, NULL, NULL, 0, 2000, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2024-09-15 02:48:27', '2024-10-02 15:46:36'),
(53, 'dmg-dealt-mod', 4, 'dmg', NULL, NULL, NULL, -100, 100, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2024-09-15 02:48:27', '2024-10-02 15:46:36'),
(54, 'dmg-taken-mod', 4, 'dmg', NULL, NULL, NULL, -100, 100, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2024-09-15 02:48:28', '2024-10-02 15:46:36'),
(55, 'gearScore', 4, 'gearScore', NULL, NULL, NULL, 0, 1000000000, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2024-09-15 02:48:28', '2024-10-02 15:46:36'),
(56, 'level', 4, 'Level', NULL, NULL, NULL, 0, 10000, NULL, 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, 0, 50, -1, -1, 1, 1, NULL, NULL, NULL, NULL, NULL, -1, -1, -1, -1, '', 0, 1, '2024-09-15 02:48:28', '2024-10-02 15:46:36'),
(57, 'pet_count_1', 5, '', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 1, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2024-12-20 21:46:59', '2024-12-20 21:46:59'),
(58, 'pet_count_2', 5, '', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 1, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2024-12-20 21:47:13', '2024-12-20 21:47:13'),
(59, 'pet_count_3', 5, '', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 1, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2024-12-20 21:48:06', '2024-12-20 20:51:01'),
(60, 'pet_global_count', 6, '', 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 1, 0, '', '', '', 0, 0, '', 0, 0, '', 0, 0, 50, -1, -1, 1, 1, '', '', '', '', '', -1, -1, -1, -1, '', 0, 1, '2024-12-20 21:47:37', '2024-12-20 20:50:56');

--
-- Wyzwalacze `stat`
--
DROP TRIGGER IF EXISTS `stat_trigger`;
DELIMITER ;;
CREATE TRIGGER `stat_trigger` BEFORE UPDATE ON `stat` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stat_link`
--

DROP TABLE IF EXISTS `stat_link`;
CREATE TABLE IF NOT EXISTS `stat_link` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stat_id` int NOT NULL,
  `stat` varchar(45) NOT NULL,
  `statTo` varchar(45) NOT NULL,
  `pointsForChange` int DEFAULT '1',
  `changePerPoint` float NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `stat` (`stat`,`isactive`)
) ENGINE=InnoDB AUTO_INCREMENT=11 AVG_ROW_LENGTH=1638 DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `stat_link`
--

INSERT INTO `stat_link` (`id`, `stat_id`, `stat`, `statTo`, `pointsForChange`, `changePerPoint`, `isactive`) VALUES
(1, 11, 'endurance', 'health-max', 1, 10, 1),
(2, 48, 'willpower', 'mana-max', 1, 10, 1),
(4, 31, 'physical_defense', 'pierce_resistance', 1, 1, 1),
(5, 31, 'physical_defense', 'slash_resistance', 1, 1, 1),
(6, 12, 'evasion', 'physical_evasion', 1, 1, 1),
(7, 12, 'evasion', 'magical_evasion', 1, 1, 1),
(8, 6, 'critic', 'magical_critic', 1, 1, 1),
(9, 6, 'critic', 'physical_critic', 1, 1, 1),
(10, 31, 'physical_defense', 'crush_resistance', 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stat_profile`
--

DROP TABLE IF EXISTS `stat_profile`;
CREATE TABLE IF NOT EXISTS `stat_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stat_profile_stats`
--

DROP TABLE IF EXISTS `stat_profile_stats`;
CREATE TABLE IF NOT EXISTS `stat_profile_stats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profile_id` int NOT NULL,
  `stat_id` int NOT NULL,
  `value` int NOT NULL DEFAULT '0',
  `level_increase` float NOT NULL DEFAULT '0',
  `level_percent_increase` float NOT NULL DEFAULT '0',
  `send_to_client` tinyint(1) DEFAULT '1',
  `serverPresent` tinyint(1) DEFAULT '1',
  `override_values` tinyint(1) DEFAULT '0',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`),
  KEY `profile_id` (`profile_id`),
  KEY `profile_id2` (`profile_id`,`send_to_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stat_thresholds`
--

DROP TABLE IF EXISTS `stat_thresholds`;
CREATE TABLE IF NOT EXISTS `stat_thresholds` (
  `stat_function` varchar(64) NOT NULL,
  `threshold` int NOT NULL,
  `num_per_point` int NOT NULL,
  PRIMARY KEY (`stat_function`,`threshold`),
  KEY `stat_function` (`stat_function`),
  KEY `threshold` (`threshold`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Zrzut danych tabeli `stat_thresholds`
--

INSERT INTO `stat_thresholds` (`stat_function`, `threshold`, `num_per_point`) VALUES
('Critic Chance', 440, 10),
('Critic Chance', 660, 20),
('Critic Power', 440, 10),
('Critic Power', 560, 20),
('Critic Power', 660, 50),
('Critic Power', 20000, 100),
('Power', 440, 10),
('Power', 560, 20),
('Power', 660, 50),
('Power', 20000, 100);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `survivalarenatemplates`
--

DROP TABLE IF EXISTS `survivalarenatemplates`;
CREATE TABLE IF NOT EXISTS `survivalarenatemplates` (
  `id` int NOT NULL,
  `numRounds` int NOT NULL,
  `round1Spawns` varchar(128) NOT NULL,
  `round2Spawns` varchar(128) DEFAULT NULL,
  `round3Spawns` varchar(128) DEFAULT NULL,
  `round4Spawns` varchar(128) DEFAULT NULL,
  `round5Spawns` varchar(128) DEFAULT NULL,
  `round6Spawns` varchar(128) DEFAULT NULL,
  `round7Spawns` varchar(128) DEFAULT NULL,
  `round8Spawns` varchar(128) DEFAULT NULL,
  `round9Spawns` varchar(128) DEFAULT NULL,
  `round10Spawns` varchar(128) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `survivalarenatemplates`
--
DROP TRIGGER IF EXISTS `survivalarenatemplates_trigger`;
DELIMITER ;;
CREATE TRIGGER `survivalarenatemplates_trigger` BEFORE UPDATE ON `survivalarenatemplates` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `task`
--

DROP TABLE IF EXISTS `task`;
CREATE TABLE IF NOT EXISTS `task` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=2730 DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `task`
--
DROP TRIGGER IF EXISTS `task_trigger`;
DELIMITER ;;
CREATE TRIGGER `task_trigger` BEFORE UPDATE ON `task` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `users`
--
DROP TRIGGER IF EXISTS `users_trigger`;
DELIMITER ;;
CREATE TRIGGER `users_trigger` BEFORE UPDATE ON `users` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vip_level`
--

DROP TABLE IF EXISTS `vip_level`;
CREATE TABLE IF NOT EXISTS `vip_level` (
  `id` int NOT NULL AUTO_INCREMENT,
  `level` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `max_points` bigint NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=3276 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vip_level_bonuses`
--

DROP TABLE IF EXISTS `vip_level_bonuses`;
CREATE TABLE IF NOT EXISTS `vip_level_bonuses` (
  `vip_level_id` int NOT NULL,
  `bonus_settings_id` int NOT NULL,
  `value` int NOT NULL,
  `valuep` float NOT NULL,
  KEY `vip_level_id` (`vip_level_id`,`bonus_settings_id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=1092 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `voxelands`
--

DROP TABLE IF EXISTS `voxelands`;
CREATE TABLE IF NOT EXISTS `voxelands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `instance` varchar(45) NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `voxelands`
--
DROP TRIGGER IF EXISTS `voxelands_trigger`;
DELIMITER ;;
CREATE TRIGGER `voxelands_trigger` BEFORE UPDATE ON `voxelands` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `voxeland_changes`
--

DROP TABLE IF EXISTS `voxeland_changes`;
CREATE TABLE IF NOT EXISTS `voxeland_changes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voxelandid` int NOT NULL,
  `x` int NOT NULL,
  `y` int NOT NULL,
  `z` int NOT NULL,
  `type` int NOT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Wyzwalacze `voxeland_changes`
--
DROP TRIGGER IF EXISTS `voxeland_changes_trigger`;
DELIMITER ;;
CREATE TRIGGER `voxeland_changes_trigger` BEFORE UPDATE ON `voxeland_changes` FOR EACH ROW SET NEW.updatetimestamp = CURRENT_TIMESTAMP
;;
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `weapon_action_settings`
--

DROP TABLE IF EXISTS `weapon_action_settings`;
CREATE TABLE IF NOT EXISTS `weapon_action_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profile_id` int NOT NULL DEFAULT '1',
  `action_id` int DEFAULT NULL,
  `slot` varchar(256) DEFAULT '',
  `ability_id` int DEFAULT '-1',
  `action_type` int DEFAULT '1',
  `coordeffect` varchar(256) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`,`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `weapon_templates_profile`
--

DROP TABLE IF EXISTS `weapon_templates_profile`;
CREATE TABLE IF NOT EXISTS `weapon_templates_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(86) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `creationtimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetimestamp` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `weather_instance`
--

DROP TABLE IF EXISTS `weather_instance`;
CREATE TABLE IF NOT EXISTS `weather_instance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `instance_id` int NOT NULL,
  `weather_profile_id` int NOT NULL,
  `month1` tinyint(1) NOT NULL,
  `month2` tinyint(1) NOT NULL,
  `month3` tinyint(1) NOT NULL,
  `month4` tinyint(1) NOT NULL,
  `month5` tinyint(1) NOT NULL,
  `month6` tinyint(1) NOT NULL,
  `month7` tinyint(1) NOT NULL,
  `month8` tinyint(1) NOT NULL,
  `month9` tinyint(1) NOT NULL,
  `month10` tinyint(1) NOT NULL,
  `month11` tinyint(1) NOT NULL,
  `month12` tinyint(1) NOT NULL,
  `priority` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `instance_id` (`instance_id`,`weather_profile_id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=2340 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `weather_profile`
--

DROP TABLE IF EXISTS `weather_profile`;
CREATE TABLE IF NOT EXISTS `weather_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `temperature_min` float NOT NULL,
  `temperature_max` float NOT NULL,
  `humidity_min` float NOT NULL,
  `humidity_max` float NOT NULL,
  `wind_direction_min` float NOT NULL,
  `wind_direction_max` float NOT NULL,
  `wind_speed_min` float NOT NULL,
  `wind_speed_max` float NOT NULL,
  `wind_turbulence_min` float NOT NULL,
  `wind_turbulence_max` float NOT NULL,
  `fog_height_power_min` float NOT NULL,
  `fog_height_power_max` float NOT NULL,
  `fog_height_max` float NOT NULL,
  `fog_distance_power_min` float NOT NULL,
  `fog_distance_power_max` float NOT NULL,
  `fog_distance_max` float NOT NULL,
  `rain_power_min` float NOT NULL,
  `rain_power_max` float NOT NULL,
  `rain_power_terrain_min` float NOT NULL,
  `rain_power_terrain_max` float NOT NULL,
  `rain_min_height` float NOT NULL,
  `rain_max_height` float NOT NULL,
  `hail_power_min` float NOT NULL,
  `hail_power_max` float NOT NULL,
  `hail_power_terrain_min` float NOT NULL,
  `hail_power_terrain_max` float NOT NULL,
  `hail_min_height` float NOT NULL,
  `hail_max_height` float NOT NULL,
  `snow_power_min` float NOT NULL,
  `snow_power_max` float NOT NULL,
  `snow_power_terrain_min` float NOT NULL,
  `snow_power_terrain_max` float NOT NULL,
  `snow_min_height` float NOT NULL,
  `snow_age_min` float NOT NULL,
  `snow_age_max` float NOT NULL,
  `thunder_power_min` float NOT NULL,
  `thunder_power_max` float NOT NULL,
  `cloud_power_min` float NOT NULL,
  `cloud_power_max` float NOT NULL,
  `cloud_min_height` float NOT NULL,
  `cloud_max_height` float NOT NULL,
  `cloud_speed_min` float NOT NULL,
  `cloud_speed_max` float NOT NULL,
  `moon_phase_min` float NOT NULL,
  `moon_phase_max` float NOT NULL,
  `isactive` int NOT NULL DEFAULT '0',
  `priority` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AVG_ROW_LENGTH=4096 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `weather_season`
--

DROP TABLE IF EXISTS `weather_season`;
CREATE TABLE IF NOT EXISTS `weather_season` (
  `id` int NOT NULL AUTO_INCREMENT,
  `instance_id` int NOT NULL,
  `season` int NOT NULL,
  `month1` tinyint(1) NOT NULL,
  `month2` tinyint(1) NOT NULL,
  `month3` tinyint(1) NOT NULL,
  `month4` tinyint(1) NOT NULL,
  `month5` tinyint(1) NOT NULL,
  `month6` tinyint(1) NOT NULL,
  `month7` tinyint(1) NOT NULL,
  `month8` tinyint(1) NOT NULL,
  `month9` tinyint(1) NOT NULL,
  `month10` tinyint(1) NOT NULL,
  `month11` tinyint(1) NOT NULL,
  `month12` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `instance_id` (`instance_id`,`season`)
) ENGINE=InnoDB AVG_ROW_LENGTH=16384 DEFAULT CHARSET=utf8mb3;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `survivalarenatemplates`
--
ALTER TABLE `survivalarenatemplates`
  ADD CONSTRAINT `survivalArenaTemplates_ibfk_1` FOREIGN KEY (`id`) REFERENCES `arena_templates` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
