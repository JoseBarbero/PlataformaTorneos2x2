-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 02-01-2017 a las 19:22:29
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `torneos2x2db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participantes`
--

CREATE TABLE `participantes` (
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `nombreEstrategia` varchar(50) NOT NULL,
  `idTorneo` int(11) NOT NULL,
  `numeroParticipante` int(11) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `puntuacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `participantes`
--

INSERT INTO `participantes` (`nombre`, `apellidos`, `nombreEstrategia`, `idTorneo`, `numeroParticipante`, `correo`, `puntuacion`) VALUES
('asas', 'dsadsa', 'dsadas', 1, 1, '', 7886),
('a', 'Aparicio', 'Estrateg', 1, 2, '', 7893),
('aaa', 'a', 'a', 1, 3, '', 7900),
('aaa', 'Aparicio', 'a', 1, 4, '', 7935),
('a', 'a', 'a', 1, 5, '', 7823),
('a', 'W', 'w', 1, 6, '', 7872),
('a', 'a', 'a', 1, 7, '', 7977),
('a', 'a', 'a', 1, 8, '', 7886),
('a', 'a', 'a', 1, 9, '', 8005),
('a', 'a', 'a', 1, 10, 'correo', 7921),
('a', 'a', 'a', 19, 1, 'correo', 2367),
('profesor', 'profesor', 'estr', 39, 1, 'profesor@profesor.com', 3651),
('Participante1', 'Participante1Participante1', 'Estrategia', 39, 2, 'Participante1@Participante1.com', 3714),
('Participante2', 'Participante2', 'Participante2', 39, 3, 'Participante2@Participante2.com', 3777),
('profesor', 'profesor', 'Estra', 40, 1, 'profesor@profesor.com', 3651),
('profesor', 'profesor', 'a', 40, 2, 'profesor@profesor.com', 3714),
('profesor', 'profesor', 'aaaaa', 40, 3, 'profesor@profesor.com', 3777),
('profesor', 'profesor', 'estr', 41, 1, 'profesor@profesor.com', 2500),
('profesor', 'profesor', 'Estrategia', 42, 1, 'profesor@profesor.com', 2500),
('profesor', 'profesor', 'Estr', 42, 2, 'profesor@profesor.com', 0),
('profesor', 'profesor', 'estrategia de prueba', 43, 1, 'profesor@profesor.com', 2500),
('profesor', 'profesor', 'a', 44, 1, 'profesor@profesor.com', 2444),
('profesor', 'profesor', 'aaaaa', 45, 1, 'profesor@profesor.com', 4279),
('profesor', 'profesor', 'bbbbbb', 45, 2, 'profesor@profesor.com', 4223),
('profesor', 'profesor', 'ccccc', 45, 3, 'profesor@profesor.com', 4293),
('profesor', 'profesor', 'dddd', 45, 4, 'profesor@profesor.com', 4356),
('profesor', 'profesor', 'pa', 46, 1, 'profesor@profesor.com', 4279),
('profesor', 'profesor', 'payoff', 46, 2, 'profesor@profesor.com', 4223),
('profesor', 'profesor', 'aaaaa', 47, 1, 'profesor@profesor.com', 4279),
('profesor', 'profesor', 'vvvvv', 47, 2, 'profesor@profesor.com', 4223),
('profesor', 'profesor', 'a', 48, 1, 'profesor@profesor.com', 4279),
('profesor', 'profesor', 'A', 49, 1, 'profesor@profesor.com', 0),
('profesor', 'profesor', 'h', 50, 1, 'profesor@profesor.com', 4279),
('profesor', 'profesor', 'jj', 53, 1, 'profesor@profesor.com', 0),
('profesor', 'profesor', 'k', 54, 1, 'profesor@profesor.com', 0),
('profesor', 'profesor', 'e', 55, 1, 'profesor@profesor.com', 0),
('profesor', 'profesor', 'a', 55, 2, 'profesor@profesor.com', 0),
('profesor', 'profesor', 'es', 56, 1, 'profesor@profesor.com', 0),
('profesor', 'profesor', 'p', 66, 1, 'profesor@profesor.com', 0),
('profesor', 'profesor', 'a', 96, 1, 'profesor@profesor.com', 0),
('profesor', 'profesor', 'q', 96, 2, 'profesor@profesor.com', 0),
('profesor', 'profesor', 'a', 96, 3, 'profesor@profesor.com', 0),
('profesor', 'profesor', 'q', 97, 1, 'profesor@profesor.com', 0),
('profesor', 'profesor', '1', 97, 2, 'profesor@profesor.com', 0),
('profesor', 'profesor', '2', 97, 3, 'profesor@profesor.com', 0),
('profesor', 'profesor', '1', 97, 4, 'profesor@profesor.com', 0),
('profesor', 'profesor', '1', 98, 1, 'profesor@profesor.com', 0),
('profesor', 'profesor', '1', 98, 2, 'profesor@profesor.com', 0),
('profesor', 'profesor', '2', 98, 3, 'profesor@profesor.com', 0),
('profesor', 'profesor', '1', 99, 1, 'profesor@profesor.com', 4697),
('profesor', 'profesor', '22', 99, 2, 'profesor@profesor.com', 4701),
('profesor', 'profesor', '3', 99, 3, 'profesor@profesor.com', 4695),
('profesor', 'profesor', '4', 99, 4, 'profesor@profesor.com', 4699),
('profesor', 'profesor', '10', 100, 1, 'profesor@profesor.com', 4705),
('profesor', 'profesor', '2', 100, 2, 'profesor@profesor.com', 4718),
('profesor', 'profesor', '3', 100, 3, 'profesor@profesor.com', 4697),
('profesor', 'profesor', '4', 100, 4, 'profesor@profesor.com', 4691),
('profesor', 'profesor', '1', 101, 1, 'profesor@profesor.com', 0),
('profesor', 'profesor', 'Es', 102, 1, 'profesor@profesor.com', 0),
('profesor', 'profesor', 'estr', 103, 1, 'profesor@profesor.com', 0),
('profesor', 'profesor', 'A', 111, 1, 'profesor@profesor.com', 0),
('profesor', 'profesor', 'k', 112, 1, 'profesor@profesor.com', 0),
('profesor', 'profesor', '1', 113, 1, 'profesor@profesor.com', 0),
('profesor', 'profesor', '3', 114, 1, 'profesor@profesor.com', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payoffs`
--

CREATE TABLE `payoffs` (
  `idTorneo` int(11) NOT NULL,
  `mutualcoop` int(11) NOT NULL,
  `suckerspayoff` int(11) NOT NULL,
  `mutualdefect` int(11) NOT NULL,
  `temptationtodefect` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `payoffs`
--

INSERT INTO `payoffs` (`idTorneo`, `mutualcoop`, `suckerspayoff`, `mutualdefect`, `temptationtodefect`) VALUES
(80, 0, 0, 0, 0),
(81, 1, 2, 3, 4),
(82, 0, 0, 0, 0),
(83, 0, 1, 2, 3),
(84, 0, 0, 0, 0),
(85, 0, 0, 0, 0),
(86, 0, 0, 0, 0),
(87, 0, 0, 0, 0),
(88, 0, 0, 0, 0),
(89, 0, 0, 0, 0),
(90, 0, 0, 0, 0),
(91, 0, 0, 0, 0),
(92, 0, 0, 0, 0),
(93, 0, 0, 0, 0),
(94, 0, 0, 0, 0),
(95, 0, 0, 0, 0),
(96, 10, 20, 30, 40),
(97, 11, 22, 33, 44),
(98, 0, 0, 0, 0),
(99, 1, 2, 3, 4),
(100, 1, 2, 3, 4),
(101, 0, 0, 0, 0),
(102, 0, 0, 0, 0),
(103, 0, 0, 0, 0),
(104, 0, 0, 0, 0),
(105, 0, 0, 0, 0),
(106, 0, 0, 0, 0),
(107, 0, 0, 0, 0),
(108, 0, 0, 0, 0),
(109, 0, 0, 0, 0),
(110, 0, 0, 0, 0),
(111, 0, 0, 0, 0),
(112, 0, 0, 0, 0),
(113, 0, 0, 0, 0),
(114, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Salas`
--

CREATE TABLE `Salas` (
  `idSala` int(11) NOT NULL,
  `idTorneo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Salas`
--

INSERT INTO `Salas` (`idSala`, `idTorneo`) VALUES
(1, NULL),
(2, NULL),
(3, NULL),
(4, NULL),
(5, 112);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Torneos`
--

CREATE TABLE `Torneos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `idUserCreador` int(11) NOT NULL,
  `finalizado` tinyint(1) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Torneos`
--

INSERT INTO `Torneos` (`id`, `nombre`, `idUserCreador`, `finalizado`, `fechaInicio`, `fechaFin`) VALUES
(1, 'Torneo de prueba', 1, 1, '0000-00-00', '0000-00-00'),
(2, 'nombreTorneo', 1, 1, '0000-00-00', '0000-00-00'),
(3, 'nombreTorneo', 1, 0, '0000-00-00', '0000-00-00'),
(4, 'nombreTorneo', 1, 0, '0000-00-00', '0000-00-00'),
(5, 'nombreTorneo', 1, 0, '0000-00-00', '0000-00-00'),
(6, 'nombreTorneo', 1, 0, '0000-00-00', '0000-00-00'),
(7, 'nombreTorneo', 1, 0, '0000-00-00', '0000-00-00'),
(8, 'nombreTorneo', 1, 0, '0000-00-00', '0000-00-00'),
(9, 'nombreTorneo', 1, 0, '0000-00-00', '0000-00-00'),
(10, 'nombreTorneo', 1, 0, '0000-00-00', '0000-00-00'),
(11, 'nombreTorneo', 1, 0, '0000-00-00', '0000-00-00'),
(12, 'nombreTorneo', 1, 0, '0000-00-00', '0000-00-00'),
(13, 'nombreTorneo', 1, 1, '0000-00-00', '0000-00-00'),
(14, '', 0, 1, '0000-00-00', '0000-00-00'),
(15, 'jba0040@alu.ubu.es', 0, 1, '0000-00-00', '0000-00-00'),
(16, 'jba0040@alu.ubu.es', 1, 1, '0000-00-00', '0000-00-00'),
(17, 'jba0040@alu.ubu.es', 1, 0, '0000-00-00', '0000-00-00'),
(18, 'jba0040@alu.ubu.es', 1, 0, '0000-00-00', '0000-00-00'),
(19, 'jba0040@alu.ubu.es', 1, 1, '0000-00-00', '0000-00-00'),
(20, 'jba0040@alu.ubu.es', 1, 1, '0000-00-00', '0000-00-00'),
(21, 'jba0040@alu.ubu.es', 1, 0, '0000-00-00', '0000-00-00'),
(22, 'jba0040@alu.ubu.es', 1, 1, '0000-00-00', '0000-00-00'),
(23, 'jba0040@alu.ubu.es', 1, 1, '0000-00-00', '0000-00-00'),
(24, 'jba0040@alu.ubu.es', 1, 0, '0000-00-00', '0000-00-00'),
(25, 'jba0040@alu.ubu.es', 1, 1, '0000-00-00', '0000-00-00'),
(26, 'a', 1, 1, '0000-00-00', '0000-00-00'),
(27, 'a', 1, 1, '0000-00-00', '0000-00-00'),
(28, 'a', 1, 1, '0000-00-00', '0000-00-00'),
(29, 's', 1, 0, '0000-00-00', '0000-00-00'),
(30, 'a', 16, 1, '0000-00-00', '0000-00-00'),
(31, 'b', 16, 1, '0000-00-00', '0000-00-00'),
(32, 'c', 16, 1, '0000-00-00', '0000-00-00'),
(33, 'd', 16, 1, '0000-00-00', '0000-00-00'),
(34, 'a', 16, 1, '0000-00-00', '0000-00-00'),
(35, '2', 16, 1, '0000-00-00', '2016-12-05'),
(36, '3', 16, 1, '0000-00-00', '2016-12-05'),
(37, '4', 16, 1, '0000-00-00', '2016-12-05'),
(38, '5', 16, 1, '0000-00-00', '2016-12-05'),
(39, 'fecha', 16, 1, '2016-12-05', '2016-12-08'),
(40, 'Torneo1', 16, 1, '2016-12-21', '2016-12-21'),
(41, 'fff', 16, 1, '2016-12-21', '2016-12-21'),
(42, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(43, 'torneoprueba', 16, 1, '2016-12-21', '2016-12-21'),
(44, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(45, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(46, 'payoffs', 16, 1, '2016-12-21', '2016-12-21'),
(47, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(48, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(49, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(50, 'h', 16, 1, '2016-12-21', '2016-12-21'),
(51, 'h', 16, 1, '2016-12-21', '2016-12-21'),
(52, 'h', 16, 1, '2016-12-21', '2016-12-21'),
(53, 'h', 16, 1, '2016-12-21', '2016-12-21'),
(54, 'j', 16, 1, '2016-12-21', '2016-12-21'),
(55, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(56, 'aaaa', 16, 1, '2016-12-21', '2016-12-21'),
(57, 's', 16, 1, '2016-12-21', '2016-12-21'),
(58, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(59, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(60, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(61, 'n', 16, 1, '2016-12-21', '2016-12-21'),
(62, 'n', 16, 1, '2016-12-21', '2016-12-21'),
(63, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(64, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(65, 'k', 16, 1, '2016-12-21', '2016-12-21'),
(66, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(67, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(68, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(69, 'k', 16, 1, '2016-12-21', '2016-12-21'),
(70, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(71, 'q', 16, 1, '2016-12-21', '2016-12-21'),
(72, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(73, 'j', 16, 1, '2016-12-21', '2016-12-21'),
(74, 'j', 16, 1, '2016-12-21', '2016-12-21'),
(75, 'j', 16, 1, '2016-12-21', '2016-12-21'),
(76, 'k', 16, 1, '2016-12-21', '2016-12-21'),
(77, 'k', 16, 1, '2016-12-21', '2016-12-21'),
(78, 'l', 16, 1, '2016-12-21', '2016-12-21'),
(79, 'o', 16, 1, '2016-12-21', '2016-12-21'),
(80, 'Tor', 16, 1, '2016-12-21', '2016-12-21'),
(81, 'TorneoPruebaPayoffs', 16, 1, '2016-12-21', '2016-12-21'),
(82, 'To', 16, 1, '2016-12-21', '2016-12-21'),
(83, 'TorneoPruebaPayoffs', 16, 1, '2016-12-21', '2016-12-21'),
(84, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(85, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(86, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(87, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(88, 'k', 16, 1, '2016-12-21', '2016-12-21'),
(89, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(90, 'u', 16, 1, '2016-12-21', '2016-12-21'),
(91, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(92, 'j', 16, 1, '2016-12-21', '2016-12-21'),
(93, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(94, 'h', 16, 1, '2016-12-21', '2016-12-21'),
(95, 'q', 16, 1, '2016-12-21', '2016-12-21'),
(96, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(97, 'q', 16, 1, '2016-12-21', '2016-12-21'),
(98, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(99, 'a', 16, 1, '2016-12-21', '2016-12-21'),
(100, '1', 16, 1, '2016-12-21', '2016-12-21'),
(101, 'a', 16, 1, '2016-12-24', '2016-12-24'),
(102, '1', 16, 1, '2016-12-24', '2016-12-24'),
(103, '2', 16, 1, '2016-12-24', '2016-12-24'),
(104, 'a', 16, 1, '2016-12-24', '2016-12-24'),
(105, '', 16, 1, '2016-12-24', '2016-12-24'),
(106, 'k', 16, 1, '2016-12-24', '2016-12-24'),
(107, 'k', 16, 1, '2016-12-24', '2016-12-24'),
(108, 'a', 16, 1, '2016-12-24', '2016-12-24'),
(109, 'a', 16, 1, '2016-12-24', '2016-12-24'),
(110, 'a', 16, 1, '2016-12-24', '2016-12-24'),
(111, 'a', 16, 1, '2016-12-24', '2016-12-24'),
(112, 'm', 16, 0, '2016-12-24', '0000-00-00'),
(113, 'T', 16, 1, '2016-12-24', '2016-12-24'),
(114, '1', 16, 1, '2016-12-24', '2016-12-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `profesor` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `nombre`, `apellidos`, `email`, `password`, `profesor`) VALUES
(1, 'jba0040', 'Jose Antonio', 'Barbero Aparicio', 'jba0040@alu.ubu.es', '1234', 1),
(15, 'alumno', 'alumno', 'alumno', 'alumno@alu.ubu.es', 'alumno', 0),
(16, 'profesor', 'profesor', 'profesor', 'profesor@profesor.com', 'profesor', 1),
(18, 'PruebaRegistroEncrip', 'PruebaRegistroEncrip', 'PruebaRegistroEncriptado', 'PruebaRegistroEncriptado@PruebaRegistroEncriptado.', '$2y$10$5MVfKyU8EJw9P', 1),
(19, 'PruebaRegistroEncriptado', 'PruebaRegistroEncriptado', 'PruebaRegistroEncriptado', 'PruebaRegistroEncriptado@PruebaRegistroEncriptado.com', '$2y$10$rjF0zzofuX5fBA17YaAT4OxZlvv./mI9oM0NM6o0qyjLkwNokQgZO', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `participantes`
--
ALTER TABLE `participantes`
  ADD PRIMARY KEY (`idTorneo`,`numeroParticipante`);

--
-- Indices de la tabla `payoffs`
--
ALTER TABLE `payoffs`
  ADD PRIMARY KEY (`idTorneo`);

--
-- Indices de la tabla `Salas`
--
ALTER TABLE `Salas`
  ADD PRIMARY KEY (`idSala`);

--
-- Indices de la tabla `Torneos`
--
ALTER TABLE `Torneos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Torneos`
--
ALTER TABLE `Torneos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
