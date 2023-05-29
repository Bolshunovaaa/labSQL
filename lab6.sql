SELECT cities.name, regions.name
FROM cities
INNER JOIN regions ON cities.region = regions.uuid
WHERE cities.population > 350000;

--------------------------------------------------

SELECT cities.name, regions.name
FROM cities
INNER JOIN regions ON cities.region = regions.uuid
WHERE regions.name = 'Nord';

-------------------------------------------------

-- Adminer 4.8.1 MySQL 5.5.5-10.3.32-MariaDB-1:10.3.32+maria~focal dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `metro_stations`;
CREATE TABLE `metro_stations` (
  `id_station` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name_station` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `next_id_station` tinyint(3) unsigned NOT NULL,
  `previous_metro_station` tinyint(3) unsigned NOT NULL,
  `name_branch` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_station`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `metro_stations` (`id_station`, `name_station`, `next_id_station`, `previous_metro_station`, `name_branch`) VALUES
(1,	'Історичний музей',	2,	0,	'Салтівська'),
(2,	'Університет',	3,	1,	'Салтівська'),
(3,	'Пушкінська',	4,	2,	'Салтівська'),
(4,	'Київська',	5,	3,	'Салтівська'),
(5,	'Академіка Барабашова',	6,	4,	'Салтівська'),
(6,	'Метробудівників',	7,	5,	'Олексіївська'),
(7,	'Захисників України',	8,	6,	'Олексіївська'),
(8,	'Архітектора Бекетова',	9,	7,	'Олексіївська'),
(9,	'Держпром',	10,	8,	'Олексіївська'),
(10,	'Наукова',	11,	9,	'Олексіївська'),
(11,	'Ботанічний сад',	12,	10,	'Олексіївська'),
(12,	'Холодна гора',	13,	11,	'Холодногірсько-Заводська'),
(13,	'Південний вокзал',	14,	12,	'Холодногірсько-Заводська'),
(14,	'Центральний ринок',	15,	13,	'Холодногірсько-Заводська'),
(15,	'Майдан Конституції',	16,	14,	'Холодногірсько-Заводська'),
(16,	'Проспект Гагаріна',	17,	15,	'Холодногірсько-Заводська'),
(17,	'Спортивна',	18,	16,	'Холодногірсько-Заводська'),
(18,	'Завод ім. Малишева',	19,	17,	'Холодногірсько-Заводська');

DROP TABLE IF EXISTS `transition`;
CREATE TABLE `transition` (
  `station_from_id` tinyint(4) NOT NULL,
  `station_to_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `transition` (`station_from_id`, `station_to_id`) VALUES
(15,	1),
(2,	9),
(17,	6),
(1,	15),
(9,	2),
(6,	17);

-- 2023-04-14 08:25:56
---------------------------------------------------------------------------------------
SELECT metro_stations.id_station, metro_stations.name_station,metro_stations.name_branch,
        transition.station_to_id
FROM metro_stations
INNER JOIN transition ON metro_stations.id_station = transition.station_from_id