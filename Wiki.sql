-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 29 2019 г., 11:32
-- Версия сервера: 5.6.38-log
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
-- База данных: `Wiki`
--

-- --------------------------------------------------------

--
-- Структура таблицы `File`
--

CREATE TABLE `File` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `path` varchar(150) NOT NULL,
  `size` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains information about file';

--
-- Дамп данных таблицы `File`
--

INSERT INTO `File` (`id`, `name`, `path`, `size`) VALUES
(4, 'geodata.sql', 'files/geodata.sql', '153356'),
(5, 'HW2.zip', 'files/HW2.zip', '153512'),
(6, 'DB-GEODATA-20180811T104246Z-001.zip', 'files/DB-GEODATA-20180811T104246Z-001.zip', '52868011'),
(7, 'HW2.zip', 'files/HW2.zip', '153512'),
(8, 'tables.sql', 'files/tables.sql', '1942'),
(9, 'geodata.sql', 'files/geodata.sql', '153356');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `File`
--
ALTER TABLE `File`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `File`
--
ALTER TABLE `File`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
