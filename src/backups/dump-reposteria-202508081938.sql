-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: reposteria
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `pk_categorias` smallint(6) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`pk_categorias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagenes`
--

DROP TABLE IF EXISTS `imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagenes` (
  `pk_imagenes` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_imagen` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`pk_imagenes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenes`
--

LOCK TABLES `imagenes` WRITE;
/*!40000 ALTER TABLE `imagenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensajes`
--

DROP TABLE IF EXISTS `mensajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensajes` (
  `pk_mensajes` int(11) NOT NULL AUTO_INCREMENT,
  `asunto` varchar(200) NOT NULL,
  `mensaje` text NOT NULL,
  `numero_telefonico` varchar(15) NOT NULL,
  `leido` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`pk_mensajes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensajes`
--

LOCK TABLES `mensajes` WRITE;
/*!40000 ALTER TABLE `mensajes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precios`
--

DROP TABLE IF EXISTS `precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `precios` (
  `pk_precios` int(11) NOT NULL AUTO_INCREMENT,
  `precio_base` decimal(10,0) NOT NULL,
  `medida` varchar(10) NOT NULL,
  `porciones` varchar(15) NOT NULL,
  `descuento` decimal(10,0) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`pk_precios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precios`
--

LOCK TABLES `precios` WRITE;
/*!40000 ALTER TABLE `precios` DISABLE KEYS */;
/*!40000 ALTER TABLE `precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `pk_productos` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `descripcion` text NOT NULL,
  `es_especialidad` tinyint(1) NOT NULL DEFAULT 0,
  `stock` smallint(6) NOT NULL DEFAULT 0,
  `visualizar` tinyint(1) NOT NULL DEFAULT 1,
  `fk_usuarios` smallint(6) NOT NULL,
  `fk_subcategorias` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`pk_productos`),
  KEY `productos_FK` (`fk_usuarios`),
  KEY `productos_FK_1` (`fk_subcategorias`),
  CONSTRAINT `productos_FK` FOREIGN KEY (`fk_usuarios`) REFERENCES `usuarios` (`pk_usuarios`),
  CONSTRAINT `productos_FK_1` FOREIGN KEY (`fk_subcategorias`) REFERENCES `subcategorias` (`pk_subcategorias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_imagenes`
--

DROP TABLE IF EXISTS `productos_imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos_imagenes` (
  `pk_productos_imagenes` int(11) NOT NULL AUTO_INCREMENT,
  `fk_productos` int(11) NOT NULL,
  `fk_imagenes` int(11) NOT NULL,
  PRIMARY KEY (`pk_productos_imagenes`),
  KEY `productos_imagenes_FK` (`fk_productos`),
  KEY `productos_imagenes_FK_1` (`fk_imagenes`),
  CONSTRAINT `productos_imagenes_FK` FOREIGN KEY (`fk_productos`) REFERENCES `productos` (`pk_productos`),
  CONSTRAINT `productos_imagenes_FK_1` FOREIGN KEY (`fk_imagenes`) REFERENCES `imagenes` (`pk_imagenes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_imagenes`
--

LOCK TABLES `productos_imagenes` WRITE;
/*!40000 ALTER TABLE `productos_imagenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos_imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_precios`
--

DROP TABLE IF EXISTS `productos_precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos_precios` (
  `pk_productos_precios` int(11) NOT NULL AUTO_INCREMENT,
  `fk_productos` int(11) NOT NULL,
  `fk_precios` int(11) NOT NULL,
  PRIMARY KEY (`pk_productos_precios`),
  KEY `productos_precios_FK` (`fk_productos`),
  KEY `productos_precios_FK_1` (`fk_precios`),
  CONSTRAINT `productos_precios_FK` FOREIGN KEY (`fk_productos`) REFERENCES `productos` (`pk_productos`),
  CONSTRAINT `productos_precios_FK_1` FOREIGN KEY (`fk_precios`) REFERENCES `precios` (`pk_precios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_precios`
--

LOCK TABLES `productos_precios` WRITE;
/*!40000 ALTER TABLE `productos_precios` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos_precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `pk_roles` smallint(6) NOT NULL AUTO_INCREMENT,
  `rol` varchar(20) NOT NULL,
  PRIMARY KEY (`pk_roles`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategorias`
--

DROP TABLE IF EXISTS `subcategorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategorias` (
  `pk_subcategorias` smallint(6) NOT NULL AUTO_INCREMENT,
  `subcategoria` varchar(100) NOT NULL,
  `fk_categorias` smallint(6) NOT NULL,
  PRIMARY KEY (`pk_subcategorias`),
  KEY `subcategorias_FK` (`fk_categorias`),
  CONSTRAINT `subcategorias_FK` FOREIGN KEY (`fk_categorias`) REFERENCES `categorias` (`pk_categorias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategorias`
--

LOCK TABLES `subcategorias` WRITE;
/*!40000 ALTER TABLE `subcategorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `subcategorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `pk_usuarios` smallint(6) NOT NULL AUTO_INCREMENT,
  `correo` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fk_roles` smallint(6) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`pk_usuarios`),
  KEY `usuarios_FK` (`fk_roles`),
  CONSTRAINT `usuarios_FK` FOREIGN KEY (`fk_roles`) REFERENCES `usuarios` (`pk_usuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'reposteria'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-08 19:38:02
