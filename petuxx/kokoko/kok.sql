-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 09 2023 г., 14:41
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
-- Структура таблицы `kok`
--

CREATE TABLE IF NOT EXISTS `kok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `god` varchar(11) NOT NULL,
  `link` varchar(111) NOT NULL,
  `txt` text NOT NULL,
  `fam` varchar(255) NOT NULL COMMENT 'familysearch.org',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `kok`
--

INSERT INTO `kok` (`id`, `god`, `link`, `txt`, `fam`) VALUES
(1, '1918', 'numr1r', '				<tr>\r\n				<td bgcolor="white" class="icenter">\r\n				<a href="old-ruf.jpg" target="_blank" style="cursor: pointer;">\r\n						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-camera-fill" viewBox="0 0 16 16">\r\n				  <path d="M10.5 8.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"></path>\r\n				  <path d="M2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2zm.5 2a.5.5 0 1 1 0-1 .5.5 0 0 1 0 1zm9 2.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0z"></path>\r\n				</svg></a><br>\r\n				</td>\r\n				<td>33<br></td><td><br></td><td><b> 8 окт 1890</b></td><td>11<br></td>\r\n				<td><span class="a vo"><mark>Дракон</mark></span><br></td>\r\n				<td class="ileft">\r\n				Деревни крестьянин<br>\r\n				<span class="a"><mark>Крыс</mark></span><br>\r\n				и законная жена его<br>\r\n				<span class="a"><mark>Овца</mark></span><br>\r\n				оба православные<br>\r\n				</td><td class="ileft">\r\n				Деревни крестьянин <span class="a"><mark>Бык</mark></span><br>\r\n				крестьянская девица <span class="a"><mark>Обезьяна</mark></span></td></tr>', 'https://www.familysearch.org/ark:/61903/3:1:3QS7-899H-3D7Y?i=667&cc=1807365&cat=1149477'),
(2, '1918', 'numr2r', '				<tr>\r\n				<td bgcolor="white" class="icenter">\r\n				<a href="old-ruf.jpg" target="_blank" style="cursor: pointer;">\r\n						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-camera-fill" viewBox="0 0 16 16">\r\n				  <path d="M10.5 8.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"></path>\r\n				  <path d="M2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2zm.5 2a.5.5 0 1 1 0-1 .5.5 0 0 1 0 1zm9 2.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0z"></path>\r\n				</svg></a><br>\r\n				</td>\r\n				<td>33<br></td><td><br></td><td><b> 8 окт 1890</b></td><td>11<br></td>\r\n				<td><span class="a vo"><mark>Лошадь</mark></span><br></td>\r\n				<td class="ileft">\r\n				Деревни крестьянин<br>\r\n				<span class="a"><mark>Тигр</mark></span><br>\r\n				и законная жена его<br>\r\n				<span class="a"><mark>Курица</mark></span><br>\r\n				оба православные<br>\r\n				</td><td class="ileft">\r\n				Деревни крестьянин <span class="a"><mark>Заяц</mark></span><br>\r\n				крестьянская девица <span class="a"><mark>Собака</mark></span></td></tr>', 'https://www.familysearch.org/ark:/61903/3:1:3QS7-899H-3D7Y?i=667&cc=1807365&cat=1149477'),
(3, '1918', 'numr3m', '				<tr><td bgcolor="white" class="icenter">\r\n				<a href="old-ruf.jpg" target="_blank" style="cursor: pointer;">\r\n				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-camera-fill" viewBox="0 0 16 16">\r\n		  <path d="M10.5 8.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>\r\n		  <path d="M2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2zm.5 2a.5.5 0 1 1 0-1 .5.5 0 0 1 0 1zm9 2.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0z"/>\r\n				</svg></a><br>				\r\n				</td><td>15</td><td><b> 10 нояб 1914</b></td><td class="ileft">\r\n				села крестьянин\r\n				<h4><span class="a"><mark>Драко</mark></span></h4>\r\n				православного вероисповедания, \r\n				первым браком\r\n				</td><td>\r\n				<h2>18</h2>p.1896</td><td class="ileft">\r\n				временно-проживающая в селе крестьянская девица\r\n				<h4><span class="a"><mark>Лошадь</mark></span></h4>\r\n				православного вероисповедания, \r\n				первым браком\r\n				</td><td><h2>16</h2>p.1897</td><td class="ileft">\r\n				<strong>по жениху:</strong>\r\n				села крестьяне <span class="a"><mark>Змея</mark></span><br>\r\n				<span class="a"><mark>Свинья</mark></span><br>\r\n				<strong>по невесте:</strong>\r\n				села крестьяне <span class="a"><mark>Мышь</mark></span><br>\r\n				<span class="a"><mark>Курица</mark></span><br>\r\n				</td></tr>', 'https://www.familysearch.org/ark:/61903/3:1:3QS7-899H-3D7Y?i=667&cc=1807365&cat=1149477'),
(4, '1918', 'numr4d', '				<tr><td bgcolor="white" class="icenter">\r\n					<a href="old-ruf.jpg" target="_blank" style="cursor: pointer;">\r\n						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-camera-fill" viewBox="0 0 16 16">\r\n				  <path d="M10.5 8.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"></path>\r\n				  <path d="M2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2zm.5 2a.5.5 0 1 1 0-1 .5.5 0 0 1 0 1zm9 2.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0z"></path>\r\n						</svg>\r\n					</a></td>\r\n				<td></td><td>29</td><td>4 сент 1900</td><td>6</td><td class="ileft">\r\n				д билетного солдата<br>\r\n				<span class="a"><mark>Кролик</mark></span><br>\r\n				дочь<br>\r\n				<span class="vo"><span class="a"><mark>Курица</mark></span></span><br>\r\n				</td><td></td><td><span class="vo">1г2м</span></td><td>от коклюша<br><br></td></tr>', 'https://www.familysearch.org/ark:/61903/3:1:3QS7-899H-3D7Y?i=667&cc=1807365&cat=1149477');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
