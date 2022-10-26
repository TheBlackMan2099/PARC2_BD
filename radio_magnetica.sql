-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2022 a las 05:51:32
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `radio_magnetica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `curp` varchar(30) NOT NULL,
  `rfc` varchar(30) NOT NULL,
  `nombre_persona` varchar(50) NOT NULL,
  `edad` tinyint(4) NOT NULL,
  `id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta_cancion`
--

CREATE TABLE `encuesta_cancion` (
  `cancion_pedir` varchar(20) NOT NULL,
  `cancion_moda` varchar(20) NOT NULL,
  `edad_publico` tinyint(4) DEFAULT NULL,
  `genero_publico` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso_cancion`
--

CREATE TABLE `permiso_cancion` (
  `nombre_disquera` varchar(20) NOT NULL,
  `nombre_cancion` varchar(20) NOT NULL,
  `reproduccion_veces` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`curp`),
  ADD KEY `empleado_restr` (`nombre_persona`);

--
-- Indices de la tabla `encuesta_cancion`
--
ALTER TABLE `encuesta_cancion`
  ADD PRIMARY KEY (`cancion_pedir`);

--
-- Indices de la tabla `permiso_cancion`
--
ALTER TABLE `permiso_cancion`
  ADD PRIMARY KEY (`nombre_disquera`),
  ADD KEY `permiso_restr` (`nombre_cancion`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_restr` FOREIGN KEY (`nombre_persona`) REFERENCES `permiso_cancion` (`nombre_disquera`);

--
-- Filtros para la tabla `encuesta_cancion`
--
ALTER TABLE `encuesta_cancion`
  ADD CONSTRAINT `encuesta_restr` FOREIGN KEY (`cancion_pedir`) REFERENCES `empleado` (`curp`);

--
-- Filtros para la tabla `permiso_cancion`
--
ALTER TABLE `permiso_cancion`
  ADD CONSTRAINT `permiso_restr` FOREIGN KEY (`nombre_cancion`) REFERENCES `encuesta_cancion` (`cancion_pedir`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
