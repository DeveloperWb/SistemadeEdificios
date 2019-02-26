-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.5.0.5332
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para empresa
CREATE DATABASE IF NOT EXISTS `empresa` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `empresa`;

-- Volcando estructura para tabla empresa.departamentos
CREATE TABLE IF NOT EXISTS `departamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `metraje` int(11) DEFAULT NULL,
  `piso` int(11) DEFAULT NULL,
  `id_inquilino` int(11) DEFAULT NULL,
  `id_dueno` int(11) DEFAULT NULL,
  `id_edificio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `edificio` (`id_edificio`),
  KEY `inquilino` (`id_inquilino`),
  KEY `dueño` (`id_dueno`),
  CONSTRAINT `dueño` FOREIGN KEY (`id_dueno`) REFERENCES `duenos` (`id`),
  CONSTRAINT `edificio` FOREIGN KEY (`id_edificio`) REFERENCES `edificios` (`id`),
  CONSTRAINT `inquilino` FOREIGN KEY (`id_inquilino`) REFERENCES `inquilinos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla empresa.departamentos: ~49 rows (aproximadamente)
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` (`id`, `nombre`, `metraje`, `piso`, `id_inquilino`, `id_dueno`, `id_edificio`) VALUES
	(1, 'A101', 10, 1, 1, 1, 7),
	(2, 'A102', 10, 1, 1, 1, 7),
	(3, 'A103', 10, 1, 1, 1, 7),
	(4, 'B101', 50, 2, 1, 1, 7),
	(6, 'B102', 50, 2, 1, 1, 7),
	(7, 'B103', 50, 2, 1, 1, 7),
	(8, 'C101', 60, 3, 1, 1, 7),
	(9, 'C102', 40, 3, 1, 1, 7),
	(10, 'C103', 100, 3, 1, 1, 7),
	(11, 'D101', 20, 4, 1, 1, 7),
	(12, 'D102', 40, 4, 1, 1, 7),
	(13, 'A101', 10000, 3, 2, 2, 3),
	(15, 'A103', 10, 1, 1, 1, 3),
	(16, 'B101', 50, 2, 1, 1, 3),
	(17, 'B102', 50, 2, 1, 1, 3),
	(18, 'B103', 50, 2, 1, 1, 3),
	(19, 'C101', 60, 3, 1, 1, 3),
	(20, 'C102', 40, 3, 1, 1, 3),
	(21, 'C102', 40, 3, 1, 1, 3),
	(22, 'C103', 100, 3, 1, 1, 3),
	(23, 'D101', 20, 4, 1, 1, 3),
	(24, 'D102', 40, 4, 1, 1, 3),
	(25, 'A101', 10, 1, 1, 1, 1),
	(26, 'A101', 10, 1, 1, 1, 1),
	(27, 'A102', 10, 1, 1, 1, 1),
	(28, 'A103', 10, 1, 1, 1, 1),
	(29, 'B101', 50, 2, 1, 1, 1),
	(30, 'B102', 50, 2, 1, 1, 1),
	(31, 'B103', 50, 2, 1, 1, 1),
	(32, 'C101', 60, 3, 1, 1, 1),
	(33, 'C102', 40, 3, 1, 1, 1),
	(34, 'C102', 40, 3, 1, 1, 1),
	(35, 'C103', 100, 3, 1, 1, 1),
	(36, 'D101', 20, 4, 1, 1, 1),
	(37, 'D102', 40, 4, 1, 1, 1),
	(38, 'A101', 10, 1, 1, 1, 2),
	(39, 'A102', 10, 1, 1, 1, 2),
	(40, 'A103', 10, 1, 1, 1, 2),
	(41, 'B101', 50, 2, 1, 1, 2),
	(42, 'B102', 50, 2, 1, 1, 2),
	(43, 'B103', 50, 2, 1, 1, 2),
	(44, 'C101', 60, 3, 1, 1, 2),
	(45, 'C102', 40, 3, 1, 1, 2),
	(46, 'C103', 100, 3, 1, 1, 2),
	(47, 'D101', 20, 4, 1, 1, 2),
	(48, 'D102', 40, 4, 1, 1, 2),
	(49, 'D102', 100, 2, 2, 2, 2),
	(55, 'F101', 50, 2, 3, 4, 2),
	(56, 'C145', 50, 3, 5, 6, 2);
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;

-- Volcando estructura para tabla empresa.duenos
CREATE TABLE IF NOT EXISTS `duenos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Volcando datos para la tabla empresa.duenos: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `duenos` DISABLE KEYS */;
INSERT INTO `duenos` (`id`, `nombres`, `apellidos`, `telefono`, `email`, `dni`) VALUES
	(1, 'renzo', 'santos', '968528963', 'armin.rs@gmail.com', 12536528),
	(2, 'Santiago', 'rivera', '931631250', 'orregot.santos@gmail.com', 56892564),
	(3, 'sandro', 'saalva', '931631250', 'orregot.santos@gmail.com', 56892564),
	(4, 'jacinto', 'rivervieja', '931631250', 'orrego.st.santos@gmail.com', 56892564),
	(5, 'jacinto', 'rivervieja', '931631250', 'orrego.st.santos@gmail.com', 56892564),
	(6, 'sa', 'rivera', '931631250', 'orrego.st.santos@gmail.com', 56892564);
/*!40000 ALTER TABLE `duenos` ENABLE KEYS */;

-- Volcando estructura para tabla empresa.edificios
CREATE TABLE IF NOT EXISTS `edificios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `pisos` int(11) DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa` (`id_empresa`),
  CONSTRAINT `empresa` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla empresa.edificios: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `edificios` DISABLE KEYS */;
INSERT INTO `edificios` (`id`, `nombre`, `direccion`, `telefono`, `pisos`, `id_empresa`) VALUES
	(1, 'las palmas', 'av. hme', '985678245', 5, 2),
	(2, 'palma real', 'av. hme', '985678245', 4, 2),
	(3, 'el monte', 'av. hme', '985678245', 4, 1),
	(7, 'el monte', 'av. hme', '985678245', 4, 6);
/*!40000 ALTER TABLE `edificios` ENABLE KEYS */;

-- Volcando estructura para tabla empresa.empresas
CREATE TABLE IF NOT EXISTS `empresas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla empresa.empresas: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` (`id`, `nombre`, `direccion`, `email`, `telefono`) VALUES
	(1, 'construcciones', 'av.los alamos', 'la_empresa@gmail.com', 964589321),
	(2, 'Santconsolidate', 'av.los alamos', 'la_empre@gmail.com', 964589321),
	(3, 'constructora Las casa', 'av.los alamos', 'la_empre@gmail.com', 964589321),
	(6, 'construcciones C.R.F', 'av.los alamos', 'la_empre@gmail.com', 964589321);
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;

-- Volcando estructura para tabla empresa.incidencias
CREATE TABLE IF NOT EXISTS `incidencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  `id_dueno` int(11) DEFAULT NULL,
  `id_inquilino` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Incidencias_inquilinos` (`id_inquilino`),
  KEY `FK_Incidencias_dueños` (`id_dueno`),
  CONSTRAINT `FK_Incidencias_dueños` FOREIGN KEY (`id_dueno`) REFERENCES `duenos` (`id`),
  CONSTRAINT `FK_Incidencias_inquilinos` FOREIGN KEY (`id_inquilino`) REFERENCES `inquilinos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla empresa.incidencias: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `incidencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `incidencias` ENABLE KEYS */;

-- Volcando estructura para tabla empresa.inquilinos
CREATE TABLE IF NOT EXISTS `inquilinos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla empresa.inquilinos: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `inquilinos` DISABLE KEYS */;
INSERT INTO `inquilinos` (`id`, `nombres`, `apellidos`, `telefono`, `email`, `dni`) VALUES
	(1, 'renzo', 'santos', '968528963', 'armin.sr@gmail.com', 12536528),
	(2, 'Santiago', 'rivera', '931631250', 'orregot.santos@gmail.com', 56892564),
	(3, 'teofilo', 'rudifino', '8754965484', 'orrego.st.santos@gmail.com', 23564585),
	(4, 'teofilo', 'rudifino', '8754965484', 'orrego.st.santos@gmail.com', 23564585),
	(5, 'teofilo', 'rudifino', '8754965484', 'orrego.st.santos@gmail.com', 23564585);
/*!40000 ALTER TABLE `inquilinos` ENABLE KEYS */;

-- Volcando estructura para tabla empresa.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla empresa.users: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
	(1, 'renzo', '$2y$10$Qd3dVedgFMt3uMxWmdMbk.WsS4P62bKCEMTbyIjoSWvcKu9zEsQHG', '2019-02-18 20:09:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
