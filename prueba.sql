-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-12-2019 a las 01:06:30
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posteos`
--

CREATE TABLE `posteos` (
  `id` int(250) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `posteos`
--

INSERT INTO `posteos` (`id`, `title`, `description`) VALUES
(1, 'T1', 'D1'),
(2, 't2', 'd2'),
(3, NULL, NULL),
(4, NULL, NULL),
(5, NULL, NULL),
(6, NULL, NULL),
(7, NULL, NULL),
(8, NULL, NULL),
(9, 'Array', NULL),
(10, 'Array', NULL),
(11, 'Array', NULL),
(12, NULL, NULL),
(13, 'Array', NULL),
(14, 'Array', NULL),
(15, 'sd', NULL),
(16, 'f', NULL),
(17, 'ui', ''),
(18, 't', 't'),
(19, '', ''),
(20, '', ''),
(21, 'o', 'o'),
(22, NULL, 'jjjj'),
(23, 'u', 'u'),
(24, 'i', 'i'),
(25, '', ''),
(26, 'i', 'i'),
(27, 'yu', 'yu'),
(28, 'tyyt', 'tyyt'),
(29, 'ii', 'ii'),
(30, 'ii', 'ii'),
(31, 'oo', 'oo'),
(32, 'i', 'i'),
(33, '', ''),
(34, '', ''),
(35, '', ''),
(36, '', ''),
(37, 'h', 'h'),
(38, 'l', 'l'),
(39, '', ''),
(40, '', ''),
(41, 'd', 'f'),
(42, 'd', 'g'),
(43, '', ''),
(44, '', ''),
(45, 'd', 'f'),
(46, '', ''),
(47, '', ''),
(48, 'd', 'f'),
(49, 'f', 'g'),
(50, 'f', 'g'),
(51, 'j', 'h'),
(52, 'w', 'e'),
(53, 'd', 'f');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `posteos`
--
ALTER TABLE `posteos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `posteos`
--
ALTER TABLE `posteos`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
