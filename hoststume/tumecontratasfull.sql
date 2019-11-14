-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for Win64 (AMD64)
--
-- Host: aa1g8vz8oas2wa.chipaf0uabgc.us-east-1.rds.amazonaws.com    Database: tumecontratas
-- ------------------------------------------------------
-- Server version	5.6.40-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (-1,'Seleccione su ciudad'),(1,'Armenia'),(2,'Barranquilla'),(3,'Bogotá'),(4,'Cali'),(5,'Santa marta'),(6,'Medellín'),(7,'Cartagena'),(8,'Cúcuta'),(9,'Soledad'),(10,'Ibagué'),(11,'Bucaramanga'),(12,'Soacha'),(13,'Villavicencio'),(14,'Pereira'),(15,'Bello'),(16,'Valledupar'),(17,'Montería'),(18,'Pasto'),(19,'Buenaventura'),(20,'Manizales'),(21,'Neiva'),(22,'Palmira'),(23,'Popayán'),(24,'Sincelejo'),(25,'Itaguí'),(26,'Riohacha'),(27,'Floridablanca'),(28,'Envigado'),(29,'Tuluá'),(30,'Tumaco'),(31,'Dosquebradas');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colombia_respuesta`
--

DROP TABLE IF EXISTS `colombia_respuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colombia_respuesta` (
  `idrespuesta` int(11) NOT NULL AUTO_INCREMENT,
  `autorizacion` varchar(45) DEFAULT NULL,
  `referencia` varchar(45) DEFAULT NULL,
  `recibo` varchar(45) DEFAULT NULL,
  `nombre_entidad` varchar(255) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `monto` varchar(45) DEFAULT NULL,
  `banco` varchar(255) DEFAULT NULL,
  `estado_transaccion` varchar(45) DEFAULT NULL,
  `codigo_retorno` varchar(45) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `tipo_documento` varchar(45) DEFAULT NULL,
  `documento` varchar(45) DEFAULT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `direccion` varchar(80) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `descripcion_producto` varchar(80) DEFAULT NULL,
  `referencia_producto` varchar(45) DEFAULT NULL,
  `cantidad_producto` varchar(45) DEFAULT NULL,
  `idioma` varchar(45) DEFAULT NULL,
  `mensaje_respuesta` varchar(60) DEFAULT NULL,
  `codigo_respuesta` varchar(45) DEFAULT NULL,
  `mensaje` varchar(80) DEFAULT NULL,
  `monto_inicial` varchar(45) DEFAULT NULL,
  `moneda` varchar(45) DEFAULT NULL,
  `descripcion_pago` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`idrespuesta`),
  KEY `index2` (`referencia`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colombia_respuesta`
--

LOCK TABLES `colombia_respuesta` WRITE;
/*!40000 ALTER TABLE `colombia_respuesta` DISABLE KEYS */;
INSERT INTO `colombia_respuesta` VALUES (1,'1403257','5aa8592b5966f','1478207082','SIUL.NET S.A.S','9003928943','25000','BANCO UNION COLOMBIANO','OK','SUCCESS','181.169.131.85','2018-03-13 18:12:10','PSE','g.a.rondon@gmail.com','CC','98560775','GERARDO','RONDON','CRA 43A 1SUR 50 TORRE 3 OF 805','3114779898','3114779898','MEDELLIN','ANTIOQUIA','CO','EMPRESA','4','1','es','Transaccion APROBADA','000','Transaccion APROBADA','25000','COP','EMPRESA'),(2,'1403433','5aa9392182ab0','1478208205','SIUL.NET S.A.S','9003928943','10000','BANCO UNION COLOMBIANO','OK','SUCCESS','181.169.131.85','2018-03-14 10:03:51','PSE','g.a.rondon@gmail.com','CC','98560775','GERARDO','RONDON','CRA 43A 1SUR 50 TORRE 3 OF 805','3114779898','3114779898','MEDELLIN','ANTIOQUIA','CO','PLAN MICRO','000003','1','es','Transaccion APROBADA','000','Transaccion APROBADA','10000','COP','PLAN MICRO'),(3,'1528140','5c4b2354e80a7','1678236908','SIUL.NET S.A.S','9003928943','2000','DAVIPLATA','NOT_AUTHORIZED','SUCCESS','181.140.203.91','2019-01-25 09:57:42','PSE','info@tumecontratas.com','CC','71366296','CARLOS','Prueba','calle 2','3012320000','3012320000','MEDELLIN','ANTIOQUIA','CO','PLAN BASICO','000001','1','es','Transaccion RECHAZADA','NAU','Transaccion RECHAZADA','2000','COP','PLAN BASICO'),(4,'1537609','5c5ae6182be39','1679197727','PAGOAGIL','9003928943','2000','BANCOLOMBIA DESARROLLO','NOT_AUTHORIZED','SUCCESS','181.140.203.91','2019-02-06 08:51:43','PSE','victorjaimesm2@gmail.com','CC','71366296','CARLOS','JAIMES','calle 2','3016250382','3016250382','MEDELLIN','ANTIOQUIA','CO','Plan Basico','000001','1','es','Transaccion RECHAZADA','NAU','Transaccion RECHAZADA','2000','COP','Plan Basico'),(5,'1542459','5c66ae270df64','1679200918','PAGOAGIL','9003928943','2000','BAN.CO','NOT_AUTHORIZED','SUCCESS','190.248.192.216','2019-02-15 07:22:23','PSE','prueba@prueba.com','CC','12345687','PRUEBA','PRUEBA','22','2','3111114545','MEDELLIN','ANTIOQUIA','CO','Plan Basico','000001','1','es','Transaccion RECHAZADA','NAU','Transaccion RECHAZADA','2000','COP','Plan Basico');
/*!40000 ALTER TABLE `colombia_respuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creditos_historico`
--

DROP TABLE IF EXISTS `creditos_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creditos_historico` (
  `idpersona` int(11) NOT NULL,
  `creditos` int(11) NOT NULL,
  `idpropuesta` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `operacion` tinyint(1) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_creditos_historico_1_idx` (`idpersona`),
  KEY `fk_creditos_historico_2_idx` (`idpropuesta`),
  CONSTRAINT `fk_creditos_historico_1` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_creditos_historico_2` FOREIGN KEY (`idpropuesta`) REFERENCES `propuesta_servicio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditos_historico`
--

LOCK TABLES `creditos_historico` WRITE;
/*!40000 ALTER TABLE `creditos_historico` DISABLE KEYS */;
INSERT INTO `creditos_historico` VALUES (31,180,NULL,'2017-06-15 14:18:54','2017-06-15 14:18:54',1,15,NULL),(31,15,12,'2017-06-15 14:54:14','2017-06-15 14:54:14',2,16,NULL),(31,15,13,'2017-06-15 21:22:13','2017-06-15 21:22:13',2,17,NULL),(31,15,14,'2017-06-20 22:52:01','2017-06-20 22:52:01',2,18,NULL),(31,15,15,'2017-06-21 04:25:19','2017-06-21 04:25:19',2,19,NULL),(34,180,NULL,'2017-08-08 14:42:37','2017-08-08 14:42:37',1,20,NULL),(35,180,NULL,'2017-08-14 14:45:58','2017-08-14 14:45:58',1,21,NULL),(37,180,NULL,'2017-08-23 14:50:24','2017-08-23 14:50:24',1,22,NULL),(39,180,NULL,'2017-08-23 16:25:56','2017-08-23 16:25:56',1,23,NULL),(40,180,NULL,'2017-08-23 16:37:07','2017-08-23 16:37:07',1,24,NULL),(41,180,NULL,'2017-08-25 23:11:21','2017-08-25 23:11:21',1,25,NULL),(42,180,NULL,'2017-08-28 02:07:10','2017-08-28 02:07:10',1,26,NULL),(43,180,NULL,'2017-08-28 21:44:46','2017-08-28 21:44:46',1,27,NULL),(46,180,NULL,'2017-08-29 17:19:16','2017-08-29 17:19:16',1,28,NULL),(46,15,16,'2017-09-22 12:58:48','2017-09-22 12:58:48',2,29,NULL),(47,180,NULL,'2017-10-08 23:00:41','2017-10-08 23:00:41',1,30,NULL),(49,180,NULL,'2017-11-15 14:50:55','2017-11-15 14:50:55',1,31,NULL),(49,15,17,'2017-11-22 19:04:33','2017-11-22 19:04:33',2,32,NULL),(51,180,NULL,'2017-12-06 20:27:33','2017-12-06 20:27:33',1,33,NULL),(53,180,NULL,'2017-12-28 02:36:29','2017-12-28 02:36:29',1,34,NULL),(54,180,NULL,'2017-12-28 02:52:22','2017-12-28 02:52:22',1,35,NULL),(53,15,18,'2017-12-28 03:01:08','2017-12-28 03:01:08',2,36,NULL),(58,180,NULL,'2018-03-06 19:17:00','2018-03-06 19:17:00',1,37,'150'),(59,180,NULL,'2018-03-12 19:29:41','2018-03-12 19:29:41',1,38,NULL),(58,150,NULL,'2018-03-14 15:11:19','2018-03-14 15:11:19',1,39,'200'),(51,15,19,'2018-04-08 14:07:44','2018-04-08 14:07:44',2,40,NULL),(60,180,NULL,'2018-04-25 01:13:34','2018-04-25 01:13:34',1,41,'0'),(61,180,NULL,'2018-05-17 16:33:18','2018-05-17 16:33:18',1,42,'0'),(63,180,NULL,'2018-05-25 18:54:29','2018-05-25 18:54:29',1,43,'0'),(64,180,NULL,'2018-06-16 13:48:57','2018-06-16 13:48:57',1,44,'0'),(65,180,NULL,'2018-08-02 01:29:44','2018-08-02 01:29:44',1,45,'0'),(66,180,NULL,'2018-08-02 03:03:49','2018-08-02 03:03:49',1,46,'0'),(67,180,NULL,'2018-08-06 16:11:45','2018-08-06 16:11:45',1,47,'0'),(68,180,NULL,'2018-08-09 02:16:12','2018-08-09 02:16:12',1,48,'0'),(69,180,NULL,'2018-08-09 15:02:17','2018-08-09 15:02:17',1,49,'0'),(70,180,NULL,'2018-08-09 18:55:13','2018-08-09 18:55:13',1,50,'0'),(72,180,NULL,'2018-08-14 13:06:18','2018-08-14 13:06:18',1,51,'0'),(73,180,NULL,'2018-08-21 00:07:32','2018-08-21 00:07:32',1,52,'0'),(75,180,NULL,'2018-08-25 03:04:16','2018-08-25 03:04:16',1,53,'0'),(76,180,NULL,'2018-08-28 15:59:16','2018-08-28 15:59:16',1,54,'0'),(77,180,NULL,'2018-08-30 03:30:46','2018-08-30 03:30:46',1,55,'0'),(78,180,NULL,'2018-08-30 19:42:48','2018-08-30 19:42:48',1,56,'0'),(79,180,NULL,'2018-08-30 20:07:18','2018-08-30 20:07:18',1,57,'0'),(80,180,NULL,'2018-08-30 20:31:26','2018-08-30 20:31:26',1,58,'0'),(81,180,NULL,'2018-08-30 21:03:49','2018-08-30 21:03:49',1,59,'0'),(73,15,20,'2018-08-31 12:25:09','2018-08-31 12:25:09',2,60,NULL),(83,180,NULL,'2018-10-10 00:03:08','2018-10-10 00:03:08',1,61,'0'),(84,180,NULL,'2018-10-10 16:16:00','2018-10-10 16:16:00',1,62,'0'),(85,180,NULL,'2018-10-20 13:25:29','2018-10-20 13:25:29',1,63,'0'),(86,180,NULL,'2018-11-01 15:57:15','2018-11-01 15:57:15',1,64,'0'),(87,180,NULL,'2018-11-05 16:18:07','2018-11-05 16:18:07',1,65,'0'),(88,180,NULL,'2018-12-21 15:55:59','2018-12-21 15:55:59',1,66,'0'),(89,180,NULL,'2019-01-11 04:57:08','2019-01-11 04:57:08',1,67,'0'),(91,180,NULL,'2019-01-12 16:13:11','2019-01-12 16:13:11',1,68,'0'),(93,180,NULL,'2019-01-14 23:00:40','2019-01-14 23:00:40',1,69,'0'),(94,180,NULL,'2019-01-16 20:19:48','2019-01-16 20:19:48',1,70,'0'),(95,180,NULL,'2019-01-22 11:48:44','2019-01-22 11:48:44',1,71,'0'),(93,15,21,'2019-01-24 14:52:35','2019-01-24 14:52:35',2,72,NULL),(97,180,NULL,'2019-01-24 15:18:12','2019-01-24 15:18:12',1,73,'0'),(98,180,NULL,'2019-01-25 15:56:22','2019-01-25 15:56:22',1,74,'0'),(99,180,NULL,'2019-01-25 16:46:50','2019-01-25 16:46:50',1,75,'0'),(100,180,NULL,'2019-01-28 03:38:42','2019-01-28 03:38:42',1,76,'0'),(101,180,NULL,'2019-01-28 18:39:25','2019-01-28 18:39:25',1,77,'0'),(102,180,NULL,'2019-01-29 00:05:04','2019-01-29 00:05:04',1,78,'0'),(104,180,NULL,'2019-02-01 14:03:39','2019-02-01 14:03:39',1,79,'0'),(105,180,NULL,'2019-02-05 16:44:39','2019-02-05 16:44:39',1,80,'0'),(106,180,NULL,'2019-02-06 13:27:24','2019-02-06 13:27:24',1,81,'0'),(107,180,NULL,'2019-02-07 21:54:56','2019-02-07 21:54:56',1,82,'0'),(108,180,NULL,'2019-02-07 22:39:19','2019-02-07 22:39:19',1,83,'0'),(109,180,NULL,'2019-02-08 12:50:27','2019-02-08 12:50:27',1,84,'0'),(110,180,NULL,'2019-02-08 16:25:40','2019-02-08 16:25:40',1,85,'0'),(111,180,NULL,'2019-02-10 14:24:56','2019-02-10 14:24:56',1,86,'0'),(112,180,NULL,'2019-02-11 12:14:56','2019-02-11 12:14:56',1,87,'0'),(113,180,NULL,'2019-02-11 15:23:22','2019-02-11 15:23:22',1,88,'0'),(114,180,NULL,'2019-02-11 15:58:20','2019-02-11 15:58:20',1,89,'0'),(115,180,NULL,'2019-02-12 19:44:51','2019-02-12 19:44:51',1,90,'0'),(116,180,NULL,'2019-02-13 04:06:22','2019-02-13 04:06:22',1,91,'0'),(117,180,NULL,'2019-02-15 10:57:22','2019-02-15 10:57:22',1,92,'0'),(118,180,NULL,'2019-02-15 10:58:14','2019-02-15 10:58:14',1,93,'0'),(118,15,22,'2019-02-15 12:53:46','2019-02-15 12:53:46',2,94,NULL),(120,180,NULL,'2019-02-16 15:58:15','2019-02-16 15:58:15',1,95,'0'),(121,180,NULL,'2019-02-16 16:11:23','2019-02-16 16:11:23',1,96,'0'),(122,180,NULL,'2019-02-22 14:17:20','2019-02-22 14:17:20',1,97,'0'),(123,180,NULL,'2019-02-27 22:08:02','2019-02-27 22:08:02',1,98,'0'),(124,180,NULL,'2019-03-01 18:50:37','2019-03-01 18:50:37',1,99,'0'),(125,180,NULL,'2019-03-05 16:06:03','2019-03-05 16:06:03',1,100,'0'),(126,180,NULL,'2019-03-05 22:47:16','2019-03-05 22:47:16',1,101,'0'),(127,180,NULL,'2019-03-06 03:24:17','2019-03-06 03:24:17',1,102,'0'),(128,180,NULL,'2019-03-06 19:59:06','2019-03-06 19:59:06',1,103,'0'),(130,180,NULL,'2019-03-10 03:12:47','2019-03-10 03:12:47',1,104,'0'),(136,180,NULL,'2019-03-26 14:33:34','2019-03-26 14:33:34',1,105,'0'),(137,180,NULL,'2019-03-27 00:42:29','2019-03-27 00:42:29',1,106,'0'),(139,180,NULL,'2019-04-02 16:15:32','2019-04-02 16:15:32',1,107,'0'),(141,180,NULL,'2019-05-09 01:54:08','2019-05-09 01:54:08',1,108,'0');
/*!40000 ALTER TABLE `creditos_historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuestionario`
--

DROP TABLE IF EXISTS `cuestionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuestionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idservicio` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_questionario_1_idx` (`idservicio`),
  CONSTRAINT `fk_questionario_1` FOREIGN KEY (`idservicio`) REFERENCES `servicio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuestionario`
--

LOCK TABLES `cuestionario` WRITE;
/*!40000 ALTER TABLE `cuestionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuestionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuestionario_item`
--

DROP TABLE IF EXISTS `cuestionario_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuestionario_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpregunta` int(11) NOT NULL,
  `opcion` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_questionario_item_1_idx` (`idpregunta`),
  CONSTRAINT `fk_questionario_item_1` FOREIGN KEY (`idpregunta`) REFERENCES `cuestionario_pregunta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuestionario_item`
--

LOCK TABLES `cuestionario_item` WRITE;
/*!40000 ALTER TABLE `cuestionario_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuestionario_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuestionario_pregunta`
--

DROP TABLE IF EXISTS `cuestionario_pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuestionario_pregunta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcuestionario` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `requerido` tinyint(4) NOT NULL DEFAULT '1',
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_questionario_pregunta_1_idx` (`idcuestionario`),
  CONSTRAINT `fk_questionario_pregunta_1` FOREIGN KEY (`idcuestionario`) REFERENCES `cuestionario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuestionario_pregunta`
--

LOCK TABLES `cuestionario_pregunta` WRITE;
/*!40000 ALTER TABLE `cuestionario_pregunta` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuestionario_pregunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuestionario_respuesta`
--

DROP TABLE IF EXISTS `cuestionario_respuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuestionario_respuesta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iditem` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `idservicio` int(11) NOT NULL,
  `respuesta` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_questionario_respuesta_1_idx` (`iditem`),
  KEY `fk_questionario_respuesta_2_idx` (`idpersona`),
  KEY `fk_cuestionario_respuesta_srv_idx` (`idservicio`),
  CONSTRAINT `fk_cuestionario_respuesta_srv` FOREIGN KEY (`idservicio`) REFERENCES `servicio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questionario_respuesta_1` FOREIGN KEY (`iditem`) REFERENCES `cuestionario_item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_questionario_respuesta_2` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuestionario_respuesta`
--

LOCK TABLES `cuestionario_respuesta` WRITE;
/*!40000 ALTER TABLE `cuestionario_respuesta` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuestionario_respuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpersona` int(11) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `url` varchar(245) DEFAULT NULL,
  `comentario` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_feedback_1_idx` (`idpersona`),
  CONSTRAINT `fk_feedback_1` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagen_persona`
--

DROP TABLE IF EXISTS `imagen_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagen_persona` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpersona` int(11) DEFAULT NULL,
  `name` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_image_1_idx` (`idpersona`),
  CONSTRAINT `fk_user_image_1` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen_persona`
--

LOCK TABLES `imagen_persona` WRITE;
/*!40000 ALTER TABLE `imagen_persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagen_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificaciones`
--

DROP TABLE IF EXISTS `notificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificaciones` (
  `idpersona` int(11) NOT NULL,
  `idtiponotificacion` int(11) NOT NULL,
  `leido` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mensaje` varchar(5000) NOT NULL,
  `idOperacion` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificaciones`
--

LOCK TABLES `notificaciones` WRITE;
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
INSERT INTO `notificaciones` VALUES (30,1,'0','2017-06-15 14:54:14','2017-06-15 14:54:14','Ud. Tiene un nuevo presupuesto para el servicio de CARPINTEROS',12,17),(31,2,'0','2017-06-15 15:00:33','2017-06-15 15:00:33','Ud. ha sido contratado por: David Soles para el servicio de CARPINTEROS',12,18),(30,1,'0','2017-06-15 21:22:14','2017-06-15 21:22:14','Ud. Tiene un nuevo presupuesto para el servicio de CARPINTEROS',13,19),(30,1,'0','2017-06-20 22:52:02','2017-06-20 22:52:02','Ud. Tiene un nuevo presupuesto para el servicio de CARPINTEROS',14,20),(31,2,'0','2017-06-20 22:55:04','2017-06-20 22:55:04','Ud. ha sido contratado por: David Soles para el servicio de CARPINTEROS',14,21),(30,1,'0','2017-06-21 04:25:19','2017-06-21 04:25:19','Ud. Tiene un nuevo presupuesto para el servicio de CARPINTEROS',15,22),(31,2,'0','2017-06-21 04:27:09','2017-06-21 04:27:09','Ud. ha sido contratado por: David Soles para el servicio de CARPINTEROS',15,23),(45,1,'1','2017-09-22 12:58:48','2017-12-06 20:48:26','Ud. Tiene un nuevo presupuesto para el servicio de INFORMÁTICA COMPUTACIÓN',16,24),(46,2,'0','2017-09-22 13:03:48','2017-09-22 13:03:48','Ud. ha sido contratado por: victor jaimes para el servicio de INFORMÁTICA COMPUTACIÓN',16,25),(50,1,'1','2017-11-22 19:04:33','2018-04-02 14:03:10','Ud. Tiene un nuevo presupuesto para el servicio de MECANICOS',17,26),(55,1,'0','2017-12-28 03:01:08','2017-12-28 03:01:08','Ud. Tiene un nuevo presupuesto para el servicio de INGENIERO',18,27),(50,1,'1','2018-04-08 14:07:44','2018-05-19 01:40:01','Ud. Tiene un nuevo presupuesto para el servicio de INFORMÁTICA COMPUTACIÓN',19,28),(82,1,'0','2018-08-31 12:25:09','2018-08-31 12:25:09','Ud. Tiene un nuevo presupuesto para el servicio de PINTORES',20,29),(96,1,'1','2019-01-24 14:52:35','2019-01-24 15:14:11','Ud. Tiene un nuevo presupuesto para el servicio de MANTENIMIENTO',21,30),(93,2,'1','2019-01-24 15:08:03','2019-01-24 15:16:09','Ud. ha sido contratado por: Jessica Fernandez para el servicio de MANTENIMIENTO',21,31),(119,1,'1','2019-02-15 12:53:46','2019-02-15 12:59:23','Ud. Tiene un nuevo presupuesto para el servicio de BELLESA',22,32),(118,2,'1','2019-02-15 12:59:43','2019-02-15 13:00:42','Ud. ha sido contratado por: elcontraton elcontraton para el servicio de BELLESA',22,33);
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionroles`
--

DROP TABLE IF EXISTS `permissionroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionroles` (
  `idPermission` int(10) unsigned NOT NULL,
  `idRole` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idPermission`,`idRole`),
  KEY `permissionroles_idrole_foreign` (`idRole`),
  CONSTRAINT `permissionroles_idpermission_foreign` FOREIGN KEY (`idPermission`) REFERENCES `permissions` (`id`),
  CONSTRAINT `permissionroles_idrole_foreign` FOREIGN KEY (`idRole`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionroles`
--

LOCK TABLES `permissionroles` WRITE;
/*!40000 ALTER TABLE `permissionroles` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissionroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `displayName` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `telefono` varchar(200) DEFAULT NULL,
  `id_ciudad` int(11) DEFAULT NULL,
  `facebook` varchar(250) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `identificacion` varchar(250) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `direccion` varchar(500) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `creditos` int(11) DEFAULT '0',
  `rating_promedio` int(11) DEFAULT '0',
  `rating_total` int(11) DEFAULT '0',
  `id_tipo_identificacion` int(11) DEFAULT NULL,
  `empresa` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_persona_1_idx` (`id_ciudad`),
  KEY `fk_persona_1_idx1` (`id_tipo_identificacion`),
  CONSTRAINT `fk_persona_1` FOREIGN KEY (`id_tipo_identificacion`) REFERENCES `tipo_identificacion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Admin','Amin',NULL,NULL,NULL,NULL,NULL,'admin@tumecontratas.com',NULL,NULL,0,0,0,NULL,NULL,NULL,NULL),(25,'C','Rondon','33333333',-1,'C','C','8','g.a.rondon111@gmail.com','C','https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/25/1550179592.jpg',0,0,0,9,'CARA',NULL,'2019-02-14 21:26:38'),(26,'Gerardo','Rondon',NULL,NULL,NULL,NULL,NULL,'g.a.rondon1@gmail.com',NULL,NULL,0,0,0,NULL,NULL,NULL,NULL),(27,'Gerardo','Rondon',NULL,NULL,NULL,NULL,NULL,'g.a.rondon11@gmail.com',NULL,NULL,0,0,0,NULL,NULL,NULL,NULL),(28,'Demo','User',NULL,NULL,NULL,NULL,NULL,'demo@demo.com',NULL,NULL,0,0,0,NULL,NULL,NULL,NULL),(29,'hola','hola',NULL,NULL,NULL,NULL,NULL,'g.a.rondon333@gmail.com',NULL,NULL,0,0,0,NULL,NULL,NULL,NULL),(30,'David','Soles','5552222',3,NULL,NULL,'14555222','dsolesp@gmail.com','Mi Dirección',NULL,0,5,3,1,'',NULL,NULL),(31,'Toño','Carpintero','5554444',3,NULL,NULL,NULL,'dsolesp@outlook.com',NULL,NULL,120,3,3,NULL,NULL,NULL,NULL),(33,'Paolo','Wokstab',NULL,NULL,NULL,NULL,NULL,'paolowokstab@hotmail.com',NULL,NULL,0,0,0,NULL,NULL,NULL,NULL),(34,'DUBERNEY','CAMARGO','3046632189',3,'https://www.facebook.com/Ahorrandoando-Tienda-Virtual-1612425892375845/?ref=bookmarks','www. ahorrandoando.com.co','900637593-5','dcamargo@ahorrandoando.com.co',NULL,NULL,180,0,0,9,'Ahorro y eficiencia energetica sas',NULL,NULL),(35,'katherin','marin','3012283685',10,NULL,NULL,'1110522203','katha17m@gmail.com','mz 02 casa 5 barrio san remo',NULL,180,0,0,1,'',NULL,NULL),(36,'james','christianson','35353545665',6,NULL,NULL,'545455','releaftre@aol.com','3453455',NULL,0,0,0,7,'',NULL,NULL),(37,'Jefferson','Montes','3184911939',4,NULL,NULL,'1130599808','jeffersonmonteso@gmail.com',NULL,NULL,180,0,0,1,'',NULL,NULL),(38,'Abner','Corrales','3228533588',10,NULL,NULL,NULL,'abnerjr1@hotmail.com',NULL,NULL,0,0,0,NULL,NULL,NULL,NULL),(39,'jj rincón','Construcciones','300 862 2708',7,'jj rincón construcciones',NULL,'Construcción civil','Construccionesjjrincon@hotmail.com','Carrera 27 #20-48','https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/39/1503506158.jpg',180,0,0,9,'jj rincón construcciones',NULL,NULL),(40,'cristian manuel','rojas rojas','3208970824',13,'cristian rojas',NULL,'1120375749','cri.1995@hotmail.com','vereda puerto suarez finca villa lorena',NULL,180,0,0,1,'',NULL,NULL),(41,'ana milena','caceres chica',NULL,NULL,NULL,NULL,NULL,'milenacaceres.chica@gmail.com',NULL,NULL,180,0,0,NULL,NULL,NULL,NULL),(42,'Johader Guillermo','Cuéllar Medina','3003817222',3,NULL,NULL,NULL,'negocioscuellar@gmail.com',NULL,NULL,180,0,0,NULL,NULL,NULL,NULL),(43,'liliana','yate',NULL,NULL,NULL,NULL,NULL,'ly.yate20@gmail.com',NULL,NULL,180,0,0,NULL,NULL,NULL,NULL),(44,'felipe','urueña','3012283685',10,NULL,NULL,'54222245','jfuruena3@gmail.com','carera 9 numero 1015',NULL,0,0,0,1,'',NULL,NULL),(45,'victor','jaimes','3012650343',6,'https://www.facebook.com/victor.m.jaimes.9',NULL,'71366296','victor27111@hotmail.com','carrera 81 No 7 110 Int 1003',NULL,0,0,0,1,'',NULL,NULL),(46,'RedSoc','Marketing','3108955560',6,NULL,'www.redsocmarketing.com','1017210454','info@redsocmarketing.com',NULL,NULL,165,5,1,9,'RedSoc Marketing',NULL,'2019-02-06 13:26:05'),(47,'Gerardo','Rondon',NULL,NULL,NULL,NULL,NULL,'g.a.rondon11jj@gmail.com',NULL,NULL,180,0,0,NULL,NULL,NULL,NULL),(48,'Lina','Corrales','3102134431',6,NULL,NULL,NULL,'linacvelez@hotmail.com',NULL,NULL,0,0,0,NULL,NULL,NULL,NULL),(49,'gerardo','rondon','04366884843',2,NULL,NULL,'13650891','g.a.rondon112@gmail.com','ev los acaeas',NULL,165,0,0,1,'',NULL,NULL),(50,'Maria','Rondon','0848484',6,NULL,NULL,'13650891','grondon891@hotmail.com','a los ruices',NULL,0,0,0,1,'',NULL,'2018-04-02 14:02:59'),(51,'Victor','Jaimes','4449161',6,NULL,'www.pagoagil.co','71366296','vjaimes@pagoagil.net','san fernando plaza oficina 805 torre 3',NULL,165,0,0,9,'900392894',NULL,'2018-04-06 13:37:45'),(52,'Pedro','Rodriguez','112223339994',25,NULL,NULL,NULL,'perodriguezl@gmail.com',NULL,NULL,0,0,0,NULL,NULL,NULL,NULL),(53,'German','Salas','3017805997',3,'https://www.facebook.com/Germanxo','http://salas.org.ve','80889117','germansalas@gmail.com','Transv. 19 Bis # 46-38 Edificio Caribe Apto. 101',NULL,165,0,0,1,'',NULL,NULL),(54,'Adolfo','Salas Ojeda','3017805997',3,NULL,NULL,NULL,'g_salas@hotmail.com',NULL,NULL,180,0,0,NULL,NULL,NULL,NULL),(55,'Aymara','Salas','6353453445',2,NULL,'wwww.fargo.net','jjfosdoj4','gsalas@mail.com','sdfsffdsf',NULL,0,0,0,9,'Mercadeo',NULL,NULL),(56,'Juan Calos','Ochoa Muñoz','3167421953',6,'jcom129@gmail.com','au.linkedin.com/in/sapbasisjuancarlosochoa','7168327','jcom129@gmail.com','Calle 48 A # 94-10',NULL,0,0,0,1,'',NULL,NULL),(57,'Manuel G','Araujo A',NULL,NULL,NULL,NULL,NULL,'geronimoarteaga@gmail.com',NULL,NULL,0,0,0,NULL,NULL,NULL,NULL),(58,'Gerardo','Rondon','3114779898',6,'@bambabokks','www.tumecontras.com','98560775','g.a.rondon@gmail.com','CRA 43A 1SUR 50 TORRE 3 OF 805','https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/58/1521233990.png',330,0,0,1,'',NULL,'2018-04-02 21:41:16'),(59,'TORO VARGAS Asesoría  y Construcción s.a.s','toro vargas','2565605',6,'www.facebook.com/pg/TOROVARGASasesoriayconstruccionSas',NULL,'900939144','obrastorovargas@gmail.com','calle 1 # 77a - 84',NULL,180,0,0,9,'TORO VARGAS Asesoria & Construccion s.a.s',NULL,NULL),(60,'maria','villalobos',NULL,NULL,NULL,NULL,NULL,'mariale795@hotmail.com',NULL,'https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/60/1525225202.png',180,0,0,NULL,NULL,'2018-04-25 01:13:33','2018-05-02 01:40:03'),(61,'Jim','Christianson',NULL,NULL,NULL,NULL,NULL,'tumecontratas@gmail.com',NULL,NULL,180,0,0,NULL,NULL,'2018-05-17 16:33:18','2018-05-17 16:33:18'),(62,'maria','villalobos',NULL,NULL,NULL,NULL,NULL,'mariavillalobos87@gmail.com',NULL,NULL,0,0,0,NULL,NULL,'2018-05-20 21:54:07','2018-05-20 21:54:07'),(63,'Versa','Publicidad','4457513',3,'https://www.facebook.com/Versa-Publicidad-Colombia-722774787848034/?ref=bookmarks','www.versapublicidad.com','1030523158','versapublicidadcol@gmail.com',NULL,'https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/63/1527736156.png',180,0,0,1,'','2018-05-25 18:54:29','2018-07-24 22:50:14'),(64,'Julián David','Díaz Herrera','3057748646',6,NULL,NULL,'1040740597','juliandavid.diazherrera@gmail.com','Calle 30 # 88 B - 153',NULL,180,0,0,1,'','2018-06-16 13:48:57','2018-06-16 13:50:36'),(65,'Karla','Barboza','26141161354444',6,NULL,NULL,'15411456','karla.barboza@gmail.com','Calle 15 con Avenida 15',NULL,180,0,0,1,'','2018-08-02 01:29:44','2018-08-02 14:14:25'),(66,'Ivan','Bolivar',NULL,NULL,NULL,NULL,NULL,'crisstibol2006@hotmail.com',NULL,NULL,180,0,0,NULL,NULL,'2018-08-02 03:03:49','2018-08-02 03:03:49'),(67,'Ivan Alberto','Bolivar Sierra','3116704630',6,NULL,NULL,'70083851','cristibol2006@outlook.es','av 40 # 65 35','https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/67/1536359143.jpg',180,0,0,1,'','2018-08-06 16:11:44','2018-09-07 22:25:44'),(68,'Jose Luis','Padilla','3207222466',11,'https://www.facebook.com/jose.l.padilla.739','www.teloarregloremotamente.com','502953','sentimientomuerto@hotmail.com','Centro','https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/68/1533781802.jpg',180,0,0,6,'','2018-08-09 02:16:12','2018-08-09 02:31:21'),(69,'Carlos yesid','Reyes Saavedra',NULL,NULL,NULL,NULL,NULL,'yeco789_7@hotmail.com',NULL,NULL,180,0,0,NULL,NULL,'2018-08-09 15:02:17','2018-08-09 15:02:17'),(70,'Cristian','Ovalles','3173687616',6,NULL,NULL,NULL,'covalles30@hotmail.com',NULL,NULL,180,0,0,NULL,NULL,'2018-08-09 18:55:13','2018-08-09 18:55:13'),(71,'Liced','Escobar',NULL,NULL,NULL,NULL,NULL,'lichitoescobar102584@gmail.com',NULL,NULL,0,0,0,NULL,NULL,'2018-08-12 18:48:30','2018-08-12 18:48:30'),(72,'Daniel Fernando','Vargas Clavijo','3192430266',3,'https://www.facebook.com/DanneRoyce','http://danielvargasdesigner.000webhostapp.com','1070945316','danielvargasdesigner@gmail.com','Calle 15 # 6-08','https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/72/1534266060.jpg',180,0,0,1,'','2018-08-14 13:06:18','2018-08-14 17:02:20'),(73,'Servicio Integrales','Clean Break Sas','3208485315',3,'@cleanbreak.s.a.s','www.limpiezayaseoenbogota.com','901056764','cleanbreakservicios@gmail.com','Calle 33 # 34-79','https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/73/1534811522.jpg',165,0,0,9,'Clean Break SAS','2018-08-21 00:07:32','2018-08-21 00:32:16'),(74,'nehisy eshter','cuello meza',NULL,NULL,NULL,NULL,NULL,'cullomesanehisy@gmail.com',NULL,NULL,0,0,0,NULL,NULL,'2018-08-24 20:21:37','2018-08-24 20:21:37'),(75,'Luz','Andrea',NULL,NULL,NULL,NULL,NULL,'luza1922@hotmail.com',NULL,NULL,180,0,0,NULL,NULL,'2018-08-25 03:04:16','2018-08-25 03:04:16'),(76,'Estefany','Pacheco','932967727',16,NULL,NULL,'26161570-3','estefanyisabel93@gmail.com','Carmen 368','https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/76/1535472033.jpeg',180,0,0,6,'','2018-08-28 15:59:16','2018-08-28 16:01:26'),(77,'Enrique','Villa','3102809016',6,'https://facebook.com/enriquevillaperez','www.enriquevilla.com','72220728','enriquevillap@gmail.com',NULL,NULL,180,0,0,1,'','2018-08-30 03:30:46','2018-08-30 03:32:05'),(78,'Diana','Perez','3184540130',6,NULL,NULL,'43104777','D7814agosto@yahoo.com','Belen Rosales',NULL,180,0,0,1,'','2018-08-30 19:42:48','2018-08-30 19:44:59'),(79,'felipe','Arias','3184540130',6,NULL,NULL,'71722560','ariasfe44@yahoo.com','laureles',NULL,180,0,0,1,'','2018-08-30 20:07:18','2018-08-30 20:10:16'),(80,'Juan','Velez','3184540130',6,NULL,NULL,'71826513','juanvelez370@yahoo.com','andalucia',NULL,180,0,0,1,'','2018-08-30 20:31:26','2018-08-30 20:43:10'),(81,'federico','Gomez','3184540130',6,NULL,NULL,'98562314','gomezfede8@yahoo.com','san javier',NULL,180,0,0,1,'','2018-08-30 21:03:49','2018-08-30 21:08:23'),(82,'pedro','sanchez','3184540130',6,NULL,NULL,'98652336','sanchpe2004@gmail.com','itagui',NULL,0,0,0,1,'','2018-08-30 22:34:23','2018-08-30 22:38:20'),(83,'Casval abogados','Casval abogados','5405662',3,NULL,NULL,NULL,'casval@casvalabogados.com',NULL,NULL,180,0,0,NULL,NULL,'2018-10-10 00:03:08','2018-10-10 00:03:08'),(84,'Jorge Luis','Ferrer López','584249089407',6,'jorgeluisferrer','www.jlferrer.com.ve','5800653','jlferrerweb@gmail.com',NULL,'https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/84/1539188294.jpg',180,0,0,6,'','2018-10-10 16:16:00','2018-10-10 16:27:41'),(85,'Gruber Jose','Urbina Martinez','3219336308',3,'gruber urbina','3219336308','PEP 815418316031981','grumoy@hotmail.com','Calle 131 #104-45 Piso 2 Aures II','https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/85/1540042008.jpg',180,0,0,7,'','2018-10-20 13:25:29','2018-10-20 13:30:17'),(86,'Vladimir','Atahona','3022170466',6,'Vladimir altahona',NULL,'1039471459','Vladialtahona97@gmail.com','Cr18a cl62-113',NULL,180,0,0,1,'','2018-11-01 15:57:15','2018-11-01 16:08:28'),(87,'FELIPE ANDRÉS','OROZCO HOYOS','3137469669',6,'https://web.facebook.com/AreadeSeguros/','https://areadeseguros.blogspot.com/','71616410','areadeseguros@une.net.co','Cra 32 # 6 sur 45 Apto 1305',NULL,180,0,0,1,'','2018-11-05 16:18:07','2018-11-05 16:20:52'),(88,'Juan Pablo','Sanmartin','3053002590',6,NULL,NULL,NULL,'sanmar_pablo@hotmail.com',NULL,NULL,180,0,0,NULL,NULL,'2018-12-21 15:55:59','2018-12-21 15:55:59'),(89,'Erika','Baquero Díaz','3115301072',3,NULL,NULL,NULL,'erikabaquerodiaz@gmail.com',NULL,NULL,180,0,0,NULL,NULL,'2019-01-11 04:57:08','2019-01-11 04:57:08'),(90,'Santiago','Gutierrez',NULL,NULL,NULL,NULL,NULL,'santigutierrez93@hotmail.com',NULL,NULL,0,0,0,NULL,NULL,'2019-01-12 00:09:03','2019-01-12 00:09:03'),(91,'María Camila','Aristizábal Sánchez',NULL,NULL,NULL,NULL,NULL,'mariacamilaaristizabals@gmail.com',NULL,NULL,180,0,0,NULL,NULL,'2019-01-12 16:13:11','2019-01-12 16:13:11'),(92,'Dary','Garzon',NULL,NULL,NULL,NULL,NULL,'dagarzon87@gmail.com',NULL,NULL,0,0,0,NULL,NULL,'2019-01-13 16:04:08','2019-01-13 16:04:08'),(93,'Carlos','jaimes','3016250382',6,NULL,NULL,'1111111','victorjaimesm2@gmail.com','calle 2',NULL,165,5,1,9,'811000000','2019-01-14 23:00:40','2019-01-24 15:15:04'),(94,'Carlos Alberto','Naranjo Valencia','3005347729',14,NULL,NULL,NULL,'carlos.naranjov@outlook.com',NULL,NULL,180,0,0,NULL,NULL,'2019-01-16 20:19:48','2019-01-16 20:19:48'),(95,'emilce','marquez','+58 4163792961',8,NULL,'INSTAGRAM  @nenamarquez1983','V-16421034','nenamarquez1983@hotmail.com',NULL,NULL,180,0,0,6,'','2019-01-22 11:48:44','2019-01-22 12:00:58'),(96,'Jessica','Fernandez','3108955560',6,NULL,NULL,'1017210454','jeka0930@hotmail.com','RodeoAlto',NULL,0,5,1,1,'','2019-01-24 14:29:09','2019-01-24 15:12:20'),(97,'ADRIAN ESTEBAN','RODRIGUEZ ALVAREZ','3152006387',6,'https://www.facebook.com/arodrigueznegocios/','https://www.facebook.com/arodrigueznegocios/','71373549','adrianalvarezr@gmail.com',NULL,'https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/97/1548343737.png',180,0,0,1,'','2019-01-24 15:18:11','2019-01-24 15:29:27'),(98,'María Marcela','Maturán',NULL,NULL,NULL,NULL,NULL,'mariamaturan@gmail.com',NULL,NULL,180,0,0,NULL,NULL,'2019-01-25 15:56:22','2019-01-25 15:56:22'),(99,'Daniel','Hernandez','3106737070',3,NULL,NULL,'1015432290','herna.6.92@gmail.com',NULL,NULL,180,0,0,1,'','2019-01-25 16:46:50','2019-01-25 16:58:55'),(100,'Manuela','Rodriguez',NULL,NULL,NULL,NULL,NULL,'manuela.rodriguez_correa@hotmail.com',NULL,NULL,180,0,0,NULL,NULL,'2019-01-28 03:38:42','2019-01-28 03:38:42'),(101,'jesus miguel','serrano daney','629985157',-1,NULL,'https://bimtecarquitectura.com/','SERVICION BIM','mserrano@cyacomputers.com','c/santa ana nº23 almagro',NULL,180,0,0,9,'ESTUDIO DE DELINEACION EN SERVICIOS BIM','2019-01-28 18:39:25','2019-01-28 18:45:26'),(102,'Pedro','Barrero','+5212211532994',6,NULL,NULL,'Pasaporte','peterpannuevo@gmail.com',NULL,NULL,180,0,0,6,'','2019-01-29 00:05:04','2019-01-29 00:08:54'),(103,'Luz estella','Gomez orozco',NULL,NULL,NULL,NULL,NULL,'artelego40@hotmail.com',NULL,NULL,0,0,0,NULL,NULL,'2019-01-30 14:22:12','2019-01-30 14:22:12'),(104,'Carlos','Mendez','3124260424',6,NULL,NULL,'17220810','carlos463981@gmail.com','Carrera 50d 1 sur',NULL,180,0,0,6,'','2019-02-01 14:03:39','2019-02-01 14:04:46'),(105,'Natalia','Pérez Gómez',NULL,NULL,NULL,NULL,NULL,'jeimynataliap@hotmail.com',NULL,NULL,180,0,0,NULL,NULL,'2019-02-05 16:44:38','2019-02-05 16:44:38'),(106,'Froilan','Rozo Paez',NULL,NULL,NULL,NULL,NULL,'froilan.rozo@gmail.com',NULL,NULL,180,0,0,NULL,NULL,'2019-02-06 13:27:24','2019-02-06 13:27:24'),(107,'Froilan','Rozo','3185145257',3,NULL,'https://hseqocupacional.wixsite.com/misitio','79599536','hseqocupacional@gmail.com',NULL,'https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/107/1549577455.png',180,0,0,1,'','2019-02-07 21:54:56','2019-02-07 22:14:45'),(108,'Johandds','Poilao','3015807637',2,NULL,'sentecol.com','1143142406','johandds35@gmail.com','Carrera 49B # 76 - 133 Of. 4',NULL,180,0,0,1,'','2019-02-07 22:39:18','2019-02-07 22:47:44'),(109,'prueba@prueba.com','prueba@prueba.com',NULL,NULL,NULL,NULL,NULL,'prueprueba@prueba.comba',NULL,NULL,180,0,0,NULL,NULL,'2019-02-08 12:50:27','2019-02-08 12:50:27'),(110,'Daniela Magalí','Luna Leiva',NULL,NULL,NULL,NULL,NULL,'danielamlluna28@gmail.com',NULL,NULL,180,0,0,NULL,NULL,'2019-02-08 16:25:40','2019-02-08 16:25:40'),(111,'Chalet','Del Gato','3015367101- 3012788525',3,'Chalet del Gato',NULL,'900691095','chaletdelgato@gmail.com','Km 5 via la Calera','https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/111/1549884272.jpg',180,0,0,9,'Chalet del Gato','2019-02-10 14:24:56','2019-02-11 11:25:30'),(112,'Daniel','Alvarez','3127485108',6,NULL,'https://asesordigital.wixsite.com/portafolio','1128429070','disenador.grafico1989@gmail.com',NULL,NULL,180,0,0,1,'','2019-02-11 12:14:56','2019-02-11 12:17:06'),(113,'TIBUCONT','Solución tributaria y contable','3052282735',6,'https://www.facebook.com/Tribucont-786189451717049/','https://tribucont.jimdosite.com','1017220534','tribucontmedellin@gmail.com',NULL,'https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/113/1549953156.jpg',180,0,0,1,'','2019-02-11 15:23:22','2019-02-12 06:33:13'),(114,'Alex','Paramo','3207471010',2,NULL,NULL,NULL,'alejoparamo1@gmail.com',NULL,'https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/114/1549900922.JPG',180,0,0,NULL,NULL,'2019-02-11 15:58:20','2019-02-11 16:02:03'),(115,'Fabio Alberto','Alvarez','3104105552',6,NULL,NULL,'71630673','marianabustamante.24@gmail.com',NULL,NULL,180,0,0,1,'','2019-02-12 19:44:51','2019-02-12 22:24:51'),(116,'CARLOS A','PEREZ G',NULL,3,NULL,NULL,'79662894','carlos.a.perez.g@gmail.com',NULL,NULL,180,0,0,1,'','2019-02-13 04:06:22','2019-02-13 04:14:32'),(117,'prueba','prueba',NULL,NULL,NULL,NULL,NULL,'pruba@prueba.com',NULL,NULL,180,0,0,NULL,NULL,'2019-02-15 10:57:21','2019-02-15 10:57:21'),(118,'prueba','prueba','2',-1,NULL,NULL,'123456','prueba@prueba.com','22','https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/118/1550245381.jpg',165,4,1,1,'','2019-02-15 10:58:14','2019-02-15 22:30:04'),(119,'elcontraton','elcontraton','123456',-1,'elcontraton','elcontraton','123456','elcontraton@elcontraton.com','elcontraton','https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/119/1550245410.jpg',0,3,1,1,'','2019-02-15 12:31:15','2019-02-15 15:43:36'),(120,'THAMARA ELENA','CHACON','5804147275307',8,'ELENA.CHACON.14',NULL,'12755377','THAMYCHACON22@GMAIL.COM','BARRIO LOMA BOLIVAR',NULL,180,0,0,1,'','2019-02-16 15:58:15','2019-02-16 16:01:37'),(121,'Rosangel fabiana','Mendez picón',NULL,NULL,NULL,NULL,NULL,'rosifabianam06@gmail.com',NULL,NULL,180,0,0,NULL,NULL,'2019-02-16 16:11:23','2019-02-16 16:11:23'),(122,'Paula','Bonilla','3137167512',4,NULL,NULL,NULL,'paulabonilla96@gmail.com',NULL,NULL,180,0,0,NULL,NULL,'2019-02-22 14:17:19','2019-02-22 14:17:19'),(123,'Jorge','Amado','3143230248',3,'@deltacolombia','www.deltaservicios.com.co','900497903-3','deltaserviciossas@gmail.com','Cr. 23 No. 36 - 26 sur','https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/123/1551307287.jpg',180,0,0,9,'Delta Servicios SAS','2019-02-27 22:08:02','2019-02-27 22:41:28'),(124,'Cristian','Acosta López',NULL,NULL,NULL,NULL,NULL,'ctian.gio10@gmail.com',NULL,NULL,180,0,0,NULL,NULL,'2019-03-01 18:50:37','2019-03-01 18:50:37'),(125,'julian david','Herrera Gutierrez','3003287593',3,NULL,'https://jdleonex.wixsite.com/jdisenographic','1018428302','jdleonex@gmail.com',NULL,NULL,180,0,0,1,'','2019-03-05 16:06:03','2019-03-05 16:36:59'),(126,'Maycol Stiven','Yonda Gutierrez',NULL,4,NULL,NULL,'1144048378-1','ventas@grafik360.com',NULL,'https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/126/1551826265.jpg',180,0,0,9,'Grafik CG','2019-03-05 22:47:16','2019-03-05 22:51:24'),(127,'Luis Felipe','Arteaga Melo',NULL,3,NULL,NULL,'1014222930','cargatodobogota@gmail.com',NULL,'https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/127/1551843024.jpg',180,0,0,1,'','2019-03-06 03:24:17','2019-03-06 03:30:46'),(128,'María Alejandra','Cardona','3057400359',3,'https://www.facebook.com/morphicagency/','ww.morphicagency.com','1032460581 - 3','contacto@morphicagency.com','Calle 11 # 4a 06','https://s3-us-west-2.amazonaws.com/tumecontratas-images/avatar/128/1551902615.jpg',180,0,0,9,'Morphic Agency','2019-03-06 19:59:06','2019-03-06 20:03:36'),(129,'luis guillermo alzate ramirez','alzate ramirez','3228707540',6,'https://www.facebook.com/luisguillermoalzateR','https://www.linkedin.com/in/luisguillermo-alzate-26b23b18/','98547935','luisguillermo.alzate@gmail.com','Calle 40c sur  N° 38-85 casa 17',NULL,0,0,0,1,'','2019-03-07 16:02:12','2019-03-07 16:06:40'),(130,'Laura','Lizarazo','3023715714',3,NULL,NULL,'1000571674','lauvivi11@hotmail.com','Calle 182',NULL,180,0,0,1,'','2019-03-10 03:12:47','2019-03-10 03:14:56'),(131,'Damian','Castro',NULL,NULL,NULL,NULL,NULL,'gigoloscuencanos@hotmail.com',NULL,NULL,0,0,0,NULL,NULL,'2019-03-12 11:57:05','2019-03-12 11:57:05'),(132,'Alejandra','Hoyos','3194827783',20,NULL,NULL,NULL,'alj_hoyos@hotmail.com',NULL,NULL,0,0,0,NULL,NULL,'2019-03-14 17:14:37','2019-03-14 17:14:37'),(133,'Maria Camila','Rios Ramírez','3206867662',20,NULL,NULL,NULL,'cami1166@hotmail.com',NULL,NULL,0,0,0,NULL,NULL,'2019-03-14 17:46:39','2019-03-14 17:46:39'),(134,'Prueba','Prueba','3194827783',-1,NULL,NULL,'1059248826','pruebaservicios123@outlook.com',NULL,NULL,0,0,0,1,'','2019-03-14 21:57:56','2019-03-14 22:24:37'),(135,'victor','jaimes',NULL,NULL,NULL,NULL,NULL,'vjaimes@zonavirtual.com',NULL,NULL,0,0,0,NULL,NULL,'2019-03-19 00:58:42','2019-03-19 00:58:42'),(136,'John','Crichton',NULL,NULL,NULL,NULL,NULL,'qieezhwpks_1541428725@tfbnw.net',NULL,NULL,180,0,0,NULL,NULL,'2019-03-26 14:33:34','2019-03-26 14:33:34'),(137,'elcontraton2','elcontraton2',NULL,NULL,NULL,NULL,NULL,'elcontraton2@elcontraton2.com',NULL,NULL,180,0,0,NULL,NULL,'2019-03-27 00:42:29','2019-03-27 00:42:29'),(138,'prueba2','prueba2prueba2','prueba2',6,'prueba2','prueba2','prueba2','prueba2@prueba2.com','prueba2',NULL,0,0,0,1,'','2019-03-27 00:46:18','2019-03-27 00:47:37'),(139,'Luis Fernando','Marquez Ruiz','3164489205',3,NULL,NULL,'79744527','luisfermarquez@hotmail.com','Carrera 57 No. 117D-50 Ap. 905',NULL,180,0,0,1,'','2019-04-02 16:15:32','2019-04-02 16:18:37'),(140,'Hernán','Montoya','3162090',6,NULL,NULL,NULL,'hernan.montoya@analistasdemedios.com.co',NULL,NULL,0,0,0,NULL,NULL,'2019-04-22 21:55:01','2019-04-22 21:55:01'),(141,'eri johana','pedrozo ulloa',NULL,NULL,NULL,NULL,NULL,'erijohanapedrozo@gmail.com',NULL,NULL,180,0,0,NULL,NULL,'2019-05-09 01:54:08','2019-05-09 01:54:08');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan` (
  `idplan` int(11) NOT NULL AUTO_INCREMENT,
  `pais` varchar(45) DEFAULT NULL,
  `monto` int(11) DEFAULT NULL,
  `creditos` int(11) DEFAULT NULL,
  `activo` tinyint(4) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idplan`),
  UNIQUE KEY `idplan_UNIQUE` (`idplan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES (1,'co',2000,30,1,'Plan Basico','2018-03-08 11:18:49','2018-03-08 11:18:49'),(2,'co',3000,60,1,'Plan Emprendedor','2018-03-08 11:23:50','2018-03-08 11:23:50'),(3,'co',10000,150,1,'Plan Micro','2018-03-08 11:23:50','2018-03-08 11:23:50'),(4,'co',25000,4000,1,'Plan Empresa','2018-03-08 11:23:50','2018-03-08 11:23:50');
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propuesta_servicio`
--

DROP TABLE IF EXISTS `propuesta_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `propuesta_servicio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_solicitud` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_profesional` int(11) NOT NULL,
  `limite` tinyint(4) DEFAULT '5',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `costo` int(11) DEFAULT NULL,
  `descripcion` text,
  `visto` tinyint(4) DEFAULT '0',
  `contratado` tinyint(4) DEFAULT '0',
  `rechazado` tinyint(4) DEFAULT '0',
  `creditos` int(11) DEFAULT NULL,
  `mailtime_rating_usuario` datetime DEFAULT NULL,
  `mailtime_rating_profesional` datetime DEFAULT NULL,
  `contratado_fecha` datetime DEFAULT NULL,
  `rechazado_fecha` datetime DEFAULT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_servicio_profesional_propuesta_solicitud_1_idx` (`id_solicitud`),
  KEY `fk_servicio_profesional_propuesta_solicitud_2_idx` (`id_usuario`,`id_profesional`),
  KEY `fk_servicio_profesional_propuesta_solicitud_3_idx` (`id_profesional`),
  CONSTRAINT `fk_servicio_profesional_propuesta_solicitud_1` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud_servicio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_servicio_profesional_propuesta_solicitud_3` FOREIGN KEY (`id_profesional`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propuesta_servicio`
--

LOCK TABLES `propuesta_servicio` WRITE;
/*!40000 ALTER TABLE `propuesta_servicio` DISABLE KEYS */;
INSERT INTO `propuesta_servicio` VALUES (12,10,30,31,5,'2017-06-15 14:54:14','2017-06-15 15:01:16',50000,'Yo se lo restauro barato Don David.',5,1,0,15,'2017-06-15 15:01:10','2017-06-15 15:01:16','2017-06-15 15:00:33',NULL,NULL),(13,11,30,31,5,'2017-06-15 21:22:13','2017-06-15 21:28:02',25000,'Yo puedo hacerlo...',4,0,1,15,'2018-03-31 19:35:57','2018-03-31 19:35:54',NULL,'2017-06-15 21:28:02',NULL),(14,12,30,31,5,'2017-06-20 22:52:01','2017-06-20 22:55:17',75000,'Restauraciones: Buenas - Bonitas - Baratas',3,1,0,15,'2017-06-20 22:55:09','2017-06-20 22:55:17','2017-06-20 22:55:04',NULL,NULL),(15,13,30,31,5,'2017-06-21 04:25:18','2017-06-21 04:28:09',120000,'La restauración es cara pero somos los mejores en el ramo.',36,1,0,15,'2017-06-21 04:28:05','2017-06-21 04:28:09','2017-06-21 04:27:08',NULL,NULL),(16,18,45,46,5,'2017-09-22 12:58:48','2017-09-22 13:47:32',500000,'Requiero de una pagina web informativa',24,1,0,15,'2017-09-22 13:47:27','2017-09-22 13:47:32','2017-09-22 13:03:48',NULL,NULL),(17,25,50,49,5,'2017-11-22 19:04:33','2017-11-22 19:04:33',150000,'werwerwerwer werwerwerwer',4,0,0,15,'2018-03-31 19:35:57','2018-03-31 19:35:54',NULL,NULL,NULL),(18,28,55,53,5,'2017-12-28 03:01:08','2017-12-28 03:01:08',1000000,'asdasdsadsadasdadasdasddadsadad',0,0,0,15,'2018-03-31 19:35:57','2018-03-31 19:35:54',NULL,NULL,NULL),(19,30,50,51,5,'2018-04-08 14:07:44','2018-04-08 14:07:44',1500000,'Prueba envio de  propuesta',1,0,0,15,NULL,NULL,NULL,NULL,NULL),(20,32,82,73,5,'2018-08-31 12:25:09','2018-08-31 12:25:09',9500,'Servicio de pintura interior y exterior  por metro cuadrado todo costo personal capacitado y con certificados en altura \ncontacto whatsApp 3208485315 cel 3223615572\nwww.limpiezayaseoenbogota.com',3,0,0,15,NULL,NULL,NULL,NULL,NULL),(21,35,96,93,5,'2019-01-24 14:52:35','2019-01-24 15:13:02',60000,'Se realizara fumigación de plantas, cambio de tierra y abono,',6,1,0,15,'2019-01-24 15:13:02','2019-01-24 15:13:02','2019-01-24 15:08:03',NULL,NULL),(22,42,119,118,5,'2019-02-15 12:53:46','2019-02-15 13:00:01',1,'Trabajar para el contraton de prueba para que me pinten la cara de...',9,1,0,15,'2019-02-15 13:00:01','2019-02-15 13:00:01','2019-02-15 12:59:43',NULL,NULL);
/*!40000 ALTER TABLE `propuesta_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking_profesional`
--

DROP TABLE IF EXISTS `ranking_profesional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ranking_profesional` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpersona` int(11) NOT NULL,
  `idcalificador` int(11) NOT NULL,
  `id_solicitud` int(11) DEFAULT NULL,
  `valoracion` int(3) NOT NULL,
  `comentario` text,
  `imagen` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ranking_usuario_1_idx` (`idpersona`),
  KEY `fk_ranking_usuario_2_idx` (`idcalificador`),
  KEY `fk_ranking_usuario_3_idx` (`id_solicitud`),
  CONSTRAINT `fk_ranking_usuario_1` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ranking_usuario_2` FOREIGN KEY (`idcalificador`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ranking_usuario_3` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud_servicio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_profesional`
--

LOCK TABLES `ranking_profesional` WRITE;
/*!40000 ALTER TABLE `ranking_profesional` DISABLE KEYS */;
INSERT INTO `ranking_profesional` VALUES (1,31,30,10,4,'Me restauró la pieza de madera correctamente.',NULL,'2017-06-15 15:42:49','2017-06-15 15:42:49'),(2,31,30,12,3,'Se tardó un poco pero Toño me restauró los muebles de la sala correctamente. Muchas gracias.',NULL,'2017-06-20 23:06:53','2017-06-20 23:06:53'),(34,31,30,13,1,'Este tipo en bien pirata. No lo contraten.',NULL,'2017-06-22 00:37:53','2017-06-22 00:37:53'),(35,93,96,35,5,'Excelente servicio',NULL,'2019-01-24 15:15:04','2019-01-24 15:15:04'),(36,46,45,18,5,'Muy profesionales',NULL,'2019-02-06 13:26:05','2019-02-06 13:26:05'),(37,118,119,42,4,'mero contraton este perro.',NULL,'2019-02-15 22:30:04','2019-02-15 22:30:04');
/*!40000 ALTER TABLE `ranking_profesional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking_usuario`
--

DROP TABLE IF EXISTS `ranking_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ranking_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpersona` int(11) NOT NULL,
  `idcalificador` int(11) NOT NULL,
  `id_solicitud` int(11) DEFAULT NULL,
  `valoracion` int(3) NOT NULL,
  `comentario` text,
  `imagen` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ranking_profesional_1_idx` (`idpersona`,`idcalificador`),
  KEY `fk_ranking_profesional_3_idx` (`idcalificador`),
  CONSTRAINT `fk_ranking_profesional_2` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ranking_profesional_3` FOREIGN KEY (`idcalificador`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_usuario`
--

LOCK TABLES `ranking_usuario` WRITE;
/*!40000 ALTER TABLE `ranking_usuario` DISABLE KEYS */;
INSERT INTO `ranking_usuario` VALUES (1,30,31,10,5,'Todo bien.',NULL,'2017-06-15 21:09:28','2017-06-15 21:09:28'),(2,30,31,12,4,'***** Me pagó al menos *****',NULL,'2017-06-20 23:15:39','2017-06-20 23:15:39'),(4,30,31,13,5,'Todo fino fino',NULL,'2017-06-21 20:30:43','2017-06-21 20:30:43'),(5,96,93,35,5,'ok',NULL,'2019-01-24 15:12:20','2019-01-24 15:12:20'),(6,119,118,42,3,'que contraton tan probon',NULL,'2019-02-15 13:00:56','2019-02-15 13:00:56');
/*!40000 ALTER TABLE `ranking_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'super-admin','super admin','super admin','2016-09-20 23:38:16','2016-09-20 23:38:16'),(2,'admin','administrador','administrador','2016-09-20 23:38:16','2016-09-20 23:38:16'),(3,'professional','profesional','profesional','2016-09-20 23:38:16','2016-09-20 23:38:16'),(4,'user','usuario','usuario','2016-09-20 23:38:16','2016-09-20 23:38:16');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roleusers`
--

DROP TABLE IF EXISTS `roleusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roleusers` (
  `iduser` int(10) unsigned NOT NULL,
  `idrole` int(10) unsigned NOT NULL,
  PRIMARY KEY (`iduser`,`idrole`),
  KEY `roleusers_idrole_foreign` (`idrole`),
  CONSTRAINT `roleusers_idrole_foreign` FOREIGN KEY (`idrole`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roleusers`
--

LOCK TABLES `roleusers` WRITE;
/*!40000 ALTER TABLE `roleusers` DISABLE KEYS */;
INSERT INTO `roleusers` VALUES (1,2),(31,3),(34,3),(35,3),(37,3),(39,3),(40,3),(41,3),(42,3),(43,3),(46,3),(47,3),(49,3),(51,3),(53,3),(54,3),(58,3),(59,3),(60,3),(61,3),(63,3),(64,3),(65,3),(66,3),(67,3),(68,3),(69,3),(70,3),(72,3),(73,3),(75,3),(76,3),(77,3),(78,3),(79,3),(80,3),(81,3),(83,3),(84,3),(85,3),(86,3),(87,3),(88,3),(89,3),(91,3),(93,3),(94,3),(95,3),(97,3),(98,3),(99,3),(100,3),(101,3),(102,3),(104,3),(105,3),(106,3),(107,3),(108,3),(109,3),(110,3),(111,3),(112,3),(113,3),(114,3),(115,3),(116,3),(117,3),(118,3),(120,3),(121,3),(122,3),(123,3),(124,3),(125,3),(126,3),(127,3),(128,3),(130,3),(136,3),(137,3),(139,3),(141,3),(25,4),(26,4),(27,4),(28,4),(29,4),(30,4),(33,4),(36,4),(38,4),(44,4),(45,4),(48,4),(50,4),(52,4),(55,4),(56,4),(57,4),(62,4),(71,4),(74,4),(82,4),(90,4),(92,4),(96,4),(103,4),(119,4),(129,4),(131,4),(132,4),(133,4),(134,4),(135,4),(138,4),(140,4);
/*!40000 ALTER TABLE `roleusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_padre` int(11) DEFAULT NULL,
  `descripcion` text,
  `image` varchar(500) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `activo` int(11) DEFAULT '1',
  `idpersona` int(11) DEFAULT NULL,
  `opciones` tinyint(4) DEFAULT '1',
  `creditos` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_servicio_perso_idx` (`idpersona`),
  FULLTEXT KEY `index2` (`descripcion`),
  CONSTRAINT `fk_servicio_perso` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=406 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (94,NULL,'CONSTRUCCIÓN',NULL,'CONSTRUCCIÓN','2016-09-23 18:53:45','2016-09-23 18:53:45',1,1,1,15),(95,94,'Construcción casas',NULL,'Construcción casas','2016-09-23 18:54:32','2016-09-23 18:54:32',1,1,1,15),(96,94,'Construcción casas prefabricadas',NULL,'Construcción casas prefabricadas','2016-09-23 18:54:50','2016-09-23 18:54:50',1,1,1,15),(97,94,'Construcción Edificios',NULL,'Construcción Edificios','2016-09-23 18:55:06','2016-09-23 18:55:06',1,1,1,15),(98,94,'Construcción Garajes',NULL,'Construcción Garajes','2016-09-23 18:55:18','2016-09-23 18:55:18',1,1,1,15),(99,94,'Construcción instalaciones Deportivas',NULL,'Construcción instalaciones Deportivas','2016-09-23 18:55:29','2016-09-23 18:55:29',1,1,1,15),(100,94,'Construcción Jacuzzis',NULL,'Construcción Jacuzzis','2016-09-23 18:55:40','2016-09-23 18:55:40',1,1,1,15),(101,94,'Construcción Muros',NULL,'Construcción Muros','2016-09-23 18:55:49','2016-09-23 18:55:49',1,1,1,15),(102,94,'Construcción Piscinas',NULL,'Construcción Piscinas','2016-09-23 18:55:57','2016-09-23 18:55:57',1,1,1,15),(103,94,'Construcción Saunas',NULL,'Construcción Saunas','2016-09-23 18:56:10','2016-09-23 18:56:10',1,1,1,15),(104,NULL,'REFORMA',NULL,'REFORMA','2016-09-23 18:56:20','2016-09-23 18:56:30',1,1,1,15),(105,104,'Reforma Baños',NULL,'Reforma Baños','2016-09-23 18:56:40','2016-09-23 18:56:40',1,1,1,15),(106,104,'Reforma Cocinas',NULL,'Reforma Cocinas','2016-09-23 18:56:49','2016-09-23 18:56:49',1,1,1,15),(107,104,'Reforma Comunidades',NULL,'Reforma Comunidades','2016-09-23 18:56:57','2016-09-23 18:56:57',1,1,1,15),(108,104,'Reforma Hoteles',NULL,'Reforma Hoteles','2016-09-23 18:57:05','2016-09-23 18:57:05',1,1,1,15),(109,104,'Reforma Locales Comerciales',NULL,'Reforma Locales Comerciales','2016-09-23 18:57:13','2016-09-23 18:57:13',1,1,1,15),(110,104,'Reforma Oficinas',NULL,'Reforma Oficinas','2016-09-23 18:57:21','2016-09-23 18:57:21',1,1,1,15),(111,104,'Reforma Piscinas',NULL,'Reforma Piscinas','2016-09-23 18:57:28','2016-09-23 18:57:28',1,1,1,15),(112,104,'Reforma Viviendas',NULL,'Reforma Viviendas','2016-09-23 18:57:37','2016-09-23 18:57:37',1,1,1,15),(113,104,'Reforma Fachadas',NULL,'Reforma Fachadas','2016-09-23 18:57:46','2016-09-23 18:57:46',1,1,1,15),(114,104,'Reforma Edificios',NULL,'Reforma Edificios','2016-09-23 18:57:55','2016-09-23 18:57:55',1,1,1,15),(115,NULL,'MUDANZAS',NULL,'MUDANZAS','2016-09-23 18:58:04','2016-09-23 18:58:04',1,1,1,15),(116,115,'Nacionales',NULL,'Nacionales','2016-09-23 18:58:12','2016-09-23 18:58:12',1,1,1,15),(117,115,'Internacionales',NULL,'Internacionales','2016-09-23 18:58:22','2016-09-23 18:58:22',1,1,1,15),(118,NULL,'PROFESIONALES Y TÉCNICOS',NULL,'PROFESIONALES Y TÉCNICOS','2016-09-23 18:58:31','2016-09-30 05:14:04',1,1,1,15),(119,118,'Arquitectos',NULL,'Arquitectos','2016-09-23 18:58:54','2016-09-23 18:58:54',1,1,1,15),(120,118,'Decoradores',NULL,'Decoradores','2016-09-23 18:59:03','2016-09-23 18:59:03',1,1,1,15),(121,118,'Geólogos',NULL,'Geólogos','2016-09-23 18:59:13','2016-09-23 18:59:13',1,1,1,15),(122,118,'Ingenieros',NULL,'Ingenieros','2016-09-23 18:59:21','2016-09-23 18:59:01',1,1,1,15),(123,NULL,'ALBAÑILES',NULL,'ALBAÑILES','2016-09-23 19:00:18','2016-09-23 19:00:18',1,1,1,15),(124,123,'Electricidad',NULL,'Electricidad','2016-09-23 19:00:30','2016-09-23 19:00:30',1,1,1,15),(125,123,'Tuberias',NULL,'Tuberias','2016-09-23 19:00:37','2016-09-23 19:00:37',1,1,1,15),(126,123,'Limpieza',NULL,'Limpieza','2016-09-23 19:00:45','2016-09-23 19:00:45',1,1,1,15),(127,NULL,'CARPINTEROS',NULL,'CARPINTEROS','2016-09-23 19:00:57','2016-09-23 19:00:57',1,1,1,15),(128,127,'Edificios',NULL,'Edificios','2016-09-23 19:01:58','2016-09-23 19:01:58',1,1,1,15),(129,127,'Interiores',NULL,'Interiores','2016-09-23 19:02:06','2016-09-23 19:02:06',1,1,1,15),(130,127,'Pintura',NULL,'Pintura','2016-09-23 19:02:14','2016-09-23 19:02:14',1,1,1,15),(131,127,'Restaurar',NULL,'Restaurar','2016-09-23 19:02:25','2016-09-23 19:02:25',1,1,1,15),(132,NULL,'TAPICERÍA',NULL,'TAPICERÍA','2016-09-23 19:03:08','2016-09-23 19:03:08',1,1,1,15),(133,132,'Muebles Hogar',NULL,'Muebles Hogar','2016-09-23 19:03:26','2016-09-23 19:03:26',1,1,1,15),(134,132,'Automotriz',NULL,'Automotriz','2016-09-23 19:04:00','2016-09-23 19:04:00',1,1,1,15),(135,NULL,'INSTALADORES',NULL,'INSTALADORES','2016-09-23 19:04:14','2016-09-23 19:04:14',1,1,1,15),(136,135,'Aire Acondicionado',NULL,'Aire Acondicionado','2016-09-23 19:04:27','2016-09-23 19:04:27',1,1,1,15),(137,135,'Alarmas',NULL,'Alarmas','2016-09-23 19:04:36','2016-09-23 19:04:36',1,1,1,15),(138,135,'Antenas',NULL,'Antenas','2016-09-23 19:04:44','2016-09-23 19:04:44',1,1,1,15),(139,135,'Ascensores',NULL,'Ascensores','2016-09-23 19:04:53','2016-09-23 19:04:53',1,1,1,15),(140,135,'Chimeneas',NULL,'Chimeneas','2016-09-23 19:05:04','2016-09-23 19:05:04',1,1,1,15),(141,135,'Gas',NULL,'Gas','2016-09-23 19:05:12','2016-09-23 19:05:12',1,1,1,15),(142,135,'Placas Solares',NULL,'Placas Solares','2016-09-23 19:05:01','2016-09-23 19:05:01',1,1,1,15),(143,135,'Toldos',NULL,'Toldos','2016-09-23 19:05:30','2016-09-23 19:05:30',1,1,1,15),(144,NULL,'MANTENIMIENTO',NULL,'MANTENIMIENTO','2016-09-23 19:05:40','2016-09-23 19:05:40',1,1,1,15),(145,144,'Control de Plagas',NULL,'Control de Plagas','2016-09-23 19:05:50','2016-09-23 19:05:50',1,1,1,15),(146,144,'Jardineros',NULL,'Jardineros','2016-09-23 19:05:59','2016-09-23 19:05:59',1,1,1,15),(147,144,'Suelos',NULL,'Suelos','2016-09-23 19:06:06','2016-09-23 19:06:06',1,1,1,15),(148,NULL,'TIENDAS',NULL,'TIENDAS','2016-09-23 19:06:13','2016-09-23 19:06:13',1,1,1,15),(149,148,'Artículos Decoración',NULL,'Artículos Decoración','2016-09-23 19:06:25','2016-09-23 19:06:25',1,1,1,15),(150,148,'Electrodomésticos',NULL,'Electrodomésticos','2016-09-23 19:06:33','2016-09-23 19:06:33',1,1,1,15),(151,148,'Materiales',NULL,'Materiales','2016-09-23 19:06:43','2016-09-23 19:06:43',1,1,1,15),(152,148,'Muebles',NULL,'Muebles','2016-09-23 19:06:51','2016-09-23 19:06:51',1,1,1,15),(153,NULL,'PINTORES',NULL,'PINTORES','2016-09-23 19:07:04','2016-09-23 19:07:04',1,1,1,15),(154,153,'Interiores',NULL,'Interiores','2016-09-23 19:07:17','2016-09-23 19:07:17',1,1,1,15),(155,153,'Exteriores',NULL,'Exteriores','2016-09-23 19:07:26','2016-09-23 19:07:26',1,1,1,15),(156,153,'Pintor Vehiculos',NULL,'Pintor Vehiculos','2016-09-23 19:07:32','2016-09-23 20:53:59',1,1,1,15),(157,NULL,'LIMPIEZA',NULL,'LIMPIEZA','2016-09-23 19:08:22','2016-09-23 19:08:22',1,1,1,15),(158,157,'Comercial',NULL,'Comercial','2016-09-23 19:08:31','2016-09-23 19:08:43',1,1,1,15),(159,157,'Residencial',NULL,'Residencial','2016-09-23 19:08:57','2016-09-23 19:08:57',1,1,1,15),(160,NULL,'ELECTRICISTAS',NULL,'ELECTRICISTAS','2016-09-23 19:10:41','2016-09-23 19:10:41',1,1,1,15),(161,160,'Ingeniero Electricista',NULL,'Ingeniero Electricista','2016-09-23 19:10:53','2016-09-23 20:54:42',1,1,1,15),(162,160,'Tecnico Electricista',NULL,'Tecnico Electricista','2016-09-23 19:11:23','2016-09-23 20:54:47',1,1,1,15),(163,160,'Electricista Casas',NULL,'Electricista Casas','2016-09-23 19:11:28','2016-09-23 20:54:30',1,1,1,15),(164,160,'Electricista Vehiculos',NULL,'Electricista Vehiculos','2016-09-23 19:11:39','2016-09-23 20:53:38',1,1,1,15),(165,160,'Electricista Edificios',NULL,'Electricista Edificios','2016-09-23 19:11:47','2016-09-23 20:54:36',1,1,1,15),(166,NULL,'TUTORES',NULL,'TUTORES','2016-09-23 19:11:58','2016-09-23 19:11:58',1,1,1,15),(167,166,'Universidad',NULL,'Universidad','2016-09-23 19:12:11','2016-09-23 19:12:11',1,1,1,15),(168,166,'Ingles',NULL,'Ingles','2016-09-23 19:12:17','2016-09-23 19:12:17',1,1,1,15),(169,166,'Matematica',NULL,'Matematica','2016-09-23 19:12:25','2016-09-23 19:12:25',1,1,1,15),(170,166,'Fisica',NULL,'Fisica','2016-09-23 19:12:34','2016-09-23 19:12:34',1,1,1,15),(171,166,'Estadisticas',NULL,'Estadisticas','2016-09-23 19:12:46','2016-09-23 19:12:46',1,1,1,15),(172,166,'Tesis',NULL,'Tesis','2016-09-23 19:12:56','2016-09-23 19:12:56',1,1,1,15),(173,166,'Idiomas',NULL,'Idiomas','2016-09-23 19:13:04','2016-09-23 19:13:04',1,1,1,15),(174,NULL,'INFORMÁTICA COMPUTACIÓN',NULL,'INFORMÁTICA COMPUTACIÓN','2016-09-23 19:13:38','2016-09-23 19:13:38',1,1,1,15),(175,174,'Reparacion de computadoras',NULL,'Reparacion de computadoras','2016-09-23 19:13:52','2016-09-23 19:14:22',1,1,1,15),(176,174,'Desarrollador de Paginas Web',NULL,'Desarrollador de Paginas Web','2016-09-23 19:14:04','2016-09-23 19:14:04',1,1,1,15),(177,118,'Contadores',NULL,'Contadores','2016-09-23 19:14:50','2016-09-23 19:14:50',1,1,1,15),(178,118,'Abogados',NULL,'Abogados','2016-09-23 19:15:01','2016-09-23 19:15:01',1,1,1,15),(179,NULL,'MECANICOS',NULL,'MECANICOS','2016-09-23 20:50:32','2016-09-23 20:50:32',1,1,1,15),(180,179,'Mecanico Vehiculos',NULL,'Mecanico Vehiculos','2016-09-23 20:51:02','2016-09-23 20:53:10',1,1,1,15),(181,179,'Motos',NULL,'Motos','2016-09-23 20:51:24','2016-09-23 20:51:24',1,1,1,15),(182,179,'Yates',NULL,'Yates','2016-09-23 20:51:39','2016-09-23 20:51:39',1,1,1,15),(183,179,'Barcos',NULL,'Barcos','2016-09-23 20:51:48','2016-09-23 20:51:48',1,1,1,15),(184,118,'Administrador',NULL,'Administrador','2016-09-30 05:06:52','2016-09-30 05:06:52',1,1,1,15),(185,118,'Medicos',NULL,'Medicos','2016-09-30 05:13:41','2016-09-30 05:13:41',1,1,1,15),(186,118,'Conductores',NULL,'Conductores','2016-09-30 05:14:49','2016-09-30 05:14:49',1,1,1,15),(187,148,'Farmacias',NULL,'Farmacias','2016-09-30 05:16:03','2016-09-30 05:16:03',1,1,1,15),(188,118,'Enfermeras',NULL,'Enfermeras','2016-09-30 05:16:17','2016-09-30 05:16:17',1,1,1,15),(189,NULL,'BELLEZA',NULL,'BELLESA','2016-09-30 05:17:17','2016-09-30 05:17:17',1,1,1,15),(190,189,'Manicuristas',NULL,'Manicuristas','2016-09-30 05:17:38','2016-09-30 05:17:38',1,1,1,15),(191,189,'Pedicuristas',NULL,'Pedicuristas','2016-09-30 05:18:19','2016-09-30 05:18:19',1,1,1,15),(192,189,'Estilistas',NULL,'Estilistas','2016-09-30 05:18:27','2016-09-30 05:18:27',1,1,1,15),(193,189,'Barberos',NULL,'Barberos','2016-09-30 05:18:37','2016-09-30 05:18:37',1,1,1,15),(194,189,'Peluqueros',NULL,'Peluqueros','2016-09-30 05:18:47','2016-09-30 05:18:47',1,1,1,15),(195,189,'Masajes',NULL,'Masajes','2016-09-30 05:19:07','2016-09-30 05:19:07',1,1,1,15),(201,NULL,'ABOGADOS',NULL,'ABOGADOS DERECHO',NULL,NULL,1,NULL,1,15),(202,201,'derecho penal',NULL,'derecho penal',NULL,NULL,1,NULL,1,15),(203,201,'derecho administrativo',NULL,'derecho administrativo',NULL,NULL,1,NULL,1,15),(204,201,'derecho civil',NULL,'derecho civil',NULL,NULL,1,NULL,1,15),(205,201,'derecho comercial',NULL,'derecho comercial',NULL,NULL,1,NULL,1,15),(206,201,'derecho laboral',NULL,'derecho laboral',NULL,NULL,1,NULL,1,15),(207,201,'derecho internacional',NULL,'derecho internacional',NULL,NULL,1,NULL,1,15),(208,NULL,'DOCTOR',NULL,'DOCTOR',NULL,NULL,1,NULL,1,15),(209,208,'Cardiólogo',NULL,'Cardiólogo medicina',NULL,NULL,1,NULL,1,15),(210,208,'Anestesiólogo',NULL,'Anestesiólogo medicina',NULL,NULL,1,NULL,1,15),(211,208,'Médico Dermatólogo',NULL,'Dermatólogo',NULL,NULL,1,NULL,1,15),(212,208,'Médico de Emergencia ',NULL,'Médico de Emergencia',NULL,NULL,1,NULL,1,15),(213,208,'Endocrinólogo',NULL,'Endocrinólogo',NULL,NULL,1,NULL,1,15),(214,208,'Gastroenterólogo',NULL,'Gastroenterólogo',NULL,NULL,1,NULL,1,15),(215,208,'Genetista',NULL,'Genetista',NULL,NULL,1,NULL,1,15),(216,208,'Geriatra',NULL,'Geriatra',NULL,NULL,1,NULL,1,15),(217,208,'Hematólogo',NULL,'Hematólogo',NULL,NULL,1,NULL,1,15),(218,208,'Infectólogo',NULL,'Infectólogo',NULL,NULL,1,NULL,1,15),(219,208,'Médico Internista',NULL,'Médico Internista',NULL,NULL,1,NULL,1,15),(220,208,'Ginecólogo-Obstetra',NULL,'Ginecólogo-Obstetra',NULL,NULL,1,NULL,1,15),(221,208,'Neurólogo',NULL,'Neurólogo',NULL,NULL,1,NULL,1,15),(222,208,'Oncólogo',NULL,'Oncólogo',NULL,NULL,1,NULL,1,15),(223,208,'Oftalmólogo',NULL,'Oftalmólogo',NULL,NULL,1,NULL,1,15),(224,208,'Ortopedista',NULL,'Ortopedista',NULL,NULL,1,NULL,1,15),(225,208,'Pediatra',NULL,'Pediatra',NULL,NULL,1,NULL,1,15),(226,208,'Psiquiatra',NULL,'Psiquiatra',NULL,NULL,1,NULL,1,15),(227,208,'Urólogo',NULL,'Urólogo',NULL,NULL,1,NULL,1,15),(228,NULL,'INGENIERO',NULL,'INGENIERO',NULL,NULL,1,NULL,1,15),(229,228,'Ingeniero civil',NULL,'Ingeniero civil',NULL,NULL,1,NULL,1,15),(230,228,'Ingeniero electrico',NULL,'Ingeniero eléctrico',NULL,NULL,1,NULL,1,15),(231,228,'Ingeniero en telecomunicaciones',NULL,'Ingeniero en telecomunicaciones',NULL,NULL,1,NULL,1,15),(232,228,'Ingeniero en electrónica',NULL,'Ingeniero en electrónica',NULL,NULL,1,NULL,1,15),(233,228,'Ingeniero mecánico',NULL,'Ingeniero mecánico',NULL,NULL,1,NULL,1,15),(234,228,'Ingeniero en computación',NULL,'Ingeniero en computación',NULL,NULL,1,NULL,1,15),(235,NULL,'DISEÑADOR',NULL,'DISEÑADOR',NULL,NULL,1,NULL,1,15),(236,235,'diseño industrial',NULL,'diseño industrial',NULL,NULL,1,NULL,1,15),(237,235,'diseño mecánico',NULL,'diseño mecánico',NULL,NULL,1,NULL,1,15),(238,235,'diseño gráfico',NULL,'diseño gráfico',NULL,NULL,1,NULL,1,15),(239,235,'diseño de interiores',NULL,'diseño de interiores',NULL,NULL,1,NULL,1,15),(240,235,'diseño de moldes',NULL,'diseño de moldes',NULL,NULL,1,NULL,1,15),(241,235,'diseño arquitectónico',NULL,'diseño arquitectónico',NULL,NULL,1,NULL,1,15),(242,235,'diseño industrial',NULL,'diseño industrial',NULL,NULL,1,NULL,1,15),(243,NULL,'ENFERMERÍA ',NULL,'ENFERMERÍA',NULL,NULL,1,NULL,1,15),(244,243,'enfermero practicante',NULL,'enfermero practicante',NULL,NULL,1,NULL,1,15),(245,243,'enfermero registrado',NULL,'enfermero registrado',NULL,NULL,1,NULL,1,15),(246,243,'enfermero de salud en el hogar',NULL,'enfermero de salud en el hogar',NULL,NULL,1,NULL,1,15),(247,243,'enfermero perinatal',NULL,'enfermero perinatal',NULL,NULL,1,NULL,1,15),(248,NULL,'ODONTOLOGO',NULL,'ODONTOLOGO',NULL,NULL,1,NULL,1,15),(249,248,'Ortodoncista',NULL,'Ortodoncista',NULL,NULL,1,NULL,1,15),(250,248,'Odontología geriátrica',NULL,'Odontología geriátrica',NULL,NULL,1,NULL,1,15),(251,248,'Odontología preventiva',NULL,'Odontología preventiva',NULL,NULL,1,NULL,1,15),(252,248,'Odontología restauradora',NULL,'Odontología restauradora',NULL,NULL,1,NULL,1,15),(253,248,'Blanqueamiento dental',NULL,'Blanqueamiento dental',NULL,NULL,1,NULL,1,15),(254,174,'Analistas de sistemas',NULL,'Analistas de sistemas',NULL,NULL,1,NULL,1,15),(255,174,'Desarrollador de Software',NULL,'Desarrollador de Software',NULL,NULL,1,NULL,1,15),(256,174,'Desarrollador de Aplicaciones móviles',NULL,'Desarrollador de Aplicaciones móviles',NULL,NULL,1,NULL,1,15),(257,174,'Programador Web',NULL,'Programador Web',NULL,NULL,1,NULL,1,15),(258,174,'esarrollador de Aplicaciones de Escritorio',NULL,'Desarrollador de Aplicaciones de Escritorio',NULL,NULL,1,NULL,1,15),(259,174,'Analista Programador',NULL,'Analista Programador',NULL,NULL,1,NULL,1,15),(260,174,'Diseñador de Base de Datos',NULL,'Diseñador de Base de Datos',NULL,NULL,1,NULL,1,15),(261,NULL,'ENTRENADOR',NULL,'ENTRENADOR',NULL,NULL,1,NULL,1,15),(262,261,'Entrenador Personal',NULL,'Entrenador Personal',NULL,NULL,1,NULL,1,15),(263,261,'Entrenador de Artes Marciales',NULL,'Entrenador de Artes Marciales',NULL,NULL,1,NULL,1,15),(264,261,'Entrenador de Voleibol',NULL,'Entrenador de Voleibol',NULL,NULL,1,NULL,1,15),(265,261,'Entrenador de Basquetbol',NULL,'Entrenador de Basquetbol',NULL,NULL,1,NULL,1,15),(266,261,'Entrenador de Fútbol',NULL,'Entrenador de Fútbol',NULL,NULL,1,NULL,1,15),(267,261,'Entrenador de Atletismo',NULL,'Entrenador de Atletismo',NULL,NULL,1,NULL,1,15),(268,261,'Entrenador de Rugby',NULL,'Entrenador de Rugby',NULL,NULL,1,NULL,1,15),(269,261,'Entrenador de Tenis',NULL,'Entrenador de Tenis',NULL,NULL,1,NULL,1,15),(270,261,'Entrenador de Ajedrez',NULL,'Entrenador de Ajedrez',NULL,NULL,1,NULL,1,15),(271,261,'Entrenador de Tae-kwondo',NULL,'Entrenador de Tae-kwondo',NULL,NULL,1,NULL,1,15),(272,261,'Entrenador de Crossfit',NULL,'Entrenador de Crossfit',NULL,NULL,1,NULL,1,15),(273,NULL,'MEDICINA VETERINARIA',NULL,'MEDICINA VETERINARIA',NULL,NULL,1,NULL,1,15),(274,273,'Veterinario',NULL,'Veterinario',NULL,NULL,1,NULL,1,15),(275,NULL,'MASCOTAS',NULL,'MASCOTAS',NULL,NULL,1,NULL,1,15),(276,275,'Entrenador de Perros',NULL,'Entrenador de Perros',NULL,NULL,1,NULL,1,15),(277,275,'Entrenador de Gatos',NULL,'Entrenador de Gatos',NULL,NULL,1,NULL,1,15),(278,275,'Paseador de Perros',NULL,'Paseador de Perros',NULL,NULL,1,NULL,1,15),(279,NULL,'COCINERO',NULL,'COCINERO',NULL,NULL,1,NULL,1,15),(280,279,'Cocinero para Eventos',NULL,'Cocinero para Eventos',NULL,NULL,1,NULL,1,15),(281,279,'Repostería',NULL,'Repostería',NULL,NULL,1,NULL,1,15),(282,279,'Sushero',NULL,'Sushero',NULL,NULL,1,NULL,1,15),(283,279,'Cocinero',NULL,'Cocinero',NULL,NULL,1,NULL,1,15),(284,NULL,'PINTURA',NULL,'PINTURA',NULL,NULL,1,NULL,1,15),(285,284,'Pintura de Interiores',NULL,'Pintura de Interiores',NULL,NULL,1,NULL,1,15),(286,284,'Pintura de Exteriores',NULL,'Pintura de Exteriores',NULL,NULL,1,NULL,1,15),(287,284,'Pintura Acrilico',NULL,'Pintura Acrilico',NULL,NULL,1,NULL,1,15),(288,NULL,'FLORISTERIA',NULL,'FLORISTERIA',NULL,NULL,1,NULL,1,15),(289,288,'Arreglos florales para eventos',NULL,'Arreglos florales para eventos',NULL,NULL,1,NULL,1,15),(290,288,'Decoracion floral',NULL,'Decoracion floral',NULL,NULL,1,NULL,1,15),(291,NULL,'COSTURA',NULL,'COSTURA',NULL,NULL,1,NULL,1,15),(292,291,'Sastre',NULL,'Sastre',NULL,NULL,1,NULL,1,15),(293,291,'Modista',NULL,'Modista',NULL,NULL,1,NULL,1,15),(294,291,'diseñador de ropa',NULL,'diseñador de ropa',NULL,NULL,1,NULL,1,15),(295,291,'Costurero',NULL,'Costurero',NULL,NULL,1,NULL,1,15),(296,NULL,'EVENTOS',NULL,'EVENTOS',NULL,NULL,1,NULL,1,15),(297,296,'Bartender',NULL,'Bartender',NULL,NULL,1,NULL,1,15),(298,296,'Promotor(a)',NULL,'Promotor(a)',NULL,NULL,1,NULL,1,15),(299,296,'Decorador',NULL,'Decorador',NULL,NULL,1,NULL,1,15),(300,296,'Planificador',NULL,'Planificador',NULL,NULL,1,NULL,1,15),(301,NULL,'DISEÑO Y WEB',NULL,'DISEÑO Y WEB',NULL,NULL,1,NULL,1,15),(302,301,'Animación',NULL,'Animación',NULL,NULL,1,NULL,1,15),(303,301,'Modelado 3D',NULL,'Modelado 3D',NULL,NULL,1,NULL,1,15),(304,301,'Ilustración',NULL,'Ilustración',NULL,NULL,1,NULL,1,15),(305,301,'Comercio Electrónico',NULL,'Comercio Electrónico',NULL,NULL,1,NULL,1,15),(306,301,'Diseño UI',NULL,'Diseño UI',NULL,NULL,1,NULL,1,15),(307,301,'Diseño de logos',NULL,'Diseño de logos',NULL,NULL,1,NULL,1,15),(308,NULL,'FOTOGRAFÍA',NULL,'FOTOGRAFÍA',NULL,NULL,1,NULL,1,15),(309,308,'Fotografía para eventos',NULL,'Fotografía para eventos',NULL,NULL,1,NULL,1,15),(310,308,'Fotografía para bodas',NULL,'Fotografía para bodas',NULL,NULL,1,NULL,1,15),(311,308,'Fotografía de deportes',NULL,'Fotografía de deportes',NULL,NULL,1,NULL,1,15),(312,308,'Fotografía Retratos',NULL,'Fotografía Retratos',NULL,NULL,1,NULL,1,15),(313,308,'Fotografía Paisaje',NULL,'Fotografía Paisaje',NULL,NULL,1,NULL,1,15),(314,308,'Edición de Fotos',NULL,'Edición de Fotos',NULL,NULL,1,NULL,1,15),(315,308,'Edición de Videos',NULL,'Edición de Videos',NULL,NULL,1,NULL,1,15),(316,308,'Fotografía de mascotas',NULL,'Fotografía de mascotas',NULL,NULL,1,NULL,1,15),(317,NULL,'ESCRITURA, TRADUCCIÓN Y TRANSCRIPCIÓN',NULL,'ESCRITURA, TRADUCCIÓN Y TRANSCRIPCIÓN',NULL,NULL,1,NULL,1,15),(318,317,'Servicios de escritura',NULL,'Servicios de escritura',NULL,NULL,1,NULL,1,15),(319,317,'Redacción de documentos',NULL,'Redacción de documentos',NULL,NULL,1,NULL,1,15),(320,317,'Trasncripción',NULL,'Trasncripción',NULL,NULL,1,NULL,1,15),(321,317,'Traducción',NULL,'Traducción',NULL,NULL,1,NULL,1,15),(322,317,'Traducción Español',NULL,'Traducción Español',NULL,NULL,1,NULL,1,15),(323,317,'Traducción Inglés',NULL,'Traducción Inglés',NULL,NULL,1,NULL,1,15),(324,317,'Traducción Italiano',NULL,'Traducción Italiano',NULL,NULL,1,NULL,1,15),(325,317,'Traducción Mandarín',NULL,'Traducción Mandarín',NULL,NULL,1,NULL,1,15),(326,317,'Traducción Portugués',NULL,'Traducción Portugués',NULL,NULL,1,NULL,1,15),(327,NULL,'NEGOCIOS',NULL,'NEGOCIOS',NULL,NULL,1,NULL,1,15),(328,327,'Contabilidad',NULL,'Contabilidad',NULL,NULL,1,NULL,1,15),(329,327,'Soporte administrativo',NULL,'Soporte administrativo',NULL,NULL,1,NULL,1,15),(330,327,'Publicidad',NULL,'Publicidad',NULL,NULL,1,NULL,1,15),(331,327,'Subastas',NULL,'Subastas',NULL,NULL,1,NULL,1,15),(332,327,'Consulta de trabajo',NULL,'Consulta de trabajo',NULL,NULL,1,NULL,1,15),(333,327,'Marketing',NULL,'Marketing',NULL,NULL,1,NULL,1,15),(334,327,'Servicios financieros y planificación',NULL,'Servicios financieros y planificación',NULL,NULL,1,NULL,1,15),(335,327,'Consultoría y Desarrollo de Franquicias',NULL,'Consultoría y Desarrollo de Franquicias',NULL,NULL,1,NULL,1,15),(336,327,'Servicios de Recursos Humanos y de Nómina',NULL,'Servicios de Recursos Humanos y de Nómina',NULL,NULL,1,NULL,1,15),(337,327,'Relaciones públicas',NULL,'Relacines públicas',NULL,NULL,1,NULL,1,15),(338,327,'Preparacion de impuestos',NULL,'Preparacion de impuestos',NULL,NULL,1,NULL,1,15),(339,327,'Análisis estadístico',NULL,'Análisis estadístico',NULL,NULL,1,NULL,1,15),(340,NULL,'MARKETING',NULL,'MARKETING',NULL,NULL,1,NULL,1,15),(341,340,'Marketing Digital',NULL,'Marketing Digital',NULL,NULL,1,NULL,1,15),(342,340,'Marketing Publicitario',NULL,'Marketing Publicitario',NULL,NULL,1,NULL,1,15),(343,340,'Marketing Promocional',NULL,'Marketing Promocional',NULL,NULL,1,NULL,1,15),(344,NULL,'CLASES Y LECCIONES',NULL,'CLASES Y LECCIONES',NULL,NULL,1,NULL,1,15),(345,344,'Lecciones de Piano',NULL,'Lecciones de Piano',NULL,NULL,1,NULL,1,15),(346,344,'Lecciones de Guitarra',NULL,'Lecciones de Guitarra',NULL,NULL,1,NULL,1,15),(347,344,'Lecciones de Canto',NULL,'Lecciones de Canto',NULL,NULL,1,NULL,1,15),(348,344,'Lecciones de CPR',NULL,'Lecciones de CPR',NULL,NULL,1,NULL,1,15),(349,344,'Lecciones de Dibujo',NULL,'Lecciones de Dibujo',NULL,NULL,1,NULL,1,15),(350,344,'Lecciones de Danza',NULL,'Lecciones de Danza',NULL,NULL,1,NULL,1,15),(351,344,'Lecciones de Ballet',NULL,'Lecciones de Ballet',NULL,NULL,1,NULL,1,15),(352,344,'Lecciones de Música',NULL,'Lecciones de Música',NULL,NULL,1,NULL,1,15),(353,344,'Lecciones de Batería',NULL,'Lecciones de Batería',NULL,NULL,1,NULL,1,15),(354,344,'Lecciones de Cocina',NULL,'Lecciones de Cocina',NULL,NULL,1,NULL,1,15),(355,344,'Lecciones de Baile',NULL,'Lecciones de Baile',NULL,NULL,1,NULL,1,15),(356,189,'Maquillaje',NULL,'Maquillaje',NULL,NULL,1,NULL,1,15),(357,189,'Pintura de cara',NULL,'Pintura de cara',NULL,NULL,1,NULL,1,15),(358,NULL,'CONDUCTOR',NULL,'CONDUCTOR',NULL,NULL,1,NULL,1,15),(359,358,'Chofer',NULL,'Chofer',NULL,NULL,1,NULL,1,15),(360,358,'Conductor de Limusinas',NULL,'Conductor de Limusinas',NULL,NULL,1,NULL,1,15),(361,358,'Conductor  de Autobuses',NULL,'Conductor de Autobuses',NULL,NULL,1,NULL,1,15),(362,358,'Conductor de Carros',NULL,'Conductor de Carros',NULL,NULL,1,NULL,1,15),(363,358,'Conductor de Camoniones',NULL,'Conductor de Camoniones',NULL,NULL,1,NULL,1,15),(364,358,'Conductor de Motos',NULL,'Conductor de Motos',NULL,NULL,1,NULL,1,15),(365,NULL,'ALQUILER Y RENTA',NULL,'ALQUILER Y RENTA',NULL,NULL,1,NULL,1,15),(366,365,'Alquiler de Motos',NULL,'Alquiler de Motos',NULL,NULL,1,NULL,1,15),(367,365,'Alquiler de Carros',NULL,'Alquiler de Carros',NULL,NULL,1,NULL,1,15),(368,365,'Alquiler de Camiones',NULL,'Alquiler de Camiones',NULL,NULL,1,NULL,1,15),(369,365,'Alquiler de Autobuses',NULL,'Alquiler de Autobuses',NULL,NULL,1,NULL,1,15),(370,365,'Alquiler de Habitaciones',NULL,'Alquiler de Habitaciones',NULL,NULL,1,NULL,1,15),(371,365,'Alquiler de Casas',NULL,'Alquiler de Casas',NULL,NULL,1,NULL,1,15),(372,365,'Alquiler de Apartamentos',NULL,'Alquiler de Apartamentos',NULL,NULL,1,NULL,1,15),(373,365,'Alquiler de Sillas',NULL,'Alquiler de Sillas',NULL,NULL,1,NULL,1,15),(374,365,'Alquiler de Mesas',NULL,'Alquiler de Mesas',NULL,NULL,1,NULL,1,15),(375,NULL,'ARTISTAS',NULL,'ARTISTAS',NULL,NULL,1,NULL,1,15),(376,375,'Tatuador',NULL,'Tatuador',NULL,NULL,1,NULL,1,15),(377,375,'Pintor',NULL,'Pintor',NULL,NULL,1,NULL,1,15),(378,375,'Ilustrador',NULL,'Ilustrador',NULL,NULL,1,NULL,1,15),(379,375,'Escultor',NULL,'Escultor',NULL,NULL,1,NULL,1,15),(380,375,'Actor',NULL,'Actor',NULL,NULL,1,NULL,1,15),(381,375,'Cantante',NULL,'Cantante',NULL,NULL,1,NULL,1,15),(382,375,'Compositor',NULL,'Compositor',NULL,NULL,1,NULL,1,15),(383,375,'Bailarín',NULL,'Bailarín',NULL,NULL,1,NULL,1,15),(384,375,'Director',NULL,'Director',NULL,NULL,1,NULL,1,15),(385,375,'Artesano',NULL,'Artesano',NULL,NULL,1,NULL,1,15),(386,NULL,'ENTRETENIMIENTO',NULL,'ENTRETENIMIENTO',NULL,NULL,1,NULL,1,15),(387,386,'Mago',NULL,'Mago',NULL,NULL,1,NULL,1,15),(388,386,'Anfitrión',NULL,'Anfitrión',NULL,NULL,1,NULL,1,15),(389,386,'Lector Cartas de Tarot',NULL,'Lector Cartas de Tarot',NULL,NULL,1,NULL,1,15),(390,386,'Lector de Palmas',NULL,'Lector de Palmas',NULL,NULL,1,NULL,1,15),(391,157,'Limpieza de ventanas',NULL,'Limpieza de ventanas',NULL,NULL,1,NULL,1,15),(392,157,'Limpieza de alfombras',NULL,'Limpieza de alfombras',NULL,NULL,1,NULL,1,15),(393,157,'Limpieza del Hogar',NULL,'Limpieza del Hogar',NULL,NULL,1,NULL,1,15),(394,NULL,'NIÑERA',NULL,'NIÑERA',NULL,NULL,1,NULL,1,15),(395,394,'Niñera(o)',NULL,'Niñera(o)',NULL,NULL,1,NULL,1,15),(396,394,'Cuidados de bebés',NULL,'Cuidados de bebés',NULL,NULL,1,NULL,1,15),(397,NULL,'REPARACIÓN',NULL,'REPARACIÓN',NULL,NULL,1,NULL,1,15),(398,397,'Reparación de celulares',NULL,'Reparación de celulares',NULL,NULL,1,NULL,1,15),(399,397,'Reparación de Laptops',NULL,'Reparación de Laptops',NULL,NULL,1,NULL,1,15),(400,397,'Reparación de TV Plasma',NULL,'Reparación de TV Plasma',NULL,NULL,1,NULL,1,15),(401,397,'Reparación de Neveras',NULL,'Reparación de Neveras',NULL,NULL,1,NULL,1,15),(402,397,'Reparación de Electrodomésticos',NULL,'Reparación de Electrodomésticos',NULL,NULL,1,NULL,1,15),(403,397,'Reparación de Computadoras',NULL,'Reparación de Computadoras',NULL,NULL,1,NULL,1,15),(404,397,'Reparación de Aires Acondicionados',NULL,'Reparación de Aires Acondicionados',NULL,NULL,1,NULL,1,15),(405,123,'Soldador ',NULL,'Soldador','2018-09-07 22:41:15','2018-09-07 22:41:15',1,1,1,0);
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio_profesional`
--

DROP TABLE IF EXISTS `servicio_profesional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicio_profesional` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpersona` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `idservicio` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_servicio_profesional_1_idx` (`idpersona`),
  KEY `fk_servicio_profesional_2_idx` (`idservicio`),
  CONSTRAINT `fk_servicio_profesional_1` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_servicio_profesional_2` FOREIGN KEY (`idservicio`) REFERENCES `servicio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio_profesional`
--

LOCK TABLES `servicio_profesional` WRITE;
/*!40000 ALTER TABLE `servicio_profesional` DISABLE KEYS */;
INSERT INTO `servicio_profesional` VALUES (18,31,'2017-06-15 14:18:54','2017-06-15 14:18:54',127),(19,34,'2017-08-08 14:42:36','2017-08-08 14:42:36',228),(20,35,'2017-08-18 20:18:43','2017-08-18 20:18:43',375),(21,35,'2017-08-18 20:36:32','2017-08-18 20:36:32',208),(22,37,'2017-08-23 14:51:51','2017-08-23 14:51:51',327),(23,39,'2017-08-23 16:34:07','2017-08-23 16:34:07',94),(24,42,'2017-08-28 02:07:10','2017-08-28 02:07:10',166),(25,35,'2017-08-28 17:34:32','2017-08-28 17:34:32',118),(26,43,'2017-08-28 22:01:30','2017-08-28 22:01:30',118),(27,43,'2017-08-28 22:42:54','2017-08-28 22:42:54',123),(28,46,'2017-09-22 12:56:39','2017-09-22 12:56:39',174),(29,46,'2017-09-22 12:57:09','2017-09-22 12:57:09',340),(34,49,'2017-11-22 18:48:21','2017-11-22 18:48:21',179),(35,51,'2017-12-06 20:38:09','2017-12-06 20:38:09',301),(36,51,'2017-12-06 20:45:57','2017-12-06 20:45:57',174),(37,49,'2017-12-08 18:57:12','2017-12-08 18:57:12',397),(38,49,'2017-12-08 18:59:50','2017-12-08 18:59:50',174),(39,53,'2017-12-28 02:44:20','2017-12-28 02:44:20',228),(40,54,'2017-12-28 02:52:22','2017-12-28 02:52:22',174),(41,59,'2018-03-12 19:34:32','2018-03-12 19:34:32',94),(42,58,'2018-04-02 14:00:27','2018-04-02 14:00:27',174),(43,60,'2018-05-02 01:32:32','2018-05-02 01:32:32',118),(44,60,'2018-05-02 01:33:22','2018-05-02 01:33:22',123),(45,63,'2018-05-25 20:40:07','2018-05-25 20:40:07',340),(46,63,'2018-05-25 20:40:25','2018-05-25 20:40:25',235),(47,63,'2018-05-25 20:41:08','2018-05-25 20:41:08',327),(48,64,'2018-06-16 13:51:14','2018-06-16 13:51:14',235),(49,65,'2018-08-02 13:58:38','2018-08-02 13:58:38',118),(50,68,'2018-08-09 02:17:11','2018-08-09 02:17:11',174),(51,70,'2018-08-09 18:55:13','2018-08-09 18:55:13',340),(52,70,'2018-08-09 19:05:16','2018-08-09 19:05:16',327),(53,72,'2018-08-14 13:06:18','2018-08-14 13:06:18',235),(54,72,'2018-08-14 17:03:16','2018-08-14 17:03:16',301),(55,72,'2018-08-14 17:03:17','2018-08-14 17:03:17',301),(56,72,'2018-08-14 17:03:54','2018-08-14 17:03:54',308),(57,73,'2018-08-21 00:09:13','2018-08-21 00:09:13',123),(58,73,'2018-08-21 00:09:36','2018-08-21 00:09:36',127),(59,73,'2018-08-21 00:09:55','2018-08-21 00:09:55',153),(60,73,'2018-08-21 00:10:32','2018-08-21 00:10:32',104),(61,76,'2018-08-28 15:59:16','2018-08-28 15:59:16',235),(62,77,'2018-08-30 03:32:43','2018-08-30 03:32:43',327),(63,77,'2018-08-30 03:33:31','2018-08-30 03:33:31',340),(64,77,'2018-08-30 03:34:00','2018-08-30 03:34:00',301),(65,77,'2018-08-30 03:34:28','2018-08-30 03:34:28',118),(66,78,'2018-08-30 19:45:23','2018-08-30 19:45:23',375),(67,79,'2018-08-30 20:10:32','2018-08-30 20:10:32',375),(68,80,'2018-08-30 20:43:34','2018-08-30 20:43:34',153),(69,81,'2018-08-30 21:11:42','2018-08-30 21:11:42',153),(70,67,'2018-09-08 00:04:27','2018-09-08 00:04:27',123),(71,83,'2018-10-10 00:03:08','2018-10-10 00:03:08',201),(72,84,'2018-10-10 16:16:55','2018-10-10 16:16:55',235),(73,87,'2018-11-05 16:22:29','2018-11-05 16:22:29',118),(74,88,'2018-12-21 15:55:59','2018-12-21 15:55:59',228),(75,89,'2019-01-11 04:57:08','2019-01-11 04:57:08',118),(76,93,'2019-01-15 15:56:15','2019-01-15 15:56:15',144),(77,94,'2019-01-16 20:19:48','2019-01-16 20:19:48',118),(78,95,'2019-01-22 11:48:44','2019-01-22 11:48:44',394),(79,97,'2019-01-24 15:18:12','2019-01-24 15:18:12',327),(80,97,'2019-01-24 15:30:41','2019-01-24 15:30:41',153),(81,99,'2019-01-25 16:46:50','2019-01-25 16:46:50',228),(82,99,'2019-01-25 16:50:22','2019-01-25 16:50:22',174),(83,100,'2019-01-28 03:39:27','2019-01-28 03:39:27',275),(84,100,'2019-01-28 03:43:49','2019-01-28 03:43:49',394),(85,107,'2019-02-07 21:54:56','2019-02-07 21:54:56',327),(86,108,'2019-02-07 22:40:21','2019-02-07 22:40:21',174),(87,111,'2019-02-10 14:32:46','2019-02-10 14:32:46',275),(88,112,'2019-02-11 12:49:55','2019-02-11 12:49:55',235),(89,113,'2019-02-11 15:23:22','2019-02-11 15:23:22',327),(90,114,'2019-02-11 15:58:20','2019-02-11 15:58:20',340),(91,114,'2019-02-11 16:03:14','2019-02-11 16:03:14',308),(92,114,'2019-02-11 16:03:55','2019-02-11 16:03:55',174),(93,113,'2019-02-12 06:34:15','2019-02-12 06:34:15',118),(94,115,'2019-02-12 19:47:03','2019-02-12 19:47:03',123),(95,115,'2019-02-12 19:47:38','2019-02-12 19:47:38',94),(96,115,'2019-02-12 19:48:05','2019-02-12 19:48:05',104),(97,116,'2019-02-13 04:09:38','2019-02-13 04:09:38',118),(98,118,'2019-02-15 11:08:04','2019-02-15 11:08:04',166),(99,118,'2019-02-15 11:28:30','2019-02-15 11:28:30',189),(100,118,'2019-02-15 11:29:57','2019-02-15 11:29:57',135),(101,120,'2019-02-16 15:59:02','2019-02-16 15:59:02',148),(102,120,'2019-02-16 15:59:22','2019-02-16 15:59:22',291),(103,120,'2019-02-16 15:59:38','2019-02-16 15:59:38',189),(104,122,'2019-02-22 14:17:19','2019-02-22 14:17:19',235),(105,123,'2019-02-27 22:11:28','2019-02-27 22:11:28',144),(106,125,'2019-03-05 16:06:03','2019-03-05 16:06:03',235),(107,126,'2019-03-05 22:52:20','2019-03-05 22:52:20',235),(108,128,'2019-03-06 20:04:45','2019-03-06 20:04:45',340),(109,128,'2019-03-06 20:04:54','2019-03-06 20:04:54',235),(110,128,'2019-03-06 20:05:06','2019-03-06 20:05:06',327),(111,128,'2019-03-06 20:05:23','2019-03-06 20:05:23',301),(112,128,'2019-03-06 20:05:38','2019-03-06 20:05:38',174),(113,137,'2019-03-27 00:43:45','2019-03-27 00:43:45',189),(114,139,'2019-04-02 16:16:20','2019-04-02 16:16:20',228),(115,141,'2019-05-09 01:56:07','2019-05-09 01:56:07',308),(116,141,'2019-05-09 01:59:26','2019-05-09 01:59:26',301);
/*!40000 ALTER TABLE `servicio_profesional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio_profesional_detalle`
--

DROP TABLE IF EXISTS `servicio_profesional_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicio_profesional_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_servicio_profesional` int(11) NOT NULL,
  `idservicio` int(11) NOT NULL,
  `activo` tinyint(4) DEFAULT '1',
  `idpersona` int(11) NOT NULL,
  `mailed` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_servicio_profesional_detalle_2_idx` (`id_servicio_profesional`),
  KEY `fk_servicio_profesional_detalle_2_idx1` (`idservicio`),
  KEY `fk_servicio_profesional_detalle_3_idx` (`idpersona`),
  CONSTRAINT `fk_servicio_profesional_detalle_1` FOREIGN KEY (`id_servicio_profesional`) REFERENCES `servicio_profesional` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_servicio_profesional_detalle_2` FOREIGN KEY (`idservicio`) REFERENCES `servicio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_servicio_profesional_detalle_3` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio_profesional_detalle`
--

LOCK TABLES `servicio_profesional_detalle` WRITE;
/*!40000 ALTER TABLE `servicio_profesional_detalle` DISABLE KEYS */;
INSERT INTO `servicio_profesional_detalle` VALUES (61,18,131,1,31,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(62,19,230,1,34,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(63,20,377,0,35,NULL,NULL,NULL),(64,21,209,1,35,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(65,22,330,1,37,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(66,22,328,0,37,NULL,NULL,NULL),(67,23,95,1,39,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(68,23,97,1,39,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(69,23,98,1,39,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(70,23,99,1,39,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(71,23,100,1,39,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(72,23,101,1,39,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(73,23,102,1,39,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(74,23,103,1,39,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(75,24,167,1,42,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(76,24,169,1,42,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(77,24,171,1,42,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(78,25,178,1,35,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(79,20,378,0,35,NULL,NULL,NULL),(80,20,376,1,35,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(81,26,188,1,43,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(82,26,119,0,43,NULL,NULL,NULL),(83,27,126,1,43,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(84,28,175,1,46,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(85,28,176,1,46,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(86,28,254,1,46,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(87,28,255,1,46,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(88,28,256,1,46,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(89,28,257,1,46,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(90,28,258,1,46,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(91,28,259,1,46,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(92,28,260,1,46,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(93,29,341,1,46,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(94,29,342,1,46,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(95,29,343,1,46,'2017-11-22 18:49:01','2017-11-22 18:49:01',NULL),(96,34,180,1,49,'2017-11-24 02:03:01','2017-11-24 02:03:01','2017-11-22 18:48:21'),(97,34,181,1,49,'2017-11-24 02:03:01','2017-11-24 02:03:01','2017-11-22 18:48:21'),(98,35,305,1,51,'2017-12-06 20:39:02','2017-12-06 20:39:02','2017-12-06 20:38:09'),(99,36,176,1,51,'2017-12-06 20:46:01','2017-12-06 20:46:01','2017-12-06 20:45:57'),(100,37,398,1,49,'2017-12-08 23:31:01','2017-12-08 23:31:01','2017-12-08 18:57:12'),(101,37,399,1,49,'2017-12-08 23:31:01','2017-12-08 23:31:01','2017-12-08 18:57:12'),(102,37,400,1,49,'2017-12-08 23:31:01','2017-12-08 23:31:01','2017-12-08 18:57:12'),(103,37,401,1,49,'2017-12-08 23:31:01','2017-12-08 23:31:01','2017-12-08 18:57:12'),(104,37,403,1,49,'2017-12-08 23:31:01','2017-12-08 23:31:01','2017-12-08 18:57:40'),(105,38,175,1,49,'2017-12-08 23:31:01','2017-12-08 23:31:01','2017-12-08 18:59:50'),(106,39,234,1,53,'2017-12-28 02:45:01','2017-12-28 02:47:50','2017-12-28 02:44:20'),(107,39,232,1,53,'2017-12-28 02:48:01','2017-12-28 02:48:01','2017-12-28 02:47:55'),(108,39,231,1,53,'2017-12-28 02:48:01','2017-12-28 02:48:01','2017-12-28 02:47:56'),(109,40,175,1,54,'2017-12-28 02:53:01','2017-12-28 02:53:02','2017-12-28 02:52:22'),(110,40,254,1,54,'2017-12-28 02:53:01','2017-12-28 02:53:02','2017-12-28 02:52:22'),(111,40,259,1,54,'2017-12-28 02:53:01','2017-12-28 02:53:02','2017-12-28 02:52:22'),(112,40,260,1,54,'2017-12-28 02:53:01','2017-12-28 02:53:02','2017-12-28 02:52:22'),(113,41,95,1,59,'2018-03-12 19:35:01','2018-03-12 19:35:02','2018-03-12 19:34:32'),(114,41,97,1,59,'2018-03-12 19:35:01','2018-03-12 19:35:02','2018-03-12 19:34:32'),(115,41,98,1,59,'2018-03-12 19:35:01','2018-03-12 19:35:02','2018-03-12 19:34:32'),(116,41,101,1,59,'2018-03-12 19:35:01','2018-03-12 19:35:02','2018-03-12 19:34:32'),(117,42,176,1,58,'2018-04-02 14:01:01','2018-04-02 14:01:01','2018-04-02 14:00:27'),(118,42,254,1,58,'2018-04-02 14:01:01','2018-04-02 14:01:01','2018-04-02 14:00:27'),(119,42,255,1,58,'2018-04-02 14:01:01','2018-04-02 14:01:01','2018-04-02 14:00:27'),(120,42,256,1,58,'2018-04-02 14:01:01','2018-04-02 14:01:01','2018-04-02 14:00:27'),(121,42,257,1,58,'2018-04-02 14:01:01','2018-04-02 14:01:01','2018-04-02 14:00:27'),(122,42,258,1,58,'2018-04-02 14:01:01','2018-04-02 14:01:01','2018-04-02 14:00:27'),(123,42,259,1,58,'2018-04-02 14:01:01','2018-04-02 14:01:01','2018-04-02 14:00:27'),(124,42,260,1,58,'2018-04-02 14:01:01','2018-04-02 14:01:01','2018-04-02 14:00:27'),(125,43,119,1,60,'2018-05-02 01:33:01','2018-05-02 01:33:01','2018-05-02 01:32:32'),(126,43,121,1,60,'2018-05-02 01:33:01','2018-05-02 01:33:01','2018-05-02 01:32:32'),(127,43,122,1,60,'2018-05-02 01:33:01','2018-05-02 01:33:01','2018-05-02 01:32:32'),(128,44,126,1,60,'2018-05-02 01:34:01','2018-05-02 01:34:01','2018-05-02 01:33:22'),(129,45,341,1,63,'2018-05-25 20:41:01','2018-05-25 20:41:01','2018-05-25 20:40:07'),(130,45,342,1,63,'2018-05-25 20:41:01','2018-05-25 20:41:01','2018-05-25 20:40:07'),(131,45,343,1,63,'2018-05-25 20:41:01','2018-05-25 20:41:01','2018-05-25 20:40:07'),(132,46,238,1,63,'2018-05-25 20:41:01','2018-05-25 20:41:01','2018-05-25 20:40:25'),(133,47,330,1,63,'2018-05-25 20:42:01','2018-05-25 20:42:01','2018-05-25 20:41:08'),(134,47,333,1,63,'2018-05-25 20:42:01','2018-05-25 20:42:01','2018-05-25 20:41:08'),(135,48,238,1,64,'2018-06-16 13:52:01','2018-06-16 13:52:01','2018-06-16 13:51:14'),(136,49,119,1,65,'2018-08-02 13:59:01','2018-08-02 13:59:01','2018-08-02 13:58:38'),(137,49,186,1,65,'2018-08-02 13:59:01','2018-08-02 13:59:01','2018-08-02 13:58:38'),(138,49,188,1,65,'2018-08-02 13:59:01','2018-08-02 13:59:01','2018-08-02 13:58:38'),(139,49,120,1,65,'2018-08-02 14:00:02','2018-08-02 14:00:02','2018-08-02 13:59:21'),(140,49,121,1,65,'2018-08-02 14:00:02','2018-08-02 14:00:02','2018-08-02 13:59:21'),(141,49,177,1,65,'2018-08-02 14:00:02','2018-08-02 14:00:02','2018-08-02 13:59:22'),(142,49,178,1,65,'2018-08-02 14:00:02','2018-08-02 14:00:02','2018-08-02 13:59:25'),(143,49,184,1,65,'2018-08-02 14:00:02','2018-08-02 14:00:02','2018-08-02 13:59:25'),(144,49,185,1,65,'2018-08-02 14:00:02','2018-08-02 14:00:02','2018-08-02 13:59:26'),(145,49,122,1,65,'2018-08-02 14:00:02','2018-08-02 14:00:02','2018-08-02 13:59:27'),(146,50,175,1,68,'2018-08-09 02:18:01','2018-08-09 02:18:01','2018-08-09 02:17:11'),(147,51,341,1,70,'2018-08-09 18:56:01','2018-08-09 18:56:02','2018-08-09 18:55:13'),(148,51,342,1,70,'2018-08-09 18:56:01','2018-08-09 18:56:02','2018-08-09 18:55:13'),(149,52,330,1,70,'2018-08-09 19:06:01','2018-08-09 19:06:02','2018-08-09 19:05:16'),(150,52,333,1,70,'2018-08-09 19:06:01','2018-08-09 19:06:02','2018-08-09 19:05:16'),(151,52,337,1,70,'2018-08-09 19:06:01','2018-08-09 19:06:02','2018-08-09 19:05:16'),(152,53,238,1,72,'2018-08-14 13:07:01','2018-08-14 13:07:01','2018-08-14 13:06:18'),(153,54,304,1,72,'2018-08-14 17:04:01','2018-08-14 17:04:01','2018-08-14 17:03:16'),(154,54,307,1,72,'2018-08-14 17:04:01','2018-08-14 17:04:01','2018-08-14 17:03:16'),(155,55,304,1,72,'2018-08-14 17:04:01','2018-08-14 17:04:01','2018-08-14 17:03:17'),(156,55,307,1,72,'2018-08-14 17:04:01','2018-08-14 17:04:01','2018-08-14 17:03:17'),(157,56,309,1,72,'2018-08-14 17:04:01','2018-08-14 17:04:01','2018-08-14 17:03:54'),(158,56,310,1,72,'2018-08-14 17:04:01','2018-08-14 17:04:01','2018-08-14 17:03:54'),(159,56,312,1,72,'2018-08-14 17:04:01','2018-08-14 17:04:01','2018-08-14 17:03:54'),(160,56,313,1,72,'2018-08-14 17:04:01','2018-08-14 17:04:01','2018-08-14 17:03:54'),(161,56,314,1,72,'2018-08-14 17:04:01','2018-08-14 17:04:01','2018-08-14 17:03:54'),(162,56,315,1,72,'2018-08-14 17:04:01','2018-08-14 17:04:01','2018-08-14 17:03:54'),(163,57,124,1,73,'2018-08-21 00:10:01','2018-08-21 00:10:01','2018-08-21 00:09:13'),(164,57,126,1,73,'2018-08-21 00:10:01','2018-08-21 00:10:01','2018-08-21 00:09:13'),(165,58,128,1,73,'2018-08-21 00:10:01','2018-08-21 00:10:01','2018-08-21 00:09:36'),(166,58,129,1,73,'2018-08-21 00:10:01','2018-08-21 00:10:01','2018-08-21 00:09:36'),(167,58,130,1,73,'2018-08-21 00:10:01','2018-08-21 00:10:01','2018-08-21 00:09:36'),(168,58,131,1,73,'2018-08-21 00:10:01','2018-08-21 00:10:01','2018-08-21 00:09:36'),(169,59,154,1,73,'2018-08-21 00:10:01','2018-08-21 00:10:01','2018-08-21 00:09:55'),(170,59,155,1,73,'2018-08-21 00:10:01','2018-08-21 00:10:01','2018-08-21 00:09:55'),(171,60,105,1,73,'2018-08-21 00:11:01','2018-08-21 00:11:01','2018-08-21 00:10:32'),(172,60,106,1,73,'2018-08-21 00:11:01','2018-08-21 00:11:01','2018-08-21 00:10:32'),(173,60,107,1,73,'2018-08-21 00:11:01','2018-08-21 00:11:01','2018-08-21 00:10:32'),(174,60,108,1,73,'2018-08-21 00:11:01','2018-08-21 00:11:01','2018-08-21 00:10:32'),(175,60,109,1,73,'2018-08-21 00:11:01','2018-08-21 00:11:01','2018-08-21 00:10:32'),(176,60,110,1,73,'2018-08-21 00:11:01','2018-08-21 00:11:01','2018-08-21 00:10:32'),(177,60,111,1,73,'2018-08-21 00:11:01','2018-08-21 00:11:01','2018-08-21 00:10:32'),(178,60,112,1,73,'2018-08-21 00:11:01','2018-08-21 00:11:01','2018-08-21 00:10:32'),(179,60,113,1,73,'2018-08-21 00:11:01','2018-08-21 00:11:01','2018-08-21 00:10:32'),(180,60,114,1,73,'2018-08-21 00:11:01','2018-08-21 00:11:01','2018-08-21 00:10:32'),(181,57,125,1,73,'2018-08-21 00:12:02','2018-08-21 00:12:02','2018-08-21 00:11:59'),(182,61,238,1,76,'2018-08-28 16:00:01','2018-08-28 16:00:01','2018-08-28 15:59:16'),(183,62,329,1,77,'2018-08-30 03:33:02','2018-08-30 03:33:02','2018-08-30 03:32:43'),(184,62,330,1,77,'2018-08-30 03:33:02','2018-08-30 03:33:02','2018-08-30 03:32:43'),(185,62,333,1,77,'2018-08-30 03:33:02','2018-08-30 03:33:02','2018-08-30 03:32:43'),(186,62,335,1,77,'2018-08-30 03:33:02','2018-08-30 03:33:02','2018-08-30 03:32:43'),(187,62,336,1,77,'2018-08-30 03:33:02','2018-08-30 03:33:02','2018-08-30 03:32:43'),(188,62,337,1,77,'2018-08-30 03:33:02','2018-08-30 03:33:02','2018-08-30 03:32:43'),(189,63,341,1,77,'2018-08-30 03:34:01','2018-08-30 03:34:01','2018-08-30 03:33:31'),(190,63,342,1,77,'2018-08-30 03:34:01','2018-08-30 03:34:01','2018-08-30 03:33:31'),(191,63,343,1,77,'2018-08-30 03:34:01','2018-08-30 03:34:01','2018-08-30 03:33:31'),(192,64,305,1,77,'2018-08-30 03:34:01','2018-08-30 03:34:01','2018-08-30 03:34:00'),(193,65,122,1,77,'2018-08-30 03:35:01','2018-08-30 03:35:01','2018-08-30 03:34:28'),(194,65,184,1,77,'2018-08-30 03:35:01','2018-08-30 03:35:01','2018-08-30 03:34:28'),(195,66,377,0,78,'2018-08-30 19:46:01','2018-08-30 19:56:18','2018-08-30 19:45:23'),(196,66,385,1,78,'2018-08-30 19:57:02','2018-08-30 20:00:59','2018-08-30 19:56:17'),(197,67,377,1,79,'2018-08-30 20:11:01','2018-08-30 20:11:02','2018-08-30 20:10:32'),(198,68,154,1,80,'2018-08-30 20:44:01','2018-08-30 20:44:01','2018-08-30 20:43:34'),(199,69,154,1,81,'2018-08-30 21:12:01','2018-08-30 21:12:01','2018-08-30 21:11:42'),(200,70,405,1,67,'2018-09-08 00:05:02','2018-09-08 00:05:02','2018-09-08 00:04:27'),(201,71,205,1,83,'2018-10-10 00:04:01','2018-10-10 00:04:01','2018-10-10 00:03:08'),(202,71,206,1,83,'2018-10-10 00:04:01','2018-10-10 00:04:01','2018-10-10 00:03:08'),(203,71,207,1,83,'2018-10-10 00:04:01','2018-10-10 00:04:01','2018-10-10 00:03:08'),(204,72,238,1,84,'2018-10-10 16:17:02','2018-10-10 16:17:02','2018-10-10 16:16:55'),(205,73,184,1,87,'2018-11-05 16:23:01','2018-11-05 16:23:01','2018-11-05 16:22:29'),(206,74,229,1,88,'2018-12-21 15:56:01','2018-12-21 15:56:02','2018-12-21 15:55:59'),(207,75,177,1,89,'2019-01-11 04:58:01','2019-01-11 04:58:01','2019-01-11 04:57:08'),(208,75,184,1,89,'2019-01-11 04:58:01','2019-01-11 04:58:01','2019-01-11 04:57:08'),(209,76,146,1,93,'2019-01-15 15:57:01','2019-02-06 13:45:03','2019-01-15 15:56:15'),(210,76,145,1,93,'2019-01-15 16:10:01','2019-01-15 16:10:02','2019-01-15 16:09:17'),(211,77,184,1,94,'2019-01-16 20:20:01','2019-01-16 20:20:01','2019-01-16 20:19:48'),(212,78,395,1,95,'2019-01-22 11:49:01','2019-01-22 11:49:01','2019-01-22 11:48:44'),(213,78,396,1,95,'2019-01-22 11:49:01','2019-01-22 11:49:01','2019-01-22 11:48:44'),(214,79,333,1,97,'2019-01-24 15:19:01','2019-01-24 15:19:02','2019-01-24 15:18:12'),(215,79,334,1,97,'2019-01-24 15:19:01','2019-01-24 15:19:02','2019-01-24 15:18:12'),(216,79,335,1,97,'2019-01-24 15:19:01','2019-01-24 15:19:02','2019-01-24 15:18:12'),(217,80,154,1,97,'2019-01-24 15:31:01','2019-01-24 15:31:01','2019-01-24 15:30:41'),(218,80,155,1,97,'2019-01-24 15:31:01','2019-01-24 15:31:01','2019-01-24 15:30:41'),(219,81,230,1,99,'2019-01-25 16:47:01','2019-01-25 16:47:01','2019-01-25 16:46:50'),(220,81,232,1,99,'2019-01-25 16:47:01','2019-01-25 16:47:01','2019-01-25 16:46:50'),(221,81,234,1,99,'2019-01-25 16:47:01','2019-01-25 16:47:01','2019-01-25 16:46:50'),(222,82,176,1,99,'2019-01-25 16:51:01','2019-01-25 16:51:01','2019-01-25 16:50:22'),(223,82,254,1,99,'2019-01-25 16:51:01','2019-01-25 16:51:01','2019-01-25 16:50:22'),(224,82,255,1,99,'2019-01-25 16:51:01','2019-01-25 16:51:01','2019-01-25 16:50:22'),(225,82,256,1,99,'2019-01-25 16:51:01','2019-01-25 16:51:01','2019-01-25 16:50:22'),(226,82,257,1,99,'2019-01-25 16:51:01','2019-01-25 16:51:01','2019-01-25 16:50:22'),(227,82,258,1,99,'2019-01-25 16:51:01','2019-01-25 16:51:01','2019-01-25 16:50:22'),(228,82,259,1,99,'2019-01-25 16:51:01','2019-01-25 16:51:01','2019-01-25 16:50:22'),(229,83,278,1,100,'2019-01-28 03:40:01','2019-01-28 03:40:01','2019-01-28 03:39:27'),(230,84,395,1,100,'2019-01-28 03:44:01','2019-01-28 03:44:01','2019-01-28 03:43:49'),(231,84,396,1,100,'2019-01-28 03:44:01','2019-01-28 03:44:01','2019-01-28 03:43:49'),(232,76,147,1,93,'2019-02-06 13:46:01','2019-02-06 13:46:01','2019-02-06 13:45:05'),(233,85,329,1,107,'2019-02-07 21:55:01','2019-02-07 21:55:01','2019-02-07 21:54:56'),(234,85,332,1,107,'2019-02-07 21:55:01','2019-02-07 21:55:01','2019-02-07 21:54:56'),(235,86,256,1,108,'2019-02-07 22:41:01','2019-02-07 22:41:02','2019-02-07 22:40:21'),(236,86,257,1,108,'2019-02-07 22:41:01','2019-02-07 22:41:02','2019-02-07 22:40:21'),(237,87,277,1,111,'2019-02-10 14:33:01','2019-02-10 14:33:01','2019-02-10 14:32:46'),(238,88,238,1,112,'2019-02-11 12:50:01','2019-02-11 12:50:01','2019-02-11 12:49:55'),(239,89,328,1,113,'2019-02-11 15:24:01','2019-02-11 15:24:01','2019-02-11 15:23:22'),(240,89,329,1,113,'2019-02-11 15:24:01','2019-02-11 15:24:01','2019-02-11 15:23:22'),(241,89,332,1,113,'2019-02-11 15:24:01','2019-02-11 15:24:01','2019-02-11 15:23:22'),(242,89,334,1,113,'2019-02-11 15:24:01','2019-02-11 15:24:01','2019-02-11 15:23:22'),(243,89,336,1,113,'2019-02-11 15:24:01','2019-02-11 15:24:01','2019-02-11 15:23:22'),(244,89,338,1,113,'2019-02-11 15:24:01','2019-02-11 15:24:01','2019-02-11 15:23:22'),(245,89,339,1,113,'2019-02-11 15:24:01','2019-02-11 15:24:01','2019-02-11 15:23:22'),(246,90,341,1,114,'2019-02-11 15:59:01','2019-02-11 15:59:01','2019-02-11 15:58:20'),(247,90,342,1,114,'2019-02-11 15:59:01','2019-02-11 15:59:01','2019-02-11 15:58:20'),(248,90,343,1,114,'2019-02-11 15:59:01','2019-02-11 15:59:01','2019-02-11 15:58:20'),(249,91,309,1,114,'2019-02-11 16:04:01','2019-02-11 16:04:02','2019-02-11 16:03:14'),(250,91,311,1,114,'2019-02-11 16:04:01','2019-02-11 16:04:02','2019-02-11 16:03:14'),(251,91,312,1,114,'2019-02-11 16:04:01','2019-02-11 16:04:02','2019-02-11 16:03:14'),(252,91,314,1,114,'2019-02-11 16:04:01','2019-02-11 16:04:02','2019-02-11 16:03:14'),(253,92,176,1,114,'2019-02-11 16:04:01','2019-02-11 16:04:02','2019-02-11 16:03:55'),(254,93,177,1,113,'2019-02-12 06:35:01','2019-02-12 06:35:02','2019-02-12 06:34:15'),(255,94,125,1,115,'2019-02-12 19:48:01','2019-02-12 19:48:01','2019-02-12 19:47:03'),(256,95,95,1,115,'2019-02-12 19:48:01','2019-02-12 19:48:01','2019-02-12 19:47:38'),(257,95,96,1,115,'2019-02-12 19:48:01','2019-02-12 19:48:01','2019-02-12 19:47:38'),(258,95,97,1,115,'2019-02-12 19:48:01','2019-02-12 19:48:01','2019-02-12 19:47:38'),(259,95,98,1,115,'2019-02-12 19:48:01','2019-02-12 19:48:01','2019-02-12 19:47:38'),(260,95,99,1,115,'2019-02-12 19:48:01','2019-02-12 19:48:01','2019-02-12 19:47:38'),(261,95,100,1,115,'2019-02-12 19:48:01','2019-02-12 19:48:01','2019-02-12 19:47:38'),(262,95,101,1,115,'2019-02-12 19:48:01','2019-02-12 19:48:01','2019-02-12 19:47:38'),(263,95,102,1,115,'2019-02-12 19:48:01','2019-02-12 19:48:01','2019-02-12 19:47:38'),(264,95,103,1,115,'2019-02-12 19:48:01','2019-02-12 19:48:01','2019-02-12 19:47:38'),(265,96,105,1,115,'2019-02-12 19:49:01','2019-02-12 19:49:01','2019-02-12 19:48:05'),(266,96,106,1,115,'2019-02-12 19:49:01','2019-02-12 19:49:01','2019-02-12 19:48:05'),(267,96,108,1,115,'2019-02-12 19:49:01','2019-02-12 19:49:01','2019-02-12 19:48:05'),(268,96,109,1,115,'2019-02-12 19:49:01','2019-02-12 19:49:01','2019-02-12 19:48:05'),(269,96,110,1,115,'2019-02-12 19:49:01','2019-02-12 19:49:01','2019-02-12 19:48:05'),(270,96,111,1,115,'2019-02-12 19:49:01','2019-02-12 19:49:01','2019-02-12 19:48:05'),(271,96,112,1,115,'2019-02-12 19:49:01','2019-02-12 19:49:01','2019-02-12 19:48:05'),(272,96,113,1,115,'2019-02-12 19:49:01','2019-02-12 19:49:01','2019-02-12 19:48:05'),(273,96,114,1,115,'2019-02-12 19:49:01','2019-02-12 19:49:01','2019-02-12 19:48:05'),(274,96,107,1,115,'2019-02-12 22:26:01','2019-02-12 22:26:01','2019-02-12 22:25:07'),(275,97,122,1,116,'2019-02-13 04:10:01','2019-02-13 04:10:01','2019-02-13 04:09:38'),(276,97,184,1,116,'2019-02-13 04:11:01','2019-02-13 04:11:02','2019-02-13 04:10:02'),(277,97,185,1,116,'2019-02-13 04:11:01','2019-02-13 04:11:02','2019-02-13 04:10:13'),(278,98,167,1,118,'2019-02-15 11:09:01','2019-04-09 23:06:36','2019-02-15 11:08:04'),(279,98,168,1,118,'2019-02-15 11:10:02','2019-02-15 11:10:02','2019-02-15 11:08:10'),(280,99,191,1,118,'2019-02-15 11:29:01','2019-02-15 11:29:01','2019-02-15 11:28:30'),(281,99,357,1,118,'2019-02-15 11:29:01','2019-02-15 11:29:01','2019-02-15 11:28:30'),(282,100,138,1,118,'2019-02-15 11:30:02','2019-02-15 11:30:02','2019-02-15 11:29:57'),(283,101,187,1,120,'2019-02-16 16:00:01','2019-02-16 16:00:02','2019-02-16 15:59:02'),(284,102,293,1,120,'2019-02-16 16:00:01','2019-02-16 16:00:02','2019-02-16 15:59:22'),(285,102,295,1,120,'2019-02-16 16:00:01','2019-02-16 16:00:02','2019-02-16 15:59:22'),(286,103,190,1,120,'2019-02-16 16:00:01','2019-02-16 16:00:02','2019-02-16 15:59:38'),(287,103,191,1,120,'2019-02-16 16:00:01','2019-02-16 16:00:02','2019-02-16 15:59:39'),(288,103,195,1,120,'2019-02-16 16:00:01','2019-02-16 16:00:02','2019-02-16 15:59:39'),(289,104,238,1,122,'2019-02-22 14:18:01','2019-02-22 14:18:02','2019-02-22 14:17:19'),(290,105,145,1,123,'2019-02-27 22:12:01','2019-02-27 22:12:02','2019-02-27 22:11:28'),(291,106,238,1,125,'2019-03-05 16:07:02','2019-03-05 16:07:02','2019-03-05 16:06:03'),(292,107,238,1,126,'2019-03-05 22:53:01','2019-03-05 22:53:01','2019-03-05 22:52:20'),(293,108,341,1,128,'2019-03-06 20:05:01','2019-03-06 20:05:02','2019-03-06 20:04:45'),(294,108,342,1,128,'2019-03-06 20:05:01','2019-03-06 20:05:02','2019-03-06 20:04:45'),(295,108,343,1,128,'2019-03-06 20:05:01','2019-03-06 20:05:02','2019-03-06 20:04:45'),(296,109,238,1,128,'2019-03-06 20:05:01','2019-03-06 20:05:02','2019-03-06 20:04:54'),(297,110,330,1,128,'2019-03-06 20:06:01','2019-03-06 20:06:02','2019-03-06 20:05:06'),(298,110,333,1,128,'2019-03-06 20:06:01','2019-03-06 20:06:02','2019-03-06 20:05:06'),(299,111,307,1,128,'2019-03-06 20:06:01','2019-03-06 20:06:02','2019-03-06 20:05:23'),(300,112,176,1,128,'2019-03-06 20:06:01','2019-03-06 20:06:02','2019-03-06 20:05:38'),(301,113,190,1,137,'2019-03-27 00:44:01','2019-03-27 00:44:01','2019-03-27 00:43:45'),(302,113,357,1,137,'2019-03-27 00:44:01','2019-03-27 00:44:01','2019-03-27 00:43:45'),(303,114,233,1,139,'2019-04-02 16:17:01','2019-04-02 16:17:01','2019-04-02 16:16:20'),(304,115,309,1,141,'2019-05-09 01:57:01','2019-05-09 01:57:01','2019-05-09 01:56:07'),(305,115,310,1,141,'2019-05-09 01:57:01','2019-05-09 01:57:01','2019-05-09 01:56:07'),(306,115,311,1,141,'2019-05-09 01:57:01','2019-05-09 01:57:01','2019-05-09 01:56:07'),(307,115,312,1,141,'2019-05-09 01:57:01','2019-05-09 01:57:01','2019-05-09 01:56:07'),(308,115,313,1,141,'2019-05-09 01:57:01','2019-05-09 01:57:01','2019-05-09 01:56:07'),(309,115,314,1,141,'2019-05-09 01:57:01','2019-05-09 01:57:01','2019-05-09 01:56:07'),(310,115,315,1,141,'2019-05-09 01:57:01','2019-05-09 01:57:01','2019-05-09 01:56:07'),(311,115,316,1,141,'2019-05-09 01:57:01','2019-05-09 01:57:01','2019-05-09 01:56:07'),(312,116,302,1,141,'2019-05-09 02:00:01','2019-05-09 02:00:01','2019-05-09 01:59:26'),(313,116,304,1,141,'2019-05-09 02:00:01','2019-05-09 02:00:01','2019-05-09 01:59:26');
/*!40000 ALTER TABLE `servicio_profesional_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio_profesional_personalizado`
--

DROP TABLE IF EXISTS `servicio_profesional_personalizado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicio_profesional_personalizado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_servicio_profesional` int(11) NOT NULL,
  `nombre_negocio` varchar(45) DEFAULT NULL,
  `descripcion_detallada` text,
  `beneficios_detallado` text,
  `fecha_fundado` year(4) DEFAULT NULL,
  `numero_empleados` int(11) DEFAULT NULL,
  `website_negocio` varchar(200) DEFAULT NULL,
  `distancia_viaje` varchar(45) DEFAULT NULL,
  `viaje_preferencia` tinyint(4) DEFAULT '1',
  `logo_negocio` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL,
  `ubicacion` varchar(45) DEFAULT NULL,
  `rango_precio` varchar(45) DEFAULT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  `id_persona` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_servicio_profesional_personalizado_1_idx` (`id_servicio_profesional`),
  KEY `fk_servicio_profesional_personalizado_2_idx` (`id_persona`),
  CONSTRAINT `fk_servicio_profesional_personalizado_1` FOREIGN KEY (`id_servicio_profesional`) REFERENCES `servicio_profesional` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_servicio_profesional_personalizado_2` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio_profesional_personalizado`
--

LOCK TABLES `servicio_profesional_personalizado` WRITE;
/*!40000 ALTER TABLE `servicio_profesional_personalizado` DISABLE KEYS */;
INSERT INTO `servicio_profesional_personalizado` VALUES (1,18,'Toño Muebles, C.A.','Restauración de todo tipo de muebles y objetos de madera.','Somos muy buenos en la que hacemos.',1975,2,NULL,NULL,0,NULL,'2017-06-15 14:48:59','2017-06-15 14:48:59','Bogotá',NULL,1,31),(2,19,'AHORRO Y EFICIENCIA ENERGETICA SAS','Diseñamos e implementamos planes de ahorro de energia eléctrica, combustible y agua, ademas comercializamos tecnologías afines','aqui podra encontrar tecnpologias de ultima generacion para ahorro de energia electrica, combustible y agua',2013,3,'www.ahorrandoando.com.co',NULL,1,NULL,'2017-08-08 14:45:59','2017-08-08 14:45:59','bogota',NULL,1,34),(3,24,'Johader Guillermo Cuéllar Medina','Manejo de matemáticas, estadistica y análisis de datos','Tutorías, análisis de datos y todo lo relacionado con estadistica.',2017,1,NULL,NULL,0,NULL,'2017-08-28 02:08:48','2017-08-28 02:08:48','Bogotá','200',1,42),(4,26,'limpieza',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2017-08-28 22:40:45','2017-08-28 22:40:45',NULL,NULL,1,43),(5,39,'Procesamiento de Datos','Procesa datos de cualquier tipo de manera muy rápida, generando ganancias de tiempo, dinero y recurso humano a las empresas.','Desarrollo\nImplantación\nVelocidad',2017,3,'http://salas.org.ve','ninguna',1,NULL,'2017-12-28 02:47:10','2017-12-28 02:47:10','Plaza Gernika Trasv. 45','A convenir',1,53),(6,40,'XXXX','CCCCCC','xxxxxx',1998,13,'www.tulopones.com','200',1,NULL,'2017-12-28 02:53:07','2017-12-28 02:53:07','xxxxx','222222',1,54),(7,48,'Freelance','Soy Comunicador Gráfico Publicitario, con experiencia en diseño de piezas impresas, Digitales (Páginas web, redes sociales), impresión e instalación de vinilos adhesivos y películas de seguridad.','Diseño de piezas cómo: logotipo, catálogos, empaques, volantes, tarjetas, pendones, afiches.\n\nAdemás servicio de sublimación (mug´s, camisetas, gorras).\n\nCon conocimiento en modelado 3D (stands).',2016,1,NULL,NULL,0,NULL,'2018-06-16 13:57:30','2018-06-16 13:57:30','Calle 30 # 88 B - 153',NULL,1,64),(8,45,'Versa Publicidad','Una agencia joven, que pone el corazón para convertirse en la respuesta a las necesidades de su empresa en el área digital.\nMejorar su presencia digital significa dinero, es por eso que Versa Publicidad pone a su disposición el conocimiento y la experiencia de profesionales integrales, con el fin de brindarle soluciones que incrementen su visibilidad en Internet y redes sociales.\nEn Versa Publicidad nos apasiona la construcción y el desarrollo de marcas, además somos expertos en el manejo y la administración de las redes sociales más populares enfocándonos en la creación de contenidos de valor originales.\n\nBuscamos convertirnos en el aliado perfecto de nuestros clientes y brindamos en cada ocasión, soluciones gráficas creativas desde el plano digital, que ayuden a mejorar el posicionamiento de nuestros clientes en Internet, la comunicación con su grupo objetivo y la experiencia de servicio del cliente.\n\nVersa Publicidad nace, con el fin de ayudar a nuestros clientes a lograr cada uno de sus objetivos, poniendo a su disposición la experiencia y el profesionalismo de cada uno de nuestros colaboradores.\n\nCon mas de 10 años de experiencia en el área digital, los profesionales de Versa Publicidad han trabajando con las cuentas importantes, entre las que se encuentran grandes empresas de diferentes sectores y personalidades del entretenimiento nacional e internacional.\n\nCreemos que el conocimiento de nuestros clientes frente a su negocio, sumado a nuestro conocimiento del medio son la receta del éxito y el secreto para lograr los mejores resultados.',NULL,2017,7,'www.versapublicidad.com',NULL,0,NULL,'2018-07-24 22:37:14','2018-07-24 22:37:14','Bogotá',NULL,1,63),(9,51,'Libertad Creatividad estratégica','Desarrollo de campañas de comunicación enfocadas en los diferentes medios, para desarrollar marcas y ayudar en la generación de leeds, captura o alcance, según necesidad. Análisis de canales de venta, apoyo en diseño y material de comunicación para todas las plataformas.','Estrategia de marketing, estrategia de comunicaciones, Innovación Digital (Social Media - Web sites - SEM - SEO), Diseño - Branding, Asesoría estratégica, Planning, Asesorías universitarias, CopyWriting, producción Audiovisual, Fotógrafía modelos y producto, Packaging.',2016,10,'www.behance.net/cristianovalles','2000',1,NULL,'2018-08-09 19:04:10','2018-08-09 19:04:10','Medellín',NULL,1,70),(10,53,'Diseñador Gráfico','Ofrezco servicios de Diseño Gráfico: Diseño Web, Ilustración, Identidad Corporativa, Fotografía, Edición fotográfica, edición de audio y vídeo, realización de empaques, tarjetería, planos.',NULL,NULL,NULL,NULL,NULL,1,NULL,'2018-08-14 17:07:39','2018-08-14 17:07:39','Bogotá',NULL,1,72),(11,58,'Servicios Integrales Clean Break Sas','Empresa dedicada al ousorsing del aseo, Suministro de personal \nLavado Mantenimiento e Impermeabilizacion de Fachadas, techos y cubiertas \nPulido lavado de toda clase de pisos\nRemodelamos pintamos instalamos Drywall y Pvc\nLavado de tapetes alfombras y Cortinas','Mantener y conservar espacios Limpios ordenados \nContar con personal a su dispocicion \nGarantias sobre los servivios prestados',2016,20,'www.limpiezayaseoenbogota.com','1000',1,NULL,'2018-08-21 00:20:06','2018-08-21 00:20:06','Calle 14C # 5-37','1',1,73),(12,66,'pintor a domicilio','Pintar casas','pintor profesional',2010,0,'D7814agosto@yahoo.com',NULL,1,NULL,'2018-08-30 19:47:14','2018-08-30 19:47:14','Belen',NULL,1,78),(13,67,'pintando bien','pinto casas','pintura  profesional',2008,2,'ariasfe44@yahoo.com',NULL,1,NULL,'2018-08-30 20:11:55','2018-08-30 20:11:55','laureles',NULL,1,79),(14,68,'pintor de casas y oficinas','pintor de calidad','buen trabajo',2003,1,NULL,NULL,1,NULL,'2018-08-30 20:44:30','2018-08-30 20:44:30','andalucia',NULL,1,80),(15,69,'pintor','pintor de casas','pintor de casas',2000,1,NULL,NULL,0,NULL,'2018-08-30 21:12:22','2018-08-30 21:12:22','san javier',NULL,1,81),(16,70,'Soldador profesional','Soldador de furgones más de 40 años se experiencia','Calidad y experiencia en todo tipo de furgones',NULL,1,NULL,NULL,1,NULL,'2018-09-08 00:07:59','2018-09-08 00:07:59','La estrella','Según el trabajo',1,67),(17,71,'Casval Abogados','Blindaje Jurídico Empresarial en Derecho laboral, Derecho Comercial, marcas y patentes y Sistema de seguridad y salud en el trabajo.','Brindamos tranquilidad en la toma de decisiones a nuestros asociados',2015,6,'www.casvalabogados.com','150',1,NULL,'2018-10-10 00:06:47','2018-10-10 00:06:47','tranversal 9 No 55 - 67 ´piso 4','500- 800',1,83),(18,72,'Profesional Independiente','DISEÑADOR WEB\nSOCIAL MEDIA MANAGER\nPRODUCTOR RADIAL\nCONSULTOR DE NEGOCIOS',NULL,NULL,NULL,'jlferrer..com.ve',NULL,0,NULL,'2018-10-10 16:21:32','2018-10-10 16:21:32','Maracaibo - Venezuela',NULL,1,84),(19,73,'AREA DE SEGUROS','Le brindamos a nuestros clientes un completo portafolio de servicios que incluye asesoría en suscripción de pólizas Familiares y Colectivas, para su vehículo, residencia y bienes personales.','Brindamos un análisis técnico de las diferentes alternativas que brindan las aseguradoras en el país.',1999,1,'https://areadeseguros.blogspot.com/',NULL,0,NULL,'2018-11-05 16:25:33','2018-11-05 16:25:33','Medellín','Gratuita',1,87),(20,76,'JARDINES CARLOS JAIMES','Cuidado y mantenimiento de plantas',NULL,1980,2,NULL,NULL,0,NULL,'2019-01-15 15:58:28','2019-01-15 15:58:28','Medellin',NULL,1,93),(21,76,'JARDINES CARLOS JAIMES','Cuidado y mantenimiento de plantas',NULL,1980,2,NULL,NULL,0,NULL,'2019-01-15 15:58:29','2019-01-15 15:58:29','Medellin',NULL,1,93),(22,77,'Marketing and dreams','Asesorías en temas administrativos, planes de negocio, investigación de mercados, planes de mercadeo, evaluación de proyectos, elaboración de proyectos','Alcanzar los objetivos y maximización de los recursos de la organización',2016,2,NULL,NULL,1,NULL,'2019-01-16 20:22:45','2019-01-16 20:22:45','Pereira',NULL,1,94),(23,79,'Adrian Rodriguez','Atendemos las necesidades de personas en sus proyectos personales como freelance o para la estructuración de proyectos productivos.\nTambién atendemos las necesidades de empresarios que no cuentan con un equipo interno en mejoramiento de procesos o desarrollo de nuevos proyectos en sus compañías:\n\nAtiendo necesidades relacionadas con:\n\n-Estudios de prefactibiidad de proyectos, modelamiento de negocios\n-Acompañamiento en montaje y operación de empresas\n-Mejoramiento de procesos','Diseño de una propuesta de valor de marca\nIdentificación de oportunidades de negocio\nOptimización de costos en tu operación',2004,2,'https://www.facebook.com/arodrigueznegocios/',NULL,1,NULL,'2019-01-24 15:24:49','2019-01-24 15:24:49','Medellín','1000-60000',1,97),(24,80,'C.Rodriguez Su pintor','Hacemos todo lo relacionado con remodelaciones y trabajos de obra blanca.\n\n-Pintura para interiores\n-Estucos y yesos decorativos\n-Instalación de drywall\n-Aplicación de esmaltes, lacas, poliuretanos\n-Aplicación de pinturas industriales para plantas de alimentos','Más de 40 años de experiencia certificada en el ramo\nSolo pinturas y materiales de primera calidad, libres de metales pesados, ecológicos\nPersonal cualificado',2018,5,'http://www.empresadepintura.info',NULL,0,NULL,'2019-01-24 15:33:23','2019-01-24 15:33:23',NULL,NULL,1,97),(25,85,'HSEQ & FACILITIES','Consultoría para su empresa y/o unidad residencial en la implementación y documentación del sistema de gestión de seguridad y salud en el trabajo bajo la normatividad vigente del Decreto 1072 del 2015 y de los estandares minimos de la Resolucion 1111 del 2017.','*Diseño e implementación del SGSST en empresas.\n*Diseño e implementación del SGSST en unidades residenciales y propiedad horizontal.\n*Asesoria y acompañamiento presencial y/o virtual al SGSST.\n*Capacitaciones en SGSST.\n*Asesoria en facilities y adecuación de espacios de trabajo.\n*Programas de vigilancia epidemiológica  - PVE.\n*Asistencía técnica para las renovaciones y modificaciones\n*Asesoria en negociación y gestión de la subcontratación.',2018,NULL,'https://hseqocupacional.wixsite.com/misitio',NULL,0,NULL,'2019-02-07 22:06:18','2019-02-07 22:06:18','Bogota',NULL,1,107),(26,86,'Sentecol S.A.S','Prestamos servicios de telefonía ip, cdr, crm, software de call center, desarrollo de aplicaciones móviles y aplicaciónes web.','Automatizados los procesos en las empresas clientes, facilitamos las tareas a realizar mediante sistemas informáticos.',2010,3,'sentecol.com','700 km',1,NULL,'2019-02-07 22:46:31','2019-02-07 22:46:31','Carrera 49B # 76 - 133 Of. 4','130.000',1,108),(27,87,'Chalet del gato','En una casa de construcción tipo chalet, encontraras un hotel felino de ensueño, construido para resguardar a los mimados de la casa en un lugar tranquilo, exclusivo y seguro.\n\nEl único ruido que tendrán nuestros huéspedes felinos, es el de los pájaros, los árboles, la brisa y el riachuelo vecino que separa el hotel del bosque.\n\nTodo el hotel, se encuentra totalmente cercado para evitar cualquier escape o peligro para nuestros huéspedes, las habitaciones individuales permiten la acomodación múltiple en caso de tener varios gatos en casa, nuestro hotel cuenta con  espacios especialmente pensados para tus gatos y salón de juegos.','*El hotel ha sido diseñado como un lugar ideal para felinos.\n\n*Aseguramos a nuestros huéspedes espacios seguros, bonitos, limpios y agradables.\n\n*Lo que hace único a nuestro hotel felino es encontrarse en medio del campo, lejos del estrés y del ruido de la ciudad y a la vez a quince minutos de uno de los barrios más centrales de la ciudad (Chico).\n\n*Nuestros huéspedes son igual de importantes para nosotros como para sus familias.\n\n*El hotel cuenta con un equipo comprometido, amante de los felinos y con experiencia.\n\n*Tenemos convenios con veterinarios y otros servicios adicionales para el bienestar de nuestros huéspedes.\n\n \n\nSabemos que cada gatonalidad es diferente y por eso nos adaptamos a ellos.\n\n*Contamos con cuidados especiales, uso exclusivo de la sala de juegos o de la carpa del jardín por algunas horas.',2013,3,NULL,'10',1,NULL,'2019-02-11 11:58:03','2019-02-11 11:58:03','Km 5 via la Calera',NULL,1,111),(28,88,'Daniel Alvarez - Diseñador Independiente.','Soy tecnólogo en diseño para la comunicación gráfica, tengo conocimientos en los programas de diseño como photoshop, illustrator, indesing, adobe animate, lightroom, camera raw.\nEstoy capacitado para la creación y diseño de marca, cuento con fortalezas para la planeación y el desarrollo de diferentes campañas publicitarias con sus respectivas piezas. \nEstoy capacitado para llevar a cabo la realización de tomas fotográficas, junto con su proceso de revelado y retoque digital, logrando así realizar fotomontajes de excelente calidad para aplicarlas en diferentes proyectos tanto comerciales como sociales.',NULL,NULL,NULL,NULL,NULL,0,NULL,'2019-02-11 12:56:44','2019-02-11 12:56:44',NULL,NULL,1,112),(29,89,'TRIBUCONT Solución Tributaria y Contable','Somos un servicio outsorcing de Asesoría Contable y Tributaria en la ciudad de Medellín, cuyo fin es facilitar y guiar las labores contables de las pequeñas y medianas empresas, actuando con honestidad, responsabilidad y confidencialidad como valores fundamentales.',NULL,2018,NULL,'https://tribucont.jimdosite.com',NULL,0,NULL,'2019-02-12 06:37:05','2019-02-12 06:37:05',NULL,NULL,1,113),(30,94,NULL,NULL,'40 años de experiencia en el campo de la construcción, trabajos garantizados, excelente calidad, estético y a buen precio.',NULL,NULL,NULL,NULL,1,NULL,'2019-02-12 19:50:18','2019-02-12 19:50:18','Domicilio','A convenir',1,115),(31,97,'Habilidades para la Vida','Formaciones especializadas en habilidades blandas, gerencia estragica y emprendimiento.','Apoyo en formación a PYMES, ayudando así con el desarrollo del país',2018,3,'Www.vickyduenas.com','Sin restricción',1,NULL,'2019-02-13 04:13:42','2019-02-13 04:13:42','Bogota, Colombia','$100000-$1000000',1,116),(32,98,'prueba','prueba','prueba',2005,1,'prueba.com','600',1,NULL,'2019-02-15 11:09:01','2019-02-15 11:09:01','prueba','100',1,118),(33,100,'pruebis','pruebis','pruebis',2005,1,'www.pruebis.com',NULL,0,NULL,'2019-02-15 11:30:21','2019-02-15 11:30:21','prubis',NULL,1,118),(34,99,'probon','probon',NULL,NULL,NULL,NULL,NULL,0,NULL,'2019-02-15 11:35:12','2019-02-15 11:35:12',NULL,NULL,1,118),(35,105,'Delta Servicios SAS','realizamos diferentes tipos de servicios como: \nFumigacion y control de plagas urbanas.\nLimpieza y desinfección de tanques de agua potable.\nMantenimiento de extintores de todo tipo.\nCapacitaciones de Manipulación de Alimentos.\nDiseño, suministro, instalación y mantenimiento de Sistemas Contra Incendio (detección y extinción).\nSuministros como: Camillas, Botiquines varios tipos, Señalizaciones, Cintas Antideslizantes, Conos Viales, Kits de Brigadistas.\nTodos nuestros servicios y suministros son requeridos en todo tipo de establecimientos y son de caracter obligatorio segun normas vigentes. tenemos autorización de Secretaria de Salud. damos garantia en nuestros productos y servicios. Nuestra sede principal esta en Bogota y tenemos sede y cubrimiento en Bucaramanga y su área metropolitana.','experiencia en el sector de 20 años, manejamos productos que cumplen con las exigencias actuales del mercado, contamos con personal capacitado y certificado por el sena, contamos con clientes de hace 20 años, en nuestra portafolio de servicio podrá encontrar varias soluciones a las necesidades de su negocio. contratando varios servicios con nosotros podra obtener descuentos.',2012,4,'@deltaservicioscol (instagram)','50 km',1,NULL,'2019-02-27 22:25:59','2019-02-27 22:25:59','Bogota y Giron Santander','a convenir',1,123),(36,106,'Diseñador Gráfico freelancer','ofrecer orientación de imagen, realización de piezas gráficas, montajes fotográficos, Diseño editorial,  tarjetas de presentación para cada entidad o persona, maquetación de diseño para web y IU UX',NULL,2015,0,'https://jdleonex.wixsite.com/jdisenographic',NULL,1,NULL,'2019-03-05 16:10:08','2019-03-05 16:10:08',NULL,'400.000 a 1.000.000',1,125),(37,107,'Grafik CG','Somos un estudio de diseño gráfico especializado en el desarrollo de marcas, imagen corporativa, diseño de empaques y redes sociales','Acompañamiento especializado en cada uno de los servicios ofrecidos',2016,5,'www.grafik360.com',NULL,0,NULL,'2019-03-05 22:55:23','2019-03-05 22:55:23','Cali - Valle del cauca',NULL,1,126),(38,108,'Morphic Agency','Transformamos ideas llevando a un nuevo nivel tus proyectos.','Servicios de calidad, acompañamiento y asesoramiento. \nApoyo a emprendimientos y proyectos.\nAjustamos nuestros servicios a su presupuesto.\nOfrecemos una experiencia.',2015,9,'www.morphicagency.com','1.000',1,NULL,'2019-03-06 20:08:32','2019-03-06 20:08:32','Chia',NULL,1,128),(39,113,'mi negocio',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2019-03-27 00:45:11','2019-03-27 00:45:11',NULL,NULL,1,137),(40,114,'INGENIERIA, SERVICIOS Y ASESORIAS MR','En la realización de proyectos y mantenimiento industrial, así como en las construcciones se requieren un gran número de actividades de diversas especialidades que implican un alto grado de coordinación con la empresa o constructora con el fin de cumplir los objetivos en tiempo, calidad y alcance.\n\nCon esto en mente, cuento con servicios de asesoría, diseño, ejecución e interventoría en instalaciones, mantenimiento y proyectos para su obra o empresa, el portafolio de servicios incluye:\n\n\n-	Asesoría en programas de mantenimiento preventivo y predictivo (creación y seguimiento y capacitación del personal)\n-	Asesoría en gestión de proyectos\n-	Instalaciones Mecánicas		- Instalaciones Eléctricas.\n-	Redes Hidráulicas.			- Redes de Vapor\n-	Generadores eléctricos		- Redes de Aire Comprimido\n-	Estructuras Metálicas			- Capacitación de su personal\n-	Carpintería metálica			- Ventilación Mecánica\n-	Aire Acondicionado\n-	Remodelación de espacios comunes, interiores y oficinas.\n-	Ductos de ventilación y desfogue.\n\n\nEn todos los servicios con más de 15 años de experiencia en la creación de programas de mantenimiento preventivo y predictivo, así como proyectos industriales que involucran obras civiles, redes y circuitos eléctricos, instalaciones mecánicas, instalaciones hidráulicas, de vapor, aire comprimido.\n\n\nAsesorías en mantenimiento y pruebas a motores eléctricos de media y baja tensión, generadores eléctricos, instalación y mantenimiento de equipos de aire acondicionado, ventilación, refrigeración y congelación, control de calidad del aire, definición de presupuestos y planes de mantenimiento y proyectos, cumpliendo con la gestión ambiental y disposición adecuada de residuos sólidos, especiales y peligrosos, así como el dimensionamiento y selección e instalación de equipos para mejoramiento de planta y mantenimiento de sistemas eléctricos.',NULL,2018,NULL,NULL,NULL,0,NULL,'2019-04-02 16:17:55','2019-04-02 16:17:55','Bogotá D.C.',NULL,1,139);
/*!40000 ALTER TABLE `servicio_profesional_personalizado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud_servicio`
--

DROP TABLE IF EXISTS `solicitud_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solicitud_servicio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpersona` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `numpropuestas` int(11) DEFAULT '0',
  `mailtime` datetime DEFAULT NULL,
  `reactivado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_solicitud_servicio_1_idx` (`idpersona`),
  CONSTRAINT `fk_solicitud_servicio_1` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud_servicio`
--

LOCK TABLES `solicitud_servicio` WRITE;
/*!40000 ALTER TABLE `solicitud_servicio` DISABLE KEYS */;
INSERT INTO `solicitud_servicio` VALUES (10,30,'2017-06-15 14:12:02','2017-06-15 14:13:04',127,1,'2018-03-31 19:53:30',NULL),(11,30,'2017-06-15 18:00:01','2017-06-15 18:00:11',127,1,'2018-03-31 19:53:30',NULL),(12,30,'2017-06-20 22:42:31','2017-06-20 22:43:08',127,1,'2018-03-31 19:53:30',NULL),(13,30,'2017-06-21 04:19:49','2017-06-21 04:20:05',127,1,'2018-03-31 19:53:30',NULL),(14,36,'2017-08-18 20:26:34','2017-08-18 23:32:05',375,0,'2018-03-31 19:53:30',NULL),(15,38,'2017-08-23 15:55:55','2017-08-23 23:02:09',174,0,'2018-03-31 19:53:30',NULL),(16,38,'2017-08-23 15:57:29','2017-08-23 23:02:11',174,0,'2018-03-31 19:53:30',NULL),(17,44,'2017-08-28 21:50:43','2017-08-28 21:51:03',157,0,'2018-03-31 19:53:30',NULL),(18,45,'2017-08-29 17:17:28','2017-08-29 23:57:12',174,1,'2018-03-31 19:53:30',NULL),(19,45,'2017-08-29 22:21:51','2017-08-29 23:57:13',174,0,'2018-03-31 19:53:30',NULL),(20,45,'2017-08-29 22:22:57','2017-09-22 13:47:10',157,0,'2018-03-31 19:53:30','2017-09-22 12:45:13'),(21,45,'2017-09-01 14:09:24','2017-09-01 17:03:08',243,0,'2018-03-31 19:53:30',NULL),(22,45,'2017-09-22 12:49:54','2017-12-07 00:02:23',174,0,'2018-03-31 19:53:30','2017-12-06 20:47:21'),(23,48,'2017-11-12 13:42:28','2017-11-12 15:29:06',394,0,'2018-03-31 19:53:30',NULL),(24,48,'2017-11-12 13:43:05','2017-11-12 15:29:06',394,0,'2018-03-31 19:53:30',NULL),(25,50,'2017-11-22 18:51:08','2017-11-24 02:02:08',179,1,'2018-03-31 19:53:30',NULL),(26,52,'2017-12-08 18:54:16','2017-12-08 23:30:11',174,0,'2018-03-31 19:53:30',NULL),(27,52,'2017-12-08 18:59:14','2017-12-08 23:30:14',174,0,'2018-03-31 19:53:30',NULL),(28,55,'2017-12-28 02:57:37','2017-12-28 02:58:09',228,1,'2018-03-31 19:53:30',NULL),(29,56,'2018-01-15 14:40:49','2018-01-16 01:40:06',118,0,'2018-03-31 19:56:29',NULL),(30,50,'2018-04-02 14:03:40','2018-04-02 14:04:02',174,1,'2018-04-02 14:04:02',NULL),(31,82,'2018-08-30 22:38:39','2018-08-30 22:39:02',153,0,'2018-08-30 22:39:02',NULL),(32,82,'2018-08-30 22:39:24','2018-08-31 02:46:05',153,1,'2018-08-31 02:46:05',NULL),(33,45,'2019-01-15 16:06:43','2019-01-15 16:07:02',174,0,'2019-01-15 16:07:02',NULL),(34,45,'2019-01-15 16:08:15','2019-02-06 13:17:01',144,0,'2019-02-06 13:17:01','2019-02-06 13:16:52'),(35,96,'2019-01-24 14:36:24','2019-01-24 14:37:01',144,1,'2019-01-24 14:37:01',NULL),(36,45,'2019-02-06 13:31:40','2019-02-06 13:31:40',275,0,NULL,NULL),(37,25,'2019-02-14 20:42:42','2019-02-14 20:42:42',127,0,NULL,NULL),(38,25,'2019-02-14 20:43:50','2019-02-14 20:43:50',118,0,NULL,NULL),(39,25,'2019-02-14 20:44:13','2019-02-14 20:44:13',118,0,NULL,NULL),(40,119,'2019-02-15 12:32:31','2019-02-15 12:32:31',118,0,NULL,NULL),(41,119,'2019-02-15 12:32:52','2019-02-15 12:33:02',189,0,'2019-02-15 12:33:02',NULL),(42,119,'2019-02-15 12:49:09','2019-02-15 12:50:02',189,1,'2019-02-15 12:50:02',NULL),(43,132,'2019-03-14 17:14:37','2019-03-14 17:14:37',189,0,NULL,NULL),(44,133,'2019-03-14 17:46:39','2019-03-14 17:46:39',365,0,NULL,NULL),(45,133,'2019-03-14 17:48:17','2019-03-14 17:48:17',157,0,NULL,NULL),(46,138,'2019-03-27 00:48:00','2019-03-27 00:48:00',189,0,NULL,NULL),(47,140,'2019-04-22 21:55:01','2019-04-22 21:55:01',123,0,NULL,NULL),(48,140,'2019-04-22 21:55:54','2019-04-22 21:55:54',160,0,NULL,NULL);
/*!40000 ALTER TABLE `solicitud_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud_servicio_detalle`
--

DROP TABLE IF EXISTS `solicitud_servicio_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solicitud_servicio_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsolicitud` int(11) NOT NULL,
  `idservicio` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_solicitud_servicio_detalle_1_idx` (`idsolicitud`),
  KEY `fk_solicitud_servicio_detalle_2_idx` (`idservicio`),
  CONSTRAINT `fk_solicitud_servicio_detalle_1` FOREIGN KEY (`idservicio`) REFERENCES `servicio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_solicitud_servicio_detalle_2` FOREIGN KEY (`idsolicitud`) REFERENCES `solicitud_servicio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud_servicio_detalle`
--

LOCK TABLES `solicitud_servicio_detalle` WRITE;
/*!40000 ALTER TABLE `solicitud_servicio_detalle` DISABLE KEYS */;
INSERT INTO `solicitud_servicio_detalle` VALUES (53,10,131),(54,10,127),(55,11,131),(56,11,127),(57,12,131),(58,12,127),(59,13,131),(60,13,127),(61,14,377),(62,14,375),(63,15,175),(64,15,174),(65,16,175),(66,16,174),(67,17,393),(68,17,157),(69,18,176),(70,18,258),(71,18,174),(72,19,176),(73,19,174),(74,20,391),(75,20,157),(76,21,244),(77,21,245),(78,21,246),(79,21,247),(80,21,243),(81,22,175),(82,22,176),(83,22,254),(84,22,255),(85,22,256),(86,22,257),(87,22,258),(88,22,259),(89,22,260),(90,22,174),(91,23,395),(92,23,394),(93,24,395),(94,24,394),(95,25,180),(96,25,179),(97,26,175),(98,26,174),(99,27,175),(100,27,174),(101,28,234),(102,28,228),(103,29,122),(104,29,118),(105,30,176),(106,30,257),(107,30,174),(108,31,154),(109,31,153),(110,32,155),(111,32,153),(112,33,176),(113,33,174),(114,34,146),(115,34,144),(116,35,146),(117,35,144),(118,36,276),(119,36,278),(120,36,275),(121,37,131),(122,37,127),(123,38,185),(124,38,118),(125,39,120),(126,39,118),(127,40,188),(128,40,118),(129,41,357),(130,41,189),(131,42,190),(132,42,357),(133,42,189),(134,43,190),(135,43,189),(136,44,373),(137,44,374),(138,44,365),(139,45,393),(140,45,157),(141,46,190),(142,46,357),(143,46,189),(144,47,124),(145,47,123),(146,48,162),(147,48,160);
/*!40000 ALTER TABLE `solicitud_servicio_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud_servicio_personalizado`
--

DROP TABLE IF EXISTS `solicitud_servicio_personalizado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solicitud_servicio_personalizado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_solicitud_servicio` int(11) NOT NULL,
  `rango_edad` varchar(45) DEFAULT NULL,
  `tiempo_experiencia` varchar(45) DEFAULT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `rango_precio` varchar(45) DEFAULT NULL,
  `ubicacion` varchar(45) DEFAULT NULL,
  `dato_extra` text,
  `imagen` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_solicitud_servicio_personalizado_1_idx` (`id_solicitud_servicio`),
  CONSTRAINT `fk_solicitud_servicio_personalizado_1` FOREIGN KEY (`id_solicitud_servicio`) REFERENCES `solicitud_servicio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud_servicio_personalizado`
--

LOCK TABLES `solicitud_servicio_personalizado` WRITE;
/*!40000 ALTER TABLE `solicitud_servicio_personalizado` DISABLE KEYS */;
INSERT INTO `solicitud_servicio_personalizado` VALUES (1,17,'33-40 años','1','f','100 - 200',NULL,NULL,NULL,'2017-08-28 22:06:17','2017-08-28 22:06:17',1),(2,21,'21-25 años','2','f','20 - 100','calle 9 no 32- 23','prueba 1',NULL,'2017-09-01 14:10:24','2017-09-01 14:10:24',1),(3,20,'21-25 años','5','f','20 - 100','calle nueva','prueba 5',NULL,'2017-09-01 14:11:26','2017-09-01 14:11:26',1),(4,24,'21-25 años',NULL,'f','20 - 100','Sabaneta',NULL,NULL,'2017-11-15 11:10:28','2017-11-15 11:10:28',1),(5,28,'33-40 años','2','m','500 - 700','Paldermo, bogota','xxxxxxx',NULL,'2017-12-28 02:58:41','2017-12-28 02:58:41',1),(6,37,'17-20 años','2','f','20 - 100',NULL,NULL,NULL,'2019-02-14 20:43:20','2019-02-14 20:43:20',1),(7,41,'17-20 años','1','f','20 - 100','1','1',NULL,'2019-02-15 12:48:30','2019-02-15 12:48:30',1),(8,44,NULL,NULL,NULL,NULL,'Manizales',NULL,NULL,'2019-03-14 17:47:49','2019-03-14 17:47:49',1),(9,46,'21-25 años','4','f','20 - 100','4','}¿hh',NULL,'2019-03-27 00:48:28','2019-03-27 00:48:28',1);
/*!40000 ALTER TABLE `solicitud_servicio_personalizado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_identificacion`
--

DROP TABLE IF EXISTS `tipo_identificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_identificacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_identificacion`
--

LOCK TABLES `tipo_identificacion` WRITE;
/*!40000 ALTER TABLE `tipo_identificacion` DISABLE KEYS */;
INSERT INTO `tipo_identificacion` VALUES (1,'Cédula de ciudadanía'),(2,'Registro civil de nacimiento'),(3,'Tarjeta de identidad'),(4,'Certificado Registraduría sin identificación'),(5,'Tarjeta de extranjería'),(6,'Cédula de extranjería'),(7,'Pasaporte'),(8,'Carné Diplomático'),(9,'Nit');
/*!40000 ALTER TABLE `tipo_identificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaccion`
--

DROP TABLE IF EXISTS `transaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaccion` (
  `idtransaccion` int(11) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) NOT NULL,
  `idplan` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `formapago` int(11) DEFAULT NULL,
  `referencia` varchar(45) NOT NULL,
  PRIMARY KEY (`idtransaccion`),
  KEY `index2` (`referencia`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaccion`
--

LOCK TABLES `transaccion` WRITE;
/*!40000 ALTER TABLE `transaccion` DISABLE KEYS */;
INSERT INTO `transaccion` VALUES (10,58,4,1,'2018-03-13 16:41:55','2018-03-13 16:41:55',2,'5aa7ff532e64e'),(11,58,4,1,'2018-03-13 23:05:15','2018-03-13 23:05:15',2,'5aa8592b5966f'),(12,58,3,2,'2018-03-14 15:00:49','2018-03-14 15:11:19',2,'5aa9392182ab0'),(13,58,1,3,'2018-03-14 16:27:15','2018-03-14 16:32:55',2,'5aa94d6384eb5'),(14,58,2,1,'2018-03-16 21:08:08','2018-03-16 21:08:08',2,'5aac32388b852'),(15,51,2,1,'2018-04-06 13:39:32','2018-04-06 13:39:32',2,'5ac7789402024'),(16,76,4,1,'2018-08-28 16:03:25','2018-08-28 16:03:25',2,'5b85724dec747'),(17,67,1,0,'2018-09-07 22:01:46','2018-09-11 22:23:09',2,'5b92f54a9fd11'),(18,67,1,1,'2018-09-07 22:13:51','2018-09-07 22:13:51',2,'5b92f81feefcb'),(19,67,1,1,'2018-09-07 22:17:37','2018-09-07 22:17:37',2,'5b92f9013c633'),(20,93,2,1,'2019-01-24 15:17:49','2019-01-24 15:17:49',2,'5c49d71d4f10e'),(21,93,1,0,'2019-01-25 14:55:16','2019-01-25 14:59:57',2,'5c4b2354e80a7'),(22,93,1,0,'2019-02-06 13:50:16','2019-02-06 13:52:37',2,'5c5ae6182be39'),(23,118,1,0,'2019-02-15 12:18:47','2019-02-15 12:22:59',2,'5c66ae270df64'),(24,130,2,1,'2019-03-10 03:15:39','2019-03-10 03:15:39',2,'5c84815bcbd1f');
/*!40000 ALTER TABLE `transaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `activation_token` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `activo` int(11) DEFAULT NULL,
  `new_password` int(11) DEFAULT NULL,
  `fullpassword` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(50) DEFAULT NULL,
  `provider_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin@tumecontratas.com','$2y$10$yoDP1hUP9KMNtGgmvGUzxedsa8fcPZJs5kGO5qIk3rbV.UMjhphU.','ib8lHiQ8yo4EaDw3oRKydn1DZAxqq9edrdsq3jrqTQf8rx6zvHGun9hZkPH9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'g.a.rondon1111@gmail.com','$2y$10$kgW7xnoisvNT0Gi31WrSPO/IfF0gaann4IZyeo3y3/z02pT8zxvBq',NULL,'2017-06-04 23:03:41','2017-06-04 23:03:41','593491cdd4f05',0,0,'123456',NULL,NULL),(26,'g.a.rondon1@gmail.com','$2y$10$0QDus639svDPAsEfhaXyQO2X92XLRajQowyofAbjp1MnLax7EKWjC',NULL,'2017-06-10 12:43:44','2017-06-10 12:43:44','593be980190d4',0,0,'123456',NULL,NULL),(27,'g.a.rondon11@gmail.com','$2y$10$tWP75FOFUKISj4J4fjafPexoJ46zFgbZ4fRb7JHCxwm2v1HG.X2RS','WiG9aBLuTJXLP1nrKeObZ8tiuJH4tvwZPaxUyumsO8hvvHSwPJUa5IxiaEWw','2017-06-10 19:41:47','2017-06-10 19:41:47','593c4b7bd5fd9',0,0,'123456',NULL,NULL),(28,'demo@demo.com','$2y$10$bJoFgf7ZVH0gxtdo2N3s8.cKu3Oa0RgaCLvLB3O2zPBbssTY075wW',NULL,'2017-06-10 22:03:13','2017-06-10 22:03:13','593c6ca199ac7',0,0,'12345678',NULL,NULL),(29,'g.a.rondonee@gmail.com','$2y$10$G317f0l2syYMNrTOTGPMyeFqcz//wftmiB60cnGBF82.o/YvBvFHe','qE7TpC1yHzDskqbHR2K17Q3EoNmGk5RKds8wvuRWWjlBR7wfMZG61zn6bbMK','2017-06-13 01:34:39','2017-06-13 01:34:39','593f412f76a21',0,0,'123456',NULL,NULL),(30,'dsolesp@gmail.com','$2y$10$4Td10ywy0IxeYYsnrgVxVuwcvaqf58AFsl6G8VjLsOckD56V112vy','FWzFb1013trm44rt2LRiqMlgnypWaJD9ac6Y1SE38GSztMEdvBt6RyMRpBQW','2017-06-14 18:59:40','2017-06-14 18:59:40','5941879c7fdda',0,0,'12345678',NULL,NULL),(31,'dsolesp@outlook.com','$2y$10$AlNckXYTUZh1kTU.WM33Qum1/j2xdIY2AW42mSJufatjYR6RXz/xi','hAYOoXlHH3a7t591d4R7u2uxDr02QKipCZcwTufNn3Yk1XdUQfrxHdypLWBV','2017-06-15 14:18:54','2017-06-15 14:18:54','5942974e27f5d',0,0,'12345678',NULL,NULL),(33,'paolowokstab@hotmail.com','$2y$10$y5d07Jg4xR/T3O0XihsTBejz1hUZjgahQlmUUtCsu1KNC8f3.m1b2',NULL,'2017-07-31 03:45:32','2017-07-31 03:45:32','597ea7dc3ebe4',0,0,'123456',NULL,NULL),(34,'dcamargo@ahorrandoando.com.co','$2y$10$PtsqWhFr8j3fhBEW9HqRb.CYEw4GFmXVX9OxiuWNxBQHusCvmdez.',NULL,'2017-08-08 14:42:36','2017-08-08 14:42:36','5989cddcc386a',0,0,'d1u2b3e4r5',NULL,NULL),(35,'katha17m@gmail.com','$2y$10$WjrKPzV66a2A5N8hDK9SyeGmmTfximi1rqb2ssLMzBItIlWK4DXCe','ycs2NKSfqi62dCnJBW6ah8jvIFYzd646x73Zyd9QFmPGdjoR7mN8InFShp2j','2017-08-14 14:45:57','2017-08-14 14:45:57','5991b7a5e4f7f',0,0,'nicolas1920',NULL,NULL),(36,'releaftre@aol.com','$2y$10$iWfHbkXXcPmhQ22wc1MLO.5eW45.8oLvPy005fhCsFa0yv/o1saDu','buLoFIHOOIsJls2pcHP2A2cQJa8CthAnYjJQj5JyC2TQRG8JEl4RWaxPD46O','2017-08-18 20:23:06','2017-08-18 20:23:06','59974caa8ad1c',0,0,'melana2004',NULL,NULL),(37,'jeffersonmonteso@gmail.com','$2y$10$04x4syBNku6A3FL85l4AnegJYrjPieyWSL0qL50SeTNQAq77MFsEG','lzDzxxspoX8TSx6Y0pCPyCJ0Xd82VI6K0vTP4D6mcOQJIqoYSfTmZHEzLbSU','2017-08-23 14:50:24','2017-08-23 14:50:24','599d963076465',0,0,'jeffer12345',NULL,NULL),(38,'abnerjr1@hotmail.com','$2y$10$48eVRa7jdiiMYc4WRV9AReBLriAv8GcuI.9LZ/sfnVuH5Qgo60p/m','SzOeKGvczWuZOlNz4FrdtXx87PVr8zbme04wImXJpyNnCKlIAHnomlO07nEw','2017-08-23 15:55:55','2017-08-23 15:55:55','599da58b666bd',0,0,'654321abn',NULL,NULL),(39,'Construccionesjjrincon@hotmail.com','$2y$10$EJP0HnvWgm7Qrbvi3xUz9O6Y4qT2A8CQUBUUrNa3x6yXDd5ncG07S',NULL,'2017-08-23 16:25:56','2017-08-23 16:25:56','599dac941c263',0,0,'maestro',NULL,NULL),(40,'cri.1995@hotmail.com','$2y$10$APDNM8ELnv.QN1vhWGxsdOn0zf2HG28CZ1qES1a0q3w4MXvcGw2FK',NULL,'2017-08-23 16:37:07','2017-08-23 16:37:07','599daf33d5295',0,0,'prom2012',NULL,NULL),(41,'milenacaceres.chica@gmail.com','$2y$10$rvCJ5dcLdbx9KCCPUW1Tde0idUPdM.QNBF0yEeHs.xWU4HJ4NidIS',NULL,'2017-08-25 23:11:21','2017-08-25 23:11:21','59a0ae9937b38',0,0,'3124258756',NULL,NULL),(42,'negocioscuellar@gmail.com','$2y$10$s.2e6MiYkumHmOcJTKvsK.U/Iv5wR0NseoV5jA1oPMAyOPH0vH7MG',NULL,'2017-08-28 02:07:10','2017-08-28 02:07:10','59a37ace73570',0,0,'Mna26e1024',NULL,NULL),(43,'ly.yate20@gmail.com','$2y$10$XYHxAR/n6cCAe57xMxdy5eRePDxOiY94A2XI3UQW.qHo5FAc4egP6',NULL,'2017-08-28 21:44:46','2017-08-28 21:44:46','59a48ece27a92',0,0,'nicolas1920',NULL,NULL),(44,'jfuruena3@gmail.com','$2y$10$uuLwYA5rUP7gAqihy43iM.cCuNXrRsVlI8VyQf.t/s9YCWTATVfL.','9gJuQBoVeyGNa93gaswKHZmel7TXy3SaIEQhlTCptF6m1oNQ3ICfqSUijKQi','2017-08-28 21:47:02','2017-08-28 21:47:02','59a48f56bc7a7',0,0,'nicolas1920',NULL,NULL),(45,'victor27111@hotmail.com','$2y$10$Fw.d8/y.mNE6QlvBXmxt4OsjgptGk2J73hFL./E3uoMkgmPrK.ghK','lXmE6qut1eWFgwlkVzCABhXDIcKSAvZsEim3pXKeFz0hINUpq8CQPB7uV9EK','2017-08-29 17:08:52','2017-08-29 17:08:52','59a59fa4a713e',0,0,'prueb1',NULL,NULL),(46,'info@redsocmarketing.com','$2y$10$j2aaJN.EJTTOUk0pXsC1m.Vd3qnBKGebHc20ec/nKU/a6602.akKG','V6Oew3s02sO9jguOOfNCJvG7Rerjgk4Xd8mXkHyQePmlHmAeqN7z28aGpj0O','2017-08-29 17:19:16','2017-08-29 17:19:16','59a5a214253c6',0,0,'R3spald0',NULL,NULL),(47,'g.a.rondon333@gmail.com','$2y$10$VrOX2OPerAvmjoNvxM8ZYOEzVGROSkLQsbBcqnWIJWDngpgoAGnru','YIBbEBPT1jUGih2xKqdkqWTUsTj1W3H5sGgwVGHOHLRNyCDKWjA4J3KiQ2sk','2017-10-08 23:00:40','2017-10-08 23:00:40','59daae18d0f73',0,0,'123456',NULL,NULL),(48,'linacvelez@hotmail.com','$2y$10$c6Ul.L1Cbnp0u23DmquN1uQh.P1HWrvCJKMt0dc7XZ/m7F7ZRitmq',NULL,'2017-11-12 13:42:28','2017-11-15 11:08:49','5a084fc42467a',1,0,'Tomas2012',NULL,NULL),(49,'g.a.rondon1112@gmail.com','$2y$10$XuOtmUpTEEw8Cs.9GC0Lk.f4tkKXwXT4xmVjVaNlJKUZBilo2sq36','dT7wULS5qxXByjKSAbTGkdfYD38Tew7aK72IG57f4J8CHLvbNoEghNs19vYY','2017-11-15 14:50:55','2017-11-15 14:51:22','5a0c544f3206c',1,0,'123456',NULL,NULL),(50,'grondon891@hotmail.com','$2y$10$LsLzyJ.a6gPNOdJ.gz8i0OPMiPq7BX5lzZgm4dMcm2Obk1/aa.Olm','CS4bL6gJfBvOo05Cjr7Z99GYJexi7pxIWuh8Kp0ACqK55AQL6gdUIN0CoMjo','2017-11-22 18:43:58','2017-11-22 18:43:58','5a15c56e5adf1',0,0,'123456',NULL,NULL),(51,'vjaimes@pagoagil.net','$2y$10$b3qyt615VN20fwZE9VncQekX5EK64kFGyyGawdOoBQwBwUR9hc.sq','aXMzABo4DpwQdYh8Q19SeVVu0vrrN0ETd9ck1gXuq0vSEfivBzTG2EGmBdQ8','2017-12-06 20:27:33','2017-12-06 20:37:38','5a2852b5278b6',1,0,'R3spald0',NULL,NULL),(52,'perodriguezl@gmail.com','$2y$10$RaDHL5HDrod9xZvFQOLk6.xEwVWmj.9mIWKQBByM1KOvl7VpH1tQe',NULL,'2017-12-08 18:54:15','2017-12-08 18:54:55','5a2adfd7c1693',1,0,'entrar12',NULL,NULL),(53,'germansalas@gmail.com','$2y$10$NXQTtfuob1VBB.vIdcEKUOnKEvYc3ZCbvgMfILJosJsn2nZUdRCj6','QLuG3KMsKJ9OWroUHgpzy2MOtf6yd89pMiZ4rztIXkhVDjP6SMHwQu56cHmY','2017-12-28 02:36:29','2017-12-28 02:38:28','5a4458ad30872',1,0,'23Sa55Ge',NULL,NULL),(54,'g_salas@hotmail.com','$2y$10$gRa9rFW51VWLz7hrhMDbCejyp4akQWvfJNvZ5euNYALjhOrXNelmK',NULL,'2017-12-28 02:52:22','2017-12-28 02:52:22','5a445c6677f7b',0,0,'23Sa55Ge',NULL,NULL),(55,'gsalas@mail.com','$2y$10$fZUlRXTl6Jbn27CGooCi5OQ3F/FqJRipN6G3Bb/sRmyLS/nQMZQae','sUNeU3ZnPQfsfLAE3WO9E40pM9JVg0PahN4xlo1Tv66BdhOutgPXiT2O21TJ','2017-12-28 02:55:02','2017-12-28 02:55:02','5a445d0608476',0,0,'23Sa55Ge',NULL,NULL),(56,'jcom129@gmail.com','$2y$10$BBLvjUw1Osdr.FY3lo4Bw.DcyH8g96AoP78QTNWrCHPFCPedzK/hO',NULL,'2018-01-15 14:40:48','2018-01-15 14:40:48','5a5cbd70f28d1',0,0,'CANADA%2013',NULL,NULL),(57,'geronimoarteaga@gmail.com','$2y$10$5PIc7S/19zokqHqs4QfO8exORBvR7XhY90vFypnzs39CrZ6n4XyLi',NULL,'2018-02-28 14:13:58','2018-02-28 14:17:44','5a96b92681edd',1,0,'pupu545.',NULL,NULL),(58,'g.a.rondon@gmail.com','$2y$10$D2uBjLz3WxwRlqH0Epi6uOj3NpeVxiIMpDpML5vNQSVQ9i0MlENZm','Dew1Is0VJhkFlhfqAUtq2p7hs1v3NpRvpUbpJRRLkQ6tFQNbSFdeZaPTcBVh','2018-03-06 19:17:00','2018-05-19 14:18:08','5b003220bd554',0,1,'123456',NULL,NULL),(59,'obrastorovargas@gmail.com','$2y$10$h9LKVpqPkv7zGhSxccRbgOVx26NhTU3.Q85VuI86dJC4FpdPwYi7e',NULL,'2018-03-12 19:29:41','2018-03-12 19:29:41','5aa6d52589f1d',0,0,'torovargas',NULL,NULL),(60,'mariale795@hotmail.com','$2y$10$zHJMUIkQEgxQRvfCoogZNeLLdXFGsk3hS5cDiSGpsV0Uvch79cSt2','52GejtbDzrPStKVc9wM71okoRG35xE3VpRJkaiTZljX78bAdr4KU4VCuAgfg','2018-04-25 01:13:33','2018-05-20 21:34:39','5b01e99982043',1,0,'17735211',NULL,NULL),(61,'tumecontratas@gmail.com','5afdaece347f4','3yBtUU1LL3cUPlAyLq2z2ckfjF7rmqCMDNmCs6XNaswrSiP9VFrxbmheOWWX','2018-05-17 16:33:18','2018-05-17 16:33:18','5afdaece35d51',0,0,NULL,'facebook','159349864911446'),(62,'mariavillalobos87@gmail.com','$2y$10$fLapoHmXqlnbgmrAce3txe3osFR1jKC0PQwuOive13Qw4ooU6Kqi2',NULL,'2018-05-20 21:54:06','2018-05-20 21:54:06','5b01ee7ee34a8',0,0,'17735272',NULL,NULL),(63,'versapublicidadcol@gmail.com','$2y$10$AYYpie4tKZuJA81xar6CZe5lrXLZpU/4HraUJq7YbcDIe1m7Hdl6a',NULL,'2018-05-25 18:54:29','2018-07-24 22:30:10','5b57a821bdb08',0,0,'versadigital2018',NULL,NULL),(64,'juliandavid.diazherrera@gmail.com','$2y$10$Nf4Ob8SayQXfXIBzpwRtn.sLtXlyhJB6QKgxRtHsGawAfu0ldVl5W',NULL,'2018-06-16 13:48:57','2018-06-16 13:48:57','5b25154988e31',0,0,'Emma290614',NULL,NULL),(65,'karla.barboza@gmail.com','$2y$10$q7gkZYgDVP/GPTEpuwucPe3haOxu7Q8HRHln1v0VcJv4g8S5tfigO','ISLnSGsE3LJWIgLO6ZjtH1uzKGoe1dTkuLPLsNhhHF5cKH1uTS5kfifcx4PN','2018-08-02 01:29:44','2018-08-02 01:29:44','5b625e8857ab3',0,0,'*tina*2503',NULL,NULL),(66,'crisstibol2006@hotmail.com','$2y$10$EBNRfJ.9Mp5xjQbxpuiLXuh.mYs6zYimXNqXw92gNLoioiBK2H6Je',NULL,'2018-08-02 03:03:49','2018-08-02 03:03:49','5b62749535ff7',0,0,'hillary',NULL,NULL),(67,'cristibol2006@outlook.es','$2y$10$aiZNpcYTvYyRuphkUzJeZ.HPV.6oxYtf1mmpkk5co7HhM/mBaqRQm','2t7XTVwyScA8pQeTbcWuknkRAlqgl6jApyvJBqlsPAZKeYg2uMKMXXqSWLT3','2018-08-06 16:11:44','2018-08-06 16:11:44','5b687340ec93c',0,0,'hillary',NULL,NULL),(68,'sentimientomuerto@hotmail.com','5b6ba3ec92152','MzUz1NJ0lJhNkZkVpGq6zzp67YZIn0fOdexZE0vhP3pfyblKt0MxZNGdvQow','2018-08-09 02:16:12','2018-08-09 02:16:12','5b6ba3ec944b0',0,0,NULL,'facebook','10156667023853054'),(69,'yeco789_7@hotmail.com','$2y$10$1m9DLobvJlgitg5H2sZwfOi5.Y5iSZYcVSOlq8jRxcZ0dae3zEHKq',NULL,'2018-08-09 15:02:17','2018-08-09 15:02:17','5b6c5779d2ce1',0,0,'mariana33',NULL,NULL),(70,'covalles30@hotmail.com','$2y$10$KggFlPP7zUvkUHuQ.GRVyeswTenbNUwffDa62RM4zLpAKUS1Xfqwq',NULL,'2018-08-09 18:55:13','2018-08-09 18:55:13','5b6c8e1135748',0,0,'Chaguala81',NULL,NULL),(71,'lichitoescobar102584@gmail.com','$2y$10$vIe0TbY46qORq51VaPHmeefBlq0DECIvqZGvCcrrMVUVOORSi4SD6',NULL,'2018-08-12 18:48:30','2018-08-12 18:48:30','5b7080fe43507',0,0,'licedescovar',NULL,NULL),(72,'danielvargasdesigner@gmail.com','$2y$10$6gsh/jVkeqHbuE6SO2MmBOtnVG3mJqZ3cKq4bxlC7quox3QeRqY4G',NULL,'2018-08-14 13:06:18','2018-08-14 13:06:18','5b72d3caa89dc',0,0,'!9d8fv4c5l109d!',NULL,NULL),(73,'cleanbreakservicios@gmail.com','$2y$10$FPJxBfdyo02npD19NZASpuIwIlrWC6Wbu8DY4WrcPJ4h/9G7IS8ou',NULL,'2018-08-21 00:07:32','2018-08-21 00:07:32','5b7b57c4b2bbf',0,0,'lalo4240',NULL,NULL),(74,'cullomesanehisy@gmail.com','$2y$10$CWAQVlrhv3ZO3b0w4mBiXuAKj3JgJsIRIeFInc93yrdnfrjhMv7Ji',NULL,'2018-08-24 20:21:37','2018-08-24 20:21:37','5b8068d1a9adb',0,0,'3008108703',NULL,NULL),(75,'luza1922@hotmail.com','5b80c730be787','1UlxrAgflP61I3BECtzNaeC3ZztdXsHO2mdyFdWOIRiRNgplwBAql3W38xXG','2018-08-25 03:04:16','2018-08-25 03:04:16','5b80c730bfb90',0,0,NULL,'facebook','10215641064513503'),(76,'estefanyisabel93@gmail.com','$2y$10$CD55ATiiCrW2uzKNBesz6uQLhR.kLL8xLdWq1PQnu3k/ieeJtnbfy','kFjBR3vR7FXVzhsNB1GozHSzpTtgMKjiTEdlxK3h9NT26XeXxTwyMaSCS4lw','2018-08-28 15:59:16','2018-08-28 15:59:16','5b857154058c8',0,0,'e23460717',NULL,NULL),(77,'enriquevillap@gmail.com','5b8764e6288d2','4dpJFU1X3Y3TmU46PyV3TRjU0ISgYJLUQI5TtauYBZH8jIXCzW3pYzvgDZGb','2018-08-30 03:30:46','2018-08-30 03:30:46','5b8764e6298e1',0,0,NULL,'facebook','10156709468237299'),(78,'D7814agosto@yahoo.com','$2y$10$h/dZV4x6AjeLVopxoqJaX.6GxxXR5mcy6WBdb8CIRNOoxo2xdQi.C','SnPCXkmMk2k9oSNfCBPLYirBA3pVsKSyPZ8CcgL57tcsdtkekB7Bj570gfT2','2018-08-30 19:42:48','2018-08-30 19:42:48','5b8848b810424',0,0,'johan1401',NULL,NULL),(79,'ariasfe44@yahoo.com','$2y$10$adGN8rZKVmaDLg7yIZKdOOjGPiESWAOBbaZt4czwv9Ee8ZU79HEmu','ALYxcfTdUySq2xVWQExXmsXrQBJtfzDVgCjmMMYeqRVTf0d1vVm6gdV5z0Ki','2018-08-30 20:07:18','2018-08-30 20:07:18','5b884e763b258',0,0,'4422-af',NULL,NULL),(80,'juanvelez370@yahoo.com','$2y$10$D9p92CPS5gpFbgSH3NOTJef54xGxpcTs2ubdciA6OHDU9to/R2dHy','oyRnHKgvSWyHbCEDo6cZgMDX89AAO2qrWXQbGbUYGPzW0YCyrAYtE5NF1PeL','2018-08-30 20:31:26','2018-08-30 20:31:26','5b88541e92b95',0,0,'jv370pinto',NULL,NULL),(81,'gomezfede8@yahoo.com','$2y$10$x4WDNMSIbrtasibqPtSgluIlh9ryfQ8M4Jfb7Ybng.ZfMp.tFoWxy','JL71UJNhoTXdIyZ25kseFMBqggDcG683OfYSK2ORFn9GOxsky2M3bOA03mBz','2018-08-30 21:03:49','2018-08-30 21:03:49','5b885bb506f03',0,0,'fego8fego',NULL,NULL),(82,'sanchpe2004@gmail.com','$2y$10$BSx.jYfC0bFSNUb/AheKxeck4/JLJsx8KxcZJFH0P9IuNaBBAouk2','wvQUngB76I7XqJ49Trp353pxuAYM1hyYYkkm4RfxAcnrCjVDNgFhQVXfdtd7','2018-08-30 22:34:23','2018-08-30 22:34:23','5b8870efbe460',0,0,'pesa2004',NULL,NULL),(83,'casval@casvalabogados.com','$2y$10$XwQEgDd7iKekKMieu45lw.2DC5J2E9X2nVFeLOEqTRlf2GZiuJJ66',NULL,'2018-10-10 00:03:08','2018-10-10 00:03:08','5bbd41bc31590',0,0,'Casval1409',NULL,NULL),(84,'jlferrerweb@gmail.com','$2y$10$2VSHog1EUs49LEVrwM6HneVCf5zKxf8TEtjyZBRcimcMGT7aJYCne',NULL,'2018-10-10 16:16:00','2018-10-10 16:16:00','5bbe25c0b608d',0,0,'Jofer0105',NULL,NULL),(85,'grumoy@hotmail.com','$2y$10$Iq0E5tzmYrhstDSiTJ0RX.2DrupTfndo0ofofA8yQMyYIZrJOw1tS',NULL,'2018-10-20 13:25:29','2018-10-20 13:25:29','5bcb2cc97d031',0,0,'ikebana1981',NULL,NULL),(86,'Vladialtahona97@gmail.com','$2y$10$Ze67.uWeKOZ6x3pAte4cFuEI/wSXm.M5jp5vOBrAIJ2FUDEyPzdWm',NULL,'2018-11-01 15:57:15','2018-11-01 15:57:15','5bdb225b105f2',0,0,'vladimir97',NULL,NULL),(87,'areadeseguros@une.net.co','$2y$10$fBtH6O.UvHhoRqc8B/H1NuuN.uvQR/Z61kMWOyC.CTNkDetm8qIgG',NULL,'2018-11-05 16:18:07','2018-11-05 16:18:07','5be06d3f2c263',0,0,'T3cHno485',NULL,NULL),(88,'sanmar_pablo@hotmail.com','$2y$10$mZ6PthLMpfMeiBEUtUC7RefLtQOhPjfaFjEzOyEgJJvpvdor8GY3W',NULL,'2018-12-21 15:55:59','2018-12-21 15:55:59','5c1d0d0fb7d90',0,0,'N4c10n41',NULL,NULL),(89,'erikabaquerodiaz@gmail.com','$2y$10$LQ6BdVu9tZMdjb7GSb0grunyWE18CLYaDJ65iFb0YjBKR/QmKNIwW',NULL,'2019-01-11 04:57:08','2019-01-11 04:57:08','5c38222484ce4',0,0,'q023892975',NULL,NULL),(90,'santigutierrez93@hotmail.com','5c39301f3a0da','7OSiUMd5EJaS6LqCyY6EdqAqIRyG9fnhcdlMMtX2NqPjhZoKOuNPnV9N5lzh','2019-01-12 00:09:03','2019-01-12 00:09:03','5c39301f3ac9d',0,0,NULL,'facebook','10156572455607787'),(91,'mariacamilaaristizabals@gmail.com','$2y$10$xlevMkmo3PbiKV9MvBDFw.oPW03E9g/CT7UT4BoPCszzVKyn8u.Ri',NULL,'2019-01-12 16:13:11','2019-01-12 16:13:46','5c3a123a1bef8',0,1,'mcasllepgn.0609',NULL,NULL),(92,'dagarzon87@gmail.com','$2y$10$8GgFsn2sBh7EnL1xbvzpLe6CXjkG0p7XjrfkB1B.w8Apr5YilsOxi',NULL,'2019-01-13 16:04:08','2019-01-13 16:04:08','5c3b61786a896',0,0,'200613',NULL,NULL),(93,'victorjaimesm2@gmail.com','$2y$10$BVhaqsVaa7u3sAU9sY9hruNi1znWfbMXfCCWeiioGffL6RhMXHgFS','5oucd3Cixtp4eO7VCKxfaEYVBBuXmUGOucqa4cY17xWzx31mmvxOJIjPHc5f','2019-01-14 23:00:40','2019-02-05 16:01:20','5c59b30b8dfe3',0,0,'1234567A',NULL,NULL),(94,'carlos.naranjov@outlook.com','$2y$10$fyqv1iOpdJtWm/ZbpVCGqOhS7kv2cGeD91.SUzIrz27HTwuy7ok.y','4t8KqGZpRCUR88pdkKdP9oFw4sXESeAYX6porfmNpj9T7y3qVEFNUAiG4iVb','2019-01-16 20:19:48','2019-01-16 20:19:48','5c3f91e4b0ba1',0,0,'Black0718*',NULL,NULL),(95,'nenamarquez1983@hotmail.com','$2y$10$aCIB6TEhEN8Rx5GKU6MPDetHp/SSoxz1m.OmrQAEGtn/o3cmzhshK','rxl9WVInKTu9ae53YHO7lNIFcKImDd0Op6KxtW7EKEJT4Z3yt5rHhto5IOG2','2019-01-22 11:48:44','2019-01-22 11:53:44','5c470448eb794',0,1,'071283',NULL,NULL),(96,'jeka0930@hotmail.com','$2y$10$slj6TxMFUQSamOgU3mQYB.viw3eiA1yV2N.8.ZG3WZCO7P7gRjrga','0BOlmBHBqQa4voEciZkOrbQ3bWd2FTBE8J9ObEb7nxvLHGJvkw0BTLGhWZMW','2019-01-24 14:29:09','2019-01-24 14:29:09','5c49cbb57eb1f',0,0,'R3spald0',NULL,NULL),(97,'adrianalvarezr@gmail.com','$2y$10$JKAEi1hWqVLZGCd9wNn7ze4HIBpMVaCNMlaWjseog9Y/ufZEqFEZW',NULL,'2019-01-24 15:18:11','2019-01-24 15:18:11','5c49d733ec51a',0,0,'Adrian810511',NULL,NULL),(98,'mariamaturan@gmail.com','$2y$10$Rk7Puixrau4wi3XRC.8RbuRTmiqSkdIBTyc1d4ZX2kxezmQw6x46K',NULL,'2019-01-25 15:56:22','2019-01-25 15:56:22','5c4b31a6a275a',0,0,'brin57095',NULL,NULL),(99,'herna.6.92@gmail.com','$2y$10$qFERVT.kq9UdyRUNiT1Q0eCseexv4QoV4grWBiNy/FvfMD517TXmq',NULL,'2019-01-25 16:46:50','2019-01-25 16:46:50','5c4b3d7a98a4f',0,0,'clavedfh',NULL,NULL),(100,'manuela.rodriguez_correa@hotmail.com','$2y$10$RsjPoqSbUrrRvsRm6kb9Nef9EG9Ubvl69nvSLhesDvYkrJhd2Qv/C',NULL,'2019-01-28 03:38:42','2019-01-28 03:38:42','5c4e7942a4a70',0,0,'Peperodriguez',NULL,NULL),(101,'mserrano@cyacomputers.com','$2y$10$kygF85tKHzBakOcr5eTARObtxc9NCX4gycNPR.K7MRBky.1kpkAJ6',NULL,'2019-01-28 18:39:25','2019-01-28 18:39:25','5c4f4c5da184f',0,0,'cyac2014',NULL,NULL),(102,'peterpannuevo@gmail.com','$2y$10$1Uqyj8XAkbV7F.hOe9FV/.Nl1wmWJ.5rg5KGNZNRDVABn2B0AQLKK',NULL,'2019-01-29 00:05:04','2019-01-29 00:05:04','5c4f98b006dbd',0,0,'Mkt697304$',NULL,NULL),(103,'artelego40@hotmail.com','$2y$10$sz/DbG1ixasN8eJSkCK/duP9alPprzjPvGlJLRwFjSij1IyYlHTRm',NULL,'2019-01-30 14:22:12','2019-01-30 14:22:12','5c51b314bdf95',0,0,'nicolasesteban1234',NULL,NULL),(104,'carlos463981@gmail.com','$2y$10$sTidw4UbKgCEzIYc7JwFH.UxFH1rf13ZGixe0NDPl6lB4FAcyw9xm',NULL,'2019-02-01 14:03:39','2019-02-01 14:03:39','5c5451bbb962f',0,0,'mariam05',NULL,NULL),(105,'jeimynataliap@hotmail.com','$2y$10$IOZ2qnu4y1WptpZISiSMWubltzWWkeoHHUSd2TzRki1JMtveeBsh2',NULL,'2019-02-05 16:44:38','2019-02-05 16:44:38','5c59bd76df699',0,0,'karito2003',NULL,NULL),(106,'froilan.rozo@gmail.com','$2y$10$k2B0nQmRNHzbWunnKAODjOwcDRLIqmTBTm5h77Qgpg4Z5TvZZDXa6',NULL,'2019-02-06 13:27:24','2019-02-06 13:27:24','5c5ae0bc2b83f',0,0,'Topo0110392',NULL,NULL),(107,'hseqocupacional@gmail.com','$2y$10$HU7zDcrJOeXZzVQK76mL.uLpU8YDyOhTmhor9vd2Fd526X77rcF2K',NULL,'2019-02-07 21:54:56','2019-02-07 21:54:56','5c5ca9308a345',0,0,'Topo0110392',NULL,NULL),(108,'johandds35@gmail.com','$2y$10$brG1XXqKtyBvxLnutJ/0WOZ6TNZg7ISWoSPwIPZ2E7BeP3EtQxDCK',NULL,'2019-02-07 22:39:18','2019-02-07 22:39:18','5c5cb3969f193',0,0,'j0h4ndd5',NULL,NULL),(109,'prueprueba@prueba.comba','$2y$10$LaJNJ8QZbcU9KCfJNXrBvOtOFy.QSgWpKgkf1.idDfYs1kl1JFV4C',NULL,'2019-02-08 12:50:27','2019-02-08 12:50:27','5c5d7b137ebe8',0,0,'prueba@prueba.com',NULL,NULL),(110,'danielamlluna28@gmail.com','$2y$10$I5gnbsgEgpm8dNyLi1SH9ezBYNFfk9pj/gQA5.4O22x4btQtJEV4G',NULL,'2019-02-08 16:25:40','2019-02-08 16:25:40','5c5dad8468ae6',0,0,'fausto117',NULL,NULL),(111,'chaletdelgato@gmail.com','$2y$10$06OKYiAe85moZ4.t05tNnuHLNmxUmFwDj74otBQWZewzptr9G3iz2',NULL,'2019-02-10 14:24:56','2019-02-10 14:24:56','5c603438ce044',0,0,'Chalet2019',NULL,NULL),(112,'disenador.grafico1989@gmail.com','$2y$10$R71vD1dSeTnjtnw/SSJCL.EJjiZFceiyx.daU/T7g5cUuvlwQ8sM2',NULL,'2019-02-11 12:14:56','2019-02-11 12:14:56','5c6167403318a',0,0,'tecnologo2018',NULL,NULL),(113,'tribucontmedellin@gmail.com','$2y$10$ZEGVQeFnhGgsI8ZzgXqxvOaGxM7cSYUilhPu/sUhixVDQTXzkq4MK','kqFZXaloDrmCIcnPybgp598zEOGkgjVHTmgmEuSkZDPnUmry622HC7NatEF2','2019-02-11 15:23:22','2019-02-11 15:23:22','5c61936ab618c',0,0,'bloody.wolf',NULL,NULL),(114,'alejoparamo1@gmail.com','$2y$10$z99LMOQvINVvD.vbTn8CpO2e9FpfewmyB67Pv0uuXWAZ5YgWDQ3lW',NULL,'2019-02-11 15:58:20','2019-02-11 15:58:20','5c619b9c94056',0,0,'akakak654',NULL,NULL),(115,'marianabustamante.24@gmail.com','$2y$10$IVPhsTGSwQ.68fcV2U0dYuGcfSFN5U8ujIlymxsHEZBm5/4pvTiqa','Mbl1zAc2iOBVby777THhAAunIM7sZYE22Dik6wzx4GfFirAFE4je4IyvxxcY','2019-02-12 19:44:51','2019-02-12 19:44:51','5c6322333ec7b',0,0,'koffee00',NULL,NULL),(116,'carlos.a.perez.g@gmail.com','$2y$10$yj1h86JjpySaTzKK/Xq13.GbvBPFGU9s/XcU7WiubtGwtRnn2MrCG',NULL,'2019-02-13 04:06:22','2019-02-13 04:06:22','5c6397be709e2',0,0,'527106',NULL,NULL),(117,'pruba@prueba.com','$2y$10$2i4QdM4qoozvIcdMND/Mluhr80R5QxEP7cdrSICxpbBqJQ.71ZzYm',NULL,'2019-02-15 10:57:21','2019-02-15 10:57:21','5c669b11d426b',0,0,'prueba',NULL,NULL),(118,'prueba@prueba.com','$2y$10$UFsCsmHIzhBloTebz3pbnOv9xMogWlwfzUSzNDn9HPIm6bGw6C1Vy','53kZcmZGPnFnSUoPR3FFX19mN2RtxRWck2UP9fU9HQLKXApf5VBrmizmHPqr','2019-02-15 10:58:14','2019-02-15 10:58:14','5c669b4634b4f',0,0,'prueba',NULL,NULL),(119,'elcontraton@elcontraton.com','$2y$10$wxxnt9a0mBqC4IiZtvgla.9S1nd4907ses1di9WjwHJwPjBjdJX9K','mCGzleX093tRojXnkv0vYFJmDljN5ZkJuwloQKXLU0eHfqKlC6hN3iVIi3Jj','2019-02-15 12:31:15','2019-02-15 12:31:15','5c66b113b8754',0,0,'elcontraton',NULL,NULL),(120,'THAMYCHACON22@GMAIL.COM','$2y$10$KU3KEcEcXZ3HnrrE2zCntur9XzJwieT00qJAIMj7A5JniqDPANduq',NULL,'2019-02-16 15:58:15','2019-02-16 15:58:15','5c6833172f9a3',0,0,'FAMILIA22',NULL,NULL),(121,'rosifabianam06@gmail.com','$2y$10$WJYOOReiNP4MzvWQPG3ZReLUfpkGUW0YQ03VYLjrqcKhU/vk4Dyz.',NULL,'2019-02-16 16:11:23','2019-02-16 16:11:23','5c68362b63fd1',0,0,'margiorie25',NULL,NULL),(122,'paulabonilla96@gmail.com','$2y$10$P8f3nLsSdL760GyIa/a0NuDnp09uSTjA1CsH8powX/cvE3v4SkMSS',NULL,'2019-02-22 14:17:19','2019-02-22 14:17:19','5c70046fd3e67',0,0,'PAUPROCKS',NULL,NULL),(123,'deltaserviciossas@gmail.com','$2y$10$eznf/tda3tndlESdbvKV2.7S14LGXg0UvOo.awbWgURfMDL3XiVEW',NULL,'2019-02-27 22:08:02','2019-02-27 22:08:02','5c770a42bd782',0,0,'Morris19',NULL,NULL),(124,'ctian.gio10@gmail.com','$2y$10$PrJwxxG5HnWpFMx/5eNwcOIoIUNpKqN9qtV2v6bhac5u.t3us5Z9y',NULL,'2019-03-01 18:50:37','2019-03-01 18:50:37','5c797efd0fe82',0,0,'p@sword.10',NULL,NULL),(125,'jdleonex@gmail.com','$2y$10$MRaImsltP.p3ghDEv6upn.g71/p121VnKFIO4efjSfkoZRlv9YSD.',NULL,'2019-03-05 16:06:03','2019-03-05 16:06:03','5c7e9e6b79b42',0,0,'narnia8903',NULL,NULL),(126,'ventas@grafik360.com','$2y$10$2HsHsvwoHa.6np60N.LiKOUxjnzpKQsEU9W6J57.vqyRLxwglNDMu',NULL,'2019-03-05 22:47:16','2019-03-05 22:47:16','5c7efc7469fe4',0,0,'gr4f1k1129',NULL,NULL),(127,'cargatodobogota@gmail.com','$2y$10$HAqWUCThzga4s5Ds/3k4ROcJDx7r/kcoLhhog0AYjsBLB05KRryXa',NULL,'2019-03-06 03:24:17','2019-03-06 03:24:17','5c7f3d611cb01',0,0,'arteaga1',NULL,NULL),(128,'contacto@morphicagency.com','$2y$10$fVD/SFwka223uyblHUOEI.RtRQIU4sZIjfNNZXC77pofmrERViURy',NULL,'2019-03-06 19:59:06','2019-03-06 19:59:06','5c80268ad04c6',0,0,'Morphic.redes2018',NULL,NULL),(129,'luisguillermo.alzate@gmail.com','$2y$10$ePOQz4JV43uuGkNgh4eyxeLgyoTDx4uR8acblCOuiMR.btPDE4052',NULL,'2019-03-07 16:02:12','2019-03-07 16:02:12','5c814084c3a6b',0,0,'magola3610',NULL,NULL),(130,'lauvivi11@hotmail.com','5c8480af6653d','JfQn2twMyVxxeHUbwErBE0KV0IBRI1Mk6mPhpllxwBiAZCIcO8CWMdgKuo62','2019-03-10 03:12:47','2019-03-10 03:12:47','5c8480af670d2',0,0,NULL,'facebook','1303379243150525'),(131,'gigoloscuencanos@hotmail.com','5c879e9114e2c','4Eg7RHNwhADLKfT293Umbn0kDYPQIn6g2b3d4t8IZCwPgJryh9qUzCKCrJVh','2019-03-12 11:57:05','2019-03-12 11:57:05','5c879e9115b83',0,0,NULL,'facebook','803439863322447'),(132,'alj_hoyos@hotmail.com','$2y$10$sDXghqoC3OWZQFQNI2ocXOyPuCtke5M9IMmI5rsIXcd.qXjrD2w6m',NULL,'2019-03-14 17:14:37','2019-03-14 17:14:37','5c8a8bfd0fe7d',0,0,'alejitalamaslinda1',NULL,NULL),(133,'cami1166@hotmail.com','$2y$10$ZwJufqViHFXHmQtHTDy6ruR8bvop6pT5A2fWIwIqDAf9/FEXOnYvK',NULL,'2019-03-14 17:46:39','2019-03-14 17:46:39','5c8a937f9fc3e',0,0,'Camilarios',NULL,NULL),(134,'pruebaservicios123@outlook.com','5c8ace643c454','66nLaKGVXibWdqKuuLBc1u1sKUI84rJjhYbpWub7JLQh56E1DDrsNt14ItlM','2019-03-14 21:57:56','2019-03-14 21:57:56','5c8ace643cd7e',0,0,NULL,'facebook','117241516102830'),(135,'vjaimes@zonavirtual.com','$2y$10$IEhZl.Q7INadcDBavKq81Ot32h0egDKUswXr9bV2/C1aJRZyvUNu2',NULL,'2019-03-19 00:58:42','2019-03-19 00:58:42','5c903ec29ec79',0,0,'R3spald0',NULL,NULL),(136,'qieezhwpks_1541428725@tfbnw.net','5c9a383ec0357','gOnu6yfTxtjz1bcsXfcpX6XqOWMD0MUGwnXk9hlqlZcFMnX2ebTDw60owNin','2019-03-26 14:33:34','2019-03-26 14:33:34','5c9a383ec11e9',0,0,NULL,'facebook','10150060465152184'),(137,'elcontraton2@elcontraton2.com','$2y$10$8H/s0Ye3XUnQwJfiBYPZ6eXayTNesZx0n.CNA8n0rg/engU5lALeq','L3912z9JEnTxs0oGW0LNjhdm9xymdClxuqzrowVMhaxenEe3biHNMuh7ke1f','2019-03-27 00:42:29','2019-03-27 00:42:29','5c9ac6f5c4257',0,0,'elcontraton2',NULL,NULL),(138,'prueba2@prueba2.com','$2y$10$Lm7IsQPtOqlCfw32D5qfiOddGCuxHArBYrQSo84ah17BPO1tSErcy','BBxPbpTaKzzYSvbwLyXkRudmKMATXjUfUbv8E6uwXG7Pfv4Y3K9UMBaZ9SFl','2019-03-27 00:46:18','2019-03-27 00:46:18','5c9ac7da2cabf',0,0,'prueba2',NULL,NULL),(139,'luisfermarquez@hotmail.com','$2y$10$l0EQnszpGYidlSr/PJ9BoOX7sk3/UpsOmIo38YeepYNqPdxsoJstG',NULL,'2019-04-02 16:15:32','2019-04-02 16:15:32','5ca38aa442b47',0,0,'Sapiens-231201',NULL,NULL),(140,'hernan.montoya@analistasdemedios.com.co','$2y$10$d.5G77u9w4rjTu8gBz1W3e3P9/MNXAM3jXGDeVBbzgmzTLPfV/gjq',NULL,'2019-04-22 21:55:00','2019-04-22 21:55:00','5cbe3834da919',0,0,'Luisc8am',NULL,NULL),(141,'erijohanapedrozo@gmail.com','$2y$10$xnOmbrOJraOGYa5D.tiNpeT0xxJ5hH/czuB.rHELs6WAk5HNX3y.u',NULL,'2019-05-09 01:54:08','2019-05-09 01:54:08','5cd388403e02e',0,0,'concepcion1',NULL,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-31  0:34:01
