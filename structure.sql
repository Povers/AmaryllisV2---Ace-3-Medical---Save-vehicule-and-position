/*
Navicat MySQL Data Transfer

Source Server         : Serveur sql
Source Server Version : 50715
Source Host           : localhost:3307
Source Database       : backup

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2016-10-28 18:44:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dynmarket
-- ----------------------------
DROP TABLE IF EXISTS `dynmarket`;
CREATE TABLE `dynmarket` (
  `id` int(11) NOT NULL DEFAULT '1',
  `prices` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for gangs
-- ----------------------------
DROP TABLE IF EXISTS `gangs`;
CREATE TABLE `gangs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `members` text,
  `maxmembers` int(2) DEFAULT '8',
  `bank` int(100) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for houses
-- ----------------------------
DROP TABLE IF EXISTS `houses`;
CREATE TABLE `houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(32) NOT NULL,
  `pos` varchar(64) DEFAULT NULL,
  `inventory` text,
  `containers` text,
  `owned` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`,`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `uid` int(12) NOT NULL AUTO_INCREMENT,
  `fromID` varchar(50) NOT NULL,
  `toID` varchar(50) NOT NULL,
  `message` text,
  `fromName` varchar(32) NOT NULL,
  `toName` varchar(32) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reboot` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=8990 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for players
-- ----------------------------
DROP TABLE IF EXISTS `players`;
CREATE TABLE `players` (
  `uid` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `playerid` varchar(50) NOT NULL,
  `cash` int(100) NOT NULL DEFAULT '0',
  `bankacc` int(100) NOT NULL DEFAULT '0',
  `coplevel` enum('0','1','2','3','4','5','6','7') NOT NULL DEFAULT '0',
  `cop_licenses` text,
  `civ_licenses` text,
  `med_licenses` text,
  `cop_gear` text NOT NULL,
  `med_gear` text NOT NULL,
  `mediclevel` enum('0','1','2','3','4','5','6') NOT NULL DEFAULT '0',
  `arrested` tinyint(1) NOT NULL DEFAULT '0',
  `aliases` text NOT NULL,
  `adminlevel` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `donatorlvl` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `civ_gear` text NOT NULL,
  `blacklist` tinyint(1) NOT NULL DEFAULT '0',
  `alive` tinyint(1) NOT NULL DEFAULT '0',
  `LastSeen` varchar(128) DEFAULT NULL,
  `civPosition` tinytext NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `playerid` (`playerid`),
  KEY `name` (`name`),
  KEY `blacklist` (`blacklist`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for vehicles
-- ----------------------------
DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE `vehicles` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `side` varchar(15) NOT NULL,
  `classname` varchar(32) NOT NULL,
  `type` varchar(12) NOT NULL,
  `pid` varchar(32) NOT NULL,
  `alive` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `plate` int(20) NOT NULL,
  `color` int(20) NOT NULL,
  `position` tinytext NOT NULL,
  `inventory` text NOT NULL,
  `gear` text NOT NULL,
  `assure` int(1) NOT NULL DEFAULT '0',
  `fuel` varchar(16) NOT NULL DEFAULT '1',
  `reboot` tinyint(1) DEFAULT '0',
  `dir` int(10) NOT NULL DEFAULT '0',
  `four` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `side` (`side`),
  KEY `pid` (`pid`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=1655 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Procedure structure for deleteDeadVehicles
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteDeadVehicles`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteDeadVehicles`()
BEGIN
	DELETE FROM `vehicles` WHERE `alive` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for deleteMsg
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteMsg`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteMsg`()
BEGIN
  DELETE FROM `messages` WHERE `reboot` > 4;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for deleteOldGangs
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldGangs`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOldGangs`()
BEGIN
  DELETE FROM `gangs` WHERE `active` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for deleteOldHouses
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteOldHouses`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOldHouses`()
BEGIN
  DELETE FROM `houses` WHERE `owned` = 0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for goFour
-- ----------------------------
DROP PROCEDURE IF EXISTS `goFour`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `goFour`()
UPDATE `vehicles`
SET `four` = (
  CASE 
    WHEN `reboot` > 4 THEN `four` = 1
    ELSE four
  END
)
;
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for increaseReboot
-- ----------------------------
DROP PROCEDURE IF EXISTS `increaseReboot`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `increaseReboot`()
BEGIN

UPDATE vehicles SET `reboot` = reboot +1 WHERE `active` = 1 ;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for increaseRebootMsg
-- ----------------------------
DROP PROCEDURE IF EXISTS `increaseRebootMsg`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `increaseRebootMsg`()
BEGIN

UPDATE messages SET `reboot` = reboot +1;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for resetLifeVehicles
-- ----------------------------
DROP PROCEDURE IF EXISTS `resetLifeVehicles`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `resetLifeVehicles`()
UPDATE `vehicles`
SET `active` = (
  CASE 
    WHEN `reboot` > 4 THEN `active` = 0
    ELSE active
  END
)
;
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for resetReboot
-- ----------------------------
DROP PROCEDURE IF EXISTS `resetReboot`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `resetReboot`()
UPDATE `vehicles`
SET `reboot` = (
  CASE 
    WHEN `active` = 0 THEN `reboot` = 0
    ELSE reboot
  END
)
;;
DELIMITER ;
