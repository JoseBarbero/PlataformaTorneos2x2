-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 12-01-2017 a las 14:26:39
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
('a', 'a', 'a', 112, 2, 'a@a', 0),
('Alumno', 'Alumno', 'Estrategia Test', 112, 3, 'Alumno@alu.ubu.es', 0),
('Alumno', 'Alumno', 'Estrategia Test', 112, 4, 'Alumno@alu.ubu.es', 0),
('Alumno', 'Alumno', 'Estrategia Test', 112, 5, 'Alumno@alu.ubu.es', 0),
('Alumno', 'Alumno', 'Estrategia Test', 112, 6, 'Alumno@alu.ubu.es', 0),
('Alumno', 'Alumno', 'Estrategia Test', 112, 7, 'Alumno@alu.ubu.es', 0),
('Alumno', 'Alumno', 'Estrategia Test', 112, 8, 'Alumno@alu.ubu.es', 0),
('Alumno', 'Alumno', 'Estrategia Test', 112, 9, 'Alumno@alu.ubu.es', 0),
('Alumno', 'Alumno', 'Estrategia Test', 112, 10, 'Alumno@alu.ubu.es', 0),
('Alumno', 'Alumno', 'Estrategia Test', 112, 11, 'Alumno@alu.ubu.es', 0),
('Alumno', 'Alumno', 'Estrategia Test', 112, 12, 'Alumno@alu.ubu.es', 0),
('Alumno', 'Alumno', 'Estrategia Test', 112, 13, 'Alumno@alu.ubu.es', 0),
('Alumno', 'Alumno', 'Estrategia Test', 112, 14, 'Alumno@alu.ubu.es', 0),
('Alumno', 'Alumno', 'Estrategia Test', 112, 15, 'Alumno@alu.ubu.es', 0),
('Alumno', 'Alumno', 'Estrategia Test', 112, 16, 'Alumno@alu.ubu.es', 0),
('Alumno', 'Alumno', 'Estrategia Test', 112, 17, 'Alumno@alu.ubu.es', 0),
('Alumno', 'Alumno', 'Estrategia Test', 112, 18, 'Alumno@alu.ubu.es', 0),
('Alumno', 'Alumno', 'Estrategia Test', 112, 19, 'Alumno@alu.ubu.es', 0),
('profesor', 'profesor', '1', 113, 1, 'profesor@profesor.com', 0),
('profesor', 'profesor', '3', 114, 1, 'profesor@profesor.com', 0),
('PruebaRegistroEncriptado', 'PruebaRegistroEncriptado', 'es1', 115, 1, 'PruebaRegistroEncriptado@PruebaRegistroEncriptado.', 0),
('PruebaRegistroEncriptado', 'PruebaRegistroEncriptado', 'Estra', 115, 2, 'PruebaRegistroEncriptado@PruebaRegistroEncriptado.', 0),
('PruebaRegistroEncriptado', 'PruebaRegistroEncriptado', '3', 115, 3, 'PruebaRegistroEncriptado@PruebaRegistroEncriptado.', 0),
('PruebaRegistroEncriptado', 'PruebaRegistroEncriptado', 'EstrategiaPrueba', 118, 1, 'PruebaRegistroEncriptado@PruebaRegistroEncriptado.', 0),
('PruebaRegistroEncriptado', 'PruebaRegistroEncriptado', '2', 118, 2, 'PruebaRegistroEncriptado@PruebaRegistroEncriptado.', 0),
('PruebaRegistroEncriptado', 'PruebaRegistroEncriptado', 'A', 119, 1, 'PruebaRegistroEncriptado@PruebaRegistroEncriptado.', 0),
('PruebaRegistroEncriptado', 'PruebaRegistroEncriptado', 'B', 119, 2, 'PruebaRegistroEncriptado@PruebaRegistroEncriptado.', 0),
('PruebaRegistroEncriptado', 'PruebaRegistroEncriptado', 'A', 120, 1, 'PruebaRegistroEncriptado@PruebaRegistroEncriptado.', 0),
('PruebaRegistroEncriptado', 'PruebaRegistroEncriptado', 'B', 120, 2, 'PruebaRegistroEncriptado@PruebaRegistroEncriptado.', 0),
('PruebaRegistroEncriptado', 'PruebaRegistroEncriptado', 'C', 120, 3, 'PruebaRegistroEncriptado@PruebaRegistroEncriptado.', 0),
('PruebaRegistroEncriptado', 'PruebaRegistroEncriptado', 'A', 121, 1, 'PruebaRegistroEncriptado@PruebaRegistroEncriptado.', 2295),
('Alumno', 'Alumno Alumno', 'Estrategia de ejemplo 1', 140, 1, 'alumno@alumno.com', 8451),
('Richard', 'Dawkins', 'Egoism', 140, 2, 'rdawkins@daw.com', 8423),
('Neil', 'deGrasse Tyson', 'Journey', 140, 3, 'ndty@cosmos.com', 8528),
('Carl', 'Sagan', 'Candle', 140, 4, 'csagan@cosmos.com', 8521),
('Daniel', 'Dennet', 'DenForDan', 140, 5, 'dan@den.com', 8507),
('Richard', 'Feynman', 'Unlock', 140, 6, 'rfey@caltec.com', 8479),
('John ', 'Maynard Smith', 'JMS', 140, 7, 'john@maysmith.com', 8514),
('Elon', 'Musk', 'Tesla', 140, 8, 'elon@tesla.com', 8549),
('Bill', 'Nye', 'Science', 140, 9, 'bill@nye.com', 8402),
('Robert', 'Axelrod', 'Tit', 140, 10, 'rob@axel.com', 8563),
('Michio', 'Kaku', 'Impossible', 140, 11, 'michio@kaku.com', 8542),
('Profesor', 'Profesor', 'Estrategia de ejemplo 2', 141, 1, 'profesor@profesor.com', 84710),
('Philip K.', 'Dick', 'Runner', 141, 2, 'Phil@run.com', 96980),
('Douglas', 'Adams', 'Estrategia42', 141, 3, 'Douglas@adams.com', 87950),
('George', 'Orwell', 'Big Brother', 141, 4, 'george@orwell.com', 98160),
('Walter', 'Isaacson', 'Bio', 141, 5, 'wal@isaacson.com', 100650),
('Isaac', 'Asimov', 'Robot', 141, 6, 'is@mov.com', 103000),
('Arthur C.', 'Clarke', 'Law', 141, 7, 'art@clark.com', 88600),
('Profesor', 'Profesor', 'Prof', 142, 1, 'profesor@profesor.com', 0),
('Walter Hartwell', 'White', 'Heisenberg', 142, 2, 'ww@white.com', 0),
('Pablo Emilio', 'Escobar Gaviria', 'AgPb', 142, 3, 'pb@esc.com', 0),
('Tyrion', 'Lannister', 'Pay', 142, 4, 'ty@lann.com', 0),
('Sheldon Lee', 'Cooper', 'Knock Knock', 142, 5, 'sheldon@cooper.com', 0),
('Daryl', 'Dixon', 'Crossbow', 142, 6, 'daryl@dixon.com', 0),
('Rick', 'Grimes', 'Lead', 142, 7, 'rick@rgrimes.com', 0),
('Alumno', 'Alumno Alumno', 'EstrategiaAlumno', 142, 8, 'alumno@alumno.com', 0),
('Profesor', 'Profesor', 'ProfesorEst', 143, 1, '', 0),
('ParticipanteEjemplo1', 'ParticipanteEjemplo1', 'EstrategiaEjemplo1', 144, 1, 'ParticipanteEjemplo1@ParticipanteEjemplo1.com', 0),
('ParticipanteEjemplo2', 'ParticipanteEjemplo2', 'ParticipanteEjemplo2', 144, 2, 'ParticipanteEjemplo2@ParticipanteEjemplo2.com', 0),
('ParticipanteEjemplo3', 'ParticipanteEjemplo3', 'ParticipanteEjemplo3', 144, 3, 'ParticipanteEjemplo1@ejemplo.com', 0),
('ParticipanteEjemplo4', 'ParticipanteEjemplo4', 'ParticipanteEjemplo4', 144, 4, 'ParticipanteEjemplo4@ejemplo.com', 0);

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
(114, 0, 0, 0, 0),
(115, 0, 0, 0, 0),
(116, 1, 2, 3, 4),
(117, 0, 0, 0, 0),
(118, 6, 1, 10, 3),
(119, 1, 2, 3, 4),
(120, 5, 6, 7, 8),
(121, 1, 2, 3, 4),
(122, 6, 1, 10, 3),
(123, 1, 2, 34, 4),
(124, 6, 1, 10, 3),
(125, 6, 1, 10, 3),
(126, 6, 1, 10, 3),
(127, 6, 1, 10, 3),
(128, 6, 1, 10, 3),
(129, 6, 1, 10, 3),
(130, 6, 1, 10, 3),
(131, 6, 1, 10, 3),
(132, 6, 1, 10, 3),
(133, 6, 1, 10, 3),
(134, 6, 1, 10, 3),
(135, 6, 1, 10, 3),
(136, 6, 1, 10, 3),
(137, 6, 1, 10, 3),
(138, 6, 1, 10, 3),
(139, 6, 1, 10, 3),
(140, 6, 1, 10, 3),
(141, 60, 10, 100, 30),
(142, 17, 0, 34, 6),
(143, 0, 0, 0, 0),
(144, 3, 0, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

CREATE TABLE `salas` (
  `idSala` int(11) NOT NULL,
  `idTorneo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `salas`
--

INSERT INTO `salas` (`idSala`, `idTorneo`) VALUES
(1, NULL),
(2, NULL),
(3, NULL),
(4, 144),
(5, 142);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torneos`
--

CREATE TABLE `torneos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `idUserCreador` int(11) NOT NULL,
  `finalizado` tinyint(1) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `torneos`
--

INSERT INTO `torneos` (`id`, `nombre`, `idUserCreador`, `finalizado`, `fechaInicio`, `fechaFin`) VALUES
(140, 'Torneo de ejemplo 1', 22, 1, '2017-01-10', '2017-01-10'),
(141, 'Torneo de ejemplo 2', 22, 1, '2017-01-10', '2017-01-10'),
(142, 'Torneo A', 22, 0, '2017-01-10', '0000-00-00'),
(144, 'Torneo de ejemplo 4', 22, 0, '2017-01-12', '0000-00-00');

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
(19, 'PruebaRegistroEncriptado', 'PruebaRegistroEncriptado', 'PruebaRegistroEncriptado', 'PruebaRegistroEncriptado@PruebaRegistroEncriptado.com', '$2y$10$rjF0zzofuX5fBA17YaAT4OxZlvv./mI9oM0NM6o0qyjLkwNokQgZO', 1),
(20, 'profesor', 'profesor', 'profesor', 'profesor@ubu.es', '$2y$10$swfy/16zC5C9./9VXCWn/ud1.jxYWB9Ygpmt9QsnGDOrUafd8XYOq', 1),
(21, 'Alumno', 'Alumno', 'Alumno', 'alumno@alu.ubu.es', '$2y$10$LO46Nwkw3/kcVE8m9f0bQ.N6xzP1Yd.vbn2ZhvgGwdQpFUrmXVX8a', 0),
(22, 'Profesor', 'Profesor', 'Profesor', 'profesor@profesor.com', '$2y$10$/9.5m3O42A2thqSHSRJVT...yB5/bsweRlrSAFOo80BUt803tjIzi', 1),
(56, 'Repetido', 'Repetido', 'Repetido', 'Repetido@Repetido.com', '$2y$10$sGqDFf66.knbYRY7xDSohea1381UXJBICq4PSRqT1NS39sh9168HS', 0),
(57, 'Test', 'Test', 'Test', 'Test@Test.com', '$2y$10$fXa49I6UT7NEhif09lR0xODW2v1fLqmCFRcoBsfDOXXSVUbL3nIyq', 0),
(82, 'Alumno', 'Alumno', 'Alumno Alumno', 'Alumno@alumno.com', '$2y$10$COEweoqi/uW7PpmYkqJ48.4di18oqeJlm34y2f2jVOtB7ggjOwVrm', 0);

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
-- Indices de la tabla `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`idSala`);

--
-- Indices de la tabla `torneos`
--
ALTER TABLE `torneos`
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
-- AUTO_INCREMENT de la tabla `torneos`
--
ALTER TABLE `torneos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
