-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para lacanasta
CREATE DATABASE IF NOT EXISTS `lacanasta` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `lacanasta`;

-- Volcando estructura para tabla lacanasta.carta
CREATE TABLE IF NOT EXISTS `carta` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es número entero autoincrementable',
  `nombre` varchar(150) DEFAULT NULL COMMENT 'se puede ingresar hasta 150 caracteres',
  `precio` decimal(18,2) DEFAULT NULL COMMENT 'se debe ingresar dígitos en decimal o entero',
  `estado` int(11) DEFAULT NULL COMMENT 'se debe ingresar 1 o 0,donde 1 es activo y 0 es inactivo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla lacanasta.carta: ~23 rows (aproximadamente)
/*!40000 ALTER TABLE `carta` DISABLE KEYS */;
INSERT INTO `carta` (`id`, `nombre`, `precio`, `estado`) VALUES
	(1, 'Promo 1 Brasa', 59.00, 1),
	(2, 'Promo Chaufa Brasa', 60.00, 1),
	(3, 'Promo 2 Brasa', 62.00, 0),
	(4, '1/2 Oferta Brasa', 45.00, 1),
	(5, '1/4 Oferta Brasa con papas fritas', 15.00, 1),
	(6, '1/4 Oferta Brasa con ensalada', 15.00, 1),
	(7, '1/4 Oferta Brasa con chaufa', 15.00, 1),
	(8, '1/4 Oferta Brasa con papa mas ensalada', 17.00, 1),
	(9, '1/4 Oferta Brasa con papa mas chaufa', 17.00, 1),
	(10, '1/4 Oferta Brasa mas chaufa mas ensalada', 17.00, 1),
	(11, '1/4 Oferta Brasa completo', 20.00, 1),
	(12, 'Promo 1 Broaster', 60.00, 1),
	(13, 'Promo Chaufa Broaster', 62.00, 0),
	(14, 'Promo 2 Broaster', 65.00, 0),
	(15, '1/2 Oferta Broaster', 45.00, 0),
	(16, '1/4 Oferta Broaster', 17.00, 0),
	(17, '1/8 Oferta Broaster Chaufa', 9.00, 0),
	(18, 'Coca Cola 500 ML', 5.00, 1),
	(19, 'Fanta 500 ML', 5.00, 1),
	(20, 'Sprite 500 ML', 5.00, 1),
	(21, 'Coca Zero 500 ML', 5.00, 1),
	(22, 'Inca Kola 500ML', 5.00, 1),
	(23, 'Pepsi 500 ML', 5.00, 1);
/*!40000 ALTER TABLE `carta` ENABLE KEYS */;

-- Volcando estructura para tabla lacanasta.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es número entero autoincrementable',
  `nombre` varchar(250) DEFAULT NULL COMMENT 'se puede ingresar hasta 250 caracteres',
  `apellidos` varchar(250) DEFAULT NULL COMMENT 'se puede ingresar hasta 250 caracteres	',
  `direccion` varchar(300) DEFAULT NULL COMMENT 'se puede ingresar hasta 300 caracteres	',
  `estado` int(11) DEFAULT NULL COMMENT 'se debe ingresar 1 o 0,donde 1 es activo y 0 es inactivo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla lacanasta.empleados: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` (`id`, `nombre`, `apellidos`, `direccion`, `estado`) VALUES
	(1, 'Rocky', 'Blanco', 'Av. La Cultura Mz 15 Lt 20', 1),
	(2, 'Maria', 'Casas', 'Calle Luis Sanchez Cerro Mz A Lt 20', 1),
	(3, 'Gabriela', 'Montecinos', 'Av. Los Escritores Mz B Lt 18', 1),
	(4, 'Richard', 'Gomez', 'Av. Miraflores Mz 10  Lt 12', 1),
	(5, 'Luis', 'Mendoza', 'Av. Los Escritores Mz E Lt 25', 0);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;

-- Volcando estructura para tabla lacanasta.insumos
CREATE TABLE IF NOT EXISTS `insumos` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es numero entero autoincrementable',
  `nombre` varchar(250) DEFAULT NULL COMMENT 'se puede ingresar hasta 250 caracteres',
  `precio` decimal(18,2) DEFAULT NULL COMMENT 'se debe ingresar numeros en decimal o entero ',
  `unidad` varchar(10) DEFAULT NULL COMMENT 'se debe ingresar KG.,U.,Lt. o Gr.',
  `cantidad` int(11) DEFAULT NULL COMMENT 'se debe ingresar números enteros',
  `estado` int(11) DEFAULT NULL COMMENT 'se debe ingresar 1 o 0,donde 1 es activo y 0 es inactivo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla lacanasta.insumos: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `insumos` DISABLE KEYS */;
INSERT INTO `insumos` (`id`, `nombre`, `precio`, `unidad`, `cantidad`, `estado`) VALUES
	(1, 'zanahorias', 4.00, 'KG.', 3, 1),
	(2, 'tomates', 3.00, 'KG.', 3, 1),
	(3, 'pollos crudos', 12.00, 'U.', 50, 1),
	(4, 'papas', 20.00, 'KG.', 5, 1),
	(5, 'lechuga', 15.00, 'KG.', 4, 1),
	(6, 'Arroz', 4.00, 'KG.', 10, 1),
	(7, 'Huevo', 2.00, 'U.', 25, 1);
/*!40000 ALTER TABLE `insumos` ENABLE KEYS */;

-- Volcando estructura para tabla lacanasta.mesas
CREATE TABLE IF NOT EXISTS `mesas` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es número entero autoincrementable',
  `nombre` varchar(150) DEFAULT NULL COMMENT 'se puede ingresar hasta 150 caracteres',
  `estado` int(11) DEFAULT NULL COMMENT 'se debe ingresar 1 o 0,donde 1 es activo y 0 es inactivo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla lacanasta.mesas: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `mesas` DISABLE KEYS */;
INSERT INTO `mesas` (`id`, `nombre`, `estado`) VALUES
	(1, 'Mesa 1', 0),
	(2, 'Mesa 2', 0),
	(3, 'Mesa 3', 0),
	(4, 'Mesa 4', 0),
	(5, 'Mesa 5', 0),
	(6, 'Mesa 6', 0),
	(7, 'Mesa 7', 0),
	(8, 'Mesa 8', 0),
	(9, 'Mesa 9', 0),
	(10, 'Mesa 10', 0);
/*!40000 ALTER TABLE `mesas` ENABLE KEYS */;

-- Volcando estructura para tabla lacanasta.pedido
CREATE TABLE IF NOT EXISTS `pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es número entero autoincrementable',
  `fecha` datetime DEFAULT NULL COMMENT 'se debe ingresar yyy-mm-dd hh:mm:ss',
  `cantidad` int(11) DEFAULT NULL COMMENT 'se debe ingresar números enteros',
  `total` float DEFAULT NULL COMMENT 'se debe ingresar números enteros o decimal',
  `cliente` varchar(300) DEFAULT NULL COMMENT 'se puede ingresar hasta 300 caracteres',
  `cliente_ruc` varchar(20) DEFAULT NULL COMMENT 'se puede ingresar hasta 20 caracteres',
  `usuario_id` int(11) DEFAULT NULL COMMENT 'se debe ingresar un número entero correspondiente al atributo id de empleado',
  `empleado_id` int(11) DEFAULT NULL COMMENT 'se debe ingresar un número entero correspondiente al atributo id de empleado	',
  `mesa_id` int(11) DEFAULT NULL COMMENT 'se debe ingresar un número entero correspondiente al atributo id de la mesa	',
  `nro` varchar(250) DEFAULT NULL COMMENT 'se puede ingresar hasta 250 caracteres',
  `fechaboleta` datetime DEFAULT NULL COMMENT 'se debe ingresar yyy-mm-dd hh:mm:ss',
  `estado` int(11) DEFAULT NULL COMMENT 'se debe ingresa 1 o 0,donde 1 es activo y 0 es inactivo',
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `empleado_id` (`empleado_id`),
  KEY `mesa_id` (`mesa_id`),
  CONSTRAINT `FK_pedido_empleados` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_pedido_mesas` FOREIGN KEY (`mesa_id`) REFERENCES `mesas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_pedido_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla lacanasta.pedido: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` (`id`, `fecha`, `cantidad`, `total`, `cliente`, `cliente_ruc`, `usuario_id`, `empleado_id`, `mesa_id`, `nro`, `fechaboleta`, `estado`) VALUES
	(6, '2022-11-27 13:16:57', 2, 30, '', NULL, 2, 3, 2, '000000002', '2022-11-27 13:30:58', 2);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;

-- Volcando estructura para tabla lacanasta.pedido_detalle
CREATE TABLE IF NOT EXISTS `pedido_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es número entero autoincrementable',
  `pedido_id` int(11) DEFAULT NULL COMMENT 'se debe ingresar un número entero correspondiente al atributo id del pedido	',
  `carta_id` int(11) DEFAULT NULL COMMENT 'se debe ingresar un número entero correspondiente al atributo id de la carta	',
  `cantidad` int(11) DEFAULT NULL COMMENT 'se debe ingresar un número entero',
  `precio` decimal(18,2) DEFAULT NULL COMMENT 'se debe ingresar números enteros o decimal',
  `total` decimal(18,2) DEFAULT NULL COMMENT 'se debe ingresar números enteros o decimal',
  `estado` int(11) DEFAULT NULL COMMENT 'se debe ingresar 1 o 0,donde 1 es activo y 0 es inactivo',
  PRIMARY KEY (`id`),
  KEY `pedido_id` (`pedido_id`),
  KEY `carta_id` (`carta_id`),
  CONSTRAINT `FK_pedido_detalle_carta` FOREIGN KEY (`carta_id`) REFERENCES `carta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_pedido_detalle_pedido` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla lacanasta.pedido_detalle: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `pedido_detalle` DISABLE KEYS */;
INSERT INTO `pedido_detalle` (`id`, `pedido_id`, `carta_id`, `cantidad`, `precio`, `total`, `estado`) VALUES
	(17, 6, 5, 1, 15.00, 15.00, 1),
	(18, 6, 5, 1, 15.00, 15.00, 1);
/*!40000 ALTER TABLE `pedido_detalle` ENABLE KEYS */;

-- Volcando estructura para tabla lacanasta.proveedor
CREATE TABLE IF NOT EXISTS `proveedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es número entero autoincrementable',
  `nombre` varchar(250) DEFAULT NULL COMMENT 'se puede ingresar hasta 250 caracteres',
  `ruc` varchar(250) DEFAULT NULL COMMENT 'se puede ingresar hasta 250 caracteres',
  `estado` int(11) DEFAULT NULL COMMENT 'se debe ingresa 1 o 0,donde 1 es activo y 0 es inactivo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla lacanasta.proveedor: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` (`id`, `nombre`, `ruc`, `estado`) VALUES
	(1, 'Gadeli Almacen', '33545235', 1),
	(2, 'Carniceria Rico Pollo', '45454565', 1),
	(3, 'Casa de Doña Juana', '45124567', 1);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;

-- Volcando estructura para tabla lacanasta.solicitud
CREATE TABLE IF NOT EXISTS `solicitud` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es número entero autoincrementable',
  `proveedor_id` int(11) DEFAULT NULL COMMENT 'se debe ingresar un número entero correspondiente al atributo id del proveedor	',
  `usuarioAprobo_id` int(11) DEFAULT NULL COMMENT 'se debe ingresar un número entero correspondiente al atributo id de empleado',
  `usuarioRegistro_id` int(11) DEFAULT NULL COMMENT 'se debe ingresar un número entero correspondiente al atributo id de empleado',
  `fecha_registro` datetime DEFAULT NULL COMMENT 'se debe ingresar yyy-mm-dd hh:mm:ss',
  `fecha_aprobacion` datetime DEFAULT NULL COMMENT 'se debe ingresar yyy-mm-dd hh:mm:ss',
  `cantidad` int(11) DEFAULT NULL COMMENT 'se debe ingresar números enteros',
  `total` decimal(18,2) DEFAULT NULL COMMENT 'se debe ingresar números enteros o decimal',
  `estado` int(11) DEFAULT NULL COMMENT 'se debe ingresar 1 o 0,donde 1 es activo y 0 es inactivo',
  PRIMARY KEY (`id`),
  KEY `proveedor_id` (`proveedor_id`),
  KEY `usuarioAprobo_id` (`usuarioAprobo_id`),
  KEY `usuarioRegistro_id` (`usuarioRegistro_id`),
  CONSTRAINT `FK_solicitud_proveedor` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_solicitud_usuario` FOREIGN KEY (`usuarioAprobo_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_solicitud_usuario_2` FOREIGN KEY (`usuarioRegistro_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla lacanasta.solicitud: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `solicitud` DISABLE KEYS */;
INSERT INTO `solicitud` (`id`, `proveedor_id`, `usuarioAprobo_id`, `usuarioRegistro_id`, `fecha_registro`, `fecha_aprobacion`, `cantidad`, `total`, `estado`) VALUES
	(1, 1, 1, 1, '2022-11-26 10:38:04', '2022-11-26 11:10:58', 23, 17.00, 2),
	(2, 1, 1, 2, '2022-11-26 22:31:57', '2022-11-26 10:34:41', 21, 13.00, 2),
	(3, 1, 1, 1, '2022-11-27 00:03:28', '2022-11-27 01:43:02', 7, 60.00, 0),
	(4, 1, 1, 4, '2022-11-27 13:31:38', '2022-11-27 01:42:57', 7, 81.00, 2);
/*!40000 ALTER TABLE `solicitud` ENABLE KEYS */;

-- Volcando estructura para tabla lacanasta.solicitud_detalle
CREATE TABLE IF NOT EXISTS `solicitud_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es número entero autoincrementable',
  `solicitud_id` int(11) DEFAULT NULL COMMENT 'se debe ingresar un número entero correspondiente al atributo id de la solicitud',
  `insumo_id` int(11) DEFAULT NULL COMMENT 'se debe ingresar un número entero correspondiente al atributo id del insumo',
  `cantidad` int(11) DEFAULT NULL COMMENT 'se debe ingresar números enteros',
  `unidad` varchar(11) DEFAULT NULL COMMENT 'se debe ingresar KG.,U.,Lt. o Gr.',
  `precio` decimal(18,2) DEFAULT NULL COMMENT 'se debe ingresar números enteros o decimal',
  PRIMARY KEY (`id`),
  KEY `solicitud_id` (`solicitud_id`),
  KEY `insumo_id` (`insumo_id`),
  CONSTRAINT `FK_solicitud_detalle_insumos` FOREIGN KEY (`insumo_id`) REFERENCES `insumos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_solicitud_detalle_solicitud` FOREIGN KEY (`solicitud_id`) REFERENCES `solicitud` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla lacanasta.solicitud_detalle: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `solicitud_detalle` DISABLE KEYS */;
INSERT INTO `solicitud_detalle` (`id`, `solicitud_id`, `insumo_id`, `cantidad`, `unidad`, `precio`) VALUES
	(1, 1, 1, 2, 'KG.', 4.00),
	(2, 1, 2, 3, 'KG.', 3.00),
	(3, 2, 1, 2, 'KG.', 5.00),
	(4, 2, 2, 1, 'KG.', 3.00),
	(5, 3, 1, 3, 'KG.', 4.00),
	(6, 3, 3, 4, 'U.', 12.00),
	(7, 4, 5, 5, 'KG.', 15.00),
	(8, 4, 2, 2, 'KG.', 3.00);
/*!40000 ALTER TABLE `solicitud_detalle` ENABLE KEYS */;

-- Volcando estructura para tabla lacanasta.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'es número entero autoincrementable',
  `nombre` varchar(250) DEFAULT NULL COMMENT 'se puede ingresar hasta 250 caracteres',
  `correo` varchar(250) DEFAULT NULL COMMENT 'se puede ingresar hasta 250 caracteres	',
  `clave` varchar(250) DEFAULT NULL COMMENT 'se puede ingresar hasta 250 caracteres	',
  `empleado_id` int(11) DEFAULT NULL COMMENT 'se debe ingresar un número entero correspondiente al atributo id de empleado',
  `tipo` int(11) DEFAULT NULL COMMENT 'se debe ingresar 1 o 0,donde 1 es administrador y 0 es empleado',
  `estado` int(11) DEFAULT NULL COMMENT 'se debe ingresar 1 o 0,donde 1 es activo y 0 es inactivo',
  PRIMARY KEY (`id`),
  KEY `FK_usuario_empleados` (`empleado_id`),
  CONSTRAINT `FK_usuario_empleados` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla lacanasta.usuario: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `nombre`, `correo`, `clave`, `empleado_id`, `tipo`, `estado`) VALUES
	(1, 'Luis', 'luis@hotmail.com', '102031', 5, 0, 1),
	(2, 'Rocky', 'rocky123@hotmail.com', '102030', 1, 1, 1),
	(3, 'Maria', 'mariacasas@hotmail.com', '102030', 2, 1, 1),
	(4, 'Gabriela', 'gabrielamont123@gmail.com', 'gabi123', 3, 1, 1),
	(5, 'Richard', 'richard153@gmail.com', 'richard123', 4, 1, 1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
