-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-12-2023 a las 01:40:24
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escolar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `name` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `cel` varchar(255) NOT NULL,
  `grupo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`name`, `correo`, `cel`, `grupo`) VALUES
('Julio gonzalez', 'gonzales@gmail.com', '65256', '54254');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `name` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `cel` varchar(255) NOT NULL,
  `g-tutor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`name`, `correo`, `cel`, `g-tutor`) VALUES
('doblea', 'doblea@lalos.com', '5555555', '9751'),
('paco', 'paco@fasda.com', '8888', '6532');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `user_key` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `dire` varchar(255) NOT NULL,
  `cel` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `business` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id_user`, `user_key`, `name`, `role`, `password`, `genero`, `date`, `correo`, `status`, `dire`, `cel`, `img`, `branch`, `business`) VALUES
(1, 'admin', 'a', 'administrador', '$2y$10$fEEjZaLijoChW0gO4kE3QOF0tvlxLoeOheDzIdnIech8BxXnqHOba', 'hm', '152502', 'jajaja@ham.com', 'bien', 'av ', '555', 'img/usjs.png', 'Faschool', 'faschool'),
(2, '', 'A', '', '$2y$10$LVb.IpH6jv0TS9e0nytGNeXrpyJA37NFeeOwah4UyjQ/r/MjoaHOq', '', '', 'a@j.com', '', '', '55', '', 'SALLETTY', 'SALLETTY');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
