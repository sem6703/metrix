-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 08 2023 г., 22:44
-- Версия сервера: 5.5.35-log
-- Версия PHP: 5.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `mk24`
--

-- --------------------------------------------------------

--
-- Структура таблицы `head`
--

CREATE TABLE IF NOT EXISTS `head` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `god` text NOT NULL,
  `hat` text NOT NULL,
  `code` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `head`
--

INSERT INTO `head` (`id`, `god`, `hat`, `code`) VALUES
(1, '<tr><td colspan=8 style=''font-size: 30px;''><center><h1>\r\n00000\r\n</h1></center></td></tr>', '<tr>\r\n				<td rowspan="2" bgcolor="#efefff" class="ileft">\r\n				Скрин\r\n				</td>\r\n				<td colspan="2" class="ihead">Счет рожд.</td>\r\n				<td colspan="2" class="ihead">Месяц и день</td>\r\n				<td rowspan="2" class="ihead">Имена родившихся</td>\r\n				<td rowspan="2" class="ihead">Звание, имя, отчество и фамилия родителей и какого вероисповедания</td>\r\n				<td rowspan="2" class="ihead">Звание, имя, отчество и фамилия восприемников</td>\r\n				</tr>\r\n				<tr>\r\n				<td class="ihead">Муж.</td>\r\n				<td class="ihead">Жен.</td>\r\n				<td class="ihead">Рождение</td>\r\n				<td class="ihead">Крещение<br></td>\r\n				</tr>', 'r'),
(2, '<tr><td colspan=9 style=''font-size: 30px;''><center><h1>\r\n00000\r\n</h1></center></td></tr>', '<tr>\r\n				<td rowspan="2" bgcolor="#efefff" class="ileft">\r\n				Скрин\r\n				</td>\r\n				<td colspan="2" class="ihead">Счет умерших</td>\r\n				<td colspan="2" class="ihead">Месяц и день</td>\r\n				<td rowspan="2" class="ihead">Звание, имя, отчество и фамилия умершего</td>\r\n				<td colspan="2" class="ihead">Лета умершего</td>\r\n				<td rowspan="2" class="ihead">От чего умер</td>\r\n				</tr>\r\n				<tr>\r\n				<td class="ihead">Муж</td>\r\n				<td class="ihead">Жен</td>\r\n				<td class="ihead">Смерти</td>\r\n				<td class="ihead">Погребения</td>\r\n				<td class="ihead">Муж </td>\r\n				<td class="ihead">Жен<br></td>\r\n				</tr>', 'd'),
(3, '<tr><td colspan=8 style=''font-size: 30px;''><center><h1>\r\n00000\r\n</h1></center></td></tr>', '				<tr>\r\n				<td bgcolor="#efefff" class="ileft">\r\n				Скрин<br>\r\n				</td>\r\n				<td class="ihead">Счет браков</td>\r\n				<td class="ihead">Месяц и день</td>\r\n				<td class="ihead">Звание, имя, отчество, фамилия и вероисповедание жениха, и которым браком</td>\r\n				<td class="ihead">Лета жениха</td>\r\n				<td class="ihead">Звание, имя, отчество, фамилия и вероисповедание невесты, и которым браком</td>\r\n				<td class="ihead">Лета невесты</td>\r\n				<td class="ihead">Кто был поручителем</td>\r\n				</tr>', 'm');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
