-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-04-2022 a las 21:07:00
-- Versión del servidor: 8.0.27
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `actividades`
--
CREATE DATABASE IF NOT EXISTS `actividades` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `actividades`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idcliente` int NOT NULL,
  `nombreCliente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `apellidoCliente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `segundoApellidoCliente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idcliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idcliente` int NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `ejecicio5`
--
CREATE DATABASE IF NOT EXISTS `ejecicio5` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `ejecicio5`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animales`
--

CREATE TABLE `animales` (
  `idAnimal` int NOT NULL,
  `microchipAnimal` decimal(20,0) DEFAULT NULL,
  `nombreAnimal` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `razaAnimal` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `idPersonaFK` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `idPersona` int NOT NULL,
  `dniPersona` varchar(9) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `primerapellidoPersona` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `segundoApellidoPersona` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `correoElectronico` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `direccionPersona` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`idPersona`, `dniPersona`, `primerapellidoPersona`, `segundoApellidoPersona`, `correoElectronico`, `direccionPersona`) VALUES
(1, '12345678Z', 'SANCHEZ', 'PEREZ', ' ANASP@GMAIL.COM', 'CALLE DEL BUCARO,23, 1º A'),
(2, '87654321A', 'RUIZ', 'SALGUERO', ' BONI1988@OUTLOOK.COM', ' AVDA. DE LA VICTORIA,27, BAJO A'),
(3, '8989856N', 'antonio ALAMO', 'granel', 'carballo1989d@gmail.com', 'becker');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `animales`
--
ALTER TABLE `animales`
  ADD PRIMARY KEY (`idAnimal`),
  ADD KEY `idPersonaFK` (`idPersonaFK`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`idPersona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `animales`
--
ALTER TABLE `animales`
  MODIFY `idAnimal` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `idPersona` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `animales`
--
ALTER TABLE `animales`
  ADD CONSTRAINT `animales_ibfk_1` FOREIGN KEY (`idPersonaFK`) REFERENCES `personas` (`idPersona`);
--
-- Base de datos: `ejempleo1`
--
CREATE DATABASE IF NOT EXISTS `ejempleo1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `ejempleo1`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `idciudad` int NOT NULL,
  `nombreCiudad` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`idciudad`, `nombreCiudad`) VALUES
(1, 'Sevilla'),
(2, 'cordoba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monumentos`
--

CREATE TABLE `monumentos` (
  `idMonumento` int NOT NULL,
  `nombreMonumento` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `fechaconstruccion` date DEFAULT NULL,
  `idciudadFK` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `monumentos`
--

INSERT INTO `monumentos` (`idMonumento`, `nombreMonumento`, `fechaconstruccion`, `idciudadFK`) VALUES
(1, 'la Giralda', '1100-06-05', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`idciudad`);

--
-- Indices de la tabla `monumentos`
--
ALTER TABLE `monumentos`
  ADD PRIMARY KEY (`idMonumento`),
  ADD KEY `idciudadFK` (`idciudadFK`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `idciudad` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `monumentos`
--
ALTER TABLE `monumentos`
  MODIFY `idMonumento` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `monumentos`
--
ALTER TABLE `monumentos`
  ADD CONSTRAINT `monumentos_ibfk_1` FOREIGN KEY (`idciudadFK`) REFERENCES `ciudades` (`idciudad`);
--
-- Base de datos: `ejercicio2`
--
CREATE DATABASE IF NOT EXISTS `ejercicio2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `ejercicio2`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `idCiudad` int NOT NULL,
  `nombreCiudad` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `esCapital` bit(1) DEFAULT NULL,
  `idPaisFK` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `continentes`
--

CREATE TABLE `continentes` (
  `idcontinente` int NOT NULL,
  `nombrecontinente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `idPais` int NOT NULL,
  `nombrePais` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `idcontinenteFK` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`idCiudad`),
  ADD KEY `idPaisFK` (`idPaisFK`);

--
-- Indices de la tabla `continentes`
--
ALTER TABLE `continentes`
  ADD PRIMARY KEY (`idcontinente`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`idPais`),
  ADD KEY `idcontinenteFK` (`idcontinenteFK`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `idCiudad` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `continentes`
--
ALTER TABLE `continentes`
  MODIFY `idcontinente` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `idPais` int NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `ciudades_ibfk_1` FOREIGN KEY (`idPaisFK`) REFERENCES `paises` (`idPais`);

--
-- Filtros para la tabla `paises`
--
ALTER TABLE `paises`
  ADD CONSTRAINT `paises_ibfk_1` FOREIGN KEY (`idcontinenteFK`) REFERENCES `continentes` (`idcontinente`);
--
-- Base de datos: `ejercicio3`
--
CREATE DATABASE IF NOT EXISTS `ejercicio3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `ejercicio3`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `idAsignatura` int NOT NULL,
  `nombreAsignatura` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `cursoAsignatura` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`idAsignatura`, `nombreAsignatura`, `cursoAsignatura`) VALUES
(1, 'base de datos', 3),
(2, 'base de datos', 3),
(6, 'matemáticas', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclos`
--

CREATE TABLE `ciclos` (
  `idCiclo` int NOT NULL,
  `NombreCiclo` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pertenencias`
--

CREATE TABLE `pertenencias` (
  `idPertenencia` int NOT NULL,
  `idAsignaturaFK` int DEFAULT NULL,
  `idCicloFK` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`idAsignatura`);

--
-- Indices de la tabla `ciclos`
--
ALTER TABLE `ciclos`
  ADD PRIMARY KEY (`idCiclo`);

--
-- Indices de la tabla `pertenencias`
--
ALTER TABLE `pertenencias`
  ADD PRIMARY KEY (`idPertenencia`),
  ADD KEY `idAsignaturaFK` (`idAsignaturaFK`),
  ADD KEY `idCicloFK` (`idCicloFK`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `idAsignatura` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ciclos`
--
ALTER TABLE `ciclos`
  MODIFY `idCiclo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pertenencias`
--
ALTER TABLE `pertenencias`
  MODIFY `idPertenencia` int NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pertenencias`
--
ALTER TABLE `pertenencias`
  ADD CONSTRAINT `pertenencias_ibfk_1` FOREIGN KEY (`idAsignaturaFK`) REFERENCES `asignaturas` (`idAsignatura`),
  ADD CONSTRAINT `pertenencias_ibfk_2` FOREIGN KEY (`idCicloFK`) REFERENCES `ciclos` (`idCiclo`);
--
-- Base de datos: `ejercicio7`
--
CREATE DATABASE IF NOT EXISTS `ejercicio7` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `ejercicio7`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `idDepartamento` int NOT NULL,
  `nombreDepartamento` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`idDepartamento`, `nombreDepartamento`) VALUES
(1, 'Informática'),
(2, 'Producción');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL,
  `nombreEmpleado` varchar(45) DEFAULT NULL,
  `primerApellidoEmpleado` varchar(45) DEFAULT NULL,
  `segundoApellidoEmpleado` varchar(45) DEFAULT NULL,
  `cargoEmpleado` varchar(45) DEFAULT NULL,
  `dniEmpleado` varchar(9) DEFAULT NULL,
  `idDepartamentoFK` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `nombreEmpleado`, `primerApellidoEmpleado`, `segundoApellidoEmpleado`, `cargoEmpleado`, `dniEmpleado`, `idDepartamentoFK`) VALUES
(1, 'Inmaculada', 'Rivera', 'Pablo', 'Programadora', '29493196P', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`idDepartamento`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD KEY `idDepartamentoFK` (`idDepartamentoFK`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `idDepartamento` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`idDepartamentoFK`) REFERENCES `departamentos` (`idDepartamento`);
--
-- Base de datos: `ejercicio8`
--
CREATE DATABASE IF NOT EXISTS `ejercicio8` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `ejercicio8`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `idDepartamento` int NOT NULL,
  `nombreDepartamento` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`idDepartamento`, `nombreDepartamento`) VALUES
(1, 'Recursos Humanos'),
(2, 'Contabilidad'),
(3, 'Finanzas'),
(4, 'Producción'),
(5, 'Dirección');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL,
  `nombreEmpleado` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `primerApellidoEmpleado` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `segundoApellidoEmpleado` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `dniEmpleado` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `nombreEmpleado`, `primerApellidoEmpleado`, `segundoApellidoEmpleado`, `dniEmpleado`) VALUES
(1, 'Ana', 'Sánchez', 'Ruiz', '12345678Z'),
(2, 'Bonifacio', 'Jiménez', 'López', '87654321A'),
(3, 'Carlos ', 'López', 'Salguero', '11223344H'),
(4, 'Daniela', 'Ferrer', 'González', '23141516K');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historico`
--

CREATE TABLE `historico` (
  `idHistorio` int NOT NULL,
  `idEmpleadoFK` int DEFAULT NULL,
  `idDepartamentoFK` int DEFAULT NULL,
  `cargoEmpleado` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `fechaDesde` date DEFAULT NULL,
  `fechaHasta` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `historico`
--

INSERT INTO `historico` (`idHistorio`, `idEmpleadoFK`, `idDepartamentoFK`, `cargoEmpleado`, `fechaDesde`, `fechaHasta`) VALUES
(12, 1, 1, 'Directora', '2020-01-02', '2022-01-02'),
(13, 2, 3, 'Administrativo', '2016-12-01', '2020-03-12'),
(14, 3, 2, 'Contador', '2015-02-15', '2021-06-25'),
(15, 4, 4, 'Tesorera', '1994-07-08', '2001-05-28');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`idDepartamento`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`);

--
-- Indices de la tabla `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`idHistorio`),
  ADD KEY `idEmpleadoFK` (`idEmpleadoFK`),
  ADD KEY `idDepartamentoFK` (`idDepartamentoFK`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `idDepartamento` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `historico`
--
ALTER TABLE `historico`
  MODIFY `idHistorio` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`idEmpleadoFK`) REFERENCES `empleados` (`idEmpleado`),
  ADD CONSTRAINT `historico_ibfk_2` FOREIGN KEY (`idDepartamentoFK`) REFERENCES `departamentos` (`idDepartamento`);
--
-- Base de datos: `empresa`
--
CREATE DATABASE IF NOT EXISTS `empresa` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
USE `empresa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centrostrabajo`
--

CREATE TABLE `centrostrabajo` (
  `idCentroTrabajo` int NOT NULL,
  `nombreCentroTrabajo` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccionCentroTrabajo` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `centrostrabajo`
--

INSERT INTO `centrostrabajo` (`idCentroTrabajo`, `nombreCentroTrabajo`, `direccionCentroTrabajo`) VALUES
(10, 'Sede Central', 'C/Alcalá, 820, Madrid'),
(20, 'Relación con Clientes', 'C/Atocha, 405, Madrid');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `idDepartamento` int NOT NULL,
  `idCentroTrabajoFK` int DEFAULT NULL,
  `idEmpleadoFK` int DEFAULT NULL,
  `tipoDirectorDepartamento` char(1) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `presupuestoDepartamento` decimal(10,0) DEFAULT NULL,
  `idDepartamentoFK` int DEFAULT NULL,
  `nombreDepartamento` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`idDepartamento`, `idCentroTrabajoFK`, `idEmpleadoFK`, `tipoDirectorDepartamento`, `presupuestoDepartamento`, `idDepartamentoFK`, `nombreDepartamento`) VALUES
(100, 10, 260, 'P', '12', NULL, 'DIRECCION GENERAL'),
(110, 20, 180, 'P', '15', 100, 'DIRECCION COMERCIAL'),
(111, 20, 180, 'F', '11', 110, 'SECTOR INDUSTRIAL'),
(112, 20, 270, 'P', '9', 110, 'SECTOR SERVICIOS'),
(120, 10, 150, 'F', '3', 100, 'ORGANIZACION'),
(121, 10, 150, 'P', '2', 120, 'PERSONAL'),
(122, 10, 350, 'P', '6', 120, 'PROCESO DE DATOS'),
(130, 10, 310, 'P', '2', 100, 'FINANZAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL,
  `idDepartamentoFK` int DEFAULT NULL,
  `extensionEmpleado` smallint DEFAULT NULL,
  `fechaNacimientoEmpleado` date DEFAULT NULL,
  `fechaIngresoEmpleado` date DEFAULT NULL,
  `salarioEmpleado` decimal(10,0) DEFAULT NULL,
  `comisionEmpleado` decimal(10,0) DEFAULT NULL,
  `hijosEmpleado` smallint DEFAULT NULL,
  `nombreEmpleado` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `idDepartamentoFK`, `extensionEmpleado`, `fechaNacimientoEmpleado`, `fechaIngresoEmpleado`, `salarioEmpleado`, `comisionEmpleado`, `hijosEmpleado`, `nombreEmpleado`) VALUES
(110, 121, 350, '1969-02-05', '1990-02-05', '2100', '0', 3, 'PONS, CESAR'),
(120, 112, 840, '1975-05-30', '2008-09-30', '2500', '1100', 1, 'LASA, MARIO'),
(130, 112, 810, '1985-08-30', '2009-01-22', '1900', '1100', 2, 'TEROL, LUCIANO'),
(150, 112, 340, '1970-07-31', '1988-01-05', '3400', '0', 0, 'PEREZ, JULIO'),
(160, 111, 740, '1979-06-29', '2008-11-01', '2100', '1100', 2, 'AGUIRRE, AUREO'),
(180, 110, 508, '1974-10-08', '1996-03-08', '3800', '500', 2, 'PEREZ, MARCOS'),
(190, 121, 350, '1972-05-02', '2002-02-01', '2000', '0', 4, 'VEIGA, JULIANA'),
(210, 100, 740, '1980-09-18', '1999-01-12', '2800', '0', 2, 'GALVEZ, PILAR'),
(240, 111, 508, '1982-02-16', '2006-02-14', '1800', '1000', 3, 'SANZ, LAVINIA'),
(250, 100, 200, '1986-10-17', '2007-02-19', '3500', '0', 0, 'ALBA, ADRIANA'),
(260, 100, 760, '1983-09-23', '2008-07-02', '5200', '0', 6, 'LOPEZ, ANTONIO'),
(270, 112, 250, '1985-05-11', '2006-08-31', '2800', '800', 3, 'GARCIA, OCTAVIO'),
(280, 130, 220, '1948-01-01', '1968-09-28', '1900', '0', 5, 'FLOR, DOROTEA'),
(285, 122, 800, '1989-10-15', '2009-02-05', '2800', '0', 0, 'POLO, OTILIA'),
(290, 120, 410, '1947-11-20', '1968-02-04', '1700', '0', 3, 'GIL, GLORIA'),
(310, 130, 620, '1986-11-11', '2011-02-05', '3200', '0', 0, 'GARCIA, AUGUSTO'),
(320, 122, 910, '1947-12-18', '1968-01-29', '3050', '0', 2, 'SANZ, CORNELIO'),
(330, 112, 480, '1948-08-09', '1982-02-20', '1800', '900', 3, 'DIEZ, AMELIA'),
(350, 112, 620, '1969-04-08', '2004-09-05', '3500', '0', 1, 'CAMPS, AURELIO'),
(360, 111, 850, '1998-10-19', '2008-09-30', '1500', '100', 2, 'LARA, DORINA'),
(370, 121, 610, '1987-06-17', '2007-01-15', '900', '0', 1, 'RUIZ, FABIOLA'),
(380, 112, 750, '1948-03-25', '1967-12-27', '800', '0', 0, 'MARTIN, MICAELA'),
(390, 110, 360, '1946-02-14', '1966-10-03', '1120', '0', 1, 'MORAN, CARMEN'),
(400, 111, 880, '1989-08-13', '2007-10-27', '850', '0', 0, 'LARA, LUCRECIA'),
(410, 122, 500, '1988-07-09', '2008-10-08', '750', '0', 0, 'MUÑOZ, AZUCENA'),
(420, 130, 780, '1986-10-17', '2008-11-11', '3000', '0', 0, 'FIERRO, CLAUDIA'),
(430, 122, 660, '1947-02-21', '1978-11-14', '1100', '0', 1, 'MORA, VALERIANA'),
(440, 111, 450, '1986-09-21', '2006-02-03', '1100', '1000', 0, 'DURAN, LIVIA'),
(450, 112, 650, '1986-10-16', '2006-02-23', '1100', '1000', 0, 'PEREZ, SABINA'),
(480, 111, 760, '1985-03-30', '2006-02-23', '1100', '1000', 1, 'PINO, DIANA'),
(490, 112, 880, '1984-06-01', '2007-12-27', '800', '1000', 0, 'TORRES, HORACIO'),
(500, 111, 750, '1985-10-03', '2006-12-27', '1000', '1000', 0, 'VAZQUEZ, HONORIA'),
(510, 110, 550, '1986-04-26', '2006-10-27', '1000', '0', 1, 'CAMPOS, ROMULO'),
(550, 111, 780, '1990-01-05', '2008-01-16', '900', '1200', 0, 'SANTOS, SANCHO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `centrostrabajo`
--
ALTER TABLE `centrostrabajo`
  ADD PRIMARY KEY (`idCentroTrabajo`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`idDepartamento`),
  ADD KEY `idCentroTrabajoFK1` (`idCentroTrabajoFK`),
  ADD KEY `idEmpleadoFK1` (`idEmpleadoFK`),
  ADD KEY `idDepartamentoFK1` (`idDepartamentoFK`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD KEY `idDepartamentoFK2` (`idDepartamentoFK`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD CONSTRAINT `idCentroTrabajoFK1` FOREIGN KEY (`idCentroTrabajoFK`) REFERENCES `centrostrabajo` (`idCentroTrabajo`),
  ADD CONSTRAINT `idDepartamentoFK1` FOREIGN KEY (`idDepartamentoFK`) REFERENCES `departamentos` (`idDepartamento`),
  ADD CONSTRAINT `idEmpleadoFK1` FOREIGN KEY (`idEmpleadoFK`) REFERENCES `empleados` (`idEmpleado`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `idDepartamentoFK2` FOREIGN KEY (`idDepartamentoFK`) REFERENCES `departamentos` (`idDepartamento`);
--
-- Base de datos: `empresareparto`
--
CREATE DATABASE IF NOT EXISTS `empresareparto` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `empresareparto`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repartidores`
--

CREATE TABLE `repartidores` (
  `idRepartidor` int NOT NULL,
  `carnetRepartidor` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int NOT NULL,
  `nombreUsuario` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `ClaveUsuario` varchar(256) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `tipoUsuario` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombreUsuario`, `ClaveUsuario`, `tipoUsuario`) VALUES
(1, 'Paco el del taco', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 0),
(2, 'Fabian', '7539f554b290c83cf266ba7b1b883b79b55f70e52eff409371562bd86596c261', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `repartidores`
--
ALTER TABLE `repartidores`
  ADD PRIMARY KEY (`idRepartidor`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `repartidores`
--
ALTER TABLE `repartidores`
  MODIFY `idRepartidor` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Base de datos: `empresatextil`
--
CREATE DATABASE IF NOT EXISTS `empresatextil` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `empresatextil`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int NOT NULL,
  `nombreCliente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` int NOT NULL,
  `descripcionProducto` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `idVendedor` int NOT NULL,
  `nombreVendedor` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idVenta` int NOT NULL,
  `fechaVenta` date DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `idVendedorFK` int DEFAULT NULL,
  `idClienteFK` int DEFAULT NULL,
  `idProductoFK` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`idVendedor`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idVenta`),
  ADD KEY `idVendedorFK` (`idVendedorFK`),
  ADD KEY `idClienteFK` (`idClienteFK`),
  ADD KEY `idProductoFK` (`idProductoFK`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `idVendedor` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idVenta` int NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`idVendedorFK`) REFERENCES `vendedores` (`idVendedor`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`idClienteFK`) REFERENCES `clientes` (`idCliente`),
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`idProductoFK`) REFERENCES `productos` (`idProducto`);
--
-- Base de datos: `empresatextilbd`
--
CREATE DATABASE IF NOT EXISTS `empresatextilbd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `empresatextilbd`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int NOT NULL,
  `cifCliente` varchar(9) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `nombreCliente` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `apellidosCliente` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `domicilioCliente` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `poblacionCliente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `codigoPostalCliente` int DEFAULT NULL,
  `telefonoCliente` int DEFAULT NULL,
  `provinciaCliente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `correoElectronicoCliente` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `cifCliente`, `nombreCliente`, `apellidosCliente`, `domicilioCliente`, `poblacionCliente`, `codigoPostalCliente`, `telefonoCliente`, `provinciaCliente`, `correoElectronicoCliente`) VALUES
(1, '29494198Z', 'Paco', 'Calvillo Cabeza', 'calle Alcántara, portal 13, 1° C ', 'Madrid', 41003, 628100228, 'Madrid', 'Pacoeldeltaco@hotmail.com'),
(2, '39698246B', 'Manuel', 'Girón Dominguez', 'calle Abacería, portal 25, 4°a ', 'Huelva', 55656, 674987897, 'Huelva', 'ManoloElDelBombo@hotmail.com'),
(3, '634200339', 'sandra', 'Perez Galdós', 'calle Cedro, portal 10, 1°a ', 'Cadiz', 42994, 627200339, 'Cádiz', 'SandraBetica@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` int NOT NULL,
  `codigoProducto` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `descripcionProducto` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `precioCompraProducto` decimal(8,2) DEFAULT NULL,
  `precioVentaProducto` decimal(8,2) DEFAULT NULL,
  `ivaProducto` int DEFAULT NULL,
  `medidasProducto` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `stockProducto` int DEFAULT NULL,
  `descuentoProducto` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `codigoProducto`, `descripcionProducto`, `precioCompraProducto`, `precioVentaProducto`, `ivaProducto`, `medidasProducto`, `stockProducto`, `descuentoProducto`) VALUES
(1, '3ak', '\'Retal rojo de lunares\'', '300.50', '500.90', 50, '\'3 metros\'', 20, 50),
(2, '3aB', '\'Retal verde\'', '150.20', '250.89', 50, '\'2 metros\'', 10, 60),
(3, '3ac', '\'Retal blanco\'', '340.90', '600.20', 50, '\'3 metros\'', 25, 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedores`
--

CREATE TABLE `vendedores` (
  `idVendedor` int NOT NULL,
  `nombreVendedor` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `apellidosVendedor` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `telefonoVendedor` int DEFAULT NULL,
  `correoElectronicoVendedor` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `vendedores`
--

INSERT INTO `vendedores` (`idVendedor`, `nombreVendedor`, `apellidosVendedor`, `telefonoVendedor`, `correoElectronicoVendedor`) VALUES
(1, 'Vanesa', 'Mendez Hinojosa', 634456338, 'vanesa98@gmail.com'),
(2, 'Pedro', 'Almagro Quintero', 654300888, 'pedroAlmagro@hotmail.com'),
(3, 'Eusebio', 'Ruiz Gonzalez', 635664432, 'EusebioBetico@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idVenta` int NOT NULL,
  `fechaVenta` date DEFAULT NULL,
  `cantidadVenta` int DEFAULT NULL,
  `idClienteFK` int DEFAULT NULL,
  `idVendedorFK` int DEFAULT NULL,
  `idProductoFK` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idVenta`, `fechaVenta`, `cantidadVenta`, `idClienteFK`, `idVendedorFK`, `idProductoFK`) VALUES
(1, '2022-04-08', 3, 3, 1, 2),
(2, '2022-03-10', 5, 2, 3, 1),
(3, '2022-01-15', 10, 1, 2, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`idVendedor`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idVenta`),
  ADD KEY `idClienteFK` (`idClienteFK`),
  ADD KEY `idVendedorFK` (`idVendedorFK`),
  ADD KEY `idProductoFK` (`idProductoFK`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `idVendedor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idVenta` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`idClienteFK`) REFERENCES `clientes` (`idCliente`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`idVendedorFK`) REFERENCES `vendedores` (`idVendedor`),
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`idProductoFK`) REFERENCES `productos` (`idProducto`);
--
-- Base de datos: `empresa_repartos_pr`
--
CREATE DATABASE IF NOT EXISTS `empresa_repartos_pr` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `empresa_repartos_pr`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int NOT NULL,
  `nombreCliente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `apellidosCliente` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `dniCliente` varchar(9) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `direccionCliente` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `codigoPostalCliente` int DEFAULT NULL,
  `telefonoCliente` int DEFAULT NULL,
  `provinciaCliente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `correoElectronicoCliente` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `paisCliente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nombreCliente`, `apellidosCliente`, `dniCliente`, `direccionCliente`, `codigoPostalCliente`, `telefonoCliente`, `provinciaCliente`, `correoElectronicoCliente`, `paisCliente`) VALUES
(15, 'fran', 'pablo ramos', '29494195x', 'calle la rata', 41003, 627200999, 'madrid', 'pacoellokillo@gmail.com', 'españa'),
(19, 'Antonio', 'Carballo Alamo', '29494196X', 'calle la rata', 41003, 627100227, 'Madrid', 'antonio@gmail.com', 'España');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compranentregan`
--

CREATE TABLE `compranentregan` (
  `idCompranEntregan` int NOT NULL,
  `desdeCompranEntregan` date DEFAULT NULL,
  `hastaCompranEntregan` date DEFAULT NULL,
  `idRepartidorFK` int DEFAULT NULL,
  `idClienteFK` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `compranentregan`
--

INSERT INTO `compranentregan` (`idCompranEntregan`, `desdeCompranEntregan`, `hastaCompranEntregan`, `idRepartidorFK`, `idClienteFK`) VALUES
(6, '1989-10-24', '2000-07-12', 13, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conducen`
--

CREATE TABLE `conducen` (
  `idConducen` int NOT NULL,
  `fechaConducen` date DEFAULT NULL,
  `idVehiculoFK` int DEFAULT NULL,
  `idRepartidorFK` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `conducen`
--

INSERT INTO `conducen` (`idConducen`, `fechaConducen`, `idVehiculoFK`, `idRepartidorFK`) VALUES
(1, '2022-01-10', 1, 3),
(2, '2022-02-05', 2, 1),
(3, '2022-04-01', 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repartidores`
--

CREATE TABLE `repartidores` (
  `idRepartidor` int NOT NULL,
  `nombreRepartidor` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `apellidosRepartidor` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `repartidores`
--

INSERT INTO `repartidores` (`idRepartidor`, `nombreRepartidor`, `apellidosRepartidor`) VALUES
(1, 'Paco', 'Pérez Galdós'),
(2, 'Pacosss', 'Pérez Galdos'),
(3, 'Esthersss', 'Garcia Merino'),
(10, 'Juan Manuela', 'Galiano Lorenzo'),
(12, 'Paco ', 'Luna Rodriguez'),
(13, 'Paco', 'Granel Luna'),
(15, 'dadadad', 'adad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int NOT NULL,
  `nombreUsuario` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `claveUsuario` varchar(256) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `tipoUsuario` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombreUsuario`, `claveUsuario`, `tipoUsuario`) VALUES
(1, 'Básico', '668c2ac7ae548c2e3ead1f6c244eaa725fce0443bb7ea97632074b7ee37c29c6', 0),
(2, 'Admin', 'c1c224b03cd9bc7b6a86d77f5dace40191766c485cd55dc48caf9ac873335d6f', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `idVehiculo` int NOT NULL,
  `matriculaVehiculo` varchar(7) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `tipoVehiculo` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `modeloVehiculo` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `marcaVehiculo` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`idVehiculo`, `matriculaVehiculo`, `tipoVehiculo`, `modeloVehiculo`, `marcaVehiculo`) VALUES
(1, '4676NAH', 'Furgoneta', 'Combi', 'Renault'),
(2, '5877GYR', 'Furgoneta', 'Combi', 'Renault'),
(3, '4735GSW', 'Furgoneta', 'Combi', 'Renault');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `compranentregan`
--
ALTER TABLE `compranentregan`
  ADD PRIMARY KEY (`idCompranEntregan`),
  ADD KEY `idRepartidorFK` (`idRepartidorFK`),
  ADD KEY `idClienteFK` (`idClienteFK`);

--
-- Indices de la tabla `conducen`
--
ALTER TABLE `conducen`
  ADD PRIMARY KEY (`idConducen`),
  ADD KEY `idVehiculoFK` (`idVehiculoFK`),
  ADD KEY `idRepartidorFK` (`idRepartidorFK`);

--
-- Indices de la tabla `repartidores`
--
ALTER TABLE `repartidores`
  ADD PRIMARY KEY (`idRepartidor`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`idVehiculo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `compranentregan`
--
ALTER TABLE `compranentregan`
  MODIFY `idCompranEntregan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `conducen`
--
ALTER TABLE `conducen`
  MODIFY `idConducen` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `repartidores`
--
ALTER TABLE `repartidores`
  MODIFY `idRepartidor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `idVehiculo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compranentregan`
--
ALTER TABLE `compranentregan`
  ADD CONSTRAINT `compranentregan_ibfk_1` FOREIGN KEY (`idRepartidorFK`) REFERENCES `repartidores` (`idRepartidor`),
  ADD CONSTRAINT `compranentregan_ibfk_2` FOREIGN KEY (`idClienteFK`) REFERENCES `clientes` (`idCliente`);

--
-- Filtros para la tabla `conducen`
--
ALTER TABLE `conducen`
  ADD CONSTRAINT `conducen_ibfk_1` FOREIGN KEY (`idVehiculoFK`) REFERENCES `vehiculos` (`idVehiculo`),
  ADD CONSTRAINT `conducen_ibfk_2` FOREIGN KEY (`idRepartidorFK`) REFERENCES `repartidores` (`idRepartidor`);
--
-- Base de datos: `empresa_repartos_pr2`
--
CREATE DATABASE IF NOT EXISTS `empresa_repartos_pr2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `empresa_repartos_pr2`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int NOT NULL,
  `nombreCliente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `apellidosCliente` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `dniCliente` varchar(9) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `direccionCliente` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `codigoPostalCliente` int DEFAULT NULL,
  `telefonoCliente` int DEFAULT NULL,
  `provinciaCliente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `correoElectronicoCliente` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `paisCliente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compranentregan`
--

CREATE TABLE `compranentregan` (
  `idCompranEntregan` int NOT NULL,
  `desdeCompranEntregan` date DEFAULT NULL,
  `hastaCompranEntregan` date DEFAULT NULL,
  `idRepartidorFK` int DEFAULT NULL,
  `idClienteFK` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repartidores`
--

CREATE TABLE `repartidores` (
  `idRepartidor` int NOT NULL,
  `nombreRepartidor` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `apellidosRepartidor` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int NOT NULL,
  `nombreUsuario` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `claveUsuario` varchar(256) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `tipoUsuario` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombreUsuario`, `claveUsuario`, `tipoUsuario`) VALUES
(1, 'Básico', 'Básico', 0),
(2, 'Admin', 'Admin', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `idVehiculo` int NOT NULL,
  `matriculaVehiculo` varchar(7) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `tipoVehiculo` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `modeloVehiculo` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `marcaVehiculo` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `compranentregan`
--
ALTER TABLE `compranentregan`
  ADD PRIMARY KEY (`idCompranEntregan`),
  ADD KEY `idRepartidorFK` (`idRepartidorFK`),
  ADD KEY `idClienteFK` (`idClienteFK`);

--
-- Indices de la tabla `repartidores`
--
ALTER TABLE `repartidores`
  ADD PRIMARY KEY (`idRepartidor`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`idVehiculo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `compranentregan`
--
ALTER TABLE `compranentregan`
  MODIFY `idCompranEntregan` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `repartidores`
--
ALTER TABLE `repartidores`
  MODIFY `idRepartidor` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `idVehiculo` int NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compranentregan`
--
ALTER TABLE `compranentregan`
  ADD CONSTRAINT `compranentregan_ibfk_1` FOREIGN KEY (`idRepartidorFK`) REFERENCES `repartidores` (`idRepartidor`),
  ADD CONSTRAINT `compranentregan_ibfk_2` FOREIGN KEY (`idClienteFK`) REFERENCES `clientes` (`idCliente`);
--
-- Base de datos: `gestion`
--
CREATE DATABASE IF NOT EXISTS `gestion` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `gestion`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `idDepartamento` int NOT NULL,
  `nombreDepartamento` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `localidadDepartamento` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`idDepartamento`, `nombreDepartamento`, `localidadDepartamento`) VALUES
(1, 'ventas', 'florida'),
(2, 'contabilidad', 'chicago'),
(3, 'gestión', 'chicago'),
(4, 'RRHH', 'SEVILLA'),
(6, 'almacen', 'francia'),
(7, 'almacen', 'belgica'),
(9, 'almacen', 'canarias'),
(11, 'peleas de caracoles', 'sevilla'),
(12, '', ''),
(13, 'peleas de caracoles2', 'sevilla'),
(14, 'DDDAS', 'AFF'),
(15, 'GAMBAS', 'SEVILLA'),
(16, 'ASFASF', 'ASFASF'),
(17, 'DATOS', 'SEVILLA'),
(18, 'YEAH', 'MADRID'),
(19, 'RRHH', 'SEVILLA'),
(20, 'gggg', 'gggg'),
(21, 'dfhdhg', 'dfgdfg'),
(22, 'daaf', 'adaa'),
(23, 'dwfwfw', 'dqdqdqdq');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL,
  `nombreEmpleado` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `apellidoEmpleado` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `cargoEmpleado` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `salarioEmpleado` int DEFAULT NULL,
  `idDepartamentoFK` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `nombreEmpleado`, `apellidoEmpleado`, `cargoEmpleado`, `salarioEmpleado`, `idDepartamentoFK`) VALUES
(1, 'Edward', 'blade', 'gerente', 9000, 3),
(2, 'Thomas', 'Scott', 'analista', 4000, 3),
(3, 'Jhon', 'King', 'comerial', 2000, 1),
(4, 'Nuria', 'Thurner', 'contable', 1500, 2),
(5, 'Elen', 'Smith', 'contable', 1500, 2),
(6, 'Susan', 'Ward', 'comercial', 2000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id` int DEFAULT NULL,
  `cliente` int DEFAULT NULL,
  `actividad` int DEFAULT NULL,
  `fecha actividad fecha factura` text COLLATE utf8mb4_spanish2_ci,
  `MyUnknownColumn` text COLLATE utf8mb4_spanish2_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id`, `cliente`, `actividad`, `fecha actividad fecha factura`, `MyUnknownColumn`) VALUES
(1, 1, 1, '23/02/22', '23/02/22'),
(2, 1, 2, '26/02/22', '23/02/22');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`idDepartamento`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD KEY `idDepartamentoFK` (`idDepartamentoFK`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `idDepartamento` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`idDepartamentoFK`) REFERENCES `departamentos` (`idDepartamento`);
--
-- Base de datos: `hospital`
--
CREATE DATABASE IF NOT EXISTS `hospital` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `hospital`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedades`
--

CREATE TABLE `enfermedades` (
  `idEnfermedad` int NOT NULL,
  `nombreEnfermedad` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `duracionTratamiento` int DEFAULT NULL,
  `idTratamientoFK` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `idIngreso` int NOT NULL,
  `idPacienteFK` int DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `fechaALTA` date DEFAULT NULL,
  `idEnfermedadFK` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `idPaciente` int NOT NULL,
  `nombrePaciente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `apellidosPaciente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `dniPaciente` varchar(9) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `telefonoPaciente` varchar(9) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`idPaciente`, `nombrePaciente`, `apellidosPaciente`, `dniPaciente`, `telefonoPaciente`) VALUES
(1, 'Antonio', 'Rubio Hidalgo', '45687512h', '675432123'),
(2, 'Maria', 'Rodriguez Pérez', '49856342X', '662396234'),
(3, 'Luis', 'Perez Salas', '12345678X', '634567788'),
(4, 'Eva', 'Nuñez Sanchez', '98765432A', '667876876'),
(5, 'Vanesa', 'Toribio Haro', '12345678Z', '654654654'),
(6, 'Alberto', 'GirÃ³n PÃ©rez', '98988765S', '665678678');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamientos`
--

CREATE TABLE `tratamientos` (
  `idTratamiento` int NOT NULL,
  `descripcionTratamiento` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `enfermedades`
--
ALTER TABLE `enfermedades`
  ADD PRIMARY KEY (`idEnfermedad`),
  ADD KEY `idTratamientoFK` (`idTratamientoFK`);

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`idIngreso`),
  ADD KEY `idPacienteFK` (`idPacienteFK`),
  ADD KEY `idEnfermedadFK` (`idEnfermedadFK`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`idPaciente`);

--
-- Indices de la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  ADD PRIMARY KEY (`idTratamiento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `enfermedades`
--
ALTER TABLE `enfermedades`
  MODIFY `idEnfermedad` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `idIngreso` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `idPaciente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  MODIFY `idTratamiento` int NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `enfermedades`
--
ALTER TABLE `enfermedades`
  ADD CONSTRAINT `enfermedades_ibfk_1` FOREIGN KEY (`idTratamientoFK`) REFERENCES `tratamientos` (`idTratamiento`);

--
-- Filtros para la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD CONSTRAINT `ingresos_ibfk_1` FOREIGN KEY (`idPacienteFK`) REFERENCES `pacientes` (`idPaciente`),
  ADD CONSTRAINT `ingresos_ibfk_2` FOREIGN KEY (`idEnfermedadFK`) REFERENCES `enfermedades` (`idEnfermedad`);
--
-- Base de datos: `paranoia`
--
CREATE DATABASE IF NOT EXISTS `paranoia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `paranoia`;
--
-- Base de datos: `repartos`
--
CREATE DATABASE IF NOT EXISTS `repartos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `repartos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `idAdministrador` int NOT NULL,
  `velocidadDeMecanografiaAdministrador` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `NivelOfficeAdministrador` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `idEmpleadoFK2` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`idAdministrador`, `velocidadDeMecanografiaAdministrador`, `NivelOfficeAdministrador`, `idEmpleadoFK2`) VALUES
(1, '25 PPM', 'profesional', 1),
(2, '18 PPM', 'profesional', 2),
(3, '20 PPM', 'profesional', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int NOT NULL,
  `nombreCliente` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `apellidosCliente` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `dniCliente` varchar(9) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `direccionCliente` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `codigoPostalCliente` int DEFAULT NULL,
  `telefonoCliente` varchar(9) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `provinciaCliente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `correoElectronicoCliente` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `paisCliente` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nombreCliente`, `apellidosCliente`, `dniCliente`, `direccionCliente`, `codigoPostalCliente`, `telefonoCliente`, `provinciaCliente`, `correoElectronicoCliente`, `paisCliente`) VALUES
(1, 'Paco', 'Pérez Pérez', '23456234Z', 'Calle Águila,calle Suerte, portal 12, piso 3B', 41004, '654333229', 'Sevilla', 'Pacorey@gmail.com', 'España'),
(2, 'Felix', 'Álvarez Ruiz', '34538865P', 'Calle Felicidad, portal 11, piso 2C', 54003, '643888227', 'Sevilla', 'Felixelgato@gmail.com', 'España'),
(3, 'Fran', 'Pérez Arriero', '34522432S', 'Calle Flor, portal 23, piso 6D', 52005, '654666222', 'Sevilla', 'Fran@gmail.com', 'España');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compranentregan`
--

CREATE TABLE `compranentregan` (
  `idCompraEntrega` int NOT NULL,
  `idRepartidorFK7` int DEFAULT NULL,
  `idProductoFK8` int DEFAULT NULL,
  `idClienteFK9` int DEFAULT NULL,
  `desdeCompraEntrega` date DEFAULT NULL,
  `hastaCompraEntrega` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `compranentregan`
--

INSERT INTO `compranentregan` (`idCompraEntrega`, `idRepartidorFK7`, `idProductoFK8`, `idClienteFK9`, `desdeCompraEntrega`, `hastaCompraEntrega`) VALUES
(1, 3, 2, 3, '2022-01-02', '2022-01-05'),
(2, 2, 1, 2, '2022-02-05', '2022-02-08'),
(3, 1, 3, 1, '2022-02-08', '2022-02-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conducen`
--

CREATE TABLE `conducen` (
  `idConduce` int NOT NULL,
  `fechaConduce` date DEFAULT NULL,
  `idVehiculoFK5` int DEFAULT NULL,
  `idRepartidorFK6` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `conducen`
--

INSERT INTO `conducen` (`idConduce`, `fechaConduce`, `idVehiculoFK5`, `idRepartidorFK6`) VALUES
(1, '2022-01-03', 1, 2),
(2, '2022-03-02', 3, 1),
(3, '2022-02-04', 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL,
  `nombreEmpleado` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `apellidosEmpleado` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `dniEmpleado` varchar(9) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `experienciaEmpleado` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `titulacionEmpleado` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `telefonoEmpleado` varchar(9) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `direccionEmpleado` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `correoElectronicoEmpleado` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `idEmpleadoJefeFK1` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `nombreEmpleado`, `apellidosEmpleado`, `dniEmpleado`, `experienciaEmpleado`, `titulacionEmpleado`, `telefonoEmpleado`, `direccionEmpleado`, `correoElectronicoEmpleado`, `idEmpleadoJefeFK1`) VALUES
(1, 'Antonio', 'Granel Diana', '14355567M', 'Jefe de administración en DHL', 'Direción y administración de empresas', '627122339', 'Calle Niño Perdido, portal 11, piso 1B, (Sevilla)', 'Antonioade@gmail.com', 1),
(2, 'Esther', 'Garcia Merino', '29494198P', 'Administradora en Strugal', 'Grado superior de administración', '654333126', 'Calle Abril, portal 1, piso 2C , (Madrid)', 'Esther92@gmail.com', 1),
(3, 'Inmaculada', 'Rivera Pablo', '37486254K', 'Administradora en Studium', 'Grado superior de administración', '654333231', 'Calle Zaragoza, portal 15, piso 2C,  (Sevilla)', 'inma12@gmail.com', 1),
(4, 'Paco', 'Lama Flama', '34533285L', 'Mozo de almacén en Eureka', 'ESO', '654322118', 'Calle Rata, portal1, piso 1 B, (Barcelona)', 'PacoEllokillo@gmail.com', 1),
(5, 'Manuel', 'Ruiz Perez', '34232156L', 'Mozo de almacén en Primark', 'ESO', '634522234', 'Calle Japón, portal 2, piso 5 B, (Sevilla)', 'ManolitoPiesdePlata@gmail.com', 1),
(6, 'Adrian', 'Vargas Roldán', '34266777H', 'Mozo de almacén en Dacia', 'Grado medio de soldadura', '675444321', 'Calle Cerezo, porta 5, piso 4 D, (Sevilla)', 'adrielguapo@gmail.com', 1),
(7, 'Pedro', 'Almagro Arriero', '24523678K', 'Repartidor en DHL', 'Bachillerato', '654566222', 'Calle Fresno, portal 3, piso 1-2, (Sevilla)', 'PedroAlmagro@gmail.com', 1),
(8, 'Fran', 'Carballo Álamo', '29494196H', 'Repartidor en Cristaleria Juan', 'Bachillerato', '627100228', 'Calle Aceituna, portal 15, piso 2 B, (Sevilla)', 'FranStudium@gmail.com', 1),
(9, 'Juan', 'Pérez Adán', '49898197P', 'Repartidor en la fruteria Juana', 'Eso', '654300229', 'Calle Gitana, portal 1, piso 2 C, (Sevilla)', 'JuanPerez@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mozosdealmacen`
--

CREATE TABLE `mozosdealmacen` (
  `idMozoDeAlmacen` int NOT NULL,
  `carnetDeCarretilleroDeMozoDeAlmacen` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `idEmpleadoFK3` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `mozosdealmacen`
--

INSERT INTO `mozosdealmacen` (`idMozoDeAlmacen`, `carnetDeCarretilleroDeMozoDeAlmacen`, `idEmpleadoFK3`) VALUES
(1, 'si', 4),
(2, 'si', 5),
(3, 'si', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` int NOT NULL,
  `codigoProducto` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `dimensionProducto` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `pesoProducto` varchar(30) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `tipoProducto` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `descripcionProducto` varchar(300) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `precioTransporteProducto` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `codigoProducto`, `dimensionProducto`, `pesoProducto`, `tipoProducto`, `descripcionProducto`, `precioTransporteProducto`) VALUES
(1, '23k', '40 cm x 20 cm x 15 cm.', '4 KG', 'Electrónico', 'X box 360', '100.00'),
(2, '24C', '5 cm x 10 cm x 11 cm.', '0,5 KG', 'Electrónico', 'MP3', '30.00'),
(3, '5B', '440 cm x 20 cm x 15 cm', '5 kg', 'Cristalería (frágil)', 'Lámpara de cristal', '300.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repartidores`
--

CREATE TABLE `repartidores` (
  `idRepartidor` int NOT NULL,
  `carnetClaseBRepartidor` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `idEmpleadoFK4` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `repartidores`
--

INSERT INTO `repartidores` (`idRepartidor`, `carnetClaseBRepartidor`, `idEmpleadoFK4`) VALUES
(1, 'Si', 7),
(2, 'Si', 8),
(3, 'Si', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `idVehiculo` int NOT NULL,
  `matriculaVehiculo` varchar(7) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `tipoVehiculo` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `modeloVehiculo` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `marcaVehiculo` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`idVehiculo`, `matriculaVehiculo`, `tipoVehiculo`, `modeloVehiculo`, `marcaVehiculo`) VALUES
(1, '4676NAH', 'Furgoneta', 'Captur', 'Renault'),
(2, '4444BHD', 'Furgoneta', 'Captur', 'Renault'),
(3, '5674DHD', 'Furgoneta', 'Captur', 'Renault');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`idAdministrador`),
  ADD KEY `idEmpleadoFK2` (`idEmpleadoFK2`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `compranentregan`
--
ALTER TABLE `compranentregan`
  ADD PRIMARY KEY (`idCompraEntrega`),
  ADD KEY `idRepartidorFK7` (`idRepartidorFK7`),
  ADD KEY `idProductoFK8` (`idProductoFK8`),
  ADD KEY `idClienteFK9` (`idClienteFK9`);

--
-- Indices de la tabla `conducen`
--
ALTER TABLE `conducen`
  ADD PRIMARY KEY (`idConduce`),
  ADD KEY `idVehiculoFK5` (`idVehiculoFK5`),
  ADD KEY `idRepartidorFK6` (`idRepartidorFK6`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD KEY `idEmpleadoJefeFK1` (`idEmpleadoJefeFK1`);

--
-- Indices de la tabla `mozosdealmacen`
--
ALTER TABLE `mozosdealmacen`
  ADD PRIMARY KEY (`idMozoDeAlmacen`),
  ADD KEY `idEmpleadoFK3` (`idEmpleadoFK3`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `repartidores`
--
ALTER TABLE `repartidores`
  ADD PRIMARY KEY (`idRepartidor`),
  ADD KEY `idEmpleadoFK4` (`idEmpleadoFK4`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`idVehiculo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `idAdministrador` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `compranentregan`
--
ALTER TABLE `compranentregan`
  MODIFY `idCompraEntrega` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `conducen`
--
ALTER TABLE `conducen`
  MODIFY `idConduce` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `mozosdealmacen`
--
ALTER TABLE `mozosdealmacen`
  MODIFY `idMozoDeAlmacen` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `repartidores`
--
ALTER TABLE `repartidores`
  MODIFY `idRepartidor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `idVehiculo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD CONSTRAINT `administradores_ibfk_1` FOREIGN KEY (`idEmpleadoFK2`) REFERENCES `empleados` (`idEmpleado`);

--
-- Filtros para la tabla `compranentregan`
--
ALTER TABLE `compranentregan`
  ADD CONSTRAINT `compranentregan_ibfk_1` FOREIGN KEY (`idRepartidorFK7`) REFERENCES `repartidores` (`idRepartidor`),
  ADD CONSTRAINT `compranentregan_ibfk_2` FOREIGN KEY (`idProductoFK8`) REFERENCES `productos` (`idProducto`),
  ADD CONSTRAINT `compranentregan_ibfk_3` FOREIGN KEY (`idClienteFK9`) REFERENCES `clientes` (`idCliente`);

--
-- Filtros para la tabla `conducen`
--
ALTER TABLE `conducen`
  ADD CONSTRAINT `conducen_ibfk_1` FOREIGN KEY (`idVehiculoFK5`) REFERENCES `vehiculos` (`idVehiculo`),
  ADD CONSTRAINT `conducen_ibfk_2` FOREIGN KEY (`idRepartidorFK6`) REFERENCES `repartidores` (`idRepartidor`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`idEmpleadoJefeFK1`) REFERENCES `empleados` (`idEmpleado`);

--
-- Filtros para la tabla `mozosdealmacen`
--
ALTER TABLE `mozosdealmacen`
  ADD CONSTRAINT `mozosdealmacen_ibfk_1` FOREIGN KEY (`idEmpleadoFK3`) REFERENCES `empleados` (`idEmpleado`);

--
-- Filtros para la tabla `repartidores`
--
ALTER TABLE `repartidores`
  ADD CONSTRAINT `repartidores_ibfk_1` FOREIGN KEY (`idEmpleadoFK4`) REFERENCES `empleados` (`idEmpleado`);
--
-- Base de datos: `repartos2`
--
CREATE DATABASE IF NOT EXISTS `repartos2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `repartos2`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `idAdministrador` int NOT NULL,
  `velocidadDeMecanografiaAdministrador` varchar(45) NOT NULL,
  `nivelOfficeAdministrador` varchar(100) NOT NULL,
  `idEmpleadoFK2` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`idAdministrador`, `velocidadDeMecanografiaAdministrador`, `nivelOfficeAdministrador`, `idEmpleadoFK2`) VALUES
(5, '25 PPM', 'Profesional', 1),
(6, '18 PPM', 'Profesional', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int NOT NULL,
  `nombreCliente` varchar(45) NOT NULL,
  `apellidosCliente` varchar(100) NOT NULL,
  `dniCliente` varchar(9) NOT NULL,
  `direccionCliente` varchar(100) NOT NULL,
  `codigoPostalCliente` int NOT NULL,
  `telefonoCliente` int NOT NULL,
  `provinciaCliente` varchar(45) NOT NULL,
  `correoElectronicoCliente` varchar(100) NOT NULL,
  `paisCliente` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nombreCliente`, `apellidosCliente`, `dniCliente`, `direccionCliente`, `codigoPostalCliente`, `telefonoCliente`, `provinciaCliente`, `correoElectronicoCliente`, `paisCliente`) VALUES
(1, 'Paco', 'Pérez Pérez', '23456234Z', 'Calle Águila, portal 12, piso 3B', 41004, 654333229, 'Sevilla', 'Pacorey@gmail.com', 'España'),
(2, 'Félix', 'Álvarez Ruiz ', '34538865P', 'Calle Felicidad, portal 11, piso 2C', 54003, 643888227, 'Sevilla', 'Felixelgato@gmail.com', 'España');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compranentregan`
--

CREATE TABLE `compranentregan` (
  `idCompraEntrega` int NOT NULL,
  `idRepartidorFK7` int NOT NULL,
  `idProductoFK8` int NOT NULL,
  `idClienteFK9` int NOT NULL,
  `desdeCompraEntrega` date NOT NULL,
  `hastaCompraEntrega` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `compranentregan`
--

INSERT INTO `compranentregan` (`idCompraEntrega`, `idRepartidorFK7`, `idProductoFK8`, `idClienteFK9`, `desdeCompraEntrega`, `hastaCompraEntrega`) VALUES
(1, 1, 1, 1, '2022-01-02', '2022-01-05'),
(2, 2, 2, 2, '2022-02-08', '2022-02-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conducen`
--

CREATE TABLE `conducen` (
  `idConducir` int NOT NULL,
  `FechaConducen` date NOT NULL,
  `idVehiculoFK5` int NOT NULL,
  `idRepartidorFK6` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `conducen`
--

INSERT INTO `conducen` (`idConducir`, `FechaConducen`, `idVehiculoFK5`, `idRepartidorFK6`) VALUES
(1, '2022-01-03', 1, 1),
(2, '2022-03-02', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL,
  `nombreEmpleado` varchar(45) NOT NULL,
  `apellidosEmpleado` varchar(100) NOT NULL,
  `dniEmpleado` varchar(9) NOT NULL,
  `experienciaEmpleado` varchar(100) NOT NULL,
  `titulacionEmpleado` varchar(100) NOT NULL,
  `telefonoEmpleado` int NOT NULL,
  `direccionEmpleado` varchar(100) NOT NULL,
  `correoElectronicoEmpleado` varchar(100) NOT NULL,
  `idEmpleadoJefeFK1` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `nombreEmpleado`, `apellidosEmpleado`, `dniEmpleado`, `experienciaEmpleado`, `titulacionEmpleado`, `telefonoEmpleado`, `direccionEmpleado`, `correoElectronicoEmpleado`, `idEmpleadoJefeFK1`) VALUES
(1, 'Antonio ', 'Granel Diana   ', '14355567M', 'Jefe de administración en DHL', 'Dirección y administración de empresas', 627122339, 'Calle Niño Perdido, portal 11, piso 1B, (Sevilla)', 'Antonioade@gmail.com', 1),
(3, 'Esther', ' Garcia Merino', '29494198P', 'Administradora en Strugal', 'Grado superior de administración', 654333126, 'Calle Abril, portal 1, piso 2C (Madrid)', 'Esther92@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mozosdealmacen`
--

CREATE TABLE `mozosdealmacen` (
  `idMozoDeAlmacen` int NOT NULL,
  `CarnetDeCarretilleroMozoDeAlmacen` varchar(45) NOT NULL,
  `idEmpleadoFK3` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `mozosdealmacen`
--

INSERT INTO `mozosdealmacen` (`idMozoDeAlmacen`, `CarnetDeCarretilleroMozoDeAlmacen`, `idEmpleadoFK3`) VALUES
(1, 'sI', 1),
(2, 'Si', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` int NOT NULL,
  `codigoProducto` varchar(45) NOT NULL,
  `dimensionProducto` varchar(45) NOT NULL,
  `pesoProducto` varchar(30) NOT NULL,
  `tipoProducto` varchar(45) NOT NULL,
  `descripcionProducto` varchar(100) NOT NULL,
  `precioTransporteProducto` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `codigoProducto`, `dimensionProducto`, `pesoProducto`, `tipoProducto`, `descripcionProducto`, `precioTransporteProducto`) VALUES
(1, '23k', '40 cm x 20 cm x 15 cm', '4 KG', 'Electrónico', 'X box 360', '100.50'),
(2, '24C', '5 cm x 10 cm x 11 cm.', '0,5 KG', 'Electrónico', 'MP3', '30.50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repartidores`
--

CREATE TABLE `repartidores` (
  `idRepartidor` int NOT NULL,
  `carnetClasebRepartidor` varchar(45) NOT NULL,
  `idEmpleadoFK4` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `repartidores`
--

INSERT INTO `repartidores` (`idRepartidor`, `carnetClasebRepartidor`, `idEmpleadoFK4`) VALUES
(1, 'Si', 1),
(2, 'Si', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `idVehiculo` int NOT NULL,
  `matriculaVehiculo` varchar(7) NOT NULL,
  `tipoVehiculo` varchar(45) NOT NULL,
  `modeloVehiculo` varchar(45) NOT NULL,
  `marcaVehiculo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`idVehiculo`, `matriculaVehiculo`, `tipoVehiculo`, `modeloVehiculo`, `marcaVehiculo`) VALUES
(1, '4676NAH', 'Furgoneta ', 'Captur', 'Renault'),
(2, '5859HLM', 'Furgoneta ', 'Captur', 'Renault');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`idAdministrador`),
  ADD KEY `idEmpleadoFK2` (`idEmpleadoFK2`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `compranentregan`
--
ALTER TABLE `compranentregan`
  ADD PRIMARY KEY (`idCompraEntrega`),
  ADD KEY `idClienteFK9` (`idClienteFK9`),
  ADD KEY `idProductoFK8` (`idProductoFK8`),
  ADD KEY `compranentregan_ibfk_3` (`idRepartidorFK7`);

--
-- Indices de la tabla `conducen`
--
ALTER TABLE `conducen`
  ADD PRIMARY KEY (`idConducir`),
  ADD KEY `idVehiculoFK5` (`idVehiculoFK5`),
  ADD KEY `idRepartidorFK6` (`idRepartidorFK6`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`),
  ADD KEY `idEmpleadoJefeFK1` (`idEmpleadoJefeFK1`);

--
-- Indices de la tabla `mozosdealmacen`
--
ALTER TABLE `mozosdealmacen`
  ADD PRIMARY KEY (`idMozoDeAlmacen`),
  ADD KEY `idEmpleadoFK3` (`idEmpleadoFK3`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `repartidores`
--
ALTER TABLE `repartidores`
  ADD PRIMARY KEY (`idRepartidor`),
  ADD KEY `idEmpleadoFK4` (`idEmpleadoFK4`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`idVehiculo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `idAdministrador` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `compranentregan`
--
ALTER TABLE `compranentregan`
  MODIFY `idCompraEntrega` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `conducen`
--
ALTER TABLE `conducen`
  MODIFY `idConducir` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `mozosdealmacen`
--
ALTER TABLE `mozosdealmacen`
  MODIFY `idMozoDeAlmacen` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `repartidores`
--
ALTER TABLE `repartidores`
  MODIFY `idRepartidor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `idVehiculo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD CONSTRAINT `administradores_ibfk_1` FOREIGN KEY (`idEmpleadoFK2`) REFERENCES `empleados` (`idEmpleado`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `compranentregan`
--
ALTER TABLE `compranentregan`
  ADD CONSTRAINT `compranentregan_ibfk_1` FOREIGN KEY (`idClienteFK9`) REFERENCES `clientes` (`idCliente`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `compranentregan_ibfk_2` FOREIGN KEY (`idProductoFK8`) REFERENCES `productos` (`idProducto`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `compranentregan_ibfk_3` FOREIGN KEY (`idRepartidorFK7`) REFERENCES `repartidores` (`idRepartidor`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `conducen`
--
ALTER TABLE `conducen`
  ADD CONSTRAINT `conducen_ibfk_1` FOREIGN KEY (`idVehiculoFK5`) REFERENCES `vehiculos` (`idVehiculo`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `conducen_ibfk_2` FOREIGN KEY (`idRepartidorFK6`) REFERENCES `repartidores` (`idRepartidor`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`idEmpleadoJefeFK1`) REFERENCES `empleados` (`idEmpleado`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `mozosdealmacen`
--
ALTER TABLE `mozosdealmacen`
  ADD CONSTRAINT `mozosdealmacen_ibfk_1` FOREIGN KEY (`idEmpleadoFK3`) REFERENCES `empleados` (`idEmpleado`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `repartidores`
--
ALTER TABLE `repartidores`
  ADD CONSTRAINT `repartidores_ibfk_1` FOREIGN KEY (`idEmpleadoFK4`) REFERENCES `empleados` (`idEmpleado`) ON DELETE RESTRICT ON UPDATE RESTRICT;
--
-- Base de datos: `teleplus`
--
CREATE DATABASE IF NOT EXISTS `teleplus` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `teleplus`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abonados`
--

CREATE TABLE `abonados` (
  `idAbonado` int NOT NULL,
  `nombreAbonado` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `apellidosAbonado` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `dniAbonado` int DEFAULT NULL,
  `direccionAbonado` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `numeroCuentaAbonado` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `abonados`
--

INSERT INTO `abonados` (`idAbonado`, `nombreAbonado`, `apellidosAbonado`, `dniAbonado`, `direccionAbonado`, `numeroCuentaAbonado`) VALUES
(1, 'Marcos', 'González Albariño', 12345678, 'C/ Isaac Peral, 23, 4º A', 'ES2420851234451029384756'),
(2, 'Elena', 'Ramírez Balboa', 87654321, 'Avda. de España, 4', 'ES3412341234561827364500'),
(3, 'Mar', 'Marín Marino', 12233445, 'Plaza de la Luz, 23, 2º A', 'ES4567671232345675645600');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiarios`
--

CREATE TABLE `beneficiarios` (
  `idBeneficiario` int NOT NULL,
  `loginBeneficiario` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `claveBeneficiario` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `idAbonadoFK` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `beneficiarios`
--

INSERT INTO `beneficiarios` (`idBeneficiario`, `loginBeneficiario`, `claveBeneficiario`, `idAbonadoFK`) VALUES
(1, 'coco', '1234', 1),
(2, 'papi', '4321', 1),
(3, 'mami', '4321', 1),
(4, 'raul', 'abcd', 2),
(5, 'lala', '4321', 2),
(6, 'gus', 'abcv', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `idPelicula` int NOT NULL,
  `idProductoFK` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`idPelicula`, `idProductoFK`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idProducto` int NOT NULL,
  `nombreProducto` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `duracionProducto` int DEFAULT NULL,
  `precioProducto` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idProducto`, `nombreProducto`, `duracionProducto`, `precioProducto`) VALUES
(1, 'Titanic', 180, '4.50'),
(2, 'Blade Runner', 94, '9.99'),
(3, 'Juego de Tronos', 1, '2.99'),
(4, 'Breaking Bad', 1, '2.99'),
(5, 'El mal querer', 34, '10.99');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series`
--

CREATE TABLE `series` (
  `idSerie` int NOT NULL,
  `temporadaSerie` int DEFAULT NULL,
  `episodioSerie` int DEFAULT NULL,
  `idProductoFK` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `series`
--

INSERT INTO `series` (`idSerie`, `temporadaSerie`, `episodioSerie`, `idProductoFK`) VALUES
(1, 1, 1, 3),
(2, 1, 2, 3),
(3, 2, 1, 3),
(4, 2, 2, 3),
(5, 1, 1, 4),
(6, 1, 2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visualizaciones`
--

CREATE TABLE `visualizaciones` (
  `idVisualizacion` int NOT NULL,
  `fechaInicioVisualizacion` date DEFAULT NULL,
  `minutoExactoVisualizacion` int DEFAULT NULL,
  `idBeneficiarioFK` int DEFAULT NULL,
  `idProductoFK` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `visualizaciones`
--

INSERT INTO `visualizaciones` (`idVisualizacion`, `fechaInicioVisualizacion`, `minutoExactoVisualizacion`, `idBeneficiarioFK`, `idProductoFK`) VALUES
(1, '2020-02-20', 25, 1, 1),
(2, '2020-02-20', 94, 3, 2),
(3, '2020-02-20', 48, 6, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `abonados`
--
ALTER TABLE `abonados`
  ADD PRIMARY KEY (`idAbonado`);

--
-- Indices de la tabla `beneficiarios`
--
ALTER TABLE `beneficiarios`
  ADD PRIMARY KEY (`idBeneficiario`),
  ADD KEY `idAbonadoFK1_idx` (`idAbonadoFK`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`idPelicula`),
  ADD KEY `idProductoFK2_idx` (`idProductoFK`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`);

--
-- Indices de la tabla `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`idSerie`),
  ADD KEY `idProductoFK3_idx` (`idProductoFK`);

--
-- Indices de la tabla `visualizaciones`
--
ALTER TABLE `visualizaciones`
  ADD PRIMARY KEY (`idVisualizacion`),
  ADD KEY `idBeneficiarioFK4_idx` (`idBeneficiarioFK`),
  ADD KEY `idProductoFK5_idx` (`idProductoFK`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `abonados`
--
ALTER TABLE `abonados`
  MODIFY `idAbonado` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `beneficiarios`
--
ALTER TABLE `beneficiarios`
  MODIFY `idBeneficiario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `idPelicula` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `series`
--
ALTER TABLE `series`
  MODIFY `idSerie` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `visualizaciones`
--
ALTER TABLE `visualizaciones`
  MODIFY `idVisualizacion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `beneficiarios`
--
ALTER TABLE `beneficiarios`
  ADD CONSTRAINT `idAbonadoFK1` FOREIGN KEY (`idAbonadoFK`) REFERENCES `abonados` (`idAbonado`);

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `idProductoFK2` FOREIGN KEY (`idProductoFK`) REFERENCES `productos` (`idProducto`);

--
-- Filtros para la tabla `series`
--
ALTER TABLE `series`
  ADD CONSTRAINT `idProductoFK3` FOREIGN KEY (`idProductoFK`) REFERENCES `productos` (`idProducto`);

--
-- Filtros para la tabla `visualizaciones`
--
ALTER TABLE `visualizaciones`
  ADD CONSTRAINT `idBeneficiarioFK4` FOREIGN KEY (`idBeneficiarioFK`) REFERENCES `beneficiarios` (`idBeneficiario`),
  ADD CONSTRAINT `idProductoFK5` FOREIGN KEY (`idProductoFK`) REFERENCES `productos` (`idProducto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
