-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 09 2023 г., 00:02
-- Версия сервера: 5.5.35-log
-- Версия PHP: 5.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `kura24`
--

-- --------------------------------------------------------

--
-- Структура таблицы `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `g` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `god` varchar(4) NOT NULL,
  `coop` varchar(255) NOT NULL,
  `read1` varchar(255) NOT NULL,
  `act` varchar(10) NOT NULL,
  `code` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `test`
--

INSERT INTO `test` (`id`, `g`, `link`, `god`, `coop`, `read1`, `act`, `code`) VALUES
(1, 2, 'mz2.htm#numr1r', '1903', '', ' Draco ', '&#9415;', 1),
(2, 5, 'mz2.htm#numr1r', '1890', 'Draco', 'rat', 'R', 2),
(3, 8, 'mz2.htm#numr1r', '1883', 'Drako', 'ship', 'R', 3),
(4, 1, 'mz2.htm#numr1r', '1883', '', 'bull', 'r', 4),
(5, 7, 'mz2.htm#numr1r', '1883', '', 'monkey', 'r', 5),
(6, 6, 'mz2.htm#numr2r', '1884', '', 'Horse', '&#9415;', 1),
(7, 12, 'mz2.htm#numr2r', '1908', '', 'tiger', 'R', 2),
(8, 9, 'mz2.htm#numr2r', '1899', '', 'cock', 'R', 3),
(9, 3, 'mz2.htm#numr2r', '1883', '', 'haer', 'r', 4),
(10, 11, 'mz2.htm#numr2r', '1884', '', 'dog', 'r', 5),
(11, 2, 'mz2.htm#numr3m', '1897', '', 'Dragon', '&#9410;', 1),
(12, 6, 'mz2.htm#numr3m', '1883', '', 'Horse', '&#9410;', 2),
(13, 4, 'mz2.htm#numr3m', '1883', '', 'Snake', 'm', 3),
(14, 10, 'mz2.htm#numr3m', '1905', '', 'Pig', 'm', 4),
(15, 5, 'mz2.htm#numr3m', '1883', '', 'Mouse', 'm', 5),
(16, 9, 'mz2.htm#numr3m', '1903', '', 'cock', 'm', 6),
(17, 3, 'mz2.htm#numr4d', '1885', '', 'rubbit', 'd', 1),
(18, 9, 'mz2.htm#numr4d', '1883', '', 'chiken', '&#9401;', 2);


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
