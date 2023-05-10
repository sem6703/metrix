-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 11 2023 г., 00:47
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kura24`
--

-- --------------------------------------------------------

--
-- Структура таблицы `gru`
--

CREATE TABLE `gru` (
  `id` int(11) NOT NULL,
  `ima` varchar(255) NOT NULL,
  `phote` int(11) DEFAULT NULL,
  `use` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gru`
--

INSERT INTO `gru` (`id`, `ima`, `phote`, `use`) VALUES
(1, 'бык', 1, 1),
(2, 'дракон', 2, 2),
(3, 'заяц', 3, 2),
(4, 'змкя', 4, 1),
(5, 'крыса', 5, 2),
(6, 'лошадь', 6, 2),
(7, 'обезяна', 7, 1),
(8, 'овца', 8, 1),
(9, 'петух', 9, 3),
(10, 'свинья', 10, 1),
(11, 'собака', 11, 1),
(12, 'тигр', 12, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `gru`
--
ALTER TABLE `gru`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `gru`
--
ALTER TABLE `gru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
