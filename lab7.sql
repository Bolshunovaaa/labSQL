-- Adminer 4.8.1 MySQL 5.5.5-10.3.32-MariaDB-1:10.3.32+maria~focal dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `news` (`id`, `category`, `name`, `content`) VALUES
(1,	'politics',	'Zelensky responds to Russia\'s claims that Ukraine tried to kill Putin',	'According to the BBC, while on a visit to Finland, Zelensky told the press, \"We don\'t attack Putin or Moscow. We fight on our territory.'),
(2,	'sport',	'Lionel Messi-PSG: love ended. The stages of his experience in France',	'When he was signed by PSG, the French club expected that they would win the Champions League'),
(3,	'nature',	'Earth from space: The most impressive man-made wonders',	'Provided they get close enough, it probably wouldn’t take alien visitors long to detect the presence of humans on Earth.');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `user` (`id`, `name`, `email`) VALUES
(1,	'Bob',	'bosbob@gmail.com'),
(2,	'Katya',	'katyapushka@gmail.com'),
(3,	'Nike',	'udav@gmail.com');

DROP TABLE IF EXISTS `valuation`;
CREATE TABLE `valuation` (
  `id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark` int(1) unsigned DEFAULT NULL,
  `user_id` int(50) unsigned DEFAULT NULL,
  `news_id` int(50) unsigned NOT NULL,
  `ip` int(4) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `news_id` (`news_id`),
  CONSTRAINT `valuation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `news` (`id`),
  CONSTRAINT `valuation_ibfk_2` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `valuation` (`id`, `comment`, `mark`, `user_id`, `news_id`, `ip`) VALUES
(1,	'Cool!!!!!!!!!!!!!!',	5,	1,	1,	1235),
(2,	'Not Bad',	4,	2,	2,	6439),
(3,	'Amazing! ',	5,	3,	3,	7412);

-- 2023-05-06 06:00:41