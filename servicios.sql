-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-01-2024 a las 05:26:04
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `servicios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Nombre_Cliente` varchar(50) NOT NULL,
  `Teléfono` int(40) NOT NULL,
  `Teléfono 2` int(40) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `Dirección` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id` int(10) NOT NULL,
  `Nombre_Cliente` varchar(50) NOT NULL,
  `Teléfono` int(40) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Referenica_Domicilio` varchar(100) NOT NULL,
  `Tipo_Servicio` varchar(80) NOT NULL,
  `Problema_Presentado` varchar(100) NOT NULL,
  `agente` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id`, `Nombre_Cliente`, `Teléfono`, `Direccion`, `Referenica_Domicilio`, `Tipo_Servicio`, `Problema_Presentado`, `agente`) VALUES
(1, 'dibanhi', 2147483647, 'cctv', 'dtfgyihjocfvbjklivgbhjk', 'ajbndsbcikbsdbcsjbks', 'cbdckjsdbhvkjds', ''),
(2, 'xochitl idaly aguero sanchez', 32950239, 'reparacion', 'fraccionamiento fundadores calle nuevo leo ¿n #1092', 'deaaaaaaaam', 'no jalan las camaras', ''),
(14, 'cygvhbjkml', 0, ' hbjnk,m', 'zsxdvh ', '', '', 'qwzexcfrgtvbh'),
(16, 'deam', 83470, 'deam', 'deam', '', '', 'deam'),
(18, 'hola', 98789, 'hola', 'hola', '', '', 'hola'),
(19, '', 0, '', '', '', '', ''),
(20, '', 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_usuario` int(2) NOT NULL,
  `Nombre` varchar(500) NOT NULL,
  `teléfono` int(15) NOT NULL,
  `registro` date NOT NULL DEFAULT current_timestamp(),
  `estatus` varchar(10) NOT NULL,
  `nivel` varchar(50) NOT NULL,
  `Usuario` varchar(20) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_usuario`, `Nombre`, `teléfono`, `registro`, `estatus`, `nivel`, `Usuario`, `Password`) VALUES
(1, 'xochitl idaly aguero sanchez', 8118762, '2024-01-10', 'activo', 'administrador', 'XIAS', 'admin'),
(2, 'luis fernando guerrero chipol', 928374923, '2024-01-10', 'activo', 'ventas', 'LFGC', 'admin'),
(21, 'eduardo daniel aguero sanchez', 8798793, '2024-01-18', 'activo', 'tecnico', 'EDAS', 'admin123'),
(22, 'eduardo daniel aguero sanchez', 8798793, '2024-01-18', 'activo', 'tecnico', 'EDAS', 'admin123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_usuario` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
