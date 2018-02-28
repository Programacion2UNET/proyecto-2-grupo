-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-02-2018 a las 22:10:27
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `basetorneo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `nombre_corto` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Opcional',
  `correo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `web` varchar(25) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Opcional',
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id`, `nombre`, `nombre_corto`, `fecha`, `direccion`, `correo`, `web`, `id_usuario`) VALUES
(1, 'TachiraFC', '', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 0),
(2, 'TachiraFC', '', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 0),
(3, 'TachiraFC', '', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 0),
(4, 'TachiraFC', '', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 0),
(5, 'TachiraFC', '', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 0),
(6, 'TachiraFC', '', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 1),
(7, 'TachiraFC', '', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 1),
(8, 'TachiraFC', '', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 1),
(9, 'TachiraFC', 'TFC', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 1),
(10, 'TachiraFC', 'TFC', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 0),
(11, 'TachiraFC', 'TFC', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 1),
(12, 'TachiraFC', 'TFC', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 1),
(13, 'TachiraFC', 'TFC', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 1),
(14, 'TachiraFC', 'TFC', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 1),
(15, 'TachiraFC', 'TFC', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 1),
(16, 'TachiraFC', 'TFC', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 1),
(17, 'TachiraFC', 'TFC', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 1),
(18, 'TachiraFC', 'TFC', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 1),
(19, 'TachiraFC', 'TFC', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 31),
(20, 'TachiraFC', 'TFC', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 31),
(21, 'TachiraFC', 'TFC', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 31),
(22, 'TachiraFC', 'TFC', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 31),
(23, 'TachiraFC', 'TFC', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 35),
(24, 'TachiraFC', 'TFC', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 35),
(25, 'TachiraFC', 'TFC', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 35),
(26, 'TachiraFC', 'TFC', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 35),
(27, 'TachiraFC', 'TFC', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 35),
(28, 'CaracasFC', 'CFC', '2018-12-31', 'SC', 'asd@gmail.com', 'CARACAS.COM', 40),
(29, 'TachiraFC', 'TFC', '2018-12-31', 'SC', 'asd@gmail.com', 'sd', 41),
(30, 'CaracasFC', 'CFC', '2018-12-31', 'SC', 'asd@gmail.com', 'CARACAS.COM', 42);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `contra` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `contra`, `admin`) VALUES
(1, 'luis', '123', 0),
(2, 'luis', '123', 0),
(3, 'luis', '123', 0),
(4, 'luis', '123', 0),
(5, 'luis', '123', 0),
(6, 'luis', '123', 0),
(7, 'luis', '123', 0),
(8, 'luis', '123', 0),
(9, 'luis', '123', 0),
(10, 'luis', '12345', 0),
(11, 'luis', '12345', 0),
(12, 'luis', '12345', 0),
(13, 'luis', '12345', 0),
(14, 'luis', '12345', 0),
(15, 'luis', '12345', 0),
(16, 'luis', '12345', 0),
(17, 'luis', '555', 0),
(18, 'luis', '555', 0),
(19, 'luis', '555', 0),
(20, 'luis', '1234', 0),
(21, 'luis', '1234', 0),
(22, 'luis', '1234', 0),
(23, 'luis', '1234', 0),
(24, 'luis', '1234', 0),
(25, 'luis', '1234', 0),
(26, 'luis', '1234', 0),
(27, 'luis', '1234', 0),
(28, 'luis', '1234', 0),
(29, 'luis', '1234', 0),
(30, 'luis', '1234', 0),
(31, 'luis2', '213', 0),
(32, 'luis2', '123456', 0),
(33, 'luis2', '123456', 0),
(34, 'luis2', '123456', 0),
(35, 'luis23', '456', 0),
(36, 'luis23', '456', 0),
(37, 'luis23', '456', 0),
(38, 'luis23', '456', 0),
(39, 'luis23', '456', 0),
(40, 'caracas', '5894', 0),
(41, 'kkl', '987', 0),
(42, 'carmen', '9687', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
