-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2020 at 01:04 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `global`
--

-- --------------------------------------------------------

--
-- Table structure for table `dev_log`
--

CREATE TABLE `dev_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `content` longtext NOT NULL,
  `date` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `highscores`
--

CREATE TABLE `highscores` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `overall_xp` int(11) NOT NULL DEFAULT 0,
  `total_level` int(11) NOT NULL DEFAULT 0,
  `ironManMode` varchar(15) NOT NULL DEFAULT 'NONE',
  `xp_0` int(11) NOT NULL DEFAULT 0,
  `xp_1` int(11) NOT NULL DEFAULT 0,
  `xp_2` int(11) NOT NULL DEFAULT 0,
  `xp_3` int(11) NOT NULL DEFAULT 0,
  `xp_4` int(11) NOT NULL DEFAULT 0,
  `xp_5` int(11) NOT NULL DEFAULT 0,
  `xp_6` int(11) NOT NULL DEFAULT 0,
  `xp_7` int(11) NOT NULL DEFAULT 0,
  `xp_8` int(11) NOT NULL DEFAULT 0,
  `xp_9` int(11) NOT NULL DEFAULT 0,
  `xp_10` int(11) NOT NULL DEFAULT 0,
  `xp_11` int(11) NOT NULL DEFAULT 0,
  `xp_12` int(11) NOT NULL DEFAULT 0,
  `xp_13` int(11) NOT NULL DEFAULT 0,
  `xp_14` int(11) NOT NULL DEFAULT 0,
  `xp_15` int(11) NOT NULL DEFAULT 0,
  `xp_16` int(11) NOT NULL DEFAULT 0,
  `xp_17` int(11) NOT NULL DEFAULT 0,
  `xp_18` int(11) NOT NULL DEFAULT 0,
  `xp_19` int(11) NOT NULL DEFAULT 0,
  `xp_20` int(11) NOT NULL DEFAULT 0,
  `xp_21` int(11) NOT NULL DEFAULT 0,
  `xp_22` int(11) NOT NULL DEFAULT 0,
  `xp_23` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `highscores`
--

INSERT INTO `highscores` (`id`, `username`, `overall_xp`, `total_level`, `ironManMode`, `xp_0`, `xp_1`, `xp_2`, `xp_3`, `xp_4`, `xp_5`, `xp_6`, `xp_7`, `xp_8`, `xp_9`, `xp_10`, `xp_11`, `xp_12`, `xp_13`, `xp_14`, `xp_15`, `xp_16`, `xp_17`, `xp_18`, `xp_19`, `xp_20`, `xp_21`, `xp_22`, `xp_23`) VALUES
(9, 'jawarrior1', 276140000, 804, 'NONE', 0, 0, 13035000, 13035000, 0, 9000000, 13035000, 150000000, 25000000, 0, 0, 40000000, 0, 0, 0, 0, 0, 13035000, 0, 0, 0, 0, 0, 0),
(10, 'jawarrior', 37377981, 1203, 'NONE', 6002400, 2092405, 10737600, 5566050, 2160, 4369047, 261735, 1326512, 110908, 33499, 3475202, 0, 106824, 413562, 42250, 33576, 2220441, 720, 305020, 0, 260000, 0, 0, 18070),
(11, 'bignoob', 1154, 33, 'NONE', 0, 0, 0, 1154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'jazneta', 1154, 33, 'NONE', 0, 0, 0, 1154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'jawarrior2', 1154, 33, 'NONE', 0, 0, 0, 1154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'newbob', 1154, 33, 'NONE', 0, 0, 0, 1154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 'mybob', 1154, 33, 'NONE', 0, 0, 0, 1154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 'WarByCode', 1154, 33, 'NONE', 0, 0, 0, 1154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 'blessdanoobs', 16594910, 1180, 'NONE', 1117020, 1239000, 2544000, 1307371, 2784600, 154425, 72000, 109500, 3419841, 2007192, 146220, 0, 81000, 778350, 87450, 76114, 92667, 1200, 60000, 0, 480000, 0, 0, 36960),
(18, 'bigbob', 4437, 55, 'NONE', 600, 0, 1560, 1872, 0, 405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 'dabob', 1154, 33, 'NONE', 0, 0, 0, 1154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 'milkmoo', 1154, 33, 'NONE', 0, 0, 0, 1154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 'meganoob', 1154, 33, 'NONE', 0, 0, 0, 1154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 'gogogogo', 1154, 33, 'NONE', 0, 0, 0, 1154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `UID` int(11) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `salt` varchar(35) DEFAULT NULL,
  `rights` int(1) NOT NULL DEFAULT 0,
  `email_activated` int(1) NOT NULL DEFAULT 0,
  `lastActive` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `donatorType` int(2) NOT NULL DEFAULT -1,
  `donationTotal` double(10,2) NOT NULL DEFAULT 0.00,
  `credits` int(5) NOT NULL DEFAULT 0,
  `icon` int(2) NOT NULL DEFAULT 0,
  `perks` varchar(500) NOT NULL DEFAULT '',
  `ip` longtext DEFAULT NULL,
  `mac` longtext DEFAULT NULL,
  `serial` longtext DEFAULT NULL,
  `computerName` varchar(2000) NOT NULL DEFAULT '',
  `monthlyVotes` int(11) NOT NULL DEFAULT 0,
  `netWorth` bigint(200) NOT NULL DEFAULT 0,
  `forumUID` int(11) NOT NULL DEFAULT -1,
  `ironManMode` varchar(15) NOT NULL DEFAULT 'NONE',
  `bank` longtext DEFAULT NULL,
  `inventory` longtext DEFAULT NULL,
  `equipment` longtext DEFAULT NULL,
  `ge` longtext DEFAULT NULL,
  `muteTime` bigint(20) NOT NULL DEFAULT -1,
  `banTime` bigint(20) NOT NULL DEFAULT -1,
  `profileImage` varchar(300) DEFAULT NULL,
  `contacts` longtext DEFAULT NULL,
  `blocked` longtext DEFAULT NULL,
  `clanName` varchar(15) NOT NULL DEFAULT '',
  `currentClan` varchar(15) DEFAULT NULL,
  `clanReqs` varchar(10) NOT NULL DEFAULT '1,0,8,9',
  `disconnectTime` bigint(20) NOT NULL DEFAULT 0,
  `lastWorld` int(3) NOT NULL DEFAULT -1,
  `chatSettings` varchar(10) NOT NULL DEFAULT '0,0,0',
  `timePlayed` bigint(20) DEFAULT 0,
  `lastLogin` bigint(20) NOT NULL DEFAULT 0,
  `lastGameIp` varchar(15) DEFAULT '',
  `countryCode` int(11) NOT NULL DEFAULT 0,
  `birthday` date DEFAULT NULL,
  `online` tinyint(1) NOT NULL DEFAULT 0,
  `signature` longtext DEFAULT NULL,
  `joined_date` timestamp NULL DEFAULT NULL,
  `posts` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`UID`, `email`, `username`, `password`, `salt`, `rights`, `email_activated`, `lastActive`, `donatorType`, `donationTotal`, `credits`, `icon`, `perks`, `ip`, `mac`, `serial`, `computerName`, `monthlyVotes`, `netWorth`, `forumUID`, `ironManMode`, `bank`, `inventory`, `equipment`, `ge`, `muteTime`, `banTime`, `profileImage`, `contacts`, `blocked`, `clanName`, `currentClan`, `clanReqs`, `disconnectTime`, `lastWorld`, `chatSettings`, `timePlayed`, `lastLogin`, `lastGameIp`, `countryCode`, `birthday`, `online`, `signature`, `joined_date`, `posts`) VALUES
(0, '', 'WarByCode', '$2a$12$P0OU2A5S.lEYdkTq5kq3/u1UlfVkMYIS7WWbxsjjeyfxqTDbygpEe', '$2a$12$P0OU2A5S.lEYdkTq5kq3/u', 2, 0, '2019-11-06 00:29:03', 0, 0.00, 0, 0, '', '127.0.0.1', NULL, NULL, 'SERVER', 0, 0, -1, 'STANDARD', NULL, NULL, NULL, NULL, -1, -1, '', '', '', 'WarByCode', 'WarByCode', '0,0,8,9', 1572999889084, 1, '0,0,0', NULL, 1572999890885, '127.0.0.1', 0, NULL, 0, NULL, NULL, 0),
(1, '', 'jawarrior1', '$2a$12$MfbjYKj2QM0KT0E..RB2BuubTjIFMVey86ojsOO1dJ7mE.nGKRmo2', '$2a$12$MfbjYKj2QM0KT0E..RB2Bu', 0, 0, '2020-09-09 05:31:48', -1, 0.00, 0, 0, '', NULL, NULL, NULL, '', 0, 0, -1, 'NONE', NULL, NULL, NULL, NULL, -1, -1, NULL, '', '', '', 'WarByCode', '1,0,8,9', 1599629508066, 1, '0,0,0', 0, 1599629501646, '', 5, '3909-01-01', 0, NULL, '2020-09-03 16:46:29', 0),
(2, '', 'jawarrior', '$2a$12$lXUuAegRsqTxWlqMRs.HJeiZQOTx0x2hWMfIYg8Fl2.1ZaMkGaWC6', '$2a$12$lXUuAegRsqTxWlqMRs.HJe', 0, 0, '2020-09-10 17:53:44', -1, 0.00, 0, 0, '', NULL, NULL, NULL, '', 0, 0, -1, 'NONE', NULL, NULL, NULL, NULL, -1, -1, NULL, '{blessdanoobs,1}', '', '', 'WarByCode', '1,0,8,9', 1599631978629, 1, '0,0,0', 0, 1599760424204, '', 5, '3909-01-01', 1, NULL, '2020-09-06 02:41:13', 0),
(3, '', 'bignoob', '$2a$12$1joN5crCp9t8SDRr314E2OC0oPinvybbLkl3LnxWr7TmZ7AymYPWG', '$2a$12$1joN5crCp9t8SDRr314E2O', 0, 0, '2020-09-06 02:49:10', -1, 0.00, 0, 0, '', NULL, NULL, NULL, '', 0, 0, -1, 'NONE', NULL, NULL, NULL, NULL, -1, -1, NULL, '', '', '', 'WarByCode', '1,0,8,9', 1599360550339, 1, '0,0,0', 0, 1599360504222, '', 5, '3909-01-01', 0, NULL, '2020-09-06 02:48:15', 0),
(4, '', 'jazneta', '$2a$12$B03CFC2FIiqc0ju92Zy7GOHpNSyzn15.I34XCtPJcCqjRcwmZwJdu', '$2a$12$B03CFC2FIiqc0ju92Zy7GO', 0, 0, '2020-09-08 01:20:33', -1, 0.00, 0, 0, '', NULL, NULL, NULL, '', 0, 0, -1, 'NONE', NULL, NULL, NULL, NULL, -1, -1, NULL, '', '', '', 'WarByCode', '1,0,8,9', 1599528033390, 1, '0,0,0', 0, 1599528020489, '', 5, '3909-01-01', 0, NULL, '2020-09-06 02:50:05', 0),
(5, '', 'jawarrior2', '$2a$12$EKNmVB8LjxfOtSmDhtPOR.mtUc3wyPEnBLykiznzvoZkv4j5YuogG', '$2a$12$EKNmVB8LjxfOtSmDhtPOR.', 0, 0, '2020-09-06 02:52:05', -1, 0.00, 0, 0, '', NULL, NULL, NULL, '', 0, 0, -1, 'NONE', NULL, NULL, NULL, NULL, -1, -1, NULL, '', '', '', 'WarByCode', '1,0,8,9', 1599360725930, 1, '0,0,0', 0, 1599360717202, '', 5, '3909-01-01', 0, NULL, '2020-09-06 02:51:51', 0),
(6, '', 'newbob', '$2a$12$3ujGewOGMKHlMXCvJ7SxWuh.E175sbkQpGc3bV5CxXyvrLRO8kw7O', '$2a$12$3ujGewOGMKHlMXCvJ7SxWu', 0, 0, '2020-09-06 18:47:23', -1, 0.00, 0, 0, '', NULL, NULL, NULL, '', 0, 0, -1, 'NONE', NULL, NULL, NULL, NULL, -1, -1, NULL, '', '', '', 'WarByCode', '1,0,8,9', 1599417900619, 1, '0,0,0', 0, 1599417911111, '', 5, '3909-01-01', 0, NULL, '2020-09-06 18:43:58', 0),
(7, '', 'mybob', '$2a$12$TCenFqHCKtXp7AyBEjOnb.4FIbDJJAEaiCEAMTe23XoB8pM2sjZce', '$2a$12$TCenFqHCKtXp7AyBEjOnb.', 0, 0, '2020-09-08 01:22:45', -1, 0.00, 0, 0, '', NULL, NULL, NULL, '', 0, 0, -1, 'NONE', NULL, NULL, NULL, NULL, -1, -1, NULL, '', '', '', 'WarByCode', '1,0,8,9', 1599528165540, 1, '0,0,0', 0, 1599528152828, '', 5, '3909-01-01', 0, NULL, '2020-09-06 18:47:40', 0),
(8, '', 'WarByCode', '$2a$12$c4HpwLZwtAcIF4TmN1aWr.cSg8FbDHMrMgpAcqxBJ/yYfOAlehcKe', '$2a$12$c4HpwLZwtAcIF4TmN1aWr.', 0, 0, '2020-09-08 01:36:30', -1, 0.00, 0, 0, '', NULL, NULL, NULL, '', 0, 0, -1, 'NONE', NULL, NULL, NULL, NULL, -1, -1, NULL, '{WarByCode,1}~{blessdanoobs,1}', '', 'WarByCode', 'WarByCode', '0,0,8,9', 1599528990113, 1, '0,0,0', 0, 1599528925495, '', 5, '3909-01-01', 0, NULL, '2020-09-06 18:53:16', 0),
(9, '', 'blessdanoobs', '$2a$12$bSFbgquaTWsauxpV0eVm5uJSa0XpFMqzSKe415c4fyx3/IoUPH35K', '$2a$12$bSFbgquaTWsauxpV0eVm5u', 0, 0, '2020-09-08 17:57:13', -1, 0.00, 0, 0, '', '209.33.209.234', 'AA-92-BE-D0-47-9E', ' ', 'bless', 0, 0, -1, 'NONE', '7936,20|771,1|772,1|1556,1|1557,1|1823,1|1825,4|6693,1000|1833,1|2347,2|555,11|299,80|1835,1|556,25|2349,10|557,14|1837,1|558,16|303,1|559,2|2357,3|1333,1|565,3|1592,1|56,54|11065,1|58,1491|314,713|1595,1|2366,1|1599,1|1601,4|68,26|1605,1|1351,1|72,3|841,1|1355,1|590,1|1617,1|1619,2|1621,4|1623,6|1627,1|1635,2|1381,1|1383,1|1897,2|882,83|884,32|886,50|1143,2|12158,550|1925,1|2952,2|1165,5|12176,2|1169,1|5523,1|1171,1|2711,1|5280,4|5281,4|1185,4|1442,1|5292,1|5293,1|5294,2|5295,2|5296,5|5297,3|946,1|8882,1|5298,1|436,2|1205,1|5301,1|5302,3|5303,3|954,5|5311,8|449,8|1733,1|1478,1|1734,5|5321,2|5323,7|5073,2|2003,2|1755,1|1759,10|995,1|5100,3|1519,8|5104,2|1521,1|1265,1|5105,4|5106,2|251,1|1277,1', '448,39|1185,4|450,3|995,8892|5321,1|554,439|5323,2|5295,1|560,136|561,20|1617,1|8882,494|5298,1|563,104|1619,1|565,31|1333,1|5302,1|1143,1|314,260|380,50|5311,1', '8880,1|1169,1|10498,1|8882,1778|1478,1|1099,1|1135,1', '', -1, -1, NULL, '{jawarrior,1}~{WarByCode,1}', '', 'WarByCode', 'WarByCode', '1,0,8,9', 0, 1, '0,0,0', 36060500, 1599583750803, '209.33.209.234', 225, '3909-03-26', 0, NULL, '2020-09-06 23:36:04', 0),
(10, '', 'bigbob', '$2a$12$.K/899tsZ46Q7m8NpJjyJecLQU8UH.3e37OZ6pqRjsfG9DAv3pIJ.', '$2a$12$.K/899tsZ46Q7m8NpJjyJe', 0, 0, '2020-09-08 23:46:03', -1, 0.00, 0, 0, '', NULL, NULL, NULL, '', 0, 0, -1, 'NONE', NULL, NULL, NULL, NULL, -1, -1, NULL, '', '', '', 'WarByCode', '1,0,8,9', 1599608763097, 1, '0,0,0', 0, 1599608652222, '', 5, '3909-01-01', 0, NULL, '2020-09-08 01:31:43', 0),
(11, '', 'dabob', '$2a$12$QFbbX3c4lTfQ4qf3cBr0WemiI2fnpqVW6e03ZcZpNUYiPEQ3WIFkK', '$2a$12$QFbbX3c4lTfQ4qf3cBr0We', 0, 0, '2020-09-08 01:47:47', -1, 0.00, 0, 0, '', NULL, NULL, NULL, '', 0, 0, -1, 'NONE', NULL, NULL, NULL, NULL, -1, -1, NULL, '', '', '', 'WarByCode', '1,0,8,9', 1599529667320, 1, '0,0,0', 0, 1599529663921, '', 5, '3909-01-01', 0, NULL, '2020-09-08 01:47:40', 0),
(12, '', 'milkmoo', '$2a$12$ZwKlA0s6UGxew5YNQ.QgqePDYlpqY.WZ2k/1x3X1y1FgNW6xzSsvi', '$2a$12$ZwKlA0s6UGxew5YNQ.Qgqe', 0, 0, '2020-09-09 00:10:41', -1, 0.00, 0, 0, '', NULL, NULL, NULL, '', 0, 0, -1, 'NONE', NULL, NULL, NULL, NULL, -1, -1, NULL, '', '', '', 'WarByCode', '1,0,8,9', 1599610241577, 1, '0,0,0', 0, 1599610230403, '', 5, '3909-01-01', 0, NULL, '2020-09-09 00:10:25', 0),
(13, '', 'meganoob', '$2a$12$Wasz34fSzPjygRFI86vno.2nPel2er6s8je0C18ZNFL.OpdnQztiG', '$2a$12$Wasz34fSzPjygRFI86vno.', 0, 0, '2020-09-09 05:36:46', -1, 0.00, 0, 0, '', NULL, NULL, NULL, '', 0, 0, -1, 'NONE', NULL, NULL, NULL, NULL, -1, -1, NULL, '', '', '', 'WarByCode', '1,0,8,9', 1599629806865, 1, '0,0,0', 0, 1599629796840, '', 5, '3909-01-01', 0, NULL, '2020-09-09 05:36:31', 0),
(14, '', 'gogogogo', '$2a$12$MmCJ1Kb8YDvURLR1ynkV2.KGPapWF6mNvBHbdBEYzm3ixbKB661VS', '$2a$12$MmCJ1Kb8YDvURLR1ynkV2.', 0, 0, '2020-09-09 05:39:03', -1, 0.00, 0, 0, '', NULL, NULL, NULL, '', 0, 0, -1, 'NONE', NULL, NULL, NULL, NULL, -1, -1, NULL, NULL, NULL, '', 'WarByCode', '1,0,8,9', 0, -1, '0,0,0', 0, 0, '', 5, '3909-01-01', 0, NULL, '2020-09-09 05:39:03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `sender` varchar(15) NOT NULL DEFAULT '',
  `recipient` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(40) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) NOT NULL,
  `s_delete` tinyint(11) NOT NULL,
  `r_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `perks`
--

CREATE TABLE `perks` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT 'No Name',
  `description` varchar(500) DEFAULT NULL,
  `price` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perks`
--

INSERT INTO `perks` (`product_id`, `name`, `description`, `price`) VALUES
(2, 'Stamina Boost', 'Increase your stamina and run regeneration by a total of 40%.', 60),
(4, 'Green Thumb', 'With a 35% lifetime increase in your crops growing up healthy, they will be saved and you will also receive a better crop yield!', 100),
(5, 'Bird Man', 'Increase your rate of receiving a bird nest drop by 35%!', 50),
(6, 'Stoner', 'Increase your rate of receiving a gem stone drop by 35%!', 50),
(11, 'Unbreakable Forge', 'Ring of forging never breaks.', 30),
(12, 'Out of Grave Danger', 'Your gravestone will last up to twice as long with this perk.', 50),
(13, 'Sleight of Hand', 'With sleight of hand you will increase your success rates in all aspects of thieving. This includes pickpocketing and cracking wall safes for gems.', 50),
(14, 'Master Chef', 'As a soon to be Master Chef, you will receive a 20% increase in successfully cooking your food!', 50),
(16, 'Divine Intervention', 'The gods above intervene with your burying of bones. You have a 10% chance while burying a bone to keep it instead.', 70),
(17, 'Familiar Whisperer', 'Get to know your familiar better by increasing their lifespan by 50%.', 70),
(18, 'Barrows Befriender', 'Befriend the barrows brothers & never experience the wretched degrading of their armour again', 300),
(19, 'Abyss Befriender', 'Use the power of the abyss to make your Runecrafting pouches undegradable.', 150),
(21, 'Charge Befriender', 'The God\'s of the Hero\'s guild have blessed you with the power to use your jewerly free of charge.', 250),
(22, 'Golden Needle', 'Gain an extra 10% experience whilst spinning something on a spinning wheel, including flax. Creating an item made out of dragonhide rewards an extra 5% experience. Your crafting needle also never breaks and thread is consumed less often.\n', 50),
(24, 'Slayer Betrayer', 'Obtain the ability through the Slayer Masters to change your slayer task at will. Type ::cleartask to use.', 100),
(26, 'Thirst Quencher', 'The gods have blessed you with the knowledge of the deserts to gain the skills required to tap into an unlimited water supply.', 30),
(27, 'Double Trouble', 'Experience a chance of receiving double the resources through skills such as, mining, woodcutting, fishing, and many more.', 250),
(29, 'Godwars Befriender', 'Now blessed by the gods you have the ability to enter the chambers with a killcount of 30. You will also be granted half the time it takes to recharge at an altar.', 100),
(30, 'Prayer Betrayer', 'Experience half the prayer drain rate when this perk is enabled.', 150),
(31, 'Spell Swap', 'The ability to swap spell books without any charge of runes. Cannot be used in combat or in the wilderness.', 80),
(32, 'Dwarf Befriender', 'Befriended by the dwarfs you now have the ability to use double the cannon balls and experience no decay on your cannon.', 150),
(33, 'Powerpoint', 'This perk grants you double the points in all minigames.', 300),
(35, 'Charm Collector', 'Through the power of summoning you will automatically pick up any charms dropped in battle.', 100),
(36, 'Detective', 'You now have a solid 10% chance of a clue scroll drop from any monster that drops clues as well as a 50% better chance of <strong>super rare</strong> rewards such as 3rd age. You\'ll also experience a 50% increased chance to obtain more loot.', 250),
(40, 'Overcharge', 'The power from the overcharge lords is given to you. Your Dragonfire Shield will recharge fully every 10 minutes. The time between casts is also reduced by 50%.', 170),
(41, 'Unbreakable Crystal', 'This perk allows for your crystal bow to never degrade.', 350),
(42, 'Crusader', 'With this perk you will have a 25% chance to double loot the barrows chest.', 100),
(43, 'Pet Befriender', 'This perk gives you the ability to double your chances on getting boss/skilling pets!', 100),
(60, 'Bone Crusher', 'Automatically crushes your bones as they\'re dropped for prayer experience. Toggle this perk using ::bonecrusher', 100),
(70, 'Runestone Knowledge', 'You are given extended knowledge of the runecrafting skill and can now craft double death, law, cosmic, blood and nature runes.', 200),
(71, 'Coin machine', 'Automatically bank all coins dropped from NPC\'s and gives you 25% extra gold. Toggle this perk using ::coinmachine', 150),
(72, 'Fight Cave Fanatic', 'Eliminates the first 25 waves from the tzhaar fight caves.', 50),
(73, 'Decanter', 'Zahur will decant your noted potions if you have this perk.', 50);

-- --------------------------------------------------------

--
-- Table structure for table `player_logs`
--

CREATE TABLE `player_logs` (
  `username` varchar(22) NOT NULL DEFAULT '',
  `public_chat` longtext DEFAULT NULL,
  `private_chat` longtext DEFAULT NULL,
  `clan_chat` longtext DEFAULT NULL,
  `address_log` longtext DEFAULT NULL,
  `command_log` longtext DEFAULT NULL,
  `trade_log` longtext DEFAULT NULL,
  `ge_log` longtext DEFAULT NULL,
  `duplication_log` longtext DEFAULT NULL,
  `duel_log` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player_logs`
--

INSERT INTO `player_logs` (`username`, `public_chat`, `private_chat`, `clan_chat`, `address_log`, `command_log`, `trade_log`, `ge_log`, `duplication_log`, `duel_log`) VALUES
('blessdanoobs', '06/09/2020 18:38:04: das a hidden ladda\n06/09/2020 18:39:55: why 30x\n06/09/2020 18:41:11: sure\n06/09/2020 18:41:41: uhh\n06/09/2020 18:41:48: sweet\n06/09/2020 18:42:02: time for level 2000 range\n06/09/2020 18:42:46: aye probably\n06/09/2020 18:42:50: levle 1 range\n06/09/2020 18:43:01: best get to shooting things\n06/09/2020 18:43:55: any reason to prest herblore?\n06/09/2020 18:43:59: or crafting\n06/09/2020 18:44:00: etc\n06/09/2020 18:44:21: how would ya implement summoning\n06/09/2020 18:44:24: sound odd\n06/09/2020 18:45:42: hmm\n06/09/2020 18:45:45: need to make money to get arrows\n06/09/2020 18:46:24: yeh for funw hy not\n06/09/2020 18:46:41: as to if people will play no idea on that \n06/09/2020 18:46:49: at some point the boss would be much to simple\n06/09/2020 18:47:46: as in new items?\n06/09/2020 18:48:37: box mine\n06/09/2020 18:49:33: is not bad\n06/09/2020 18:49:44: no avas either\n06/09/2020 18:49:48: need to get one\n06/09/2020 18:50:06: aye the backpack for arrows\n06/09/2020 18:50:40: the backpack you have on that collects falllen arrowwws\n06/09/2020 18:51:01: probably turned into cash\n06/09/2020 18:51:05: with invi be full\n06/09/2020 18:53:31: need to find gold or mine/smith/fletch arrows up\n06/09/2020 18:54:35: it will probably flee\n06/09/2020 18:54:40: from being forgotten\n06/09/2020 18:56:26: claim what\n06/09/2020 18:56:30: didnt see an option\n06/09/2020 18:57:59: fishing prestg in yet?\n06/09/2020 18:58:53: >.>\n06/09/2020 18:59:27: odd things sold\n06/09/2020 19:00:07: mage guild and wild shop\n06/09/2020 19:02:50: hope to get iron arrows\n06/09/2020 19:04:08: all good\n06/09/2020 19:05:28: what does the prestige thing for fishy\n06/09/2020 19:07:40: bronze arrows about 1g each\n06/09/2020 19:07:41: in varrock\n06/09/2020 19:07:45: got 600 coins\n06/09/2020 19:07:47: so im good\n06/09/2020 19:08:43: aight\n06/09/2020 19:08:46: ima walk varrock\n06/09/2020 19:13:25: nothing yet bronze arrows was 7g each\n06/09/2020 19:13:30: didnt expect that =p\n06/09/2020 19:13:48: probably should\n06/09/2020 19:13:49: buy some\n06/09/2020 19:14:47: was in shop\n06/09/2020 19:14:50: got 80 arrows\n06/09/2020 19:15:09: can keep the golds\n06/09/2020 19:15:16: lol\n06/09/2020 19:15:21: dat chicken going to get yu\n06/09/2020 19:15:29: non multi\n06/09/2020 19:16:14: not sure if he did\n06/09/2020 19:16:17: maybe 200 feathers?\n06/09/2020 19:16:41: id be okay without\n06/09/2020 19:16:49: need to grab axe and chop willow\n06/09/2020 19:16:53: get a bowstring\n06/09/2020 19:16:55: get bow upgrade\n06/09/2020 19:17:08: i think ima afk wc for a bit\n06/09/2020 19:17:16: if ya plan on keeping server up\n06/09/2020 19:17:22: get up to magic trees will make money\n06/09/2020 19:17:57: ehh no idea\n06/09/2020 19:18:13: dont think it would\n06/09/2020 19:18:31: havent a clue right now\n06/09/2020 19:18:46: tis just a 30x server right now\n06/09/2020 19:18:58: but you can get 99 str by typing in ::allquest 4 or 5 times\n06/09/2020 19:19:03: and just get super strong\n06/09/2020 19:19:23: would be smart if you are opening it to others\n06/09/2020 20:24:26: stalk mode\n06/09/2020 20:24:53: when your invi full\n06/09/2020 20:24:56: no rush\n06/09/2020 20:26:09: ahh yes thos are all good\n06/09/2020 20:26:18: thank ya\n06/09/2020 20:26:19: <3\n06/09/2020 23:28:50: ne\n07/09/2020 00:40:48: lol\n07/09/2020 00:40:52: well thats easy\n07/09/2020 00:40:53: thanks\n07/09/2020 00:40:54: <3\n07/09/2020 12:42:33: uhh\n07/09/2020 12:42:38: i won\n07/09/2020 12:42:42: i wont make it to the top tho\n07/09/2020 12:42:48: not gone fishing so no food =p\n07/09/2020 12:43:05: fail the first part 4 times now\n07/09/2020 12:43:15: 5 time\n07/09/2020 12:43:21: 36\n07/09/2020 12:43:28: me unluck\n07/09/2020 12:51:42: i are regen hp tho =o\n07/09/2020 12:51:55: i dont wana stop you from making your rune and dragon weps\n07/09/2020 12:52:14: thanks =x\n07/09/2020 12:52:33: oh shit\n07/09/2020 12:53:12: yay\n07/09/2020 12:53:29: thanks\n07/09/2020 14:09:58: is where i is living\n07/09/2020 23:32:44: hmm\n07/09/2020 23:32:47: clue scroll\n07/09/2020 23:33:14: looks like an easy step\n07/09/2020 23:33:20: should be med or hard\n07/09/2020 23:33:20: but eh\n07/09/2020 23:33:31: still not seen a charm\n07/09/2020 23:35:22: aight thats fair\n07/09/2020 23:35:58: that we will\n07/09/2020 23:37:17: darn this is good mob\n07/09/2020 23:39:31: yeh why not\n', '06/09/2020 20:58:27: is probs the most simple way => jawarrior\n06/09/2020 21:00:27: me think me needs a better axe for yews =p => jawarrior\n06/09/2020 21:01:08: could drop a mith one i think => jawarrior\n06/09/2020 21:01:51: cant afford runes and low range >.> => jawarrior\n06/09/2020 21:02:20: how did it got fat =c => jawarrior\n06/09/2020 21:03:10: i got 2 as well so no worry => jawarrior\n06/09/2020 21:04:50: does prestige range also up accucary by 10%? => jawarrior\n06/09/2020 21:05:40: same xp needed? => jawarrior\n06/09/2020 21:06:47: how keep 99 => jawarrior\n06/09/2020 21:08:36: aye prayer would be => jawarrior\n06/09/2020 21:09:50: 5% to all prayers?! so you can be 105% immune to damage with protection prayers? => jawarrior\n06/09/2020 21:09:52: prayers => jawarrior\n06/09/2020 21:11:39: aye make it simpel => jawarrior\n06/09/2020 21:13:31: grats! => jawarrior\n06/09/2020 21:14:17: aye => jawarrior\n06/09/2020 21:16:21: only slightly changed on rs3 => jawarrior\n06/09/2020 21:17:01: sarcastic => jawarrior\n06/09/2020 21:17:28: i didnt even watch it when i was playing => jawarrior\n06/09/2020 21:17:31: what it looked like => jawarrior\n06/09/2020 21:19:23: gota add new or people leave => jawarrior\n06/09/2020 21:25:28: glad its looking good => jawarrior\n06/09/2020 21:29:04: aight => jawarrior\n06/09/2020 21:29:08: should be here => jawarrior\n06/09/2020 22:08:20: welcomes back => jawarrior\n06/09/2020 22:10:51: well, i got a bronze hatchet so that is accomplished => jawarrior\n06/09/2020 22:11:51: yeah just not wanted to walk back from lumb yet => jawarrior\n06/09/2020 22:12:02: 78 wc and 72 fletch => jawarrior\n06/09/2020 22:14:25: huh wonder what price => jawarrior\n06/09/2020 22:16:31: that is also on the other side of the world and im not that worried yet about it => jawarrior\n06/09/2020 22:17:36: i bet you can kill 40k bandits => jawarrior\n06/09/2020 22:45:40: 10 minutes is okay with me what do you think? => jawarrior\n06/09/2020 22:54:31: ta drop? => jawarrior\n06/09/2020 22:55:01: yay => jawarrior\n06/09/2020 23:05:30: is da bone crossbow in da game? =o => jawarrior\n06/09/2020 23:08:06: but but i needs it =p => jawarrior\n06/09/2020 23:08:33: dont stress yourself => jawarrior\n06/09/2020 23:09:31: yay i got a way to train range now => jawarrior\n06/09/2020 23:09:41: yeah once i get money ill check and let ya know => jawarrior\n06/09/2020 23:10:08: it is cheap => jawarrior\n06/09/2020 23:11:28: yeah should be okay rune item drop rate => jawarrior\n06/09/2020 23:11:35: and crimson charms if nothing else => jawarrior\n06/09/2020 23:27:59: many is a lot? => jawarrior\n06/09/2020 23:28:57: but better than none => jawarrior\n06/09/2020 23:29:02: are you out traiing again => jawarrior\n06/09/2020 23:32:52: thought you was finding the fish => jawarrior\n06/09/2020 23:35:39: 99 yet? => jawarrior\n06/09/2020 23:36:45: i sad quick chat does not work => jawarrior\n06/09/2020 23:38:33: able to solo graardddooorr yet? => jawarrior\n06/09/2020 23:41:42: wonder if it could hit you with 200 defence level => jawarrior\n06/09/2020 23:44:53: did get 100% on test? => jawarrior\n06/09/2020 23:48:32: no? not depending on what you hit?  => jawarrior\n06/09/2020 23:50:11: my bad =[ => jawarrior\n06/09/2020 23:51:57: i log in and break your game => jawarrior\n06/09/2020 23:55:00: if i ever train yeh can do that => jawarrior\n06/09/2020 23:57:16: 4th number? => jawarrior\n07/09/2020 00:00:02: how ok tho? => jawarrior\n07/09/2020 00:01:49: no? dont think so? => jawarrior\n07/09/2020 00:03:37: i think its what 1/128? or it 256?  => jawarrior\n07/09/2020 00:04:41: aye should get a rune med helm? i think as well if luck => jawarrior\n07/09/2020 00:19:11: aye need one myself still => jawarrior\n07/09/2020 00:20:56: server rage quit on me => jawarrior\n07/09/2020 00:31:21: must finish 80 fletching then can sleeps => jawarrior\n07/09/2020 00:31:55: why are you fighting black demons => jawarrior\n07/09/2020 00:33:12: ah they wana just eat you is all => jawarrior\n07/09/2020 00:34:02: well that makes it simple => jawarrior\n07/09/2020 00:35:04: catherby => jawarrior\n07/09/2020 00:35:17: whats up => jawarrior\n07/09/2020 00:35:52: ah as far as i knew they are not being able to be traded => jawarrior\n07/09/2020 00:37:07: yeah probably sounds good => jawarrior\n07/09/2020 00:39:36: welp made some progress tho is sleep time now => jawarrior\n07/09/2020 00:39:55: yeh => jawarrior\n07/09/2020 00:40:29: up by seers? sure => jawarrior\n07/09/2020 12:23:04: so whats the point in prestige say mining? => jawarrior\n07/09/2020 12:24:31: aight just could not figure out a reason to prestige it if i was to 99 it => jawarrior\n07/09/2020 12:24:36: what ya been doing in game => jawarrior\n07/09/2020 12:25:02: oh? why is that => jawarrior\n07/09/2020 12:26:00: on dat discord? => jawarrior\n07/09/2020 12:26:40: huh wonder how is good gold => jawarrior\n07/09/2020 12:27:37: and that should be implemented here as well? => jawarrior\n07/09/2020 12:31:07: aye fair nuff => jawarrior\n07/09/2020 12:34:27: wonder if all the shortcuts work => jawarrior\n07/09/2020 12:36:07: guess im going there => jawarrior\n07/09/2020 12:36:26: do ya need desert protection => jawarrior\n07/09/2020 12:43:42: nah would keep you from getting money => jawarrior\n07/09/2020 12:45:19: aww =c => jawarrior\n07/09/2020 12:45:36: i just wana make it this 1 time for starter cash => jawarrior\n07/09/2020 12:48:38: welp i am now out of hp and going to die =p => jawarrior\n07/09/2020 12:48:49: so close to making 10k => jawarrior\n07/09/2020 12:50:05: is okay => jawarrior\n07/09/2020 12:50:50: id need to do my job for Hans and thats an invi of tin => jawarrior\n07/09/2020 12:53:49: back to the home of lummmmmmmmmmmmmmmmmmmmmmby => jawarrior\n07/09/2020 12:55:30: agility? => jawarrior\n07/09/2020 12:55:57: 81 looks like for the shortcut => jawarrior\n07/09/2020 12:56:11: 85 is highest shortcut but that is in elf lands probaly never use => jawarrior\n07/09/2020 12:57:25: where is da woodcutting tutttorr => jawarrior\n07/09/2020 12:57:32: i have no idea  => jawarrior\n07/09/2020 12:58:29: found him but hans changed his job now i sad => jawarrior\n07/09/2020 12:58:34: need to get 9 steel battleaxe => jawarrior\n07/09/2020 12:58:36: >.< => jawarrior\n07/09/2020 13:00:33: takes a long time to chop the mages with my axe => jawarrior\n07/09/2020 13:02:20: do thos offers change? => jawarrior\n07/09/2020 13:06:54: wonder if the tree spirit random drops anything => jawarrior\n07/09/2020 13:09:19: should not be => jawarrior\n07/09/2020 13:15:57: rich yet? => jawarrior\n07/09/2020 13:16:52: what ya picking up first => jawarrior\n07/09/2020 13:17:01: or just getting it all at once => jawarrior\n07/09/2020 13:19:17: is there point to prestige slayer yet? => jawarrior\n07/09/2020 13:20:15: once ya get 1 whip and 1 dboot wonder what the point in that will be => jawarrior\n07/09/2020 13:22:05: yeah i guess if boss tasks are a thing => jawarrior\n07/09/2020 13:24:57: does the amount you get go up or just make it more likly to get the drop => jawarrior\n07/09/2020 13:26:16: there is that i guess =p => jawarrior\n07/09/2020 13:31:14: attempting to make money to buy steel battleaxe from shops to skip this  => jawarrior\n07/09/2020 13:31:19: job for hans >.> => jawarrior\n07/09/2020 13:31:22: to lazy to mine => jawarrior\n07/09/2020 13:33:00: like 700g lol => jawarrior\n07/09/2020 13:34:25: not in a rush to finish it, this way i get combat xp as well => jawarrior\n07/09/2020 13:36:38: cockroach soldier, killed 2 no drop yet => jawarrior\n07/09/2020 13:36:45: wonder if they have drops so killing another one => jawarrior\n07/09/2020 13:38:31: 4 kills no drop at all >.> => jawarrior\n07/09/2020 13:38:36: me thinks they has no drops => jawarrior\n07/09/2020 13:39:28: wonder if i need relog or something => jawarrior\n07/09/2020 13:53:03: i got a drop btw =] => jawarrior\n07/09/2020 13:54:06: 8 laws => jawarrior\n07/09/2020 13:55:15: yeah => jawarrior\n07/09/2020 13:57:34: kill if ya can => jawarrior\n07/09/2020 13:57:36: what level is it => jawarrior\n07/09/2020 14:00:00: sure why not => jawarrior\n07/09/2020 14:01:18: greens? => jawarrior\n07/09/2020 14:03:05: up to 22 now => jawarrior\n07/09/2020 14:05:42: soun good => jawarrior\n07/09/2020 14:11:46: want some laws? => jawarrior\n07/09/2020 14:17:21: kill cows? => jawarrior\n07/09/2020 14:17:24: o.o => jawarrior\n07/09/2020 14:18:51: glassmake or kill many cows  => jawarrior\n07/09/2020 14:21:07: why want 57 => jawarrior\n07/09/2020 14:21:39: fair nuff => jawarrior\n07/09/2020 14:26:36: rune sq drop => jawarrior\n07/09/2020 14:27:06: i can pay back all dat money now => jawarrior\n07/09/2020 14:27:47: you can use it you dont have an offhand yet => jawarrior\n07/09/2020 14:27:52: and you are melee i hide => jawarrior\n07/09/2020 14:29:00: alright tho if ya want it today will need get it soonish => jawarrior\n07/09/2020 14:29:15: getting off in ~ 10 minutes guess brothers comming down to hangout => jawarrior\n07/09/2020 14:30:37: aight cya later => jawarrior\n07/09/2020 23:29:05: alright ill let ya know after a few kills => jawarrior\n07/09/2020 23:29:33: is what you do => jawarrior\n07/09/2020 23:42:16: they heal when under 50% hp if you cant finish them off fast => jawarrior\n07/09/2020 23:42:24: attack with range and mage (maybe melee if in range) => jawarrior\n08/09/2020 00:03:13: this is good news => jawarrior\n08/09/2020 00:07:51: luck => jawarrior\n08/09/2020 00:09:54: I are go sleep soon => jawarrior\n08/09/2020 00:12:31: im bout 15 behind need to catch up => jawarrior\n08/09/2020 11:49:52: Haiyo => jawarrior\n08/09/2020 11:50:03: haow do => jawarrior\n08/09/2020 11:50:25: uhoh => jawarrior\n08/09/2020 11:50:53: because i dunno what ya updated => jawarrior\n08/09/2020 11:51:57: ahhah is not bad updates => jawarrior\n08/09/2020 11:53:09: not sure, people probably just make many new accounts to get free gold => jawarrior\n08/09/2020 11:53:12: and not work on anything => jawarrior\n08/09/2020 11:54:52: would just be easy money => jawarrior\n08/09/2020 11:55:30: that sounds like lots of work tho => jawarrior\n08/09/2020 11:56:33: aye guess this is fair => jawarrior\n08/09/2020 11:57:06: just slowly working on training range again probs => jawarrior\n08/09/2020 11:57:54: you got a full rune c\'bow from slayer? o.o mystery box? => jawarrior\n08/09/2020 11:58:29: didnt know ice warrior drops rune c\'bow => jawarrior\n08/09/2020 11:59:34: id need to be able to get broad bolts or something to make good use of it => jawarrior\n08/09/2020 12:00:57: that are good update => jawarrior\n08/09/2020 12:03:46: do not think so => jawarrior\n08/09/2020 12:06:28: you do come up with good ideas for updates => jawarrior\n08/09/2020 12:08:10: ohhh good luck => jawarrior\n08/09/2020 12:35:04: aye someday => jawarrior\n', '06/09/2020 19:12:14: what we need a law for => blessdanoobs (owned by WarByCode)\n06/09/2020 19:12:14: what we need a law for => WarByCode (owned by WarByCode)\n06/09/2020 19:12:35: where are we going =p => blessdanoobs (owned by WarByCode)\n06/09/2020 19:12:35: where are we going =p => WarByCode (owned by WarByCode)\n06/09/2020 19:13:13: gota build up arrows and such for when prestige => blessdanoobs (owned by WarByCode)\n06/09/2020 19:13:13: gota build up arrows and such for when prestige => WarByCode (owned by WarByCode)\n06/09/2020 19:22:51: spent all my money on arrows =c => blessdanoobs (owned by WarByCode)\n06/09/2020 19:22:51: spent all my money on arrows =c => WarByCode (owned by WarByCode)\n06/09/2020 19:24:21: cutting willows fast? => blessdanoobs (owned by WarByCode)\n06/09/2020 19:24:21: cutting willows fast? => WarByCode (owned by WarByCode)\n06/09/2020 19:29:59: wtb knife =p => blessdanoobs (owned by WarByCode)\n06/09/2020 19:29:59: wtb knife =p => WarByCode (owned by WarByCode)\n06/09/2020 19:30:25: want to buy => blessdanoobs (owned by WarByCode)\n06/09/2020 19:30:25: want to buy => WarByCode (owned by WarByCode)\n06/09/2020 19:30:26: lol => blessdanoobs (owned by WarByCode)\n06/09/2020 19:30:26: lol => WarByCode (owned by WarByCode)\n06/09/2020 19:31:12: tis what i was planning => blessdanoobs (owned by WarByCode)\n06/09/2020 19:31:12: tis what i was planning => WarByCode (owned by WarByCode)\n06/09/2020 19:32:44: spec -> 10000 => blessdanoobs (owned by WarByCode)\n06/09/2020 19:32:44: spec -> 10000 => WarByCode (owned by WarByCode)\n06/09/2020 19:35:50: i want to buy a knife or find it => blessdanoobs (owned by WarByCode)\n06/09/2020 19:35:50: i want to buy a knife or find it => WarByCode (owned by WarByCode)\n06/09/2020 19:36:15: not the one close to me => blessdanoobs (owned by WarByCode)\n06/09/2020 19:36:15: not the one close to me => WarByCode (owned by WarByCode)\n06/09/2020 19:39:32: looks like there might not be any ground spawn items => blessdanoobs (owned by WarByCode)\n06/09/2020 19:39:32: looks like there might not be any ground spawn items => WarByCode (owned by WarByCode)\n06/09/2020 19:41:04: walking to rellikkkka then to check => blessdanoobs (owned by WarByCode)\n06/09/2020 19:41:04: walking to rellikkkka then to check => WarByCode (owned by WarByCode)\n06/09/2020 19:42:01: for mobs to respawn? => blessdanoobs (owned by WarByCode)\n06/09/2020 19:42:01: for mobs to respawn? => WarByCode (owned by WarByCode)\n06/09/2020 19:42:18: ahh, yes that is good => blessdanoobs (owned by WarByCode)\n06/09/2020 19:42:18: ahh, yes that is good => WarByCode (owned by WarByCode)\n06/09/2020 19:42:43: no knife in rellika as well =c => blessdanoobs (owned by WarByCode)\n06/09/2020 19:42:43: no knife in rellika as well =c => WarByCode (owned by WarByCode)\n06/09/2020 19:42:44: sad me => blessdanoobs (owned by WarByCode)\n06/09/2020 19:42:44: sad me => WarByCode (owned by WarByCode)\n06/09/2020 19:45:31: whats the afk logout timer set to => blessdanoobs (owned by WarByCode)\n06/09/2020 19:45:31: whats the afk logout timer set to => WarByCode (owned by WarByCode)\n06/09/2020 19:47:15: no worries => blessdanoobs (owned by WarByCode)\n06/09/2020 19:47:15: no worries => WarByCode (owned by WarByCode)\n06/09/2020 19:47:38: yeah i like that => blessdanoobs (owned by WarByCode)\n06/09/2020 19:47:38: yeah i like that => WarByCode (owned by WarByCode)\n06/09/2020 19:51:12: i still need to go all the way lumby i think for a knife => blessdanoobs (owned by WarByCode)\n06/09/2020 19:51:12: i still need to go all the way lumby i think for a knife => WarByCode (owned by WarByCode)\n06/09/2020 19:51:51: one spawns in castle i think => blessdanoobs (owned by WarByCode)\n06/09/2020 19:51:51: one spawns in castle i think => WarByCode (owned by WarByCode)\n06/09/2020 19:52:41: think its in the kitchen or basemeant => blessdanoobs (owned by WarByCode)\n06/09/2020 19:52:41: think its in the kitchen or basemeant => WarByCode (owned by WarByCode)\n06/09/2020 19:54:42: its a very old spawn => blessdanoobs (owned by WarByCode)\n06/09/2020 19:54:42: its a very old spawn => WarByCode (owned by WarByCode)\n06/09/2020 19:55:26: grab one for me if you are able during 1 bank trip => blessdanoobs (owned by WarByCode)\n06/09/2020 19:55:26: grab one for me if you are able during 1 bank trip => WarByCode (owned by WarByCode)\n06/09/2020 19:56:46: sweet => blessdanoobs (owned by WarByCode)\n06/09/2020 19:56:46: sweet => WarByCode (owned by WarByCode)\n06/09/2020 20:00:14: i got a magic lamp aww shit => blessdanoobs (owned by WarByCode)\n06/09/2020 20:00:14: i got a magic lamp aww shit => WarByCode (owned by WarByCode)\n06/09/2020 20:00:52: aye => blessdanoobs (owned by WarByCode)\n06/09/2020 20:00:52: aye => WarByCode (owned by WarByCode)\n06/09/2020 20:09:45: no idea where mine went => blessdanoobs (owned by WarByCode)\n06/09/2020 20:09:45: no idea where mine went => WarByCode (owned by WarByCode)\n06/09/2020 20:14:21: not being able to filter out messages kinda sucks => blessdanoobs (owned by WarByCode)\n06/09/2020 20:14:21: not being able to filter out messages kinda sucks => WarByCode (owned by WarByCode)\n06/09/2020 20:16:26: yeah in game chat => blessdanoobs (owned by WarByCode)\n06/09/2020 20:16:26: yeah in game chat => WarByCode (owned by WarByCode)\n06/09/2020 20:16:37: stuff like \'\'you get some willow logs\'\' => blessdanoobs (owned by WarByCode)\n06/09/2020 20:16:37: stuff like \'\'you get some willow logs\'\' => WarByCode (owned by WarByCode)\n06/09/2020 20:19:20: is all good just probably miss some messages in friend chat  => blessdanoobs (owned by WarByCode)\n06/09/2020 20:19:20: is all good just probably miss some messages in friend chat  => WarByCode (owned by WarByCode)\n06/09/2020 20:19:22: chat with it => blessdanoobs (owned by WarByCode)\n06/09/2020 20:19:22: chat with it => WarByCode (owned by WarByCode)\n06/09/2020 20:23:49: better than naught laws? => blessdanoobs (owned by WarByCode)\n06/09/2020 20:23:49: better than naught laws? => WarByCode (owned by WarByCode)\n06/09/2020 20:28:16: thats what 100k? ish but yeah get it there => blessdanoobs (owned by WarByCode)\n06/09/2020 20:28:16: thats what 100k? ish but yeah get it there => WarByCode (owned by WarByCode)\n06/09/2020 20:28:23: i think it costs 1 cut diamond to get into that area => blessdanoobs (owned by WarByCode)\n06/09/2020 20:28:23: i think it costs 1 cut diamond to get into that area => WarByCode (owned by WarByCode)\n06/09/2020 20:28:31: assuming its coded correct => blessdanoobs (owned by WarByCode)\n06/09/2020 20:28:31: assuming its coded correct => WarByCode (owned by WarByCode)\n06/09/2020 20:38:09: another client side thing is using Esc to close interfaces => blessdanoobs (owned by WarByCode)\n06/09/2020 20:38:09: another client side thing is using Esc to close interfaces => WarByCode (owned by WarByCode)\n06/09/2020 20:46:45: no need to do hard things => blessdanoobs (owned by WarByCode)\n06/09/2020 20:46:45: no need to do hard things => WarByCode (owned by WarByCode)\n06/09/2020 20:51:58: not sure what one would be better in the long run => blessdanoobs (owned by WarByCode)\n06/09/2020 20:51:58: not sure what one would be better in the long run => WarByCode (owned by WarByCode)\n06/09/2020 20:55:16: yay java tho? => blessdanoobs (owned by WarByCode)\n06/09/2020 20:55:16: yay java tho? => WarByCode (owned by WarByCode)\n', '06/09/2020 18:36:09: 209.33.239.125\n06/09/2020 18:36:09:  \n06/09/2020 18:36:09: AA-92-BE-D0-47-9E\n07/09/2020 00:20:42: 209.33.239.125\n07/09/2020 00:20:42:  \n07/09/2020 00:20:42: AA-92-BE-D0-47-9E\n07/09/2020 12:22:18: 209.33.239.254\n07/09/2020 12:22:18:  \n07/09/2020 12:22:18: AA-92-BE-D0-47-9E\n07/09/2020 13:50:12: 209.33.239.254\n07/09/2020 13:50:12:  \n07/09/2020 13:50:12: AA-92-BE-D0-47-9E\n07/09/2020 23:28:16: 209.33.239.254\n07/09/2020 23:28:16:  \n07/09/2020 23:28:16: AA-92-BE-D0-47-9E\n08/09/2020 11:49:10: 209.33.209.234\n08/09/2020 11:49:10:  \n08/09/2020 11:49:10: AA-92-BE-D0-47-9E\n', '06/09/2020 18:39:02: allquest\n06/09/2020 18:52:09: allquest\n06/09/2020 18:58:56: ge\n06/09/2020 20:58:21: reply\n06/09/2020 21:00:18: reply\n06/09/2020 21:01:03: reply\n06/09/2020 21:01:34: reply\n06/09/2020 21:02:10: reply\n06/09/2020 21:03:05: reply\n06/09/2020 21:04:39: reply\n06/09/2020 21:05:30: reply\n06/09/2020 21:06:44: reply\n06/09/2020 21:08:33: reply\n06/09/2020 21:09:36: reply\n06/09/2020 21:09:51: reply\n06/09/2020 21:11:34: reply\n06/09/2020 21:13:30: reply\n06/09/2020 21:14:16: reply\n06/09/2020 21:16:13: reply\n06/09/2020 21:16:57: reply\n06/09/2020 21:17:22: reply\n06/09/2020 21:17:28: reply\n06/09/2020 21:19:08: reply\n06/09/2020 21:25:24: reply\n06/09/2020 21:27:35: reply\n06/09/2020 21:29:02: reply\n06/09/2020 21:29:05: reply\n06/09/2020 22:08:18: reply\n06/09/2020 22:10:34: reply\n06/09/2020 22:11:37: reply\n06/09/2020 22:11:54: reply\n06/09/2020 22:14:15: reply\n06/09/2020 22:16:20: reply\n06/09/2020 22:16:32: reply\n06/09/2020 22:17:30: reply\n06/09/2020 22:45:27: reply\n06/09/2020 22:54:28: reply\n06/09/2020 22:54:59: reply\n06/09/2020 23:05:24: reply\n06/09/2020 23:07:59: reply\n06/09/2020 23:08:30: reply\n06/09/2020 23:09:23: reply\n06/09/2020 23:09:36: reply\n06/09/2020 23:10:01: reply\n06/09/2020 23:11:21: reply\n06/09/2020 23:11:29: reply\n06/09/2020 23:27:55: reply\n06/09/2020 23:28:47: reply\n06/09/2020 23:28:54: reply\n06/09/2020 23:28:59: reply\n06/09/2020 23:32:47: reply\n06/09/2020 23:35:33: reply\n06/09/2020 23:36:37: reply\n06/09/2020 23:38:27: reply\n06/09/2020 23:41:33: reply\n06/09/2020 23:44:50: reply\n06/09/2020 23:47:15: reply\n06/09/2020 23:48:18: reply\n06/09/2020 23:50:07: reply\n06/09/2020 23:51:52: reply\n06/09/2020 23:54:54: reply\n06/09/2020 23:57:13: reply\n06/09/2020 23:59:59: reply\n07/09/2020 00:01:45: reply\n07/09/2020 00:03:27: reply\n07/09/2020 00:04:33: reply\n07/09/2020 00:19:06: reply\n07/09/2020 00:20:49: reply\n07/09/2020 00:31:46: reply\n07/09/2020 00:33:06: reply\n07/09/2020 00:33:59: reply\n07/09/2020 00:35:02: reply\n07/09/2020 00:35:15: reply\n07/09/2020 00:35:43: reply\n07/09/2020 00:36:59: reply\n07/09/2020 00:39:29: reply\n07/09/2020 00:39:54: reply\n07/09/2020 00:40:26: reply\n07/09/2020 12:24:15: reply\n07/09/2020 12:24:33: reply\n07/09/2020 12:24:59: reply\n07/09/2020 12:25:56: reply\n07/09/2020 12:26:32: reply\n07/09/2020 12:27:31: reply\n07/09/2020 12:31:02: reply\n07/09/2020 12:34:24: reply\n07/09/2020 12:36:04: reply\n07/09/2020 12:36:19: reply\n07/09/2020 12:43:37: reply\n07/09/2020 12:45:17: reply\n07/09/2020 12:45:31: reply\n07/09/2020 12:48:28: reply\n07/09/2020 12:48:45: reply\n07/09/2020 12:50:04: reply\n07/09/2020 12:50:37: reply\n07/09/2020 12:53:40: reply\n07/09/2020 12:55:28: reply\n07/09/2020 12:55:44: reply\n07/09/2020 12:55:51: reply\n07/09/2020 12:56:00: reply\n07/09/2020 12:57:15: reply\n07/09/2020 12:57:29: reply\n07/09/2020 12:58:21: reply\n07/09/2020 12:58:29: reply\n07/09/2020 12:58:35: reply\n07/09/2020 13:00:22: reply\n07/09/2020 13:01:58: ge\n07/09/2020 13:02:13: reply\n07/09/2020 13:02:16: reply\n07/09/2020 13:06:47: reply\n07/09/2020 13:09:17: reply\n07/09/2020 13:14:53: ge\n07/09/2020 13:15:55: reply\n07/09/2020 13:16:48: reply\n07/09/2020 13:16:57: reply\n07/09/2020 13:19:05: reply\n07/09/2020 13:19:12: reply\n07/09/2020 13:20:04: reply\n07/09/2020 13:22:00: reply\n07/09/2020 13:24:40: reply\n07/09/2020 13:24:45: reply\n07/09/2020 13:26:13: reply\n07/09/2020 13:31:01: reply\n07/09/2020 13:31:15: reply\n07/09/2020 13:31:19: reply\n07/09/2020 13:32:55: reply\n07/09/2020 13:33:54: reply\n07/09/2020 13:34:11: reply\n07/09/2020 13:36:29: reply\n07/09/2020 13:36:39: reply\n07/09/2020 13:38:26: reply\n07/09/2020 13:38:31: reply\n07/09/2020 13:39:20: reply\n07/09/2020 13:54:04: reply\n07/09/2020 13:55:14: reply\n07/09/2020 13:57:30: reply\n07/09/2020 13:57:34: reply\n07/09/2020 13:59:59: reply\n07/09/2020 14:01:15: reply\n07/09/2020 14:03:03: reply\n07/09/2020 14:05:37: reply\n07/09/2020 14:11:43: reply\n07/09/2020 14:17:18: reply\n07/09/2020 14:17:22: reply\n07/09/2020 14:18:43: reply\n07/09/2020 14:21:04: reply\n07/09/2020 14:21:36: reply\n07/09/2020 14:26:29: reply\n07/09/2020 14:27:01: reply\n07/09/2020 14:27:40: reply\n07/09/2020 14:27:48: reply\n07/09/2020 14:27:57: reply\n07/09/2020 14:28:51: reply\n07/09/2020 14:29:00: reply\n07/09/2020 14:30:32: reply\n07/09/2020 23:29:00: reply\n07/09/2020 23:29:30: reply\n07/09/2020 23:42:07: reply\n07/09/2020 23:42:16: reply\n08/09/2020 00:03:10: reply\n08/09/2020 00:07:50: reply\n08/09/2020 00:09:51: reply\n08/09/2020 00:12:09: reply\n08/09/2020 11:49:51: reply\n08/09/2020 11:50:01: reply\n08/09/2020 11:50:24: reply\n08/09/2020 11:50:46: reply\n08/09/2020 11:51:51: reply\n08/09/2020 11:52:56: reply\n08/09/2020 11:53:09: reply\n08/09/2020 11:54:48: reply\n08/09/2020 11:55:25: reply\n08/09/2020 11:56:30: reply\n08/09/2020 11:56:58: reply\n08/09/2020 11:57:40: reply\n08/09/2020 11:58:21: reply\n08/09/2020 11:59:22: reply\n08/09/2020 12:00:55: reply\n08/09/2020 12:03:43: reply\n08/09/2020 12:06:21: reply\n08/09/2020 12:08:08: reply\n08/09/2020 12:35:03: reply\n', '06/09/2020 20:26:15: traded => jawarrior received => {Knife x 1,Staff of water x 1,Fire talisman x 1,Tiara mould x 1,Ring mould x 1,Amulet mould x 1,Holy mould x 1,Needle x 1,Staff of air x 1,Bracelet mould x 1,Chisel x 1,Thread x 5}\n07/09/2020 00:40:47: traded => jawarrior received => {Dramen staff x 1,Dramen branch x 1}\n07/09/2020 12:52:11: traded => jawarrior received => {Lobster x 1,Waterskin(3) x 1}\n07/09/2020 14:08:28: traded => jawarrior received => {Mithril axe x 1}\n07/09/2020 14:12:38: traded => jawarrior received => {}\n', '07/09/2020 13:13:47: buying offer => item => Coal => amount => 21 => price => 47\n07/09/2020 13:13:50: aborted offer => item => Coal => amount => 21\n07/09/2020 13:14:18: buying offer => item => Coal => amount => 18 => price => 90\n07/09/2020 13:14:20: offer removed => item => Coal =>  amount => 18 => amount_left => 0 => completed_amount => 18\n07/09/2020 13:14:44: buying offer => item => Crushed nest => amount => 1000 => price => 2\n07/09/2020 13:14:46: offer removed => item => Crushed nest =>  amount => 1000 => amount_left => 0 => completed_amount => 1000\n', '', ''),
('jawarrior', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `punishments`
--

CREATE TABLE `punishments` (
  `address` varchar(100) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `security`
--

CREATE TABLE `security` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip` longtext NOT NULL,
  `type` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `see jawa`
-- (See below for the actual view)
--
CREATE TABLE `see jawa` (
`UID` int(11) unsigned
,`email` varchar(50)
,`username` varchar(15)
,`password` varchar(100)
,`salt` varchar(35)
,`rights` int(1)
,`email_activated` int(1)
,`lastActive` timestamp
,`donatorType` int(2)
,`donationTotal` double(10,2)
,`credits` int(5)
,`icon` int(2)
,`perks` varchar(500)
,`ip` longtext
,`mac` longtext
,`serial` longtext
,`computerName` varchar(2000)
,`monthlyVotes` int(11)
,`netWorth` bigint(200)
,`forumUID` int(11)
,`ironManMode` varchar(15)
,`bank` longtext
,`inventory` longtext
,`equipment` longtext
,`ge` longtext
,`muteTime` bigint(20)
,`banTime` bigint(20)
,`profileImage` varchar(300)
,`contacts` longtext
,`blocked` longtext
,`clanName` varchar(15)
,`currentClan` varchar(15)
,`clanReqs` varchar(10)
,`disconnectTime` bigint(20)
,`lastWorld` int(3)
,`chatSettings` varchar(10)
,`timePlayed` bigint(20)
,`lastLogin` bigint(20)
,`lastGameIp` varchar(15)
,`countryCode` int(11)
,`birthday` date
,`online` tinyint(1)
,`signature` longtext
,`joined_date` timestamp
,`posts` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `sys_logs`
--

CREATE TABLE `sys_logs` (
  `id` int(11) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `log_type` int(2) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `IP_ADDRESS` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `test`
-- (See below for the actual view)
--
CREATE TABLE `test` (
`UID` int(11) unsigned
,`email` varchar(50)
,`username` varchar(15)
,`password` varchar(100)
,`salt` varchar(35)
,`rights` int(1)
,`email_activated` int(1)
,`lastActive` timestamp
,`donatorType` int(2)
,`donationTotal` double(10,2)
,`credits` int(5)
,`icon` int(2)
,`perks` varchar(500)
,`ip` longtext
,`mac` longtext
,`serial` longtext
,`computerName` varchar(2000)
,`monthlyVotes` int(11)
,`netWorth` bigint(200)
,`forumUID` int(11)
,`ironManMode` varchar(15)
,`bank` longtext
,`inventory` longtext
,`equipment` longtext
,`ge` longtext
,`muteTime` bigint(20)
,`banTime` bigint(20)
,`profileImage` varchar(300)
,`contacts` longtext
,`blocked` longtext
,`clanName` varchar(15)
,`currentClan` varchar(15)
,`clanReqs` varchar(10)
,`disconnectTime` bigint(20)
,`lastWorld` int(3)
,`chatSettings` varchar(10)
,`timePlayed` bigint(20)
,`lastLogin` bigint(20)
,`lastGameIp` varchar(15)
,`countryCode` int(11)
,`birthday` date
,`online` tinyint(1)
,`signature` longtext
,`joined_date` timestamp
,`posts` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `th`
-- (See below for the actual view)
--
CREATE TABLE `th` (
`UID` int(11) unsigned
,`email` varchar(50)
,`username` varchar(15)
,`password` varchar(100)
,`salt` varchar(35)
,`rights` int(1)
,`email_activated` int(1)
,`lastActive` timestamp
,`donatorType` int(2)
,`donationTotal` double(10,2)
,`credits` int(5)
,`icon` int(2)
,`perks` varchar(500)
,`ip` longtext
,`mac` longtext
,`serial` longtext
,`computerName` varchar(2000)
,`monthlyVotes` int(11)
,`netWorth` bigint(200)
,`forumUID` int(11)
,`ironManMode` varchar(15)
,`bank` longtext
,`inventory` longtext
,`equipment` longtext
,`ge` longtext
,`muteTime` bigint(20)
,`banTime` bigint(20)
,`profileImage` varchar(300)
,`contacts` longtext
,`blocked` longtext
,`clanName` varchar(15)
,`currentClan` varchar(15)
,`clanReqs` varchar(10)
,`disconnectTime` bigint(20)
,`lastWorld` int(3)
,`chatSettings` varchar(10)
,`timePlayed` bigint(20)
,`lastLogin` bigint(20)
,`lastGameIp` varchar(15)
,`countryCode` int(11)
,`birthday` date
,`online` tinyint(1)
,`signature` longtext
,`joined_date` timestamp
,`posts` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `validations`
--

CREATE TABLE `validations` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `type` int(2) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL DEFAULT '',
  `site` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `voting_sites`
--

CREATE TABLE `voting_sites` (
  `name` varchar(20) NOT NULL DEFAULT 'Null',
  `wait` int(5) NOT NULL DEFAULT 12,
  `credits` int(2) NOT NULL DEFAULT 1,
  `link` varchar(500) NOT NULL DEFAULT 'http://ariosrsps.com',
  `get_command` varchar(20) NOT NULL DEFAULT '',
  `host_name` varchar(500) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `worlds`
--

CREATE TABLE `worlds` (
  `world` int(2) UNSIGNED NOT NULL,
  `ip` varchar(20) NOT NULL DEFAULT '127.0.0.1',
  `players` int(5) NOT NULL DEFAULT 0,
  `country` int(1) NOT NULL DEFAULT 0,
  `member` int(11) NOT NULL,
  `revision` int(3) NOT NULL DEFAULT 530,
  `lastResponse` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `worlds`
--

INSERT INTO `worlds` (`world`, `ip`, `players`, `country`, `member`, `revision`, `lastResponse`) VALUES
(1, '127.0.0.1', 1, 22, 1, 530, '2020-09-10 23:01:30');

-- --------------------------------------------------------

--
-- Structure for view `see jawa`
--
DROP TABLE IF EXISTS `see jawa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `see jawa`  AS  select `members`.`UID` AS `UID`,`members`.`email` AS `email`,`members`.`username` AS `username`,`members`.`password` AS `password`,`members`.`salt` AS `salt`,`members`.`rights` AS `rights`,`members`.`email_activated` AS `email_activated`,`members`.`lastActive` AS `lastActive`,`members`.`donatorType` AS `donatorType`,`members`.`donationTotal` AS `donationTotal`,`members`.`credits` AS `credits`,`members`.`icon` AS `icon`,`members`.`perks` AS `perks`,`members`.`ip` AS `ip`,`members`.`mac` AS `mac`,`members`.`serial` AS `serial`,`members`.`computerName` AS `computerName`,`members`.`monthlyVotes` AS `monthlyVotes`,`members`.`netWorth` AS `netWorth`,`members`.`forumUID` AS `forumUID`,`members`.`ironManMode` AS `ironManMode`,`members`.`bank` AS `bank`,`members`.`inventory` AS `inventory`,`members`.`equipment` AS `equipment`,`members`.`ge` AS `ge`,`members`.`muteTime` AS `muteTime`,`members`.`banTime` AS `banTime`,`members`.`profileImage` AS `profileImage`,`members`.`contacts` AS `contacts`,`members`.`blocked` AS `blocked`,`members`.`clanName` AS `clanName`,`members`.`currentClan` AS `currentClan`,`members`.`clanReqs` AS `clanReqs`,`members`.`disconnectTime` AS `disconnectTime`,`members`.`lastWorld` AS `lastWorld`,`members`.`chatSettings` AS `chatSettings`,`members`.`timePlayed` AS `timePlayed`,`members`.`lastLogin` AS `lastLogin`,`members`.`lastGameIp` AS `lastGameIp`,`members`.`countryCode` AS `countryCode`,`members`.`birthday` AS `birthday`,`members`.`online` AS `online`,`members`.`signature` AS `signature`,`members`.`joined_date` AS `joined_date`,`members`.`posts` AS `posts` from `members` where `members`.`username` = 'jawarrior1' ;

-- --------------------------------------------------------

--
-- Structure for view `test`
--
DROP TABLE IF EXISTS `test`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `test`  AS  select `members`.`UID` AS `UID`,`members`.`email` AS `email`,`members`.`username` AS `username`,`members`.`password` AS `password`,`members`.`salt` AS `salt`,`members`.`rights` AS `rights`,`members`.`email_activated` AS `email_activated`,`members`.`lastActive` AS `lastActive`,`members`.`donatorType` AS `donatorType`,`members`.`donationTotal` AS `donationTotal`,`members`.`credits` AS `credits`,`members`.`icon` AS `icon`,`members`.`perks` AS `perks`,`members`.`ip` AS `ip`,`members`.`mac` AS `mac`,`members`.`serial` AS `serial`,`members`.`computerName` AS `computerName`,`members`.`monthlyVotes` AS `monthlyVotes`,`members`.`netWorth` AS `netWorth`,`members`.`forumUID` AS `forumUID`,`members`.`ironManMode` AS `ironManMode`,`members`.`bank` AS `bank`,`members`.`inventory` AS `inventory`,`members`.`equipment` AS `equipment`,`members`.`ge` AS `ge`,`members`.`muteTime` AS `muteTime`,`members`.`banTime` AS `banTime`,`members`.`profileImage` AS `profileImage`,`members`.`contacts` AS `contacts`,`members`.`blocked` AS `blocked`,`members`.`clanName` AS `clanName`,`members`.`currentClan` AS `currentClan`,`members`.`clanReqs` AS `clanReqs`,`members`.`disconnectTime` AS `disconnectTime`,`members`.`lastWorld` AS `lastWorld`,`members`.`chatSettings` AS `chatSettings`,`members`.`timePlayed` AS `timePlayed`,`members`.`lastLogin` AS `lastLogin`,`members`.`lastGameIp` AS `lastGameIp`,`members`.`countryCode` AS `countryCode`,`members`.`birthday` AS `birthday`,`members`.`online` AS `online`,`members`.`signature` AS `signature`,`members`.`joined_date` AS `joined_date`,`members`.`posts` AS `posts` from `members` ;

-- --------------------------------------------------------

--
-- Structure for view `th`
--
DROP TABLE IF EXISTS `th`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `th`  AS  select `members`.`UID` AS `UID`,`members`.`email` AS `email`,`members`.`username` AS `username`,`members`.`password` AS `password`,`members`.`salt` AS `salt`,`members`.`rights` AS `rights`,`members`.`email_activated` AS `email_activated`,`members`.`lastActive` AS `lastActive`,`members`.`donatorType` AS `donatorType`,`members`.`donationTotal` AS `donationTotal`,`members`.`credits` AS `credits`,`members`.`icon` AS `icon`,`members`.`perks` AS `perks`,`members`.`ip` AS `ip`,`members`.`mac` AS `mac`,`members`.`serial` AS `serial`,`members`.`computerName` AS `computerName`,`members`.`monthlyVotes` AS `monthlyVotes`,`members`.`netWorth` AS `netWorth`,`members`.`forumUID` AS `forumUID`,`members`.`ironManMode` AS `ironManMode`,`members`.`bank` AS `bank`,`members`.`inventory` AS `inventory`,`members`.`equipment` AS `equipment`,`members`.`ge` AS `ge`,`members`.`muteTime` AS `muteTime`,`members`.`banTime` AS `banTime`,`members`.`profileImage` AS `profileImage`,`members`.`contacts` AS `contacts`,`members`.`blocked` AS `blocked`,`members`.`clanName` AS `clanName`,`members`.`currentClan` AS `currentClan`,`members`.`clanReqs` AS `clanReqs`,`members`.`disconnectTime` AS `disconnectTime`,`members`.`lastWorld` AS `lastWorld`,`members`.`chatSettings` AS `chatSettings`,`members`.`timePlayed` AS `timePlayed`,`members`.`lastLogin` AS `lastLogin`,`members`.`lastGameIp` AS `lastGameIp`,`members`.`countryCode` AS `countryCode`,`members`.`birthday` AS `birthday`,`members`.`online` AS `online`,`members`.`signature` AS `signature`,`members`.`joined_date` AS `joined_date`,`members`.`posts` AS `posts` from `members` where `members`.`UID` = 2 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dev_log`
--
ALTER TABLE `dev_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `highscores`
--
ALTER TABLE `highscores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`UID`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perks`
--
ALTER TABLE `perks`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `player_logs`
--
ALTER TABLE `player_logs`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `security`
--
ALTER TABLE `security`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_logs`
--
ALTER TABLE `sys_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `validations`
--
ALTER TABLE `validations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD KEY `id` (`id`);

--
-- Indexes for table `voting_sites`
--
ALTER TABLE `voting_sites`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `worlds`
--
ALTER TABLE `worlds`
  ADD PRIMARY KEY (`world`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dev_log`
--
ALTER TABLE `dev_log`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `highscores`
--
ALTER TABLE `highscores`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `UID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perks`
--
ALTER TABLE `perks`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `security`
--
ALTER TABLE `security`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_logs`
--
ALTER TABLE `sys_logs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `validations`
--
ALTER TABLE `validations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
