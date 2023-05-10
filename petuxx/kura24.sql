-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 09 2023 г., 00:16
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
-- Структура таблицы `fote`
--

CREATE TABLE IF NOT EXISTS `fote` (
  `id1` int(11) NOT NULL AUTO_INCREMENT,
  `img` text NOT NULL,
  `who` varchar(255) NOT NULL,
  PRIMARY KEY (`id1`),
  UNIQUE KEY `id1` (`id1`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `fote`
--

INSERT INTO `fote` (`id1`, `img`, `who`) VALUES
(1, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAAN6iJ9+kKNeiMJp1KUQzFBILBAsIBQ0HASQVBlk6E3RMFnZPHFE6FQwKAwwHAWlPRE4yDK9/Jf/GOP/TN//TOuixPH9hKgsFCAAAAINeI//CPf69OXBUI1dCOA0HA1E0C7mIKv/BOv/NOPG9QXRaJAAAAWpMGOKcK7aELk5ANmk+G1A+HwAAAy4bA9OiNPu9M/K0OFtDGwwAAMCKLLh+JxELBSMdFEMBA1ANBndGH1pCGwMGBRYDAciVMO2nLLaINItgH5pjGhkTBw0JAkYABT8AAzoAAk4JAX1RKwoIA0UxEb6AI6l1JQAAAm1MI4pcHxMOCA0JBEcAB0IACDsABkIABVkQCkQyHhMLB5pnJ4ZbH4FaJYhbIQIAAA0JA1YABkgABjkAAkQAA0YAAEs1IR0PCZRhIHJPHhEKA5BiJHpSIBELBmEABF8ABU8ABk4ABU8AAD4qGE0sDpZeGUcrDTAhDZJjI2dGHxUOCmAABV4ABVEABV0AA3cfFxwJAH5RH5FeGh8PBk41FJNeH1o6GRkQClIABFEAAFstHAEAACQRBZNdIItbGmdDFJZeFmNCGyEUC2MABlsAA1AAAGMbER0NAlk5FpJZFoNYGa18KteWK4xmKx8QB2UABmYACFkAAWMqHAQAAKFxMLN5I5BnKMOKKt+aKY9mKBgKA2gAB10AAEYjF8yNMb+BHoNbIc6UMuahKpt0JxIIA2YAB2YAAVQMCgoAABEIA+SgMNaXJYBeHdabNvGvMr6VNhIKBmcHB14GB0gFB1MkDdCTL9SZLYBeIBEJBrCELeGqN8KYORUNBREOBwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQEewABACwAAAAAEAAQAAAI/wABQPCg4gYRKV/Y5MkTqVOnWZ0CRMCwAkeRKWDa6GkjyVMqhwIkYGCRwwiVMG72GJr0SRWtXwMmfMCg40gVMW/4HKIEalUtYAQogMCwA4mVMXD6IKoUCoOtYAUqhGiBIckVMnH8JMKAocstYQYsiHDBY2QTroosiWKFa9iBCyNe9FCCpYycP4sujWqVixgCDCRg+FiSxcwcQIwwkXKlq1gCrjF+MNFyhk4grhhKYKihIINmzKBBG1ugwYQMDGfR1BHUKFOpV7uOMdhwYgYQJ1vS2BnkSJMpWLyQNeCAgkaQJ1zU3CH0aNOpWL2SOeBaQwiULqExK3vQIYWNIVG8rAvBUwgSJ1SyfC0LCAA7">\r\n', 'bull'),
(2, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAAAMDCwQDDgMDEAMEEgQFFAYHFw0PHwsNHQcGFggHFwYIHAcIHggLIQsOKAMDDAQDEAMEFQEDFgQDGAMEFwQIGgkOHwQKFwEGHAMGHwEGKAIGLQMMKwUOMQMBDgIDEAQEGAEDFwYHIAUGHgIFHQMFGgAEGAIGHwIHIgMJLgMKOAENOAMPPwIBCwIBDAIDDwQEFQEDGAMEHgIDHQADGgAEHwAIMwYMRAcRTgkUXAgUYgUWXQYWWgMCEQMBEQQDFgMDHQIEJgQGLAMGLQMHOAYOVQ4dgxQnmBIpnA0tngoplgoiiAkgfAQCFAIBFQEDHAEDJAIENQMHPAYLShMaeRcxqhc80xZF3BVA1hI+zQ40uQ4sqAspmAUDGQUEHgIFKAMCOQoFYQ8ThgoithU99hNb/w1e/whb+w5V9hFN8w9C3hBA2g89xQUDIAAEMQgFXhxMvUvh/zTa/wmJ/wOK/wB//QBv9wZk8wpY9Q1N8wtP+BRS6AQCFwIEHgADLxULcCyk8CH13CDh1Aqz9wCd/wCL/wF2/AVp+Qpa8g9M7A9L7xFN4AIEHAACLA8Gaxhm2jHz8C/n7ACM7wCB/gB4/QBr+AFi8wZY8BBP8Q5G6wo8yAUDGAYCGAEBKAcEVgwSmAYpsQIxyAU36AZQ9gdX+AxY9gxV8gtN6BJG5w8+2ww0uAMDFgIEHQACKAIGPgYIVAgSaw4YjA8jpxMzyBc/4xVG7A9G6g1C4Q071Qo3xQkuqwQEFgIFGwAEIAIGKAAFMwAHPwMKTwENVwISagYbigkkmwgmoAwppAkroQksnQgnlwcDFAQFFwEEHAIEIAAFIAQFKQQENAUIOgQGOwIHSwAMVAAQXQYWcgUadwQeeQYdegYEFAEFHgAFHgIEIwMFKQIIKwIGJwQGLQEINQAIOwMLSwIOVgISWwMVYAMEEQQEFwQEGgMFHQcKJgYMKQIIJQIFJQMHKAMHLQMJNQILPAMNQQMQRQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQEewABACwAAAAAEAAQAAAI/wABOHDAggcTLlz27NGkSpcybegABOjQokeTLmz4LNq0ateyZQMCPPDgwocTL236MOLEihezXekEQPjw4seTL278NOrUqlezbeoGRAABAwgUMG/+OPLkypczbkElhIgRJEoYOIAefXr161m3dQQmiJAhRIqYOIEggYIFDJo3dgUojJgxZMoYOYIihYoVLNq3dgYqkKBBhAqZOYMkiZIlTBo4dwcslKhRpEoZOoQmjZo1bFq4dwgumLBhxIqZOoUokaJFjJo4eAkwnLhx5MoZO4YqlapVrNq4eAoyoMCBBAuaO4csmbJlzBo5eQs0pMiRJEsaPIgunbp17Fq5eQw2qCPQoUSLmjyJMKHChQybOXoNOKzYsWTLGj2KMqXKlSzbuXoBAQA7">\r\n', 'drago'),
(3, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAAHhobW1UYVQvSk8hREUQPVUPTmQPYXYadHEhaWY9Q0s5LigQDVEXH4cwQqFBc20tXjAeKzAIOFMEXnAWdXUSeosQhJkMkKMKl5sWg3dEQTIcCigQCHIpLoUeJZcnUmkgUkcwPoozhp0MlZkPhpodhp0nf7FDjJ46fHkrUJx2YzoiDzshGmIeIHgUGshUhIk0b00vOKBUeqU7f5Q5Zno0TD4LFGQzNTgNDQ0AAHZcSSwWBUw1LE8bGl4OEr9Qgokxc0w0OF9CQh0AAUwlHoJWSHZOQIBNRXxKR1c3L3paTxwFAFQ+NjMOCz8GDJk/c3ElZyMXGltLRVxAPXxESXYvNmcqL3s9RnA2QT4fH087MyEVBzwwJh4CAjIEFHsyZUoOSh4VHEo6OkgnLHE1RXMrP1AYKE4aKk4iMSwXHDsuKxoSCC8lICYLEy8JGVofTz8PQx0WIT42Okw3PVMrN1wxPFQ4RFE0Q1I5SCcdJjQsLRoTDh4WFScQFScKEkwWXEYUUyQZJywlLgcACDMhMioXKxUIHzskPxoFHxIAFzsuLUM2LyMSE0wlKWEqMLtKrnkqc1tDUpxkkJxDn6dPqq1NqqxPprdVrrJSqbJVqIdhYVdDNCsODHs4QaNDUflnxYc3c08rO7FGjMQZpMIXnr0PlbcTj7QQjKwKhZsFdWw5PE87KR8DAF4cIX4hMJEWVEYMMVcuP4E1V4cZXIwdYYoeXooaXo4YYYMNXH8TVVswJ086JRIAAEwMEW0UKZsoYj0PMGM/SiQHCR4AA1c0NDIOCTwTE2g4R1EjN2E3QFk7KnVgTBkAAGAaIpw3XbAzgD0UN3lfX0UqIJtrW8uLdMWHaKhqVrh5eXZCQlQxKmVEMpN0ZDwLC3cgJ81TfuRasD8WNXJcVGdFPY5RTp1STYY8NY1DPaBVV5pdWXpXSjwdCl8+MUcXE3QkKrpQdKU5eDMTK4BrYIhvZZFtZpFpYoxhWoBTTXBEQGVBPWBFP2RLQ3BYUTgdGysGEiwGHCgKIyAPISH/C05FVFNDQVBFMi4wAwEAAAAh+QQEewABACwAAAAAEAAQAAAI/wABQAABAwgUMHAAQQIFCxg0cPACRAgRI0iUMHECRQoVK1i0cPEESBAhQ4gUMXIESRIlS5g0cfIGTBgxY8iUMXMGTRo1a9i0cfMIUCBBgwgVMnQIUSJFixg1cvQKVChRo0iVMnUKVSpVq1i1cvUMWDBhw4gVM3YMWTJly5g1c/YOXDhx48iVM3cOXTp169i1c/cQYECBAwkWNHgQYUKFCxk2dPgSZEiRI0mWNHkSZUqVK1m2dPkUaFChQ4kWNXoUaVKlS5k2dfoWbFixY8mWNXsWbVq1a9m2dfsYcGDBgwkXNnwYcWLFixk3dvwadGjRo0mXNn0adWrVq1m3dv0ceCRw4cOJFzd+HHly5cuZN3f+Hnx48ePJlzd/Hn169evZt3f/BAQAOw==">\r\n', 'hear'),
(4, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAANnHktfGjNfGh9nHidnHlNvHkt26fMybS+G5aOm4Z9KZUJZaGaVpJsmRQ9+uXN25adfGjdbGitjEidjFjtrJlubPkKx8NdmjUuW2aNCaSNaaUYlMDeWtZfbGdei+bd23ZtrGjtnGi9fEi9XGj9jJkdO0aIpRBqNoJat2N7aDP6x0MWovAIxREaxtJbh4LdGhUtrGkdjGj9XEjNXGk9nJmeLRmuLQlu3eq+bdqvDblN+rX49UEeOsW/m9Zt6pUui/adnHkNfHh9PEgtfGk9bFitnGmdnFm9rHldnGjuDGgdWcTolNDLJ3Lu2vWNqfSuqwWtnGkNrHid/HhdvFdtTHbdXHjtfHl9rHl+PQkduiVZNWEbaBNOzHadqoUuCgT9nGkdvEgN+3XtGlRdbCc9XFj9jHl9rHm9vKm+DNjd+nXaFhGsCHPeHBcty7atyrWdnIkNnGedu5Wdy2WNjGgdTDhtfFkdnHmtvIjdO1ZOKsWbN0KcKKO+XFeNq/duO8atiyZdy8Xty/Yt7BZNrGg9fHktnIk9vJmd/HhunGceWvY7p9NMqUR9SvaN7EiNexZ9yzVNKtSt3GeNq/aNzHfNjIl9jIktrJjtewZNmjTqpuJI5RDZlhGdGoZOXUod3KjtzEbNK5WOjGftORP96+ctjGlOTJkOKxaOapWaZmHrV2ML2APcSWUejZnNzIitzHe9rEZeW+ZNOUNtu9ZNjDh9nHltrIj824dtq+d9yzZ7R8M5NSFIxJBL2JPdzBfNfEddPAbt3Igta9ZdjGZ9jFfdrIltzImtrMmdbOkO3VjdOhVLJzLsiHOey7Z9rDddrHf9nIj9nInNfHidjJfNvCgdrGm9rGndnJltvIhfDPgsGJQJJREJNVEOvJf93Hh9jCddzHjtjHmdrHktXBdNnGktjHm9zJmOG/fNGaUpdaGJJVFpxmI+zTkNrIjtjDddnGjNrHltvHjtbDfNjGkNG0eMWPTaNnJ55kI8WVTt/CfdvIjAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQEewABACwAAAAAEAAQAAAI/wABQAABAwiUL2/+PPrkypczb+0CRAgRI0gUMHAAQQL16tezb+4ESBAhQ4iUMHECRQoFCxg0I0UGTBgxY8gUMXIESRIVK1g0cO8IUCBBgwiVMXMGTRolS5i0cPAKVChRo0gVMnQIUSI1a9g0cfEMWDBhw4iVMnUKVbpCixi1cfIOXDhx48gVM3YMWSpVq1g1cmUQYECBAwmFM3cOXTJly5i1ckcSZEiRIwkWNHgQYTp169g1c/MUaFChQ0mWNHkSZUKFCxm2c/QWbFixY4kWNXoUaUqVK1k2dPUYcGDBg8mWNXsWbVKlS5m2dPYadGjRowkXNnwYcVq1a9k2dfcceCRw4cNJlzZ9GnVixYsZt3X4Hnx48eOJFzd+HHlq1atZN3b5BAQAOw==">\r\n', 'snake'),
(5, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAADiMdQJtTAFnRwBjRQJfQhhmTTFzXTlxXBxZQgZRNglQOCZ4dB+x7gGv+gGw+gGy++f18mmrmABUMgBQMABXOABbPxBiSzxuXCdhSgJSNQBLLQVOOASi5QCw/wCw+gKx+/3+/v///+T370uTfQBHKQA9HQA6GgFTNgA+IAAyEQAwDhBOOACU1wCm+hC19ia59v7+/tnq5Zm9s4WwpYWto6nGveXv6T7L/wCr/oPk/vL9/cHi1l+2mTeeelWnjcXo3zC7+QCf+QCs7qHe9WO1mQBpNABwOwBqQABaMyB2XOjv6f39/f/+/f///T+99wCe/A6u94PU+er48UWihABxQgBzTQBvTABmRluMeufq6P/+/lHE+QCb+lvO/+z7/v///jKRcABjPQBqRwBjQRtlTkl7bdPi32zI+gCS9Aii7ofR7/L99Rd/XwBZNQRnQz+Bbk17azxkWeDm4oTN/ACR9y2x9dLt9uDz7QJiRQBIJx9fTSZhTgZNOBpZQ+j78pDT/ACI9gCO7GW77NXl4azIwtDj3vj//VmPfyBWSBRKOAAcCAARADxoWf//957a/gCD8yus+NDy/qrJwmuklWejkdnl4v3//uvv7uHw7P7//7Lf/gB87QCK5nK77JvGvZLFuIC0o6fIv/b19uvr6+Pi4+7u7sDm/gB47xOU6sXq/JrKwGSci2adiGCZhcbg2Pn6+dXv+gB26QWI6Mbq/nqpnl2Zhnu1n2unkmqdjPX3+P/+//79/vD7/QB65QB46Kva+Z63ravEuqjHu7rWytXp3/P38/v8+/v9/P3+/fL5/kSg7A5/6iCF5AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQFewAhACwAAAAAEAAQAAAI/wABQAABYwcRKTBggBgkyZMqWsACRAgRgkeRKV8oEpr0aVWtYAIkiAjRwwgVMGtCFKIEipUtYQMmjAjh40iVMGzuhKgUqtWtYQQokAjxA4kVMW3wGKLoChexAhVKxAiR5MoYN3kOUQyRq5gBCyZkhFCChcwbPYhCiAqhy9iBCydmUMxSBs6eRJZGhYBxDAEGFDS2monDR9ElUnuRJciQokaIJRTl9FmEqdSrXTAUaFBhIwQTLRT9MMpEMeGCDSsoNgmRMUQj1l++wGDAgcUNIE62nJnzx5EmU7B4JWvQoQWOIE+4oKED6NGmU7F6KXPgwUUOIVC6pKkTCBInVLJ8LRR78OGFjiFRvKixIyhSp1SzfjELCAA7">\r\n', 'rat'),
(6, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAOYAAJvKpyGkIzeuNz+xPx+lHwCYAAebBy+rLxmhGwyeDP///+j16O/474zQjACPAACZAACVAAqdCvP58wKZAgCWAA6eDuP14zOsM83tzY7UjoXOhQCQAACaAACUAAKaAgCSAACRABShFACEAC6qLgCBAAudCw6dDgCLAACXAMPpwxujG3PJc3rIeo/Sj3jHeJbUljywPACOAJLTkobNhp/Yn0O0Q3bJdj+yP0W1RTuwOwCJADGrMRKeEiqoKgabBgCNABqiGtHt0ez77InPiQCTABKhEgCDACOmIwCMAOn26QOZAx2iHwydDBCfEMnryTauNgObA3zMfNfv1jGqMxGfEeDz4OT05Pb69nvJexGhEWvDa/3+/TywO4nRiZDVkK3drZXVlT+1Pw2fDYXPhYrPigCHAE64TFS7UrXTw3S+fWe6bwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQFewAKACwAAAAAEAAQAAAH2YAAgoOEhWgBCRUgKA8PFBRAHxtUEzFpAgoWISgQjzlBRUxVXWVqAwsXIgkUBSg6B0ZNVl6lAwoYIyktMjY7QkdOCgpmpgwXJCouMwU8CjFPC18OpgoZJSsvNDc9ChRQV2BGagQNGiYsMDU4PkOdWGGlBQ4bJx0xIB0/KEgODh8nago84DCwEQeBD6JkgRAjIIQOECN2IFJAgRYxOtQYiOChkccHBSYo2DLmh5oDEoSpVJlE5RmNEz6AmEkThBJhZJAEfISip08KD6Rw6VAKgdGjSJdMCWA0TSAAOw==">\r\n', 'horse'),
(7, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAAIESE4ASE38SE2ENDTMHCBYDBRIDBRMDBBMDBRICBREDBQ8DBQ4DBQwDBAsDBZMWGJoXGjoHCAgBAggCBAkCBg0DBRIBBRQBBRQDAxQBBBMBBREDBJMXGDoDBRAABA8CBBIDBhIBBA4BAwsCBAYCBgoDBRMCBRQDBVsKDCYAACABBRgDBhQDByMEB1MJCEQEBRcBAgwAAxIBAxcDAxACAz4DBDsBASkCBBQDBhUDBhEDA0AHCUgEA1EGCHQOETgGBxABAzEDBDMEBDACBDwAAioCBBoDBRUBBA8DBgUCBAwBBDsBAk0FBnANDoIUEy0BAjICBCkBBDsEBSwCBD4AAikCBRoDBgwDBRgCBSsAAksGBmoNDV0KCyAAADcCBDoDAzUDBC0CBEUBAyACBRkCBCcCBCEAAiIBAk4FCE8HCE0GB0wFBzwCAzQBBDgDAjoEBEIBAzIDBFcHCUgDBWQKC38REn8SEmULDFMIClcJCk4GBy8CAzgDAykDBjoAAyoBA3IOEIkTFYcWFoMUFYQTF5EYGH0RFGgNDW0OD2gMDVEIBzABAzcDBCYDBS8AAVEICakaHJwaG5oZGoMTFX8SFKEbHZ4aHYITE3sRE3QQEjsDAzMDAx4DBiwAAn8RE7AeHZ0aG6wdIIQTFXEOEY4XF7ggIqIbHZQXGoQVFH0TFFgKCSwDAxMDBikAAokTFLUhI54cHaEbH0EFB4kVF7wiJbEfIrAfIHgREJUYGJcZGTkGBxMEBxkDBWAKCrcgIcMiJcIkKJEXGJIXGKYaG6kbG3QOD6McHVoJCp0XFtcmKEYMDBIEBwcDBQMBAgsCBUUMDXkWGG4RElAMDo0XF74fHn4PDoYVFjQFBRwGCQIDBQsFBhgECBkEBx4GCxgFChUECRMFCQ0ECAwEBwsEBkoOEE0NDgsEBwoEBwoECAkEBwgEBwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQEewABACwAAAAAEAAQAAAI/wABPOCAosaQKWGK9GnEidWuZdsCQOiQwgYRKmLg+HHUqRUvZtwERPCg4kaRKmPI/HnkyVWvZt0GSPiwYoURK2TiAIL06ZUvZ94ITADBAscRDWXkBIoECtavZ98KUAihIQcSA2bmCJIUKhYwaOAMVBAxQkeSK2foDJokSlGwaOEOWBjRYocSLB3qEKI0SpYwaeIQXJjggseSLGjsFKpEatawaeMQYCDxogcTLWnuGLJUihYxauQSZCgBw0eTLWrwHLpkqlaxauUUFDAR44cTLmvyIMJ0ypYxa+YWXDghA8iTLmz0JMqE6taxa+cYaFAwIwgUL22+KDqUChcybOgaICRgQONFlC9u9izSpCpXsmzpHGwwYECIFDBv+DDatEqXMm3qBAQAOw==">\r\n', 'manky'),
(8, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAAAMOgQQDlQUElRIRmTc4rUBHtwMLhgUCmgQDlAQClQAAkAAAkQgHlQAAfQUGlB0cmp+h1v///5ia1AQJjAQBlwMDlAMClQAAi2dkwCkqoAAAhxoXngQHkAQClgAAkwAAg8rL6f///sDA4QAAhgAAlgYDlgQFkwUClwQDlgAAlAMBk/r6+/r4+7Cv2gAAjwAAjAQDmAYDlQQElgAAjgoLl/7+/kVHqgMFlwQClAUDlAMFlgcFl1pbtzw7qQAAhQ4Omv39/R0amwQDlwMBlAYHlQQElSwspYyLzMjK6gAAgTo6sQEClQIBlAsMlwkGlU9StRANl7K13AAAbJKR0Xx/xgAAigUFlwMBlQsMmHh4yJKQzLu43gAAewMClAYGlQMFlAMDlQAAiT48q////OHg9AUDmzw6rc/T6tzZ7r+/4QUDmAMDkwMHjnd0xAAAfGZlvpqY0QIJiwMCkwAAiElIs0VCqwAAjQUDlgQMhwUAm0JArdfU6C4spQEAkgQQgAUDl0xNs4uKzjo4qgYElgUFlggLmRcephQeowAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQFewARACwAAAAAEAAQAAAI+gABGJjAwYQMHUUOfjHBJg4ePwEOUOhwwsMOI05cgDmBgkKePwEQVKgQ4AIPF08WhFGgQA7JADADoJgR4QiULGLMzHhhIWbIABp6IIkSoWiEBShgJrDgIcUMH0mkaBkToc2cmAoufFBB44eSKUXPuNGgIOkCDCCMqkXzho4eQAEYGK0BpIbREEX3BArQIEKIFWq3kEkDpw4fQQEcFGVhlAqXDx+q2FkwKMCDoi1sBImcoowaNXcCEBIAIYIIFzNSLLEiBMWakUOsDIiQYcSLG0IQIOjis08hAhE0kICBYwiTK0Ms4EgQoI+hAhI2lIiRg0gTLF6KJNR+KCAAOw==">\r\n', 'ship'),
(9, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAAMKksLysyrex4LS19LG4+6+5+q+5+bS6/La19La06be54Lq2zsStmMuiJ8GdLJOUlMKlsbqsybSw3q2w66y29qu9+6e59rC5+LS087Wy6bW/6LW41cOsm82hCsqgGZSVlMOlsr6qxrKy3qq576zF+qnJ+6zK+7DI/K699bS06La95be62MWsmNKoFsqiEJeWjcGosretyrC/7KzG/KrG/avE+anF+6fG+qzG+7K35ri74re71b+tls+sHMqmGJ2YicCmr7Ouzq/F+KrE+abF+arG+KjH+6jG+6jH/LC/7rW44rW8172vrdOvMtKuKKGah7+lsLKv2K/H/q3D+qvF+azG+KrF/KrI/7DI97K65bS+4czFztu9YqiNPlRGO8GmurGm2K3F+ajA96vD96rE+KjH+qrF+KnJ/q7I97S75cDG27+2uwAAABEGDsGgvLig17LC9qbE+KjF+6nE+ajG+KjF96jI/KzB8bG34snM4nxudAgAABcACRIEDMGdwcGg2raz7arG/KvG/6nF/6nH/6rL/6/N/7S9773A69TT6SAJEUEULzYOJhwDEr+awLmdz7eo3a2676zF/bbV/7TP/rLD7Ki02q+x2tTd/5ePoE0RMVkUNkERKr2Yvr6gzLiq362x567A+MDN/DgdKU8XHGgkJmgiJW4/SFA0Rm5YgYxnmVciUUYUNMKbv8CezLyq3bGw5LS98qSKn1QaFnc7OX9ARW8wN3RCQjMKFn9pmKug3Mq+/ZqLtcGXt7uZxLun17Sv4Lq+7Y5qeIJEQKBfXLZ3cpxfXZFmbBMAAzQaKINmd62Zq39tiMWZucCdxbul0rev3b265bGTo200McF7cc6CdblvZ66Ilo55fa98fJ1gXg8AACoKGsSat7ydv7yn0bqq17uw2sq21Ihtg2NHUW9QVrCSotDF3t/OylMoJtWanYdcYVc8S8WYsMGfu76nyL+sz7yrzLytybuvybyyy7uwxruywr+yvsSxqXVXTzMKEU0tOo54iQAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQEewABACwAAAAAEAAQAAAI/wABQAABAwiUL278OOrUqlezbu0CRAgRI0gUMG/+PPLkypczb+4ESBAhQ4iUMHAAQfr06tezb+8GTBgxY8gUMXECRQIFCxg0cPAIUCBBgwiVMXIESQoVK1i0cPEKVChRo0gVMnMGTRIlS5g0cfIMWDBhwwiSMnQIURo1a9i0cfMOXDhx44gVM3UKVSJFixg1cvQQYECBA8mVM3YMWSpVq1i1cvUSZEiRIwkWNHcOXTJly5g1c/YUaFChQ0mWNHgQYTp169i1c/cWbFixY4kWNXkSZUKFCxk2dPgYcGDBg8mWNXoUsUmVK1m2dPkadGjRowkXNnsWaVKlS5k2dfoceCRw4cNJFzZ8GG1atWvZtnX7Hnx48eOJlzZ9GnFixYsZN3b8BAQAOw==">\r\n\r\n', 'cock'),
(10, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAAACw/AG0+QO2+AS49gi58wm78gu/7xHC7BHD7AjA6wrA7hS/7BK03xzA5xnC5RzG7ACt+QCw/QGy/gC2/wG5/QC4+gK+9wu/8hHD9wS/9QPG/xG8+AB7ugCKxBa98yzH9QCl9gKt+QGw+wK3/wi8/we4/gnJ/gnD8w7F+QbD9RPH/AqYzwF3qAB4o1ux4G222QKl+gOr/AGu+gS1/wq6/wCKzwm/8QbA8xHC+gux5wmg1gB/sQuEqQ+HpqrE6qm6yQSl/ASs/wCt/QKz/wWx/ABzvBK37xbD/xW49gCGvgKDuAWBqw6OrgCAozeJqYiqvAGf+gSy/wWx/wi6/wWw9AF/wQCBugBzrwB5sQJ0pg6FtBGLsgmIqAWCpAJ6njOOsQOj+wex/wFovgBirQCJzxCa3geOxQaIuAiMuAF9rAF9qweHrwiKrBWRtBiStyihywSl+wev/wBluQmZ3gKi7Aae5gKGwgqIugCAsSi87iy67Cqx3xGQuhGFsRR8pR6Jsgao/Qax/wuj9Ai3/wa1/wmy+QSLyBCEvAOAtCS56wB0qwZ1pQVwnRJ0nyV4oSV6pAWq/gCs/gC1/wTA/wuq5wJ5swR2rAyBtRFkmyJ2pSx/pyp1myJtkB5ylwOp/QCq/ASz/wSk8Qay/wOu+AOQ0Q58txNvphp1pRhijR9xlh5zkUGSrl231WHE5wOn/QCq+wWn+QBfsQp0xQN8xwBvrQ5ppRNnnhV3ph6LtlzS+mvZ/nfm/2jc/1vO+AGn/ACq+Qax/gBbpQJloRaj3QKLwwl+thaUyBrD8BvJ8jXN+EzJ9lbO9VjM+AKo/AOt/AS7/xOt9BHA/wTD/wq/+BrG+BDF+QTH+yDH/ETO/1fR/1nU/1bJ7m7F6gKp/QSv/QCz/gGx+QC0+wCz+gC3+QK/9gTB8wnF9STH+kDM+07K+EnO+XDD56/D4wOr/gKx/QS0/AW0+wSz+wO0+QO3+Ae+9gzC9BTE9CHG9TLJ+TrH9znG82W84KatygAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQEewABACwAAAAAEAAQAAAI/wABQAABAwgUMHAAQfLkylezbu0CRAgRI0iUMHECRfr06pczb+4ESBAhQ4gUMXIESQAFC9izb+8GTBgxY8iUMXMGSQoVKxg0cPAIUCBBgwgVMnQITRAlS1i0cPEKVChRo0iVMnUKTRo1a5g0cfIMWDBhw4gVM3YMUSJFi9i0cfMOXDhx48iVM3cOVSpVqxg1cvQQYECBAwkWNHgQWTJly1i1cvUSZEiRI0mWNHkSXTp165g1c/YUaFChQ4kWNXoUYUKFC9m1c/cWbFixY8mWNXsWZUqVKxk2dPgYcGDBgwkXNnwYaVKlS1m2dPkadGjRo0mXNn0abVq1K5c2dfoceCRw4cOJFzd+HHFixWvZtnX7Hnx48ePJlzd/HnVq1YsZN3b8BAQAOw==">\r\n', 'pig'),
(11, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAAEVPXzpKPSA9Mx5koWZ/pmh9n2FzknOBnXJ7kltgdlZYbVVUY1BNUS8uKBkeFCcpLUBEUT5BQTFFTTdrn2x7m4yevHeGllljZ19qeVljdVpgbz5ASisnJSkkDQsJAB0fLWVugyYvPis2S15nfmNneGlwgVtjZV9eUUlSW299lY6arXmFm4CEl56dpo6VqHmFqDAzQhgPGxUZLCkwQHZ1nPPj//Da/6h9kI5baoRRWFAfJHlzjGNziVxleXSFp4yq0x4mOhchO3F5lFtfeKOYx9fE9bejyEouNWxOaLyetEweIE8cLIFugn+HkWmAqDRanh8pOwIOJkNIXB4fMXhZaYVaZ2pARjwWH5R1oriXtJNdZGkvNp1jgKeFkD5RlChFmikzQgABDR0dKBgYJDYkLVsvNGc0MmQ2NXpOVlQnJWAsLV4tLms9QUAfHx0ycRwpYUxYagAAAAgLFAcNFhYNGlstOWg0N4A+QHYzNWEqJ2MvMlwqK202NUwiIZJshLynxoOTswgGDQUEDgYJFQ4GEnI4Q2czOZBMVK1fZaBTVJtPUJNHSJtUUlcnI1YlJJRyg2+LsDI6RQkDBwgKEwIDDoZMVnw6PVYcIGYsL5Q/RqtTVXw1NV4kIlQeHFgiH3RDSBJLfydSeBUJCwcHDwADDlsxPqRCRWIOE2EWF7VWWrVbW61aW7doasl3edV9f7JoajRcgVd3lDApKgsIDgACDQoIFK1cbtpxfOZ4gf+Kkf+Okf6KjNNsableWcxvaIhMTFpwj2B0izxESSUfJwgADQAADA0DF0EhLC8VIyogHBcYDGdLXsF1gv+Xm7VhXS8bKFFqfV9yil5tfl5qeCUjKQABBBUrCAAICw4GFQgEFS8zShQRGScZMQ8HJxwYO1pweWl8lmJ3k3mPrHB/lCckM1lkXEZpEyxDEiQ6FjI/L2lrgVRUalddhRwlWx4gUEdgWW+GnWZ6l2ByjF5pfV9ngWp1j0lbVjVPRxo8NxolGklQa21ylG1jdFQ3UiYsZAAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQEewABACwAAAAAEAAQAAAI/wABQAABAwgUMHAAQQIFCxi0b+8CRAgRI0iUMHECRQoVK1g0cPAESBAhQ4gUMXIESRIlS5i0cPEGTBgxY8iUMXMGTRo1a9g0cfIIUCBBgwgVMnQIUSJFixi1cfMKVChRo0iVMnUKVSpVq1gccvQMWDBhw4gVM3YMWTJly1i1cvUOXDhx48iVM3cOXTp165g1c/YQYECBAwkWNHgQYUKFC9m1c/cSZEiRI0mWNHkSZUqVKxk2dPgUaFChQ4kWNXoUaVKlS1m2dPkWbFixY8mWNXsWbVq1a5k2dfoYcGDBgwkXNnwYcWLFi9m2dfsadGjRo0mXNn0adWrVqxk3dvwceCRw4cOJFzd+HHly5ctZt3b9Hnx48ePJlzd/Hn169euZN3f+BAQAOw==">\r\n', 'dog'),
(12, '<img class="dd" src="data:image/gif;base64,R0lGODlhEAAQAPcAAMLc2Mbg3Mvl4c/o5NDo483k3mN0c7HFwtLp5dLq4tLp4dHo4dHo4tDn4tLo4cji3tTt6MDW0pirqHeJh4ucmQkTEWmAf+7//+j//9Xr5N3/+8/o4c7l38/l38bc1Mvk4pKnplptbVNkaVhrb2p9fUo4LWlqYoiGeYVqW2k9Ldzz6t359dr49NHr5sfd16q/v1Jna0ZdYUBZXEReYlRmZ3VRPY10YHhXQoFgT2E1I4FhT4x1ZdXq3+T/+Mnb03eKjUZdYi9LTzBLSjFRVE5iZWFALpCBcJB/bKiVh5uHeIZuXohoWZeBbnhhT25kVmF1eDRLTyU4OSs+OiI8PThTU0Q1JX9jTJRwW5NwXZFxX454ZINvW2pbSUE+LFhgT1JmaRg0NBguLBYtKhAoJiM+PxMrKwcdEgseDwgdDwkcEAkeEgodDwcbDgIXCSUxIERaXwogJA8gIA0hHw4iISY6OyM5PBQjHRMfFRYiFhckGRomGR8oGxghFSYuICUuHkNbXx02NhIkIRMjIhMjISc5OSI2NRYmIgoaERMfFCsxJxsiGQ0aGRglFyEtHyErHUtlaQskIwggHg8hIA0fHig9PSE3NygvKTQtIkJANjxAOQ8gGw8bFCEuGhQgERolF191ehUvMQ4mJw8kJAohIS9ISR85OxgvLwkbFhEiHBIeGQYVDhwpGhknGA8bDyg1J3iPkTBLUBk0OBgxMRYsK0VeYilFSxIpKQwaDxUiFg0UDBQdExonGg8bDhQgFCg1Kp64tl5zdTtSVzBLTyQ/QmJ3e05nayA3NgQNBQERCwUTDBwnGRckFA0ZDyQvJiEuJMXg34Sbm1Nlak5fZEBTWm19gm+AhzpLTgAAAAkZDhUgCh0jDwINAB0sIR8rHyEuIsjk4tLv7afCwHuRk1VpbF1ub26Bg1NmaAAGBKrCvnyPhFRnWRgqIig4Lx0sJB8tI8bj48fj48jk48nk48nl48bh367FxHaLjDNLTb/a2Mzk363Dv2Z4c0JSSis7Mi09MwAAACH/C05FVFNDQVBFMi4wAwEAAAAh+QQEewABACwAAAAAEAAQAAAI/wABPPjw4seTL2/+PPr06tezb+8CQAABAwgUMHAAQQIFCxg0cPAERAgRI0iUMHECRQoVK1i0cPEGSBAhQ4gUMXIESRIlS5g0cfIITBgxY8iUMXMGTRo1a9i0cfMKUCBBgwgVMnQIUSJFixg1cvQMVChRo0iVMnUKVSpVq1i1cvUOWDBhw4gVM3YMWTJly5g1c/YQXDhx48iVM3cOXTp169i1c/cSYECBAwkWNHgQYUKFCxk2dPgUZEiRI0mWNHkSZUqVK1m2dPkWaFChQ4kWNXoUaVKlS5k2dfoUbFixY8mWNXsWbVq1a9m2dfsYcGDBgwkXNnwYcWLFixk3dvwadCRo0aNJlzZ9GnVq1atZt3b9HHhw4cOJFzd+HHly5cuZN3f+BAQAOw==">\r\n\r\n', 'tiger');

-- --------------------------------------------------------

--
-- Структура таблицы `gru`
--

CREATE TABLE IF NOT EXISTS `gru` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ima` varchar(255) NOT NULL,
  `phote` int(11) DEFAULT NULL,
  `use` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

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
(1, '1918', 'numr1r', '				<tr>\r\n				<td bgcolor="white" class="icenter">\r\n				<a href="old-ruf.jpg" target="_blank" style="cursor: pointer;">\r\n						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-camera-fill" viewBox="0 0 16 16">\r\n				  <path d="M10.5 8.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"></path>\r\n				  <path d="M2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2zm.5 2a.5.5 0 1 1 0-1 .5.5 0 0 1 0 1zm9 2.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0z"></path>\r\n				</svg></a><br>\r\n				</td>\r\n				<td>33<br></td><td><br></td><td><b> 8 окт 1890</b></td><td>11<br></td>\r\n				<td><span class="vo"><mark>Дракон</mark></span><br></td>\r\n				<td class="ileft">\r\n				Деревни крестьянин<br>\r\n				<span class="a"><mark>Крыс</mark></span><br>\r\n				и законная жена его<br>\r\n				<span class="a"><mark>Овца</mark></span><br>\r\n				оба православные<br>\r\n				</td><td class="ileft">\r\n				Деревни крестьянин <span class="a"><mark>Бык</mark></span><br>\r\n				крестьянская девица <span class="a"><mark>Обезьяна</mark></span></td></tr>', 'https://www.familysearch.org/ark:/61903/3:1:3QS7-899H-3D7Y?i=667&cc=1807365&cat=1149477'),
(2, '1918', 'numr2r', '				<tr>\r\n				<td bgcolor="white" class="icenter">\r\n				<a href="old-ruf.jpg" target="_blank" style="cursor: pointer;">\r\n						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-camera-fill" viewBox="0 0 16 16">\r\n				  <path d="M10.5 8.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"></path>\r\n				  <path d="M2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2zm.5 2a.5.5 0 1 1 0-1 .5.5 0 0 1 0 1zm9 2.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0z"></path>\r\n				</svg></a><br>\r\n				</td>\r\n				<td>33<br></td><td><br></td><td><b> 8 окт 1890</b></td><td>11<br></td>\r\n				<td><span class="vo"><mark>Лошадь</mark></span><br></td>\r\n				<td class="ileft">\r\n				Деревни крестьянин<br>\r\n				<span class="a"><mark>Тигр</mark></span><br>\r\n				и законная жена его<br>\r\n				<span class="a"><mark>Курица</mark></span><br>\r\n				оба православные<br>\r\n				</td><td class="ileft">\r\n				Деревни крестьянин <span class="a"><mark>Заяц</mark></span><br>\r\n				крестьянская девица <span class="a"><mark>Собака</mark></span></td></tr>', 'https://www.familysearch.org/ark:/61903/3:1:3QS7-899H-3D7Y?i=667&cc=1807365&cat=1149477'),
(3, '1918', 'numr3m', '				<tr><td bgcolor="white" class="icenter">\r\n				<a href="old-ruf.jpg" target="_blank" style="cursor: pointer;">\r\n				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-camera-fill" viewBox="0 0 16 16">\r\n		  <path d="M10.5 8.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>\r\n		  <path d="M2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2zm.5 2a.5.5 0 1 1 0-1 .5.5 0 0 1 0 1zm9 2.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0z"/>\r\n				</svg></a><br>				\r\n				</td><td>15</td><td><b> 10 нояб 1914</b></td><td class="ileft">\r\n				села крестьянин\r\n				<h4><span class="a"><mark>Драко</mark></span></h4>\r\n				православного вероисповедания, \r\n				первым браком\r\n				</td><td>\r\n				<h2>18</h2>p.1896</td><td class="ileft">\r\n				временно-проживающая в селе крестьянская девица\r\n				<h4><span class="a"><mark>Лошадь</mark></span></h4>\r\n				православного вероисповедания, \r\n				первым браком\r\n				</td><td><h2>16</h2>p.1897</td><td class="ileft">\r\n				<strong>по жениху:</strong>\r\n				села крестьяне <span class="a"><mark>Змея</mark></span><br>\r\n				<span class="a"><mark>Свинья</mark></span><br>\r\n				<strong>по невесте:</strong>\r\n				села крестьяне <span class="a"><mark>Мышь</mark></span><br>\r\n				<span class="a"><mark>Курица</mark></span><br>\r\n				</td></tr>', 'https://www.familysearch.org/ark:/61903/3:1:3QS7-899H-3D7Y?i=667&cc=1807365&cat=1149477'),
(4, '1918', 'numr4d', '				<tr><td bgcolor="white" class="icenter">\r\n					<a href="old-ruf.jpg" target="_blank" style="cursor: pointer;">\r\n						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-camera-fill" viewBox="0 0 16 16">\r\n				  <path d="M10.5 8.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"></path>\r\n				  <path d="M2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2zm.5 2a.5.5 0 1 1 0-1 .5.5 0 0 1 0 1zm9 2.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0z"></path>\r\n						</svg>\r\n					</a></td>\r\n				<td></td><td>29</td><td>4 сент 1900</td><td>6</td><td class="ileft">\r\n				д билетного солдата<br>\r\n				<span class="a"><mark>Кролик</mark></span><br>\r\n				дочь<br>\r\n				<span class="vo"><span class="a"><mark>Курица</mark></span></span><br>\r\n				</td><td></td><td><span class="vo">1г2м</span></td><td>от коклюша<br><br></td></tr>', 'https://www.familysearch.org/ark:/61903/3:1:3QS7-899H-3D7Y?i=667&cc=1807365&cat=1149477');

-- --------------------------------------------------------

--
-- Структура таблицы `peps`
--

CREATE TABLE IF NOT EXISTS `peps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `g` int(11) NOT NULL,
  `xx` int(11) NOT NULL,
  `yy` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `peps`
--

INSERT INTO `peps` (`id`, `g`, `xx`, `yy`) VALUES
(1, 1, 1, 0),
(2, 2, 2, 0),
(3, 3, 3, 0),
(4, 4, 4, 0),
(5, 5, 5, 0),
(6, 6, 6, 0),
(7, 7, 7, 0),
(8, 8, 8, 0),
(9, 9, 9, 0),
(10, 10, 10, 0),
(11, 11, 11, 0),
(12, 12, 12, 0);

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
