-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Фев 10 2018 г., 21:01
-- Версия сервера: 10.1.21-MariaDB
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `horoscope`
--

-- --------------------------------------------------------

--
-- Структура таблицы `main`
--

CREATE TABLE `main` (
  `id` int(11) NOT NULL,
  `code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `main`
--

INSERT INTO `main` (`id`, `code`, `answer`) VALUES
(1, 'Козерог$Козерог', 'Ещё не готово'),
(2, 'Козерог$Водолей', 'Ещё не готово'),
(3, 'Козерог$Рыбы', 'Ещё не готово'),
(4, 'Козерог$Овен', 'Ещё не готово'),
(5, 'Козерог$Телец', 'Ещё не готово'),
(6, 'Козерог$Близнецы', 'Всё будит'),
(7, 'Козерог$Рак', 'Ещё не готово'),
(8, 'Козерог$Лев', 'Ещё не готово'),
(9, 'Козерог$Дева', 'Ещё не готово'),
(10, 'Козерог$Весы', 'Ещё не готово'),
(11, 'Козерог$Скорпион', 'Ещё не готово'),
(12, 'Козерог$Стрелец', 'Ещё не готово'),
(13, 'Водолей$Козерог', 'Ещё не готово'),
(14, 'Водолей$Водолей', 'Ещё не готово'),
(15, 'Водолей$Рыбы', 'Ещё не готово'),
(16, 'Водолей$Овен', 'Ещё не готово'),
(17, 'Водолей$Телец', 'Ещё не готово'),
(18, 'Водолей$Близнецы', 'Ещё не готово'),
(19, 'Водолей$Рак', 'Ещё не готово'),
(20, 'Водолей$Лев', 'Ещё не готово'),
(21, 'Водолей$Дева', 'Ещё не готово'),
(22, 'Водолей$Весы', 'Ещё не готово'),
(23, 'Водолей$Скорпион', 'Ещё не готово'),
(24, 'Водолей$Стрелец', 'Ещё не готово'),
(25, 'Рыбы$Козерог', 'Ещё не готово'),
(26, 'Рыбы$Водолей', 'Ещё не готово'),
(27, 'Рыбы$Рыбы', 'Ещё не готово'),
(28, 'Рыбы$Овен', 'Ещё не готово'),
(29, 'Рыбы$Телец', 'Ещё не готово'),
(30, 'Рыбы$Близнецы', 'Ещё не готово'),
(31, 'Рыбы$Рак', 'Ещё не готово'),
(32, 'Рыбы$Лев', 'Ещё не готово'),
(33, 'Рыбы$Дева', 'Ещё не готово'),
(34, 'Рыбы$Весы', 'Ещё не готово'),
(35, 'Рыбы$Скорпион', 'Ещё не готово'),
(36, 'Рыбы$Стрелец', 'Ещё не готово'),
(37, 'Овен$Козерог', 'Ещё не готово'),
(38, 'Овен$Водолей', 'Ещё не готово'),
(39, 'Овен$Рыбы', 'Ещё не готово'),
(40, 'Овен$Овен', 'Ещё не готово'),
(41, 'Овен$Телец', 'Ещё не готово'),
(42, 'Овен$Близнецы', 'Ещё не готово'),
(43, 'Овен$Рак', 'Ещё не готово'),
(44, 'Овен$Лев', 'Ещё не готово'),
(45, 'Овен$Дева', 'Ещё не готово'),
(46, 'Овен$Весы', 'Ещё не готово'),
(47, 'Овен$Скорпион', 'Ещё не готово'),
(48, 'Овен$Стрелец', 'Ещё не готово'),
(49, 'Телец$Козерог', 'Ещё не готово'),
(50, 'Телец$Водолей', 'Ещё не готово'),
(51, 'Телец$Рыбы', 'Ещё не готово'),
(52, 'Телец$Овен', 'Ещё не готово'),
(53, 'Телец$Телец', 'Ещё не готово'),
(54, 'Телец$Близнецы', 'Ещё не готово'),
(55, 'Телец$Рак', 'Ещё не готово'),
(56, 'Телец$Лев', 'Ещё не готово'),
(57, 'Телец$Дева', 'Ещё не готово'),
(58, 'Телец$Весы', 'Ещё не готово'),
(59, 'Телец$Скорпион', 'Ещё не готово'),
(60, 'Телец$Стрелец', 'Ещё не готово'),
(61, 'Близнецы$Козерог', 'Ещё не готово'),
(62, 'Близнецы$Водолей', 'Ещё не готово'),
(63, 'Близнецы$Рыбы', 'Ещё не готово'),
(64, 'Близнецы$Овен', 'Ещё не готово'),
(65, 'Близнецы$Телец', 'Ещё не готово'),
(66, 'Близнецы$Близнецы', 'Ещё не готово'),
(67, 'Близнецы$Рак', 'Ещё не готово'),
(68, 'Близнецы$Лев', 'Ещё не готово'),
(69, 'Близнецы$Дева', 'Ещё не готово'),
(70, 'Близнецы$Весы', 'Ещё не готово'),
(71, 'Близнецы$Скорпион', 'Ещё не готово'),
(72, 'Близнецы$Стрелец', 'Ещё не готово'),
(73, 'Рак$Козерог', 'Ещё не готово'),
(74, 'Рак$Водолей', 'Ещё не готово'),
(75, 'Рак$Рыбы', 'Ещё не готово'),
(76, 'Рак$Овен', 'Ещё не готово'),
(77, 'Рак$Телец', 'Ещё не готово'),
(78, 'Рак$Близнецы', 'Ещё не готово'),
(79, 'Рак$Рак', 'Ещё не готово'),
(80, 'Рак$Лев', 'Ещё не готово'),
(81, 'Рак$Дева', 'Ещё не готово'),
(82, 'Рак$Весы', 'Ещё не готово'),
(83, 'Рак$Скорпион', 'Ещё не готово'),
(84, 'Рак$Стрелец', 'Ещё не готово'),
(85, 'Лев$Козерог', 'Ещё не готово'),
(86, 'Лев$Водолей', 'Ещё не готово'),
(87, 'Лев$Рыбы', 'Ещё не готово'),
(88, 'Лев$Овен', 'Ещё не готово'),
(89, 'Лев$Телец', 'Ещё не готово'),
(90, 'Лев$Близнецы', 'Ещё не готово'),
(91, 'Лев$Рак', 'Ещё не готово'),
(92, 'Лев$Лев', 'Ещё не готово'),
(93, 'Лев$Дева', 'Ещё не готово'),
(94, 'Лев$Весы', 'Ещё не готово'),
(95, 'Лев$Скорпион', 'Ещё не готово'),
(96, 'Лев$Стрелец', 'Ещё не готово'),
(97, 'Дева$Козерог', 'Ещё не готово'),
(98, 'Дева$Водолей', 'Ещё не готово'),
(99, 'Дева$Рыбы', 'Ещё не готово'),
(100, 'Дева$Овен', 'Ещё не готово'),
(101, 'Дева$Телец', 'Ещё не готово'),
(102, 'Дева$Близнецы', 'Ещё не готово'),
(103, 'Дева$Рак', 'Ещё не готово'),
(104, 'Дева$Лев', 'Ещё не готово'),
(105, 'Дева$Дева', 'Ещё не готово'),
(106, 'Дева$Весы', 'Ещё не готово'),
(107, 'Дева$Скорпион', 'Ещё не готово'),
(108, 'Дева$Стрелец', 'Ещё не готово'),
(109, 'Весы$Козерог', 'Ещё не готово'),
(110, 'Весы$Водолей', 'Ещё не готово'),
(111, 'Весы$Рыбы', 'Ещё не готово'),
(112, 'Весы$Овен', 'Ещё не готово'),
(113, 'Весы$Телец', 'Ещё не готово'),
(114, 'Весы$Близнецы', 'Ещё не готово'),
(115, 'Весы$Рак', 'Ещё не готово'),
(116, 'Весы$Лев', 'Ещё не готово'),
(117, 'Весы$Дева', 'Ещё не готово'),
(118, 'Весы$Весы', 'Ещё не готово'),
(119, 'Весы$Скорпион', 'Ещё не готово'),
(120, 'Весы$Стрелец', 'Ещё не готово'),
(121, 'Скорпион$Козерог', 'Ещё не готово'),
(122, 'Скорпион$Водолей', 'Ещё не готово'),
(123, 'Скорпион$Рыбы', 'Ещё не готово'),
(124, 'Скорпион$Овен', 'Ещё не готово'),
(125, 'Скорпион$Телец', 'Ещё не готово'),
(126, 'Скорпион$Близнецы', 'Ещё не готово'),
(127, 'Скорпион$Рак', 'Ещё не готово'),
(128, 'Скорпион$Лев', 'Ещё не готово'),
(129, 'Скорпион$Дева', 'Ещё не готово'),
(130, 'Скорпион$Весы', 'Ещё не готово'),
(131, 'Скорпион$Скорпион', 'Ещё не готово'),
(132, 'Скорпион$Стрелец', 'Ещё не готово'),
(133, 'Стрелец$Козерог', 'Ещё не готово'),
(134, 'Стрелец$Водолей', 'Ещё не готово'),
(135, 'Стрелец$Рыбы', 'Ещё не готово'),
(136, 'Стрелец$Овен', 'Ещё не готово'),
(137, 'Стрелец$Телец', 'Ещё не готово'),
(138, 'Стрелец$Близнецы', 'Ещё не готово'),
(139, 'Стрелец$Рак', 'Ещё не готово'),
(140, 'Стрелец$Лев', 'Ещё не готово'),
(141, 'Стрелец$Дева', 'Ещё не готово'),
(142, 'Стрелец$Весы', 'Ещё не готово'),
(143, 'Стрелец$Скорпион', 'Ещё не готово'),
(144, 'Стрелец$Стрелец', 'Ещё не готово');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `main`
--
ALTER TABLE `main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
