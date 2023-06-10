-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 09 2023 г., 23:40
-- Версия сервера: 5.5.35-log
-- Версия PHP: 5.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `pet3`
--

-- --------------------------------------------------------

--
-- Структура таблицы `acts`
--

CREATE TABLE IF NOT EXISTS `acts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `god` varchar(11) NOT NULL,
  `txt` text NOT NULL,
  `fot` varchar(254) NOT NULL,
  `fam` varchar(255) NOT NULL,
  `code` varchar(2) NOT NULL,
  `type` int(11) NOT NULL,
  `tc` int(11) NOT NULL COMMENT 'time code',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `acts`
--

INSERT INTO `acts` (`id`, `god`, `txt`, `fot`, `fam`, `code`, `type`, `tc`) VALUES
(1, '2023', '				<tr>\r\n				<td bgcolor="white" class="icenter">yyy</td>\r\n				<td>33<br></td><td><br></td><td><b> 8 окт 1890</b></td><td>11<br></td>\r\n				<td><span class="a vo"> <mark>Дракон</mark></span><br></td>\r\n				<td class="ileft">\r\n				Деревни крестьянин<br>\r\n				<mark>Крыс</mark><br>\r\n				и законная жена его<br>\r\n				<mark>Овца</mark><br>\r\n				оба православные<br>\r\n				</td><td class="ileft">\r\n				Деревни крестьянин <mark>Бык</mark><br>\r\n				крестьянская девица <mark>Обезьяна</mark></td></tr>', 'sign00.jpg', 'https://www.youtube.com/watch?v=2bAMyiaIwNk', 'r', 1, 0),
(2, '2022', '				<tr>\r\n				<td bgcolor="white" class="icenter">yyy</td>\r\n				<td>33<br></td><td><br></td><td><b> 8 окт 1890</b></td><td>11<br></td>\r\n				<td><span class="vo"><mark>Лошадь</mark></span><br></td>\r\n				<td class="ileft">\r\n				Деревни крестьянин<br>\r\n				<mark>Тигр</mark><br>\r\n				и законная жена его<br>\r\n				<mark>Курица</mark><br>\r\n				оба православные<br>\r\n				</td><td class="ileft">\r\n				Деревни крестьянин <mark>Заяц</mark><br>\r\n				крестьянская девица <mark>Собака</mark></td></tr>', 'sign01.jpg', 'https://www.youtube.com/watch?v=4-43lLKaqBQ', 'r', 1, 0),
(3, '2021', '				<tr><td bgcolor="white" class="icenter">yyy</td><td>15</td><td><b> 10 нояб 1914</b></td><td class="ileft">\r\n				села крестьянин\r\n				<h4><mark>Драко</mark></h4>\r\n				православного вероисповедания, \r\n				первым браком\r\n				</td><td>\r\n				<h2>18</h2>p.1896</td><td class="ileft">\r\n				временно-проживающая в селе крестьянская девица\r\n				<h4><mark>Лошадь</mark></h4>\r\n				православного вероисповедания, \r\n				первым браком\r\n				</td><td><h2>16</h2>p.1897</td><td class="ileft">\r\n				<strong>по жениху:</strong>\r\n				села крестьяне <mark>Змея</mark><br>\r\n				<mark>Свинья</mark><br>\r\n				<strong>по невесте:</strong>\r\n				села крестьяне <mark>Шушара</mark><br>\r\n				<mark>Кочет</mark><br>\r\n				</td></tr>', 'sign02.jpg', 'https://www.youtube.com/watch?v=9jK-NcRmVcw', 'm', 2, 0),
(4, '2020', '				<tr><td bgcolor="white" class="icenter">yyy</td>\r\n				<td></td><td>29</td><td>4 сент 1900</td><td>6</td><td class="ileft">\r\n				д билетного солдата<br>\r\n				<mark>Кролик</mark><br>\r\n				дочь<br>\r\n				<span class="vo"><mark>Курица</mark></span><br>\r\n				</td><td></td><td><span class="vo">1г2м</span></td><td>от коклюша<br><br></td></tr>', 'sign03.jpg', 'https://www.youtube.com/watch?v=AzUB_lsYe0I', 'd', 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `ava`
--

CREATE TABLE IF NOT EXISTS `ava` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `g` int(11) NOT NULL,
  `act` int(11) NOT NULL,
  `god` varchar(4) NOT NULL,
  `coop` varchar(255) NOT NULL,
  `he` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `svet` int(11) NOT NULL,
  `bj` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `ava`
--

INSERT INTO `ava` (`id`, `g`, `act`, `god`, `coop`, `he`, `role`, `svet`, `bj`) VALUES
(1, 2, 1, '1903', 'Drako', 'Дракон', 1, 1, 0),
(2, 5, 1, '1890', '', 'Крыс', 2, 2, 0),
(3, 8, 1, '1883', '', 'Овца', 2, 3, 0),
(4, 1, 1, '1883', 'Draco', 'Бык', 3, 4, 0),
(5, 7, 1, '1883', '', 'Обезьяна', 3, 5, 0),
(6, 6, 2, '1884', '', 'Horse', 1, 1, 0),
(7, 12, 2, '1908', '', 'tiger', 2, 2, 0),
(8, 9, 2, '1899', '', 'cock', 2, 3, 0),
(9, 3, 2, '1883', '', 'haer', 3, 4, 0),
(10, 11, 2, '1884', '', 'dog', 3, 5, 0),
(11, 2, 3, '1897', '', 'Драко', 4, 1, 0),
(12, 6, 3, '1883', '', 'Лошадь', 4, 2, 0),
(13, 4, 3, '1883', '', 'Змея', 6, 3, 0),
(14, 10, 3, '1905', '', 'Свинья', 6, 4, 0),
(15, 5, 3, '1883', '', 'Шушара', 6, 5, 0),
(16, 9, 3, '1903', '', 'Кочет', 6, 6, 0),
(17, 3, 4, '1885', '', 'rubbit', 8, 1, 0),
(18, 9, 4, '1883', '', 'chiken', 7, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fote`
--

CREATE TABLE IF NOT EXISTS `fote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` text NOT NULL,
  `who` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `fote`
--

INSERT INTO `fote` (`id`, `img`, `who`) VALUES
(1, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAOYAAP////b29mRkZFdXV/Ly8vj///n///v///r//wAAANfX1/r7+/X19e7T095bW9xRUf/c2gACAtPS0vj4+PT09OzCwMkAANMAAMsAAO4AAGM5OAoUFPb19NQpKOvIx/vX1fMAAKVPTwABAQEAAC4uLvPz8+m1tfz//0UaGgknJwYQEBQUFAICAhMTE6CgoPf7+/f+/vv6+szR0RUaGhkVFRoZGRYWFgsLCyMjI1BQUObm5v7+/h4eHhcXFxcYGBgYGBUVFQoKCgwMDLy8vOvr6xkXFxISEg0NDQkJCTExMcLCwvf8/Pv7+8zZ2QoaGhQTExoaGgMDAz4+PoCAgIqKiurDwtpmZaAgHis5OQAJCQkKCkdHR9tZWeBsbPb//+d3d/UAAK1GRhUTE2VkZI+Pj/Tu7swAAPAAADEuLu3Pzu2/vs/Pz/f9/fj9/enp6fr6+nd3d5aWlgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQFewAAACwAAAAAEAAQAAAH14AAggEcHgGHAVWHgowIFR0mL4dLVlxlBowFDRYeCDAMDAYIXWYGbAABBg4XCAgxrUwIXhZpMIcHDxgfJzI7RE0IXxhqbYcIEBkgKAnMCVdgZ60BAgkRGiEpMzw8TlhhaMxwA8wbIio0PUVPWWLNcQQKEggjKzU+P1BaYwhrbocLExCQYGGjRw8jCcggCPDmEAMKCEq0uPHjR5QtrSggCsAgAAIXCX4gjPVwI8dWCYAckYIAFCJUASgwQIAjCJIpLV8OOplDSBIqCDQGYLQzgI4hSgjoBBAIADs=">\r\n', 'bull'),
(2, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAAP7+/vPe3e26uu+3uPjt6/79/vr//+rBwOqPk+EQF+VkaPjx8Oe2uP78+f39/f7//+ORkecAAevFxPHIyfjz8P3+/u2oq+0AAOE5QO6TlN99fvPm5v3///LP0PPIyPz//+NkZuY7QeE8Q+WNju2wsPXr6vX9+95eY+JUVeNwdegABd01OeeZney0tu2foe7e3/CWmfj//+kzN+wCCesIE+wAAOacnPCBhe7Bv+m0tuUHDPXU1fK+vvHDxO2Sldk5PuYDDOlVXOzV1eNWWttOVOgJEemAgeVkaeRSU+dUWeNaXeMlLPLg4edCRuwfI+SWlfb29OQYH+NKVOZMUeZBReVcX+tWXOs3PvXX2e3v7vX//+3//+AuNeQhJ+cRF+ImLNo6P+mdn91IRelCRuZKTeMCCeMMFPn9/PDOzd4+Qd51eeiBg+pUWeZnaeh8ftx3eemVmONSVuihovn//+p+gOFJTttrbt1CSOIyNuFESuEzOOeFiedQVuA3O/ne3/39/P79/fX19d6MjelGT+NdYeirruNARuKNj+ZpbeFnaPTS1v39/vT08+q6u9R6feM9Qe+ytOYyNuMzOOJeXuMpMOZESP/+/efCxNdQVdZPT+Rmaed6femUl+liZ/n6+eZVW/j8++yVmOAIDvb6+e7Q0eNjZ+Jvc+VgZeZrbuyiovz8+/nw8Pr29ehGS++foepCR+6EiPjm5gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQEewABACwAAAAAEAAQAAAI+QABCBwIgIeSLGjoBGJ0iRRBgQZ6LNGSps6HRphKETTA0QeTLWrsCHKUydRAAxxMxPjRhMuaO4MeaTol0IGBDidkAHHShQ0eQpA2oQLA0YAHFDOCPPHSJk+hSJxSBTjwwMCHFDSEQPniRo8hSZ1UCUAAwQIIFTWGRAHzZs+hSZ5WDUgQ4UKIFTaISAkDhw8iSp9YEVAgAYMIFhyniInTJ1ElUK0KcMwwosWNIlTGfPCjyEAoVwAWTNBAwgUOI1XIcKwq6hUABhQ2lHiR44iVMnL+2BwFC0CDojB0ILliZo4BAJYexALgoILNGDuSYDljANAiQA8eatceEAA7">\r\n', 'drago'),
(3, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQANUAAP////T09PX19VFRUQAAAHNzc/r///Pz88fHxxsbG/r6+j09Pfz8/JmZmRISEkZGRvHx8UJCQoWFhXd3d5aWlqOjo0FBQTIyMnt7e9jY2BYWFqWlpcHBwVJSUisrKwYGBo6OjmxsbCUlJfb29kBAQB0dHZCQkPf392BgYICAgIaGhv39/Zqamnp6egEBAZeXl0xMTNLS0t7e3gcHB4+Pj3Z2dra2tjAwMNHR0cbGxmVlZVpaWu/v7/n5+f7+/gAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQFewAAACwAAAAAEAAQAAAGnkDAACEoGo2ymw4QIBAWEIPBaFjNCLtiwUmQSEcnA8xZKBoS3Iu0yt2YFWinR8ri8ooBAyPCJRlaTg5TAgd5BhAYHwQogAQ4gwKGBhkgJQQuBDEGPVQGEgQaXE40BidFBwYNBBQGiqIjPqcGDqK1NiuyD7WiOYOoBhO7TgwKp5IbtTUGAUYBqBUcIQYpGxQ2BgcCAEcWHSImKi8xRgBBADs=">\r\n', 'hear'),
(4, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAAAAAAAEAAAIBAhgsMRlDVx1FRj9OOyAjIS5cbhlHWRZNXSZUV1JlRy42IgQIBg0fHDV0jQpWYkhuX1thQlBmayVkgRVVZiRfbUV0bHB1TRIRCQwfHAsDADSWqx10d3F1WFRPPGCEiR91jRCPmyF5fFSGd2dwRAcGBBEoJCUeHRyHnzqZk2tiRg9+ol+OmjCRmzCkpyGWjnOdeVlfOxAQCw8wLCQqLAyEpVOwq01OPQCWy0d6gyieo1Gso0mKg5Gde0xXMgAAChEgFhI7OQEBAh8qMUtlXRp1g3m8rExaUxmo0U1ubx3H0yDT1iKtsoKtlz9LKgQFDxgvIhZGRigxMmyLlleCjUhxa26Ld1BkXR+QsEx0eFKyulGuolOZm6a+oURUNAcKDh85MRVZWTJBQHGgri9cbVuPiHx7YWZ4dxiGp0N2fzzG3Ua1uVOrt6W+qD9SNQAEBx9EQBllbTdBQKG/xjBvc2+hfm5qP1x3bBuDrlR7hTbJ2TfT3UmxvqK8qkRZPgQLCh9PVR9rcSMmJ6/M0DiAj2/Fsm1xSmR8axV5q01vex2gukC4y0vN1qjEsllmUAoUFBlYXhpZXgMDBZHH0iFdd4Ty/H+QeFBcXDmGqlRnYiGUuDevyV7c3bTVymBvWwYVGCBgXy5PQwEDAmuFhlWJlJ7n5xwZFWp/gj11l0NRPyJ5lRimxmDX4Ljc0W1/YgQaGTuDgz50coipsUGPpjdELjJWYRWNpE/AybHUx4WRcgILDEykulCDkRgQDGaYoi94hzE/MBUdHxpwf0WhrKnPvKOlfGOUnE9ydzw7PU+Qoyp/iFl8YwYAABhNTimLkYG8saOrhDhIQE9gWAEBAUZgZTp9jECIjnOWiEVaVyVTXjyGinunlYeTbh8cEwYFBlNINAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQEewABACwAAAAAEAAQAAAI/wABCBRIhAoZOoQokQowkOHAIlXK1ClUqdRAAAIAcEhhw4gVM3YMWTJ1cQCEDipuHLly5s6hS6cGViMQwcMKHEiwoMGDCBMqAL+UWSsg4QOLHEmypMmTKFMqWsCWXTMwAUQLHUq0qNGjSJOqWsGYYTtAIYSLHUu2rNmzaNMqW8KaZUNQQcQLHky4sOHDiBOrW8OcaUtgYQSMHk26tOnTqFMrXMSebVNwgUQMH068uPHjyJOrXMWgcVuAoYSMH0++vPnz6NMrXcaidWOQwcQMIFDAwAEECRSsXcekeWugQWCQKGHiBIoUKhYvAAG+OQBwgoYQKWLkCJIkSlYvZNPAPRPYgKLGkClj5gyaNGqWr2TUwgUEADs=">\r\n', 'snake'),
(5, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAAAsIDgwIDwsIDw4LEg0MEgUECgQECgIFCg8JCz4uLl5AQi4dIBAIDAwEBw4FCAkGDQcECwkFDREOFRkWHRwcISIhJxAPFgEAAD8uMX9paPDT44N0fBIODgMAAAcFCwUDCgQCCQMABwAAAgEABxUVG11SVrasqY2EeHltZlROTEtHSgkAAw4GCQkGCgAAAAYHChASEwUJBgkIDSYjJWNdX3xvaaKXkmxhXXdubHt6epWXljQtLxIMDjcrLC8lIh0MDg4MFERCSWFeYYJ7fn9zbK2inq2hnKacmp6bm5GSkSQcHxQOEJSEg////6+ioiEdIUhPWVhaX2VhZl5VWIuAfHpubD8yL0lBQEdEQl9fXxYNEBgTFQkEB2VZVFtbYDU+Qml6f3J9fXBwc3dqb3FobIqChlhOUiwuMlNUV0lKTjIuMR0bHQYEBxAKDV1hZD9ITHGDiVVWWnp6fElDRFhWWnh1eURITElMUFdZXQgEBxEOESQkKRQXHkRMTjZER2d7gSwrMGVlaJWTl4KHiq+zucnP04aNk3d+hFpeYyQfIw0LDTU5PlReZktSWRYeJ11qckNISldWVXd6hV9gZlZXXKGjqKqvs4SFhkpHRisiIBYSFDs+Q1tkbEVPUxAGBykdGWJkaW5udHdze6qpr7e5voqIizYxMisjIhcSFDE1OiUuNRsmK05GSdrExP/n6K1/eo15eLi+xX14f56dpKWiqYF8f0M+PzsyMx0YGicvNDxBSjQwMNGvr9GVl9hobNVFTvObnquhoK6qp5+XnmdgYDgwMEE1Ng4ICkFJTk5TXH1nXaNzZoxHPMF6Y8yIeo92cTYtKSsaFmJZUn95f2dhYUhDQVhUTh4WFjpBRTA2PX1mYMysorCJfKx7ZXZTRDMuKCAWFzsyMWxnZHVuc3JscYiIhHd1bjowLjY6Pjk6PVpUVJeLiqSUkZOJhWphX2lgYG9maH55eZyamo6MjoB9gWlnYlVNRj8sJQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQFewBNACwAAAAAEAAQAAAI/wABPHjQogcTLmz2LNqUKhcybOgAQPDgwkeTLm34MOKkSleybOkCRPjw4ocTL276NOq0apcybeoESAABw8WTL2/8OHLBiteybesGTAgRAwgUMHD+PHLRqhczbuwIUBAhI0iUMHEAQfLkylezbu0KVBgxQ4gUMXICRfr06pczb+4MWCBBY8iUMXMESQIFC9izb+8OXChRgwgVMi4GTQoVqwk0cPAQYDBho0iVMnQIURIlK1i0cPESZDhxw4gVM3UKVRo1S5g0cfIUaECB48iVM3YMWSJFa9i0cfMWbEiRAwkWNHcOXSpVixg1cvQYcFChI0mWNHgQYTJlq1i1cvUadCRYsUOJFjV5EmU6dcuYNXP2HDhgwWPJljV6FGlChevYtXP3BAQAOw==">\r\n', 'rat'),
(6, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAAJudmpqcmZial5eZlZqdlZ6dlBsVFR0VEiYbFlJEPVFDPGhYTMWohuC2id+uf5yem56hnZqcmpudmaGlm7i3rQAAABwWFhsWEyshGjoyKzIrJ9a+n++9kNiqfp+goI6NjlxdXltdXY+UjJ+dmiEYFhwTEh0TEx0VFwsMCujNp++6j9apfIaIhlFQTxwbHEdITFxfX2lnZAsGAiIZGCQbGSAaFw4NCwkMB//YsO+8jM+me5GRkEBBRBgZGg4QEzc9QjEzMx0YGxIJCBIODREODRYRESIhGf/cseq4iMyle21tbBQWGAYHCgACBB0dHyEeHA4KCT00LkE6NxwWExkQD3tqWP/fseCzisqjekNERhAQEQ0NDzAuJzQwKh0aFnJmXpaJg1xPSDImIMuukP/So9ewic2jdystMRwZGBwaGEdDQUY/ODApJAgJBmFWUHJmYEM4MWFWTQsIC//ZsPbHmcylgNKmeCAgIwoJBSQhHkM8NlRJRU1DPwMFAkA6MzQuKyAZFXxzaSwqJv/tuu/EmMmifdWoeSwqLAQDAjMxMTs3NDYvLj44NhocHBEREBAQEgEAAF1VU/bIpOWyjNGmgd2rexQRDDAtKQwODw0LDQkMD0A9O2tcS///0ea6jua5j9+qei4sLyMhH05GREM9PEhCP8XAttjVwaihlm9lWa6djAEFCEpFPZaBcSkZELSUb92peDo3OwwJCDUvLCskIjErJkZAN5+WibSqmdS+pL6ijIFtXD5APBYSFL2Xcl5eWREMCxcVFSEhIA8TEE5GQU5HOsq5obCZg4RwYBcSEAQHDAMKEIJvVZeUiz4+PAwQERgdHgADBScgI1RNR8a4odq8oLWVf2BSSTwxLKSGZayonKqlm6mkm6qkm6ehmKagl6eilq+lk7unkMWqkMKrjbyjh7Gdhbyfgd2tfd+qdgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQEewABACwAAAAAEAAQAAAI/wABCAywQ0mWM3cOHQoV61czbQEeeGDBY4kWNHgQWRIlq4KzbQEgfGjRg8mWNHkSXRo1C1gFbgIigHDho0kFNXoUYSJFK9izbgMkhHjxwwmXNXsWZSpVSxg0bwQmiIAB5EkXNnwYVTBla1i0bwUojIgRBIqXNn0aaTp1i5g0cAYqVJAhJMoXN34cVUCFq9i0cAcskJgxRAqYN38eVUiVyxg1cQgulKBBZEoYOIAgVVCl61i1cQkwmKhRhIqYOIEibVol1xo5BRlO2JBbQY6gCpxY7UJ2rdwCDShuGKkyZs4gSZ1a8UpWwRyDDSlwHLFChg6hSZ5cVVBW4VwDDipyICC5UqZOIUqfXvVahg2dgw4rdCTBYsaOoUqgYPlili1dQAA7">\r\n', 'horse'),
(7, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAAMiqbMapa8WucMu+g7qtd5qBWaaQZ6WTaG1gMllKJGBSJl1OIGlYIlZFGFtPIoaBRceqbMSmaMitca2YX4t2Q4tqQqmQZaSOal5PKJaARndSG3ZXKrqfTsqrXks/Gn14Pcutb8qqbdS9e7OaUWlSGIlzMpWEPpOIRtLOgOPVg1w5BigOAFU+FLKTS1lRIYeASc2tcMqpbdPBfa6fTKKURsW2adLKf8zDe/PypfXslY97NSgYAIFlNIRnIH94MmpiMMuucMGkZuDXhIqBNmVVI4x8ONjShpeNQuXhkODKddS8Y3RbJIxoKoduJKaYOoJ3MM25fpF4RtzXjbutTqeRSNTIeu7nm8zDevTzmdjEcMqzX3haJXpcHolvK6SMLZCAMLqudbOoa+jgiZJ+Llw/ELSkXuDVkebYivDrjNC+YLmjUHNWHIVnJJJ3KZeCJXtoJ5mPWYp9Q9jJdHRfJV9LIJJ9PLeucNXEftPAccmwXJJ3LotuK3ZaE3xkH3hmH1dFFop/SoB4QtbMdpSCMXRhJLypaKacXrKoXZyHQXxnJmtYGXpjH2VMElU/Ekw3EEw8F4d/SXluQauhaLCiVJSHPLKkZZWGRJWGOntlJ3RfJHNdJmlTIU08FTksFjgtElBCFqCaXYN0QX53RndtP3pmLXFdJHxmKWhRHEw1EVM/EVNAFkYzFzcpEy4mDjcqDkk3Ebq4fIBwQ3ttSFdSNkU8I0U8IWNbP1VPL0Q/JEM4I0E2IjktGDMqEzQpEDwuEUMyE6KpaXNrN3dlMnhlMlhNLkU5HEY2HUc5GkI0GD8yGDgpES0eDC4dCjUmDDgqEEAxFp2lZ6SmaM6ybUgoBzwnC0Q0EGBOFVxFEUgwCywgEUE2FXdqNLGhULepUZGGQ398QmxoLZh8RiENAEcwEVM8FmpSHG5OFIJkIUg2HWdYKndrNoN2Q4yBSmphN1lOJdbZldbbk6WSVkcwDlQ7F25TInFYGolqI2pWKF1QK2BUL2hgOW9mP2VeNlZMKUs9IgAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQEewABACwAAAAAEAAQAAAI/wABQAABAwgUMHAAQQIFCxi0b+8CRAgRI0iUMHECRQoVK1g0cPAESBAhQ4gUMXIESRIlS5i0cPEGTBgxY8iUMXMGTRo1a9g0cfIIUCBBgwgVMnQIUSJFixi1cfMKVChRo0iVMnUKVSpVq1g1cvQMWDBhw4gVM3YMWTJly5i1cvUOXDhx48iVM3cOXTp169g1c/YQYECBAwkWNHgQYUKFCxm2c/cSZEiRI0mWNHkSZUqVK1k2dPgUaFChQ4kWNXoUaVKlS5m2dPkWbFixY8mWNXsWbVq1a9k2dfoYcGDBgwkXNnwYcWLFixm3dfsadGjRo0mXNn0adWrVq1k3dvwceCRw4cOJFzd+HHly5cuZt3b9Hnx48ePJlzd/Hn169euZAnf+BAQAOw==">\r\n', 'manky'),
(8, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAADWFrSaGuB6DuyR9tTZ1qG2Bc296cER6mS+HtDCIuTaJuDKJvCuKwwZ9sQJ8sAh7sjCGvCqOwEGCm01VU4VsSmhyZx15shWK0jiJtT17qj2HtkCazzqj4gR9yQ1vpRpmjDCEsjxFZigNDAAAAGRzZ4iAfgZakzqKsomEew0MDztKUxw0QQAJFAQAAI9UQXxfUz5/qk45L2IrBiwaCEtMR1w2LkMpB7CPaciijouCeXl1cwMAAE05MIBpU6CFepF1ajOEukg/Q5I/EaFhLq6SeKCBb1xAKbGPdZx/ajgxKRUZGighHZp5YKR6V59/a5V6bzSGsjJ4pjJHW1w+N2lKPG9SQmxRP3VYRVEwHzocE11CPIVfU0cYAYpoW4BraH1qYzqDuyKL1BuW20ZlaHJXQVE7KGVOQGBMQigfGnl0a6SWhI97ZmZROn9aT3FMOnFRPjGGuiaKwCmLyU47I39iPoBsV2ZSSCcPC19GPY9cQYJNLmtFMGJFN2hAKm9JNC2JtiSPwT9rjFwWAHBKJTkrHUkxIk0mGiSEsz6UwUiWukeUuEiZw0lxhaFtY4VnUTGHvCSRyDRaZ3MyBolbKRYlLkNbamJVWBuXyDGLvS+KvjKKvzaQyiVznoNcUoJlTzCIvCqPwCxdZ4lHAY9mK0svG5mKa3N+iyeVxjSJtjKJujiLvTmPxyGLxkJKSYZqYC2MwTN7p4ZQHpN8QTE3Sjt+kx6HzySPxDOKuzKKuTiMvTeOwzCSwQkAAEQ1NTCItiyJxCx/w2hLOaZ0Ip1nSU5TNxJsnhuBsx6AuCd/sCmBtC2NxFCavYBETCkhIyiIux+IwiiHvjZ6oXVvULiPXsuPTNOicMSjgNSqg9uofnWDhjKTykWOtX1BIYNdUC6FuSaFwSyHxC6CvSiCsz57lWt8eZ2djq6xppelpmaJnDiCrSWPzDyTzHBgbX5ZPC+DuSqDvCiFviqHwR6IwyeGuTGEsTSFsjaGtzWIvTCLwjOLvzyLujqMwCt9oWljYQAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQEewABACwAAAAAEAAQAAAI/wABQAABAwgUMHD+PPqUwJczb+4CRAgRI0iUMHEAQQL16tezb+8ESBAhQ4gUMXICRQoFCxg0cPAGTBgxY8iUMXMESRIVK1i0cPEIUCBBgwgVMnQGTRolS5g0cfIKVChRo0iVMnUIUSI1a9i0cfMMWDBhw4gVM3YKVSpFixg1cvQOXDhx48iVM3cMWTJVq1i1cvUQYECBAwkWNCMOXTply5g1c/YSZEiRI0mWNHgQYUJ169i1c/cUaFChQ4kWNXkSZUqFCxk2dPgWbFixY8mWNXoUaVKVK1m2dPkYcGDBgwkXNnsWbVqlS5k2dfoadGjRo0mXNnwYcWK1a9m2dfsceCRw4cOJFzd9GnVqxYsZN3b8Hnx48ePJlzd+HHly1atZt3b9BAQAOw==">\r\n', 'ship'),
(9, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAABAoJRgwMCVAPCdGPC5LQEhmVklpV0JeU0NXTk9bUVlbVWRhW3lxaJaFf658m7xhYA0hIRMqLiJBPiJFOitKOk9uWVt1YlNnYEpYTlBdTlJeTk1aUltjYIaAeKV4r7hfXwcYGggZHRUuLhgzMRcwKCpEODZOPTlOQ0FMREBKQFBcTUtjWVJpabGTj6BlmrBWTgQQFAgXGxEoJw8oKRYrLRwxLxkyJBMoHSs2NUZQUU5ZXEdbXpyWj+mgdnIyTYRDTAENEQgZGwsfIAkdHRMpJxctLhkxKxMnHR4rLiFAQylDSI9/gf/Omv+3S6FPRno2TgIQEwkeHgcYGwQWGAgdGwsgHg8pIgAgFgAWGkZEUs+Wf//LmffQetSYR3wgL2IbJgQREgscHAcXFwUVFQkZGwAaFQAcGh0mKbBpWfiJaPicUvC2ZO+6ZvO4UMxcInAoLgMQEQAPDQALCAAMCwAWFAATE2AzLd5jUPNuOORzKOOTLd+zTOe0Wt6aObI3DHMiGAQMD0YtQ34zU0UaIwAUEY9UYsRQS8ZJM8pOKc5fJN6HMOetUdqeS9iMMMdcHW8kGhsaHepkjf9ji+ZJYxceFdFRVJ0vG6QuGrs+JcVPGtF4I92bO9uYQNmQLMNiHGojFwYTD2ApOv9djdxQb3EtIeiBl5tIVoIjFKc0HcJLIc9xKdWGLc5yIM9oHbU8EWwkHAMTDw8RDfBXfOZcg5VBTNJghNFSfKYtMsNOGNtvGOKKKst6HMdZE8FFDJYzGV0vNzAaIrA8Wv9ci/9jlsMtSbsyQNYpP/E9ZrZIXalONMtSM8M8KrArHqEtMWMkPWA/VgUMCzofI640Rv9pm/ZKcMJybuZUdaZCWQAECwAAAAAHCQgZIjtDWYB1iJ+IhgQCBAADBkEkIRwQDRAwKwAAAgAABgYFCRITFkk/S5qDgbKejAEDBAMCBQIMDgslGQ8nGQogGBErIREsHwshEwkVDwYJDQcHDhcYHk9ETZaFgLillQAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQEewABACwAAAAAEAAQAAAI/wABQAABAwgUMHAAQQIFCxi0b+sCRAgRI0iUMHECRQoVK1i0bOwESBAhQ4gUMXIESRIlS5g0cO0GTBgxY8iUMXMGTRo1a9i0cO4IUCBBgwgVMnQIUSJFixg1ce8KVChRo0iVMnUKVSpVq1i1cfAMWDBhw4gVM3YMWTJly5i1bPEOXDhx48iVM3cOXTp169i1bPIQYECBAwkWNHgQYUKFCxm2bPMSZEiRI0mWNHkSZUqVK1k2cvQUaFChQ4kWNXoUaVKlS1m2cvUWbFixY8mWNXsWbVq1a5k2c/YYcGDBgwkXNnwYcWLFi9m2c/cadGjRo0mXNn0adWrVqxk3dPgceCRw4cOJFzd+HHly5ctZt3T5Hnx48ePJlzd/Hn169euZN3X6BAQAOw==">\r\n', 'cock'),
(10, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAAP7+/vb29vb19vX29vT29dPEw65pbMeMk7F2dWk+KGBAIV47IUwtF/T09OrVxMehiNm6q9+3ocihhOzRwJhSRwAAAIlbZNSapF4lH29IIHtKJFk4HPX3+fj7+cKLYHckAHwnEFsUANiIdbRZTa9lVc15aYY/KBsAABIIAGw/Dl81D/v///3/+dKOU3k4ClUnCt6PeadMRoxDJ+KQls93d1ccDQEAAB0IAi0PA/f3+Pn///vx5L1rOIU4DtqBWZc4NUExQtKSnlcaFgQAAhIGABQEAff4+ufFssh7UtSjff+4q6VNXNmJp7pobSwGACIOBSALBBoHAvf4+P7//9Waf8R6Uq5+T9mlXdSZb8aEbnM2FjYPADYVBC8UAyYNA/f5+/b2+JxJLLt7WsGATrh2OdeRTrhxMIxPFFkuEDsWB0UeCSsNA/X7+ufc2p9NNr99VcV1OLVnJs6AOcaBO5VWF3JBEz8YB0gcCywOBff5+vHs7sFmQrxuOrxpM41QLqVZGJBJE3w6C2UxEU8fCzcQBhcEBfj6+/r//9mbfahaJ6lZJ1MmJI1TMlsqD1smCUsZB08cBkETBhsEBfb3+LJ5SkAWAE4gBVQhA1klCXY8DV0qCE8eCUcaB0MaDTIVDPP29/rz5ZldMF4bADkMACgKCUAXCC4OA2EqB00cAkkWBU0cC0UdEjwaDPz///736WYmDB4AAA8AAB8AAiQAA04bB0IZCHJAFEAfB0onDjgcCzwkFGA9JaNuTzwAAEYCBFAOCGEUCVwYBm0sDlolDJFqLEItFGRCLDskFEwvElk2GfDn33s7HW4oFHgwG4E3G3syF3k1GHtJLmlII1s9GUsuFl09HUcpFEcnEk4uFgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQEewABACwAAAAAEAAQAAAI/wABCBxIsCCAAA04NFjIkOGnVoeUBXDQYUWOABgzTjrkiteyAA88sNBhRMoXNnkMHQL1qhczARA+tNixYgqYNnoOHQoFy1ezABFAuOBxhEoYN3sQURIV65ezARJCvOiBpIqYN3wSVRolC9gzAhNEwPCRxMoYOH0UWSI1Kxi0AhRGxPih5AqZOH4WXSpFS1g0AxVIyKiwBEsZOX8YYTJVa5i0AxZKzADCJIuZOYAaZTpli9g0BBdM0AjSRMsZOoEcaUJ1qxi1BBhO1BDiZAuaOoIebUqFy1g1BRlQ2BjyhEsaO4MgcVKV65i1BRpS3CACpYuaO4QidVqlC9k1BhtU4A8oEsXLGjyFJHlitSsZtoAAOw==">\r\n', 'pig'),
(11, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAADZFPDlEPUBKQUFMPz1KPDdGOjVFOzRKOzJHOitBNyM/NiA6Mx09NCNFOStIPzZUSExiUkZjUkBbRTJJMy1ELChFLydJNC9UOCJNNiFBNyo8KmNeTH5hTZx+ZpqOf357blduWmFyXZiIeq6Tiqyal6+qpYyTj3uCfj1PQXd1ZNmtmsyThMWShJxyZ5tmVaOBc09qVLi0o//q683K1LewvtDCzd3X8Pr//9evn4lfTrqZlNTIy9vl8dzv/s3e76unqlZpXFluYtbWyfPc1eLDw6WHh5mEktKmhpZHLVkyFZGKg8HAxdve6ebo6tbf4dDZ3l1tXlJmW11qX6edi+/Bre6vjMR/XZpXM2guFNGpic7U0rC+xLvEzu3r8sfL0NLV22FwY2JzZV5uZFNiVbOzq//hx9iegKuPigQAAJZwXL3D2lJgbgUNFbu7xsXU2NbU3GVuZmZyaGFuY1BgUj9lWP/w3O/bw+X08mxGPv/16LTH3Y2WoT8qOIxmf36LjMXFy2ZpZGltaV5iXVlZUjxHRv/WzuajjvjSxufYz9bn/wAAABAAAL15lzs7PMbIy3JxbW5qa1pXXUlLVExSVv/fyeq+oPK1hc6GYSktO2hlbGFGVPjO4sDBwd3f4Hp/eG9wbl9VVFVFR8ailP/auPHezd/TzQsAAPDKyPf8//35/1FGTvLw89XZ2uXk5n+GfnF3b6KZjtjBs/fJsfnJq/HOvfnZuL6Rbf/kzvDz9+ry9tfb4P3+/+jp6+rp64uMhLa0rfTx9+bf5N7Q0dzKzfPcy/GsgrRvS+XSy+ro5+7t9fDv/Ojw9u7n45KVjpKUje7l4Prq5/zu7f///f3///Lo18G4s+fd2vTi2f/y5/jg0OzDpezJrJiYkI2Ph4yKg4WBe3ZvbWZiYV9cX3BrbGtzZWR0ZmRwZlxeUI6IcurVufrZw/DezaelnaamnqGkm5uelZeWkZGPjYmFhoeDgYeMh4qLgoaIf3+CeXp9dW9wamZiZHp8egAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQEewABACwAAAAAEAAQAAAI/wABQAABAwgUMHAAPfLkylczbuwCRAgRI0iUMHECQfr06pezbu0ESBAhQ4gUMXIERQIF68Yzb+4GTBgxY8iUMXMGSQoVCxi0b+8IUCBBgwgVMnQITRIlK1g0cPAKVChRo0iVMnUKURo1S5i0cPEMWDBhw4gVM3YMVSJFa9g0cfIOXDhx48iVM3cOWSpVi9iNcfMQYECBAwkWNHgQXTJlqxg1cvQSZEiRI0mWNHkS3Th1y1i1cvUUaFChQ4kWNXoUYUKF65g1c/YWbFixY8mWNXsUZUqVC9m1c/cYcGDBgwkXNnwWaVKlKxk2dPgadGjRo0mXNn0YbVq1S1m2dPkceCRw4cOJFzd+GnFixWuZNnX6Hnx48ePJlzd/HHVq1YvZtnX7BAQAOw==">\r\n', 'dog'),
(12, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAAP///+zHquzFptWymNuFBv+cAP+gAL2HNtmtgEgzESEqM/KOA+uIAMFwAKxrFP+MAf1bE/+IAIJTF7pvBSEiIDgrF8tsAGk+CNdyANx3ANh9ANN/Df9vC/ZqEfaWAFA/KpNhHf+OAP+VAP/gjv/54frGf8xrAOWAALFiALFvFP+EAfuKBv+kANl/DWFLJ/+oAP+9Xvr//8/a5zItLcWoj8+cYbJqAWRKKf+lAP+VBf+iAH9SHQANQ/+PAGRFLLXC1MLIxxsiIktNS76mlbSUeYxWC+qJCTkyLO2NBv+WAfOOBf+pAIRQDAYVJ/368YKGg1lDQYFfYZyIdLKbkpplHSMrM2FLKLdyFviPBv+VA/iNBAANJD05MA4REXRPTrd7f3RmVLSdlJtoI4tdHjk2MP+aBP+dAP+UBf+mAAASKVdWTG90cw0RDol8fXpuX7iglJliFVRAJVhGK4FZH/+WA/qOB/+YAAAAIszHwTc8PxofKKaTirmLWXxMCHVHCItfIJViGv+eAP+hADtDVZafqXlSItOLKatgAC8kGNuEDumMEP+bAFNAJwAXQfmhOPL//9bW0cRrAMl0AHBEBPmSAP+SBbxyEV5HKf+zAP+KAP+lEP+pNsBuANdsAMhvAF88Bvx3CP+dBPmUAzUzMNF+DzEoJ6hpC41QAFE+H9OLK8qeakRAQf9dDvxrDuCACEk7JLJrBicvO7eSaQ0XIamZlenErbaejrd4IvyJBvl/CPmNBJxnH35vYbGYhM+ulJiCbwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQFewAAACwAAAAAEAAQAAAI+wABAHCwIcUNgQgTCiTwgIMKHEYUKiwAocOKHEeqjInjJxGlRSJuATAQwQMLHUiskJHzR1ElUKxwATgg4UOLHUmulJkDaJGZUK1yCZwAwgUPJVjM0AnEyJIoV7oEUgjxoseSLGfqZGl0adSrXQAQVBABwwcTLWjsCDKDiRQsgQksjIjxo8mWNHcGOcpUKhaAAAoukIgRwwkXNXgIazIli5eABRhKyADypMsawo82nZrVawCDDCZmBIHihU0eQpA4oaLlC0ADDSdoCInypY2eQpE6par1CyGKGkOkgHGzx5AkT6psKbRBZEqYN3wOTfq0SiKAIlTEwOmDSGFAADs=">', 'tiger'),
(13, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAAPDbx/LXxvPYyfLSvd21mOS+rN2wkZlmQZNbSJdZRd6vnN29q9i4qdOvo+G+q9a0o/PeyfPXxPjk0e7Js+e6nLiMcJBTLnpBG4hUSZpcS8mTet/Jute4sNa1qOrJrNOwpPXizPDZxfzs1u/Eq7qMcn5XOIlXQY9cRYlQQKRjT86Xfd/MwN7AvNO2qOPDptKwp/PizvXdzv/fxLaEYWo/KpNeLZpbQbZ1WqlmR59XO8ykldjHwdy+udu8ruXGsti1qfHk0unSyNOnkX9PLGU6F82ZizkhKJloWIdOKqptSPDc2NLEwdm7r+PFsN/DssqikvTq3Pjl2e/LxpprPXJEGrJ+dGdNUbN/bXM7G6NlMuDMydHBveDHuObIuuzJvb6XhfXt3/no1Naymr9xKZdHJKBmSdCiisONbnxNLadgJ6t4R+HDvPPb0evQxebBr7SSgPTr3/Pj0te1m/SIQ6koGYxGN7V7YJ5zVaFwQcuGP6FRFZ1hM+/Rwe3az62EaMSmlvbp3fPczeza0NOTZ+RuMqxzXriJbK+FXal4R7FxQYE7EoA0ANqie/jk2IplTt3BtvDfy/HWxvrx6cywn71+WLOOea2KUqJ0S5NkRGc/IW47H2wsAKlkM7KSfKZ+ZN/ArezUvu7Xwfv37enTx8CXcrOEaKt+XY9eRYdZPYhhPoBSMGk0DIxDEioAADEAAH1QOefPvfXizv/z4cyqlsuplbqParCKYKuAWqV4VJtwT4JRL2o5FoE8EJpxWNWtj7qXgurWx/jr2e/Vu5BePbOOdK98XptpTIxhOpltRYlcOohYNW8/HWgsBLeSf9q0pJ90XefWz/Lezr+ZfZhgPadzUq94UadzR6NwRaNxRqp4UJdjQo5cPl4wC1EeAVUeAHtII+ra0t+/r6p5WaZsRKBvQqt4TrWDW658WJ9sSK5+WXhKKHZJK3hOK6FtRtSeeayBau/c1MifiLmEYbN6T6dwQJ5pPZFfNpdmPZZlPI5iO4xdN4pWMKJqRMahjE8yJWJDNSH/C05FVFNDQVBFMi4wAwEAAAAh+QQEewABACwAAAAAEAAQAAAI/wABQAABAwgUMHAAQQIFCxg0cPACRAgRI0iUMHECRQoVK1i0cPEESBAhQ4gUMXIESRIlS5g0cfIGTBgxY8iUMXMGTRo1a9i0cfMIUCBBgwgVMnQIUSJFixg1cvQKVChRo0iVMnUKVSpVq1i1cvUMWDBhw4gVM3YMWTJly5g1c/YOXDhx48iVM3cOXTp169i1c/cQYECBAwkWNHgQYUKFCxk2dPgSZEiRI0mWNHkSZUqVK1m2dPkUaFChQ4kWNXoUaVKlS5k2dfoWbFixY8mWNXsWbVq1a9m2dfsYcGDBgwkXNnwYcWLFixk3dvwadGjRo0mXNn0adWrVq1m3dv0ceCRw4cOJFzd+HHly5cuZN3f+Hnx48ePJlzd/Hn169evZt3f/BAQAOw==">\r\n', 'aguti'),
(14, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAAOriJ83UI6jEGsfSIungKL7MHtzYJe3iK+3iKevgLO3gJ+vhKc/TJdPXLdPWKrzJOejiKpy/FHmwDavGF/TkI8fVEfDuFvPiGejAK+XMK+3iI83QJKW/FfPlK/XkJunhJ+riLffoKvruJ//qHNDEN7y3kMC9p7+KUufUJMbKO//7Lv/+Kv/yK+ffJ8LPIOTfKOrhKuvgKa+rH2JkQezt//3///////HAqfPmD4WADCEAFZKDKf73Mp/SGHuzF8/TIO3iLvbrKe7lF8jFq/nx8fPv8PXl9tTTLDYIGkQAEEYMFLi2KOrvHejhLOvhKu/lKpuVFayqvgBTXgAtP6nV1cnFDoB6EDoAAi4AAE0bNN/XJezcNOviLPTqKsa5G4WGewBMZAALHqTAyL623OjbF9fYJcfS+GFDO7NkobqrSurOTO3fLOzjKdnPJtrRF8/An77N3q7G3MXHb66kN/PsF/vzF6Osz1w/L7dglKCAaevOSfXrKfvqKPzzBNzQSLqvma+hqPDZC9zPE+3iGvfrD11KZS8BAKhRgpJ/YO7DV+viL+vfLYeBIXl4Tw1qfgBbgI+mtpKSr+jiGfr2Lvv//4p/dst0trSlTevOSurhJ/rvLsbHq//+/wAwPQAHEaPCyNjSG6KTGUkTMCcAAD8EKc3HLuvbLuzhK+reLY6LBaOlqrfIzajJy8TPLEocGEcADT0ABY9/Jv/9J+jgKPPoKrWtGmprSvri5eixX5V5ESwADD8AEqSbK//4Ov/vKLTHHezhL/LmLuriJujgGrKvabzA3c/U/8yidtfOGmZfK6qiJPv3M5rOFoK5DeHbK+nhK+vhK+ngK8/TIvHnKO/hGOvjEOHXD+nDF+a7J+rPNvryJ/fsJ63DFbHJGPrpLOriLOjjKOffLM/TI+ziLO3iLOzfLOriLufiLt7cLcnQSsLLUgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQFewA2ACwAAAAAEAAQAAAI/wABQAABA4gTLmsWKMp0ygkwaOACRAgRI8iTLmz2LNKEilawaOEESBAhQwgUL234MKKTqpYwaeIGTBgxY0iUL276NNqkytawac8IUCBBw4bRN35scDJKjBq0AhVK1CAiBQycP446rbJRrNo4AxZM2CgyJUwcQI88sbJhzBq0AxdO3LBBRYycQJA+2bh17FoMBBhQ4DBiY8wcQZGM4kKGjVyCDClyHKlChs4gSaBa5UqWrZwCDSp0ILFSpg6hSaFc6VKmzdyCDSt2JLlixk4hSqJe7Vq27RwDDix4KMFy5o6hSqNg8WLGDUaDDi16LMmCBs8hS6Ri9WrWDZ0DDy58MCDRkiYPokulZPly5i3dgw8vfjTZokZPIkymZv169k1dQAA7">\r\n', 'губка');

-- --------------------------------------------------------

--
-- Структура таблицы `grz`
--

CREATE TABLE IF NOT EXISTS `grz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `fot` int(11) NOT NULL,
  `txt` text NOT NULL,
  `usa` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `grz`
--

INSERT INTO `grz` (`id`, `nom`, `fot`, `txt`, `usa`) VALUES
(1, 'бык', 1, '', 1),
(2, 'дракон', 2, '', 2),
(3, 'заяц', 3, '', 2),
(4, 'змея', 4, '', 1),
(5, 'крыса', 5, '', 2),
(6, 'лошадь', 6, '', 2),
(7, 'обезьяна', 7, '', 1),
(8, 'овца', 8, '', 1),
(9, 'петух', 9, '', 3),
(10, 'свинья', 10, '', 1),
(11, 'собака', 11, '', 1),
(12, 'тигр', 12, '', 2),
(13, 'агути', 13, '', 0),
(14, 'губка', 14, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `head`
--

CREATE TABLE IF NOT EXISTS `head` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hat` text NOT NULL,
  `code` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `head`
--

INSERT INTO `head` (`id`, `hat`, `code`) VALUES
(1, '<tr>\r\n				<td rowspan="2" bgcolor="#efefff" class="ileft">\r\n				Скрин\r\n				</td>\r\n				<td colspan="2" class="ihead">Счет рожд.</td>\r\n				<td colspan="2" class="ihead">Месяц и день</td>\r\n				<td rowspan="2" class="ihead">Имена родившихся</td>\r\n				<td rowspan="2" class="ihead">Звание, имя, отчество и фамилия родителей и какого вероисповедания</td>\r\n				<td rowspan="2" class="ihead">Звание, имя, отчество и фамилия восприемников</td>\r\n				</tr>\r\n				<tr>\r\n				<td class="ihead">Муж.</td>\r\n				<td class="ihead">Жен.</td>\r\n				<td class="ihead">Рождение</td>\r\n				<td class="ihead">Крещение<br></td>\r\n				</tr>', 'r'),
(2, '<tr>\r\n				<td bgcolor="#efefff" class="ileft">\r\n				Скрин<br>\r\n				</td>\r\n				<td class="ihead">Счет браков</td>\r\n				<td class="ihead">Месяц и день</td>\r\n				<td class="ihead">Звание, имя, отчество, фамилия и вероисповедание жениха, и которым браком</td>\r\n				<td class="ihead">Лета жениха</td>\r\n				<td class="ihead">Звание, имя, отчество, фамилия и вероисповедание невесты, и которым браком</td>\r\n				<td class="ihead">Лета невесты</td>\r\n				<td class="ihead">Кто был поручителем</td>\r\n</tr>', 'm'),
(3, '<tr>\r\n				<td rowspan="2" bgcolor="#efefff" class="ileft">\r\n				Скрин\r\n				</td>\r\n				<td colspan="2" class="ihead">Счет умерших</td>\r\n				<td colspan="2" class="ihead">Месяц и день</td>\r\n				<td rowspan="2" class="ihead">Звание, имя, отчество и фамилия умершего</td>\r\n				<td colspan="2" class="ihead">Лета умершего</td>\r\n				<td rowspan="2" class="ihead">От чего умер</td>\r\n				</tr>\r\n				<tr>\r\n				<td class="ihead">Муж</td>\r\n				<td class="ihead">Жен</td>\r\n				<td class="ihead">Смерти</td>\r\n				<td class="ihead">Погребения</td>\r\n				<td class="ihead">Муж </td>\r\n				<td class="ihead">Жен<br></td>\r\n</tr>', 'd');

-- --------------------------------------------------------

--
-- Структура таблицы `koys`
--

CREATE TABLE IF NOT EXISTS `koys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `g` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `koys`
--

INSERT INTO `koys` (`id`, `g`) VALUES
(1, 13),
(2, 1),
(3, 14),
(4, 2),
(5, 3),
(6, 4),
(7, 5),
(8, 6),
(9, 7),
(10, 8),
(11, 9),
(12, 10),
(13, 11),
(14, 12);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
