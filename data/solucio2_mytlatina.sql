-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 16-08-2018 a las 04:36:13
-- Versión del servidor: 5.6.32-78.1
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `solucio2_mytlatina`
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
  `fecha_inicio` date DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tracking`
--

INSERT INTO `tracking` (`id`, `created_at`, `updated_at`, `isMobile`, `isTablet`, `isDesktop`, `platform`, `browser`, `ip`, `evento1`, `evento2`, `evento3`, `pwdStrong`, `apellidos`, `nombres`, `fecha_inicio`, `correo`, `estado`) VALUES
(1, '2018-08-14 17:26:51', '2018-08-14 18:01:57', 0, 0, 1, 'Windows', 'Chrome', '::1', 1, 1, 1, 0, 'Quintanilla', 'Juan', '2013-10-04', 'quintanilla.peru@gmail.com', 1),
(2, '2018-08-14 18:18:55', '2018-08-14 18:24:15', 0, 0, 1, 'Windows', 'Chrome', '190.43.241.44', 1, 1, 1, 1, 'Desktop Salazar', 'Pedro', '1997-04-23', 'desktop@gmail.com', 1),
(3, '2018-08-14 18:20:00', '2018-08-14 18:21:24', 1, 0, 0, 'AndroidOS', 'Chrome', '66.249.88.20', 1, 1, 1, 0, 'Android Gonzales', 'Juan', '2004-12-05', 'android@gmail.com', 1),
(4, '2018-08-15 01:02:59', '2018-08-15 01:02:59', 0, 0, 1, 'Windows', 'Edge', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(5, '2018-08-15 01:05:56', '2018-08-15 01:05:56', 0, 0, 1, 'Windows', 'Edge', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(6, '2018-08-15 01:06:00', '2018-08-15 01:06:00', 0, 0, 1, 'Windows', 'Edge', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(7, '2018-08-15 01:06:07', '2018-08-15 01:06:40', 0, 0, 1, 'Windows', 'Edge', '190.117.52.27', 1, 1, 1, 0, 'Perez', 'Juan', '1973-01-20', 'jperez@gmail.com', 1),
(8, '2018-08-15 01:08:50', '2018-08-15 01:08:50', 0, 0, 1, 'Windows', 'Edge', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(9, '2018-08-15 01:52:23', '2018-08-15 01:52:23', 0, 0, 1, 'Windows', 'Chrome', '190.43.241.44', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(10, '2018-08-15 01:52:34', '2018-08-15 01:52:34', 0, 0, 0, '0', '0', '190.236.10.221', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(11, '2018-08-15 01:52:52', '2018-08-15 01:54:20', 0, 0, 1, 'Windows', 'Edge', '190.117.52.27', 1, 1, 1, 0, 'Carlos', 'Roberto', '1962-02-15', 'rcarlos@latina.pe', 1),
(12, '2018-08-15 01:56:19', '2018-08-15 01:56:33', 0, 0, 1, 'Windows', 'Edge', '190.117.52.27', 1, 1, 0, 0, NULL, NULL, NULL, NULL, 1),
(13, '2018-08-15 01:57:33', '2018-08-15 01:58:09', 0, 0, 1, 'Windows', 'Edge', '190.117.52.27', 1, 1, 1, 1, 'Benavides', 'Jorge', '1972-04-15', 'jb@latina.pe', 1),
(14, '2018-08-15 01:59:02', '2018-08-15 01:59:02', 1, 0, 0, 'AndroidOS', 'Chrome', '66.249.88.20', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(15, '2018-08-15 02:04:55', '2018-08-15 02:04:55', 0, 0, 0, '0', '0', '179.7.49.97', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(16, '2018-08-15 02:12:25', '2018-08-15 02:12:25', 1, 0, 0, 'iOS', 'Safari', '179.7.49.82', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(17, '2018-08-15 02:12:49', '2018-08-15 02:14:44', 1, 0, 0, 'iOS', 'Safari', '179.7.50.243', 1, 1, 1, 0, 'Arrieta', 'Carlos', '2018-02-06', 'carlos@tym.com', 1),
(18, '2018-08-15 02:44:09', '2018-08-15 02:44:09', 0, 0, 1, 'Windows', 'Edge', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(19, '2018-08-15 05:59:27', '2018-08-15 05:59:27', 1, 0, 0, 'AndroidOS', 'Chrome', '66.249.88.20', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(20, '2018-08-15 11:37:46', '2018-08-15 11:37:46', 0, 0, 1, 'Windows', 'Edge', '179.7.51.119', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(21, '2018-08-15 11:39:37', '2018-08-15 11:40:25', 0, 0, 1, 'Windows', 'Edge', '179.7.51.119', 1, 1, 1, 1, 'Peña', 'Carlos', '2000-07-16', 'prueba@latina.pe', 1),
(22, '2018-08-15 11:40:42', '2018-08-15 11:40:42', 0, 0, 1, 'Windows', 'Edge', '179.7.51.119', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(23, '2018-08-15 11:42:00', '2018-08-15 11:42:00', 1, 0, 0, 'AndroidOS', 'Chrome', '66.249.88.17', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(24, '2018-08-15 16:51:12', '2018-08-15 16:51:12', 0, 0, 1, 'Windows', 'Chrome', '190.43.241.44', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(25, '2018-08-15 22:52:37', '2018-08-15 22:52:37', 0, 0, 1, 'Windows', 'Edge', '181.66.253.254', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(26, '2018-08-16 01:12:38', '2018-08-16 01:12:38', 0, 0, 1, 'Windows', 'IE', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(27, '2018-08-16 01:12:39', '2018-08-16 01:12:39', 0, 0, 1, 'Windows', 'Chrome', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(28, '2018-08-16 01:19:20', '2018-08-16 01:19:20', 0, 0, 0, '0', '0', '179.7.53.143', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(29, '2018-08-16 01:20:42', '2018-08-16 01:20:42', 0, 0, 0, 'ChromeOS', '0', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(30, '2018-08-16 01:20:43', '2018-08-16 01:20:43', 0, 0, 1, 'Windows', 'IE', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(31, '2018-08-16 01:20:44', '2018-08-16 01:20:44', 0, 0, 1, 'Windows', 'Chrome', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(32, '2018-08-16 01:24:16', '2018-08-16 01:24:16', 0, 0, 1, 'Windows', 'IE', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(33, '2018-08-16 01:24:16', '2018-08-16 01:24:16', 0, 0, 1, 'Windows', 'Chrome', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(34, '2018-08-16 01:26:07', '2018-08-16 01:26:07', 0, 0, 1, 'Windows', 'IE', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(35, '2018-08-16 01:26:07', '2018-08-16 01:26:07', 0, 0, 1, 'Windows', 'Chrome', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(36, '2018-08-16 01:47:31', '2018-08-16 01:47:31', 0, 0, 1, 'Windows', 'IE', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(37, '2018-08-16 01:47:32', '2018-08-16 01:47:32', 0, 0, 1, 'Windows', 'Chrome', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(38, '2018-08-16 01:49:51', '2018-08-16 01:49:51', 0, 0, 1, 'Windows', 'IE', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(39, '2018-08-16 01:49:51', '2018-08-16 01:49:51', 0, 0, 1, 'Windows', 'Chrome', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(40, '2018-08-16 01:56:12', '2018-08-16 01:56:12', 0, 0, 0, 'ChromeOS', '0', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(41, '2018-08-16 01:56:13', '2018-08-16 01:56:13', 0, 0, 1, 'Windows', 'IE', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(42, '2018-08-16 01:56:14', '2018-08-16 01:56:14', 0, 0, 1, 'Windows', 'Chrome', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(43, '2018-08-16 02:04:42', '2018-08-16 02:04:42', 0, 0, 0, 'ChromeOS', '0', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(44, '2018-08-16 02:04:43', '2018-08-16 02:04:43', 0, 0, 1, 'Windows', 'IE', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(45, '2018-08-16 02:04:45', '2018-08-16 02:04:45', 0, 0, 1, 'Windows', 'Edge', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(46, '2018-08-16 02:06:56', '2018-08-16 02:06:56', 0, 0, 1, 'Windows', 'IE', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(47, '2018-08-16 02:06:57', '2018-08-16 02:06:57', 0, 0, 1, 'Windows', 'Chrome', '190.117.52.27', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(48, '2018-08-16 12:36:13', '2018-08-16 12:36:13', 0, 0, 1, 'Windows', 'Chrome', '190.43.241.44', 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(49, '2018-08-16 09:32:53', '2018-08-16 09:33:09', 0, 0, 1, 'Windows', 'Chrome', '190.43.241.44', 1, 1, 0, 0, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tracking_macro`
--

CREATE TABLE `tracking_macro` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(100) DEFAULT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tracking_macro`
--

INSERT INTO `tracking_macro` (`id`, `created_at`, `updated_at`, `ip`, `estado`) VALUES
(1, '2018-08-16 12:52:13', '2018-08-16 12:52:13', '190.43.241.44', 1),
(2, '2018-08-16 14:31:21', '2018-08-16 14:31:21', '190.43.241.44', 1),
(3, '2018-08-16 09:32:31', '2018-08-16 09:32:31', '190.43.241.44', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tracking_macro`
--
ALTER TABLE `tracking_macro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tracking`
--
ALTER TABLE `tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `tracking_macro`
--
ALTER TABLE `tracking_macro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
