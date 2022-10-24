-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-10-2022 a las 03:06:48
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela_lrmz`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `nombre` varchar(10) NOT NULL,
  `horas_totales` tinyint(4) DEFAULT NULL,
  `horas_semana` tinyint(4) NOT NULL,
  `clave` varchar(4) NOT NULL,
  `estudiante` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`nombre`, `horas_totales`, `horas_semana`, `clave`, `estudiante`) VALUES
('Calculo', 4, 5, '111', '20311050750511'),
('Ingles', 5, 5, '112', '20311050750511'),
('Fisica', 4, 4, '113', '20311050750511'),
('CTSV', 4, 2, '114', '20311050750511'),
('Construye ', 6, 3, '142', '20311050750511');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `nombre` varchar(20) NOT NULL,
  `turno` varchar(15) NOT NULL,
  `lider_academia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`nombre`, `turno`, `lider_academia`) VALUES
('Administracion RH', 'Matutino', NULL),
('Contabilidad', 'Matutino', NULL),
('Electricidad', 'Matutino', NULL),
('Logistica', 'Vespertino', ''),
('Mecanica', 'Vespertino', NULL),
('programacion', 'Matutino', 'Ricardo Mendez Rojas'),
('Soporte', 'Vespertino', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `telefono` varchar(14) NOT NULL,
  `noControl` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `edad` varchar(3) NOT NULL,
  `domicilio` text NOT NULL,
  `grupo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`telefono`, `noControl`, `apellidos`, `nombre`, `edad`, `domicilio`, `grupo`) VALUES
('4181667832', '20311047851241', 'Perez MArtinez', 'Adrian Eduardo', '17', 'Enrique Segoviano #187', '3SV'),
('4181081072', '20311050750511', 'Mujica Zacarias', 'Luis Rey', '17', 'Enrique Segoviano #187', '5PV'),
('4157896325', '203111445750511', 'Alarcon Betancourt', 'Nelly Montserrat', '17', 'San Pablo #666', '5PV'),
('4778962354', '203114996750511', 'Diaz Mondragon', 'Isaac Donovan', '17', 'Y Griega #765', '5PV'),
('4181445614', '20317830125511', 'Narvaez Hernandez', 'Alexis Fernando', '17', 'San Agustin #167', '5AV');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_asignatura`
--

CREATE TABLE `estudiante_asignatura` (
  `noControl` varchar(30) NOT NULL,
  `asignatura` varchar(4) NOT NULL,
  `fecha` date NOT NULL,
  `semestre` tinyint(3) NOT NULL,
  `calificacion` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `nombre` varchar(3) NOT NULL,
  `turno` varchar(15) NOT NULL,
  `representante` varchar(30) DEFAULT NULL,
  `tutor` varchar(30) DEFAULT NULL,
  `carrera` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`nombre`, `turno`, `representante`, `tutor`, `carrera`) VALUES
('1AM', 'Matutino', NULL, NULL, 'Administracion RH'),
('1AV', 'Vespertino', NULL, NULL, 'Administracion RH'),
('1CM', 'Matutino', NULL, NULL, 'Contabilidad'),
('1CV', 'Vespertino', NULL, NULL, 'Contabilidad'),
('1EM', 'Matutino', NULL, NULL, 'Electricidad'),
('1LM', 'Matutino', NULL, NULL, 'Logistica'),
('1LV', 'Vespertino', NULL, NULL, 'Logistica'),
('1MM', 'Matutino', NULL, NULL, 'Mecanica'),
('1PM', 'Matutino', NULL, NULL, 'Programacion'),
('1PV', 'Vespertino', NULL, NULL, 'Programación'),
('1SM', 'Matutino', NULL, NULL, 'Soporte'),
('1SV', 'Vespertino', NULL, NULL, 'Soporte'),
('3AM', 'Matutino', NULL, NULL, 'Administracion RH'),
('3AV', 'Vespertino', NULL, NULL, 'Administracion RH'),
('3CM', 'Matutino', NULL, NULL, 'Contabilidad'),
('3CV', 'Vespertino', NULL, NULL, 'Contabilidad'),
('3EM', 'Matutino', NULL, NULL, 'Electricidad'),
('3LM', 'Matutino', NULL, NULL, 'Logistica'),
('3LV', 'Vespertino', NULL, NULL, 'Logistica'),
('3MM', 'Matutino', NULL, NULL, 'Mecanica'),
('3PM', 'Matutino', NULL, NULL, 'Programacion'),
('3PV', 'Vespertino', NULL, NULL, 'Programación'),
('3SM', 'Matutino', NULL, NULL, 'Soporte'),
('3SV', 'Vespertino', NULL, NULL, 'Soporte'),
('5AM', 'Matutino', NULL, NULL, 'Administracion RH'),
('5AV', 'Vespertino', NULL, NULL, 'Administracion RH'),
('5CM', 'Matutino', NULL, NULL, 'Contabilidad'),
('5CV', 'Vespertino', NULL, NULL, 'Contabilidad'),
('5EM', 'Matutino', NULL, NULL, 'Electricidad'),
('5LM', 'Matutino', NULL, NULL, 'Logistica'),
('5LV', 'Vespertino', NULL, NULL, 'Logistica'),
('5MM', 'Matutino', NULL, NULL, 'Mecanica'),
('5PM', 'Matutino', NULL, NULL, 'Programacion'),
('5PV', 'Vespertino', 'Dulce Alejandra', 'Silvia Carrillo Mastache', 'Programación'),
('5SM', 'Matutino', NULL, NULL, 'Soporte'),
('5SV', 'Vespertino', NULL, NULL, 'Soporte');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`clave`),
  ADD KEY `index_estudiante` (`estudiante`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`noControl`),
  ADD KEY `index_grupo` (`grupo`);

--
-- Indices de la tabla `estudiante_asignatura`
--
ALTER TABLE `estudiante_asignatura`
  ADD PRIMARY KEY (`noControl`,`asignatura`),
  ADD KEY `asignaturar` (`asignatura`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`nombre`),
  ADD KEY `carrera_index` (`carrera`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD CONSTRAINT `asignatura` FOREIGN KEY (`estudiante`) REFERENCES `estudiante` (`noControl`);

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `grupo` FOREIGN KEY (`grupo`) REFERENCES `grupo` (`nombre`);

--
-- Filtros para la tabla `estudiante_asignatura`
--
ALTER TABLE `estudiante_asignatura`
  ADD CONSTRAINT `asignaturar` FOREIGN KEY (`asignatura`) REFERENCES `asignatura` (`clave`),
  ADD CONSTRAINT `noControl` FOREIGN KEY (`noControl`) REFERENCES `estudiante` (`noControl`);

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `carrera` FOREIGN KEY (`carrera`) REFERENCES `carrera` (`nombre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
