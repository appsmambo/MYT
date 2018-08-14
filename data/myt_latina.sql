-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-08-2018 a las 15:14:53
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `myt_latina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tracking`
--

CREATE TABLE `tracking` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isMobile` tinyint(1) NOT NULL DEFAULT '0',
  `isTablet` tinyint(1) NOT NULL DEFAULT '0',
  `isDesktop` tinyint(1) NOT NULL DEFAULT '0',
  `platform` varchar(100) NOT NULL,
  `browser` varchar(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `evento1` tinyint(4) NOT NULL DEFAULT '0',
  `evento2` tinyint(4) NOT NULL DEFAULT '0',
  `evento3` tinyint(4) NOT NULL DEFAULT '0',
  `pwdStrong` tinyint(1) NOT NULL DEFAULT '0',
  `apellidos` varchar(100) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tracking`
--

INSERT INTO `tracking` (`id`, `created_at`, `updated_at`, `isMobile`, `isTablet`, `isDesktop`, `platform`, `browser`, `ip`, `evento1`, `evento2`, `evento3`, `pwdStrong`, `apellidos`, `nombres`, `codigo`, `fecha_inicio`, `correo`, `estado`) VALUES
(1, '2018-08-14 17:26:51', '2018-08-14 18:01:57', 0, 0, 1, 'Windows', 'Chrome', '::1', 1, 1, 1, 0, 'Quintanilla', 'Juan', 'ABCD123', '2013-10-04', 'quintanilla.peru@gmail.com', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tracking`
--
ALTER TABLE `tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
