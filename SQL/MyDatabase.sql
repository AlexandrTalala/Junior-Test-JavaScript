-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 06 2016 г., 09:24
-- Версия сервера: 5.6.28-0ubuntu0.15.10.1
-- Версия PHP: 5.6.11-1ubuntu3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `MyDatabase`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ErrorDecision`
--

CREATE TABLE IF NOT EXISTS `ErrorDecision` (
  `ID` int(11) NOT NULL,
  `Example` varchar(255) DEFAULT NULL,
  `ErrorAnswer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ErrorDecision`
--

INSERT INTO `ErrorDecision` (`ID`, `Example`, `ErrorAnswer`) VALUES
(1, '5+2', '8'),
(2, '5+5', '9'),
(3, '6-5', '2'),
(4, '10-5', '6'),
(5, '5+9', '15');

-- --------------------------------------------------------

--
-- Структура таблицы `NameStudent`
--

CREATE TABLE IF NOT EXISTS `NameStudent` (
  `ID` int(11) NOT NULL,
  `RegisterName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `NameStudent`
--

INSERT INTO `NameStudent` (`ID`, `RegisterName`) VALUES
(1, 'Name1'),
(2, 'Name2'),
(3, 'Name3'),
(4, 'Name4'),
(5, 'Name5'),
(6, 'Name6'),
(7, 'Name7'),
(8, 'Name8'),
(9, 'Name9'),
(10, 'Name10'),
(11, 'Name11'),
(12, 'Name12'),
(13, 'Name7'),
(14, 'Name8'),
(15, 'Name9'),
(16, 'Name10'),
(17, 'Name11'),
(18, 'Name12');

-- --------------------------------------------------------

--
-- Структура таблицы `TestsConducted`
--

CREATE TABLE IF NOT EXISTS `TestsConducted` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `DateTest` date DEFAULT NULL,
  `TypesExamples` varchar(255) DEFAULT NULL,
  `CountCorrect` int(11) DEFAULT NULL,
  `CountError` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `TestsConducted`
--

INSERT INTO `TestsConducted` (`ID`, `Name`, `DateTest`, `TypesExamples`, `CountCorrect`, `CountError`) VALUES
(1, 'Name1', '2016-06-01', 'Operation plus', 10, 0),
(2, 'Name2', '2016-06-02', 'Operation minus', 15, 1),
(3, 'Name3', '2016-06-03', 'Operation multiplication', 7, 0),
(4, 'Name4', '2016-06-04', 'Operation division', 20, 3),
(5, 'Name5', '2016-06-05', 'Operation plus', 9, 0),
(6, 'Name6', '2016-06-06', 'Operation minus', 5, 1),
(7, 'Name7', '2016-06-07', 'Operation multiplication', 5, 0),
(8, 'Name8', '2016-06-07', 'Operation division', 15, 0),
(9, 'Name5', '2016-06-07', 'Operation plus', 9, 0),
(10, 'Name6', '2016-06-07', 'Operation minus', 5, 1),
(11, 'Name7', '2016-06-07', 'Operation multiplication', 5, 0),
(12, 'Name8', '2016-06-07', 'Operation division', 15, 0),
(13, 'Name5', '2016-06-07', 'Operation plus', 9, 0),
(14, 'Name6', '2016-06-07', 'Operation minus', 5, 1),
(15, 'Name7', '2016-06-08', 'Operation multiplication', 5, 0),
(16, 'Name8', '2016-06-08', 'Operation division', 15, 0),
(17, 'Name5', '2016-06-08', 'Operation plus', 9, 0),
(18, 'Name6', '2016-06-10', 'Operation minus', 5, 1),
(19, 'Name7', '2016-06-10', 'Operation multiplication', 5, 0),
(20, 'Name8', '2016-06-11', 'Operation division', 15, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ErrorDecision`
--
ALTER TABLE `ErrorDecision`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `NameStudent`
--
ALTER TABLE `NameStudent`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `TestsConducted`
--
ALTER TABLE `TestsConducted`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ErrorDecision`
--
ALTER TABLE `ErrorDecision`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `NameStudent`
--
ALTER TABLE `NameStudent`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `TestsConducted`
--
ALTER TABLE `TestsConducted`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
