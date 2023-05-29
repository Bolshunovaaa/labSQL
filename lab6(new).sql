SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `branches`;
CREATE TABLE `branches` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `branches` (`id`, `name`, `color`) VALUES
(1,	'Олексіївська',	'зелена'),
(2,	'Салтівська',	'синя'),
(3,	'Холодногірськозаводська',	'червона');

DROP TABLE IF EXISTS `stations`;
CREATE TABLE `stations` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `next` tinyint(3) unsigned DEFAULT NULL,
  `prev` tinyint(3) unsigned DEFAULT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `stations` (`id`, `name`, `next`, `prev`, `branch_id`) VALUES
(1,	'Історичний музей',	2,	0,	2),
(2,	'Університет',	3,	1,	2),
(3,	'Пушкінська',	4,	2,	2),
(4,	'Київська',	5,	3,	2),
(5,	'Академіка Барабашова',	6,	4,	2),
(6,	'Метробудівників',	7,	5,	1),
(7,	'Захисників України',	8,	6,	1),
(8,	'Архітектора Бекетова',	9,	7,	1),
(9,	'Держпром',	10,	8,	1),
(10,	'Наукова',	11,	9,	1),
(11,	'Ботанічний сад',	12,	10,	1),
(12,	'Холодна гора',	13,	11,	3),
(13,	'Південний вокзал',	14,	12,	3),
(14,	'Центральний ринок',	15,	13,	3),
(15,	'Майдан Конституції',	16,	14,	3),
(16,	'Проспект Гагаріна',	17,	15,	3),
(17,	'Спортивна',	18,	16,	3),
(18,	'Завод ім. Малишева',	19,	17,	3);

DROP TABLE IF EXISTS `transition`;
CREATE TABLE `transition` (
  `station_from_id` tinyint(4) DEFAULT NULL,
  `station_to_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `transition` (`station_from_id`, `station_to_id`) VALUES
(15,	1),
(2,	9),
(17,	6),
(1,	15),
(9,	2),
(6,	17);

-- 2023-04-21 08:54:07