-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: banca
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `Cliente_id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula_cliente` varchar(45) NOT NULL,
  `nombre_cliente` varchar(100) NOT NULL,
  `apellido_cliente` varchar(100) NOT NULL,
  `direccion_cliente` varchar(45) DEFAULT NULL,
  `telefono_cliente` varchar(45) DEFAULT NULL,
  `email_cliente` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'1026293164','Daenerys ','Targeryan','Westeros','6692198','motherOfDragons@hotmail.com'),(2,'1026293163','Arya','Stark','The House of Black and White','6692197','catOfBraavos@gmail.com'),(3,'1026293162','Jorge','Cuellar','Carrera 69A #25-35','6940979','jorge.cuellar@gmail.com'),(4,'441320','Felix','Moreno','Norte','3192493096','felixmorenot17@hotmail.com'),(5,'1022395936','steven','puerto','cra 78 a 58p - 09 sur','+573015436823','stevenn2012@hotmail.com'),(6,'1026293161','Tyron','Lannister','Braavos','6692187','godOfWineAndTits@hotmail.com'),(7,'1032471753','Jennifer','Aguirre','Suba','6862172','jeny_aguirrev@hotmail.com'),(8,'1026293140','Flor','Velandia','Suba','66862172','flor_Velandia@hotmail.com'),(9,'1026293165','Brandon','Stark','North','5454544','im_a_warg@yahoo.com'),(10,'23778613','Diva','Ramirez','Carrera 69A #25-35','66940979','dimerasu@hotmail.com');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `clienteInsert` AFTER INSERT ON `cliente`
 FOR EACH ROW insert into log_cliente (cedula, nombre, apellido, direccion, telefono, email, fecha, tipo)
values (new.cedula_cliente, new.nombre_cliente, new.apellido_cliente, new.direccion_cliente, new.telefono_cliente, new.email_cliente, now(),1) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `clienteUpdate` AFTER UPDATE ON `cliente`
 FOR EACH ROW insert into log_cliente (cedula, nombre, apellido, direccion, telefono, email, fecha, tipo)
values (old.cedula_cliente, old.nombre_cliente, old.apellido_cliente, new.direccion_cliente, new.telefono_cliente, old.email_cliente, now(),2) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `clienteDelete` AFTER DELETE ON `cliente`
 FOR EACH ROW insert into log_cliente (cedula, nombre, apellido, direccion, telefono, email, fecha, tipo)
values (old.cedula_cliente, old.nombre_cliente, old.apellido_cliente, old.direccion_cliente, old.telefono_cliente, old.email_cliente, now(),3) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `credito`
--

DROP TABLE IF EXISTS `credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credito` (
  `Credito_id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_credito` enum('Tarjeta','Prestamo') NOT NULL,
  `monto_credito` decimal(10,0) NOT NULL,
  `descripcion_credito` varchar(45) DEFAULT NULL,
  `limiteTarjeta` decimal(10,0) DEFAULT NULL,
  `Cuenta_id` int(11) NOT NULL,
  `cuota` int(11) DEFAULT NULL,
  `numero_credito` varchar(45) NOT NULL,
  PRIMARY KEY (`Credito_id`),
  KEY `fk_Credito_Cuenta1_idx` (`Cuenta_id`),
  CONSTRAINT `fk_Credito_Cuenta1` FOREIGN KEY (`Cuenta_id`) REFERENCES `cuenta` (`Cuenta_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credito`
--

LOCK TABLES `credito` WRITE;
/*!40000 ALTER TABLE `credito` DISABLE KEYS */;
INSERT INTO `credito` VALUES (1,'Tarjeta',89900,'',300000,3,0,'52548'),(2,'Tarjeta',194000,'',300000,3,0,'1564768548'),(3,'Tarjeta',200000,'NULL',400000,3,0,'45464748'),(4,'Prestamo',4999900,'Prestamo de Caasa',0,3,7,'894748'),(5,'Tarjeta',5000000,'NULL',5000000,3,0,'789456123'),(6,'Tarjeta',100000,'hola mundo',1000000,15,10,'123456'),(7,'Prestamo',1000000,'hola pedi un prestamo',NULL,15,20,'159487263'),(8,'Prestamo',780,NULL,NULL,1,5,'789654'),(9,'Tarjeta',8000000,'Super Tarjeta',9000000,20,NULL,'45555'),(10,'Tarjeta',100000,'',200000,22,0,'741236');
/*!40000 ALTER TABLE `credito` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `creditoInsert` AFTER INSERT ON `credito`
 FOR EACH ROW insert into log_credito (tipo_credito, monto, Cuenta_id, fecha, numero_Credito, descripcion, limiteTarjeta, cuota, tipo)
values (new.tipo_credito, new.monto_credito, new.Cuenta_id, now(),new.numero_credito, new.descripcion_credito, new.limiteTarjeta, new.cuota, 1) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `creditoUpdate` AFTER UPDATE ON `credito`
 FOR EACH ROW insert into log_credito (tipo_credito, monto, Cuenta_id, fecha, numero_Credito, descripcion, limiteTarjeta, cuota, tipo)
values (old.tipo_credito, new.monto_credito, old.Cuenta_id, now(),old.numero_credito, old.descripcion_credito, old.limiteTarjeta, new.cuota, 2) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `creditoDelete` AFTER DELETE ON `credito`
 FOR EACH ROW insert into log_credito (tipo_credito, monto, Cuenta_id, fecha, numero_Credito, descripcion, limiteTarjeta, cuota, tipo)
values (old.tipo_credito, old.monto_credito, old.Cuenta_id, now(),old.numero_credito, old.descripcion_credito, old.limiteTarjeta, old.cuota, 3) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cuenta`
--

DROP TABLE IF EXISTS `cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuenta` (
  `Cuenta_id` int(11) NOT NULL AUTO_INCREMENT,
  `Cliente_id` int(11) NOT NULL,
  `numero_cuenta` varchar(45) NOT NULL,
  `clave_cuenta` varchar(45) NOT NULL,
  `claveVirtual_cuenta` varchar(45) NOT NULL,
  `saldoActual_cuenta` decimal(10,0) NOT NULL,
  PRIMARY KEY (`Cuenta_id`),
  KEY `fk_Cuenta_Cliente_idx` (`Cliente_id`),
  CONSTRAINT `fk_Cuenta_Cliente` FOREIGN KEY (`Cliente_id`) REFERENCES `cliente` (`Cliente_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta`
--

LOCK TABLES `cuenta` WRITE;
/*!40000 ALTER TABLE `cuenta` DISABLE KEYS */;
INSERT INTO `cuenta` VALUES (1,1,'987654321','12345','fireandblood',248000),(2,2,'987654322','123456788','valarmorghulis',1212100),(3,3,'987654323','123456787','joshy',100000),(4,3,'987654324','123456786','joshy',400000),(13,4,'441320','rafa22883339','rafa22883339',10000000),(14,4,'441321','22883339','rafa22883339',0),(15,5,'1022333357','123abc','123456',0),(16,5,'102257895','wersda','123456',0),(17,5,'159123789','abc123','123456',0),(18,6,'987654319','78947','dwarf',700),(19,1,'987654318','78944','fireandblood',2712000),(20,7,'9874521457','45621','lalalala',9999999999),(21,8,'4125620','32145','jenni',7000000),(22,8,'213000','55555','jenni',8000000),(23,9,'777777','43521','loveMyWirewolf',7892333),(24,10,'002770050942','123456','joshy',1000000);
/*!40000 ALTER TABLE `cuenta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cuentaInsert` AFTER INSERT ON `cuenta`
 FOR EACH ROW insert into log_cuenta (Cliente_id, numero, clave, claveVirtual, saldoActual,fecha,tipo)
values (new.Cliente_id, new.numero_cuenta, new.clave_cuenta, new.claveVirtual_cuenta, new.saldoActual_cuenta, now(),1) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cuentaUpdate` AFTER UPDATE ON `cuenta`
 FOR EACH ROW insert into log_cuenta (Cliente_id, numero, clave, claveVirtual, saldoActual,fecha, tipo)
values (old.Cliente_id, old.numero_cuenta, new.clave_cuenta, old.claveVirtual_cuenta, new.saldoActual_cuenta, now(), 2) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cuentaDelete` AFTER DELETE ON `cuenta`
 FOR EACH ROW insert into log_cuenta (Cliente_id, numero, clave, claveVirtual, saldoActual,fecha, tipo)
values (old.Cliente_id, old.numero_cuenta, old.clave_cuenta, old.claveVirtual_cuenta, old.saldoActual_cuenta, now(), 3) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `estadocreditos`
--

DROP TABLE IF EXISTS `estadocreditos`;
/*!50001 DROP VIEW IF EXISTS `estadocreditos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `estadocreditos` (
  `cedula_cliente` tinyint NOT NULL,
  `Credito_id` tinyint NOT NULL,
  `tipo_credito` tinyint NOT NULL,
  `monto_credito` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `estadocuentas`
--

DROP TABLE IF EXISTS `estadocuentas`;
/*!50001 DROP VIEW IF EXISTS `estadocuentas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `estadocuentas` (
  `Cliente_id` tinyint NOT NULL,
  `nombre_cliente` tinyint NOT NULL,
  `apellido_cliente` tinyint NOT NULL,
  `cedula_cliente` tinyint NOT NULL,
  `Cuenta_id` tinyint NOT NULL,
  `numero_cuenta` tinyint NOT NULL,
  `saldoActual_cuenta` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `estadototal`
--

DROP TABLE IF EXISTS `estadototal`;
/*!50001 DROP VIEW IF EXISTS `estadototal`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `estadototal` (
  `Cliente_id` tinyint NOT NULL,
  `nombre_cliente` tinyint NOT NULL,
  `apellido_cliente` tinyint NOT NULL,
  `cedula_cliente` tinyint NOT NULL,
  `Cuenta_id` tinyint NOT NULL,
  `numero_cuenta` tinyint NOT NULL,
  `saldoActual_cuenta` tinyint NOT NULL,
  `Credito_id` tinyint NOT NULL,
  `tipo_credito` tinyint NOT NULL,
  `monto_credito` tinyint NOT NULL,
  `Transaccion_id` tinyint NOT NULL,
  `monto_transferencia` tinyint NOT NULL,
  `tipo_Transferencia` tinyint NOT NULL,
  `fecha_transferencia` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `log_cliente`
--

DROP TABLE IF EXISTS `log_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_cliente` (
  `Log_Cliente_id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(45) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `fecha` date NOT NULL,
  `tipo` enum('Insert','Update','Delete') NOT NULL,
  PRIMARY KEY (`Log_Cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_cliente`
--

LOCK TABLES `log_cliente` WRITE;
/*!40000 ALTER TABLE `log_cliente` DISABLE KEYS */;
INSERT INTO `log_cliente` VALUES (1,'1026293161','Tyron','Lannister','Braavos','6692187','godOfWineAndTits@hotmail.com','2015-05-08','Insert'),(2,'1032471753','Jennifer','Aguirre','Suba','6862172','jeny_aguirrev@hotmail.com','2015-05-08','Insert'),(3,'1026293140','Flor','Velandia','Suba','66862172','flor_Velandia@hotmail.com','2015-05-08','Insert'),(4,'1026293165','Brandon','Stark','North','5454544','im_a_warg@yahoo.com','2015-05-11','Insert'),(5,'23778613','Diva','Ramirez','Carrera 69A #25-35','66940979','dimerasu@hotmail.com','2015-05-12','Insert');
/*!40000 ALTER TABLE `log_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_credito`
--

DROP TABLE IF EXISTS `log_credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_credito` (
  `Log_Credito_id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_credito` enum('Tarjeta','Prestamo') NOT NULL,
  `monto` decimal(10,0) NOT NULL,
  `Cuenta_id` varchar(45) NOT NULL,
  `fecha` date NOT NULL,
  `numero_credito` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `limiteTarjeta` decimal(10,0) DEFAULT NULL,
  `cuota` int(11) DEFAULT NULL,
  `tipo` enum('Insert','Update','Delete') NOT NULL,
  PRIMARY KEY (`Log_Credito_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_credito`
--

LOCK TABLES `log_credito` WRITE;
/*!40000 ALTER TABLE `log_credito` DISABLE KEYS */;
INSERT INTO `log_credito` VALUES (1,'Prestamo',780,'1','2015-05-08','',NULL,NULL,NULL,'Insert'),(2,'Tarjeta',8000000,'20','2015-05-08','45555',NULL,NULL,NULL,'Insert'),(3,'Tarjeta',100000,'22','2015-05-08','741236',NULL,NULL,NULL,'Insert'),(4,'Tarjeta',200000,'3','2015-05-12','152548','',300000,0,'Update'),(5,'Tarjeta',199800,'3','2015-05-12','52548','',300000,0,'Update'),(6,'Tarjeta',199000,'3','2015-05-12','1564768548','',300000,0,'Update'),(7,'Tarjeta',198000,'3','2015-05-12','1564768548','',300000,0,'Update'),(8,'Tarjeta',-100200,'3','2015-05-12','52548','',300000,0,'Update'),(9,'Tarjeta',197000,'3','2015-05-12','1564768548','',300000,0,'Update'),(10,'Tarjeta',196000,'3','2015-05-12','1564768548','',300000,0,'Update'),(11,'Tarjeta',195000,'3','2015-05-12','1564768548','',300000,0,'Update'),(12,'Tarjeta',90000,'3','2015-05-13','52548','',300000,0,'Update'),(13,'Tarjeta',89900,'3','2015-05-13','52548','',300000,0,'Update'),(14,'Prestamo',4999900,'3','2015-05-13','894748','Prestamo de Caasa',0,7,'Update'),(15,'Tarjeta',194000,'3','2015-05-15','1564768548','',300000,0,'Update'),(16,'Tarjeta',200000,'3','2015-05-15','45464748','NULL',400000,0,'Update');
/*!40000 ALTER TABLE `log_credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_cuenta`
--

DROP TABLE IF EXISTS `log_cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_cuenta` (
  `Log_Cuenta_id` int(11) NOT NULL AUTO_INCREMENT,
  `Cliente_id` int(11) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `clave` varchar(45) NOT NULL,
  `claveVirtual` varchar(45) NOT NULL,
  `saldoActual` decimal(10,0) NOT NULL,
  `fecha` date NOT NULL,
  `tipo` enum('Insert','Update','Delete') NOT NULL,
  PRIMARY KEY (`Log_Cuenta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_cuenta`
--

LOCK TABLES `log_cuenta` WRITE;
/*!40000 ALTER TABLE `log_cuenta` DISABLE KEYS */;
INSERT INTO `log_cuenta` VALUES (1,1,'987654318','78944','fireandblood',3000000,'2015-05-08','Insert'),(2,1,'987654321','123456789','fireandblood',100000,'2015-05-08','Insert'),(3,7,'9874521457','45621','lalalala',9999999999,'2015-05-08','Insert'),(4,8,'4125620','32145','jenni',7000000,'2015-05-08','Insert'),(5,8,'213000','55555','jenni',8000000,'2015-05-08','Insert'),(6,1,'987654321','12345','fireandblood',100000,'2015-05-11','Update'),(7,9,'777777','43521','loveMyWirewolf',7892333,'2015-05-11','Insert'),(8,3,'987654322','123456784','joshy',100,'2015-05-12','Delete'),(9,3,'987654323','123456785','joshy',500000000,'2015-05-12','Delete'),(10,5,'1022333357','123abc','123456',-13451000,'2015-05-12','Update'),(11,1,'987654321','12345','fireandblood',13601000,'2015-05-12','Update'),(12,5,'1022333357','123abc','123456',8000000,'2015-05-12','Update'),(13,5,'1022333357','123abc','123456',7999900,'2015-05-12','Update'),(14,1,'987654321','12345','fireandblood',13601100,'2015-05-12','Update'),(15,5,'1022333357','123abc','123456',0,'2015-05-12','Update'),(16,1,'987654321','12345','fireandblood',21601000,'2015-05-12','Update'),(17,5,'1022333357','123abc','123456',9999999,'2015-05-12','Update'),(18,5,'1022333357','123abc','123456',8649899,'2015-05-12','Update'),(19,1,'987654321','12345','fireandblood',22951100,'2015-05-12','Update'),(20,1,'987654321','12345','fireandblood',9450100,'2015-05-12','Update'),(21,1,'987654321','12345','fireandblood',0,'2015-05-12','Update'),(22,5,'1022333357','123abc','123456',0,'2015-05-12','Update'),(23,5,'159123789','abc123','123456',0,'2015-05-12','Update'),(24,1,'987654321','12345','fireandblood',800000,'2015-05-12','Update'),(25,5,'102257895','wersda','123456',90000,'2015-05-12','Update'),(26,1,'987654321','12345','fireandblood',810000,'2015-05-12','Update'),(27,5,'102257895','wersda','123456',80000,'2015-05-12','Update'),(28,1,'987654321','12345','fireandblood',820000,'2015-05-12','Update'),(29,5,'102257895','wersda','123456',0,'2015-05-12','Update'),(30,1,'987654321','12345','fireandblood',900000,'2015-05-12','Update'),(31,5,'1022333357','123abc','123456',1000000000,'2015-05-12','Update'),(32,5,'102257895','wersda','123456',8000000,'2015-05-12','Update'),(33,5,'159123789','abc123','123456',90000000,'2015-05-12','Update'),(34,5,'1022333357','123abc','123456',0,'2015-05-12','Update'),(35,5,'1022333357','123abc','123456',999999,'2015-05-12','Update'),(36,5,'1022333357','123abc','123456',0,'2015-05-12','Update'),(37,5,'102257895','wersda','123456',0,'2015-05-12','Update'),(38,5,'1022333357','123abc','123456',8000000,'2015-05-12','Update'),(39,4,'441321','22883339','rafa22883339',0,'2015-05-12','Update'),(40,5,'1022333357','123abc','123456',0,'2015-05-12','Update'),(41,5,'1022333357','123abc','123456',999999,'2015-05-12','Update'),(42,5,'1022333357','123abc','123456',0,'2015-05-12','Update'),(43,5,'1022333357','123abc','123456',1000,'2015-05-12','Update'),(44,5,'1022333357','123abc','123456',0,'2015-05-12','Update'),(45,5,'159123789','abc123','123456',40000000,'2015-05-12','Update'),(46,5,'159123789','abc123','123456',0,'2015-05-12','Update'),(47,5,'1022333357','123abc','123456',888888,'2015-05-12','Update'),(48,5,'1022333357','123abc','123456',0,'2015-05-12','Update'),(49,1,'987654321','12345','fireandblood',800000,'2015-05-12','Update'),(50,1,'987654321','12345','fireandblood',400000,'2015-05-12','Update'),(51,1,'987654318','78944','fireandblood',2800000,'2015-05-12','Update'),(52,2,'987654322','123456788','valarmorghulis',400000,'2015-05-12','Update'),(53,1,'987654321','12345','fireandblood',200000,'2015-05-12','Update'),(54,2,'987654322','123456788','valarmorghulis',600000,'2015-05-12','Update'),(55,1,'987654321','12345','fireandblood',100000,'2015-05-12','Update'),(56,2,'987654322','123456788','valarmorghulis',700000,'2015-05-12','Update'),(57,1,'987654321','12345','fireandblood',99900,'2015-05-12','Update'),(58,10,'002770050942','123456','joshy',9000000,'2015-05-12','Insert'),(59,10,'002770050942','123456','joshy',1000000,'2015-05-12','Update'),(60,1,'987654321','12345','fireandblood',-100,'2015-05-12','Update'),(61,1,'987654321','12345','fireandblood',900000,'2015-05-12','Update'),(62,1,'987654321','12345','fireandblood',899800,'2015-05-12','Update'),(63,1,'987654321','12345','fireandblood',899600,'2015-05-12','Update'),(64,1,'987654321','12345','fireandblood',899400,'2015-05-12','Update'),(65,2,'987654322','123456788','valarmorghulis',699000,'2015-05-12','Update'),(66,2,'987654322','123456788','valarmorghulis',698000,'2015-05-12','Update'),(67,1,'987654321','12345','fireandblood',599400,'2015-05-12','Update'),(68,2,'987654322','123456788','valarmorghulis',697000,'2015-05-12','Update'),(69,2,'987654322','123456788','valarmorghulis',696000,'2015-05-12','Update'),(70,2,'987654322','123456788','valarmorghulis',695000,'2015-05-12','Update'),(71,1,'987654321','12345','fireandblood',598400,'2015-05-12','Update'),(72,2,'987654322','123456788','valarmorghulis',696000,'2015-05-12','Update'),(73,1,'987654321','12345','fireandblood',568400,'2015-05-12','Update'),(74,2,'987654322','123456788','valarmorghulis',726000,'2015-05-12','Update'),(75,1,'987654321','12345','fireandblood',538400,'2015-05-12','Update'),(76,1,'987654321','12345','fireandblood',238400,'2015-05-13','Update'),(77,2,'987654322','123456788','valarmorghulis',1026000,'2015-05-13','Update'),(78,1,'987654318','78944','fireandblood',2790000,'2015-05-13','Update'),(79,1,'987654321','12345','fireandblood',248400,'2015-05-13','Update'),(80,1,'987654321','12345','fireandblood',248300,'2015-05-13','Update'),(81,1,'987654321','12345','fireandblood',248200,'2015-05-13','Update'),(82,1,'987654321','12345','fireandblood',248100,'2015-05-13','Update'),(83,1,'987654321','12345','fireandblood',248000,'2015-05-15','Update'),(84,2,'987654322','123456788','valarmorghulis',1026100,'2015-05-15','Update'),(85,1,'987654321','12345','fireandblood',247000,'2015-05-15','Update'),(86,2,'987654322','123456788','valarmorghulis',1027100,'2015-05-15','Update'),(87,1,'987654321','12345','fireandblood',237000,'2015-05-15','Update'),(88,2,'987654322','123456788','valarmorghulis',1037100,'2015-05-15','Update'),(89,1,'987654321','12345','fireandblood',197000,'2015-05-15','Update'),(90,2,'987654322','123456788','valarmorghulis',1077100,'2015-05-15','Update'),(91,1,'987654321','12345','fireandblood',157000,'2015-05-15','Update'),(92,2,'987654322','123456788','valarmorghulis',1117100,'2015-05-15','Update'),(93,1,'987654321','12345','fireandblood',109000,'2015-05-15','Update'),(94,2,'987654322','123456788','valarmorghulis',1165100,'2015-05-15','Update'),(95,2,'987654322','123456788','valarmorghulis',1164100,'2015-05-15','Update'),(96,1,'987654321','12345','fireandblood',248000,'2015-05-15','Update'),(97,1,'987654321','12345','fireandblood',200000,'2015-05-15','Update'),(98,2,'987654322','123456788','valarmorghulis',1212100,'2015-05-15','Update'),(99,1,'987654321','12345','fireandblood',100000,'2015-05-15','Update'),(100,1,'987654318','78944','fireandblood',2712000,'2015-05-15','Update'),(101,1,'987654321','12345','fireandblood',178000,'2015-05-15','Update'),(102,1,'987654321','12345','fireandblood',78000,'2015-05-15','Update'),(103,1,'987654321','12345','fireandblood',48000,'2015-05-15','Update'),(104,1,'987654321','12345','fireandblood',248000,'2015-05-15','Update');
/*!40000 ALTER TABLE `log_cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_transaccion`
--

DROP TABLE IF EXISTS `log_transaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_transaccion` (
  `Log_Transacciones_id` int(11) NOT NULL AUTO_INCREMENT,
  `monto` decimal(10,0) DEFAULT NULL,
  `tipo_transferencia` enum('Consignacion','Retiro','TransferenciaCuenta','PagoTarjeta','PagoServicio','PagoPrestamo') DEFAULT NULL,
  `fecha` date NOT NULL,
  `cuentaDestino` varchar(45) DEFAULT NULL,
  `Cuenta_id` int(11) NOT NULL,
  `empresa` varchar(45) DEFAULT NULL,
  `codigoRecibo` int(11) DEFAULT NULL,
  `tipo` enum('Insert','Update','Delete') NOT NULL,
  PRIMARY KEY (`Log_Transacciones_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_transaccion`
--

LOCK TABLES `log_transaccion` WRITE;
/*!40000 ALTER TABLE `log_transaccion` DISABLE KEYS */;
INSERT INTO `log_transaccion` VALUES (1,900,'Retiro','2015-05-12','987654321',1,NULL,NULL,'Insert'),(2,13501000,'Consignacion','2015-05-12','987654321',15,NULL,NULL,'Insert'),(3,100,'TransferenciaCuenta','2015-05-12','987654321',15,NULL,NULL,'Insert'),(4,7999900,'TransferenciaCuenta','2015-05-12','987654321',15,NULL,NULL,'Insert'),(5,1350100,'Consignacion','2015-05-12','987654321',15,NULL,NULL,'Insert'),(6,13501000,'Retiro','2015-05-12',NULL,1,NULL,NULL,'Insert'),(7,9450100,'Retiro','2015-05-12',NULL,1,NULL,NULL,'Insert'),(8,8649899,'PagoServicio','2015-05-12',NULL,15,'clarote111',123456,'Insert'),(9,800000,'Consignacion','2015-05-12','987654321',17,NULL,NULL,'Insert'),(10,10000,'Consignacion','2015-05-12','987654321',16,NULL,NULL,'Insert'),(11,10000,'Consignacion','2015-05-12','987654321',16,NULL,NULL,'Insert'),(12,80000,'Consignacion','2015-05-12','987654321',16,NULL,NULL,'Insert'),(13,1000000000,'Retiro','2015-05-12',NULL,15,NULL,NULL,'Insert'),(14,999999,'Retiro','2015-05-12',NULL,15,NULL,NULL,'Insert'),(15,8000000,'TransferenciaCuenta','2015-05-12','1022333357',16,NULL,NULL,'Insert'),(16,1000,'PagoServicio','2015-05-12',NULL,14,'cote111',123456,'Insert'),(17,8000000,'PagoServicio','2015-05-12',NULL,15,'fisic',102222666,'Insert'),(18,999999,'PagoTarjeta','2015-05-12',NULL,15,NULL,NULL,'Insert'),(19,1000,'PagoPrestamo','2015-05-12',NULL,15,NULL,NULL,'Insert'),(20,50000000,'PagoTarjeta','2015-05-12',NULL,17,NULL,NULL,'Insert'),(21,40000000,'PagoPrestamo','2015-05-12',NULL,17,NULL,NULL,'Insert'),(22,888888,'PagoPrestamo','2015-05-12',NULL,15,NULL,NULL,'Insert'),(23,100000,'Retiro','2015-05-12',NULL,1,NULL,NULL,'Insert'),(24,400000,'Retiro','2015-05-12',NULL,1,NULL,NULL,'Insert'),(25,200000,'Consignacion','2015-05-12','987654322',19,NULL,NULL,'Insert'),(26,200000,'TransferenciaCuenta','2015-05-12','987654322',1,NULL,NULL,'Insert'),(27,100000,'Consignacion','2015-05-12','987654322',1,NULL,NULL,'Insert'),(28,100,'PagoTarjeta','2015-05-12',NULL,1,NULL,NULL,'Insert'),(29,8000000,'Retiro','2015-05-12',NULL,24,NULL,NULL,'Insert'),(30,100000,'PagoTarjeta','2015-05-12',NULL,1,NULL,NULL,'Insert'),(31,200,'PagoTarjeta','2015-05-12',NULL,1,NULL,NULL,'Insert'),(32,1000,'PagoTarjeta','2015-05-12',NULL,2,NULL,NULL,'Insert'),(33,1000,'PagoTarjeta','2015-05-12',NULL,2,NULL,NULL,'Insert'),(34,300000,'PagoTarjeta','2015-05-12',NULL,1,NULL,NULL,'Insert'),(35,1000,'PagoTarjeta','2015-05-12',NULL,2,NULL,NULL,'Insert'),(36,1000,'PagoTarjeta','2015-05-12',NULL,2,NULL,NULL,'Insert'),(37,1000,'PagoTarjeta','2015-05-12',NULL,2,NULL,NULL,'Insert'),(38,1000,'Consignacion','2015-05-12','987654322',1,NULL,NULL,'Insert'),(39,30000,'Consignacion','2015-05-12','987654322',1,NULL,NULL,'Insert'),(40,30000,'Retiro','2015-05-12',NULL,1,NULL,NULL,'Insert'),(41,300000,'TransferenciaCuenta','2015-05-13','987654322',1,NULL,NULL,'Insert'),(42,10000,'TransferenciaCuenta','2015-05-13','987654321',19,NULL,NULL,'Insert'),(43,100,'PagoTarjeta','2015-05-13',NULL,1,NULL,NULL,'Insert'),(44,100,'PagoTarjeta','2015-05-13',NULL,1,NULL,NULL,'Insert'),(45,100,'PagoPrestamo','2015-05-13',NULL,1,NULL,NULL,'Insert'),(46,100,'TransferenciaCuenta','2015-05-15','987654322',1,NULL,NULL,'Insert'),(47,1000,'TransferenciaCuenta','2015-05-15','987654322',1,NULL,NULL,'Insert'),(48,10000,'TransferenciaCuenta','2015-05-15','987654322',1,NULL,NULL,'Insert'),(49,40000,'TransferenciaCuenta','2015-05-15','987654322',1,NULL,NULL,'Insert'),(50,40000,'TransferenciaCuenta','2015-05-15','987654322',1,NULL,NULL,'Insert'),(51,48000,'TransferenciaCuenta','2015-05-15','987654322',1,NULL,NULL,'Insert'),(52,1000,'PagoTarjeta','2015-05-15',NULL,2,NULL,NULL,'Insert'),(53,48000,'Consignacion','2015-05-15','987654322',1,NULL,NULL,'Insert'),(54,100000,'Retiro','2015-05-15',NULL,1,NULL,NULL,'Insert'),(55,78000,'TransferenciaCuenta','2015-05-15','987654321',19,NULL,NULL,'Insert'),(56,100000,'PagoTarjeta','2015-05-15',NULL,1,NULL,NULL,'Insert'),(57,30000,'PagoServicio','2015-05-15',NULL,1,'LlanoGas',45312121,'Insert');
/*!40000 ALTER TABLE `log_transaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_prestamo`
--

DROP TABLE IF EXISTS `pago_prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago_prestamo` (
  `id_Pago_Prestamo` int(11) NOT NULL AUTO_INCREMENT,
  `Transaccion_id` int(11) NOT NULL,
  `Credito_id` int(11) NOT NULL,
  PRIMARY KEY (`id_Pago_Prestamo`),
  KEY `fk_Pago_Prestamo_Transacción1_idx` (`Transaccion_id`),
  KEY `fk_Pago_Prestamo_Credito1_idx` (`Credito_id`),
  CONSTRAINT `fk_Pago_Prestamo_Credito1` FOREIGN KEY (`Credito_id`) REFERENCES `credito` (`Credito_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pago_Prestamo_Transacción1` FOREIGN KEY (`Transaccion_id`) REFERENCES `transaccion` (`Transaccion_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_prestamo`
--

LOCK TABLES `pago_prestamo` WRITE;
/*!40000 ALTER TABLE `pago_prestamo` DISABLE KEYS */;
INSERT INTO `pago_prestamo` VALUES (1,6,7),(2,30,4),(3,32,8),(4,33,7),(5,56,4);
/*!40000 ALTER TABLE `pago_prestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_tarjeta`
--

DROP TABLE IF EXISTS `pago_tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago_tarjeta` (
  `id_Pago_Tarjeta` int(11) NOT NULL AUTO_INCREMENT,
  `Transaccion_id` int(11) NOT NULL,
  `Credito_id` int(11) NOT NULL,
  PRIMARY KEY (`id_Pago_Tarjeta`),
  KEY `fk_Pago_Tarjeta_Transacción1_idx` (`Transaccion_id`),
  KEY `fk_Pago_Tarjeta_Credito1_idx` (`Credito_id`),
  CONSTRAINT `fk_Pago_Tarjeta_Credito1` FOREIGN KEY (`Credito_id`) REFERENCES `credito` (`Credito_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pago_Tarjeta_Transacción1` FOREIGN KEY (`Transaccion_id`) REFERENCES `transaccion` (`Transaccion_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_tarjeta`
--

LOCK TABLES `pago_tarjeta` WRITE;
/*!40000 ALTER TABLE `pago_tarjeta` DISABLE KEYS */;
INSERT INTO `pago_tarjeta` VALUES (1,2,6),(2,29,2),(3,31,9),(4,39,1),(5,42,1),(6,43,2),(7,44,2),(8,45,1),(9,46,2),(10,47,2),(11,48,2),(12,54,1),(13,55,4),(14,63,2),(15,67,3);
/*!40000 ALTER TABLE `pago_tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pregunta`
--

DROP TABLE IF EXISTS `pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pregunta` (
  `Pregunta_id` int(11) NOT NULL AUTO_INCREMENT,
  `respuesta_pregunta` varchar(45) NOT NULL,
  `tipo_pregunta` enum('Mascota','Nacimiento','Color') NOT NULL,
  `Cuenta_id` int(11) NOT NULL,
  PRIMARY KEY (`Pregunta_id`),
  KEY `fk_Pregunta_Cuenta1_idx` (`Cuenta_id`),
  CONSTRAINT `fk_Pregunta_Cuenta1` FOREIGN KEY (`Cuenta_id`) REFERENCES `cuenta` (`Cuenta_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregunta`
--

LOCK TABLES `pregunta` WRITE;
/*!40000 ALTER TABLE `pregunta` DISABLE KEYS */;
INSERT INTO `pregunta` VALUES (1,'Drogon','Mascota',1),(2,'Nymeria','Mascota',2),(3,'Rojo','Color',3),(4,'Venezuela','Nacimiento',13),(5,'Amarillo','Color',18),(6,'Rojo','Color',21),(7,'Summer','Mascota',23),(8,'Rojo','Color',24);
/*!40000 ALTER TABLE `pregunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `resumen_movimientos`
--

DROP TABLE IF EXISTS `resumen_movimientos`;
/*!50001 DROP VIEW IF EXISTS `resumen_movimientos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `resumen_movimientos` (
  `cliente_id` tinyint NOT NULL,
  `cuenta_id` tinyint NOT NULL,
  `monto` tinyint NOT NULL,
  `tipo` tinyint NOT NULL,
  `fecha` tinyint NOT NULL,
  `destino` tinyint NOT NULL,
  `num_credito` tinyint NOT NULL,
  `empresa` tinyint NOT NULL,
  `codigo` tinyint NOT NULL,
  `numero_cuenta` tinyint NOT NULL,
  `destino_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `transaccion`
--

DROP TABLE IF EXISTS `transaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaccion` (
  `Transaccion_id` int(11) NOT NULL AUTO_INCREMENT,
  `monto_transferencia` decimal(10,0) NOT NULL,
  `tipo_Transferencia` enum('Consignacion','Retiro','TransferenciaCuenta','PagoTarjeta','PagoServicio','PagoPrestamo') NOT NULL,
  `fecha_transferencia` date NOT NULL,
  `cuentaDestino` varchar(45) DEFAULT NULL,
  `Cuenta_id` int(11) DEFAULT NULL,
  `empresa` varchar(45) DEFAULT NULL,
  `codigoRecibo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Transaccion_id`),
  KEY `fk_Transacción_Cuenta1_idx` (`Cuenta_id`),
  CONSTRAINT `fk_Transacción_Cuenta1` FOREIGN KEY (`Cuenta_id`) REFERENCES `cuenta` (`Cuenta_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaccion`
--

LOCK TABLES `transaccion` WRITE;
/*!40000 ALTER TABLE `transaccion` DISABLE KEYS */;
INSERT INTO `transaccion` VALUES (1,50000,'TransferenciaCuenta','2015-05-01','102257895',15,NULL,NULL),(2,100000,'PagoTarjeta','2015-05-01',NULL,15,NULL,NULL),(3,50000,'Consignacion','2015-05-04','1022333357',15,NULL,NULL),(4,10000,'Retiro','2015-05-06','1022333357',15,NULL,NULL),(5,100000,'PagoServicio','2015-05-07',NULL,15,'claro','159487'),(6,80000,'PagoPrestamo','2015-04-21',NULL,15,NULL,NULL),(7,151000,'Consignacion','2015-05-08','1022333357',NULL,NULL,NULL),(10,90000,'Consignacion','2015-05-06','987654321',1,NULL,NULL),(12,900,'Retiro','2015-05-07','987654321',1,NULL,NULL),(13,13501000,'Consignacion','2015-05-12','987654321',15,NULL,NULL),(14,100,'TransferenciaCuenta','2015-05-12','987654321',15,NULL,NULL),(15,7999900,'TransferenciaCuenta','2015-05-12','987654321',15,NULL,NULL),(16,1350100,'Consignacion','2015-05-12','987654321',15,NULL,NULL),(17,13501000,'Retiro','2015-05-12',NULL,1,NULL,NULL),(18,9450100,'Retiro','2015-05-12',NULL,1,NULL,NULL),(19,8649899,'PagoServicio','2015-05-12',NULL,15,'clarote111','123456abc111'),(20,800000,'Consignacion','2015-05-12','987654321',17,NULL,NULL),(21,10000,'Consignacion','2015-05-12','987654321',16,NULL,NULL),(22,10000,'Consignacion','2015-05-12','987654321',16,NULL,NULL),(23,80000,'Consignacion','2015-05-12','987654321',16,NULL,NULL),(24,1000000000,'Retiro','2015-05-12',NULL,15,NULL,NULL),(25,999999,'Retiro','2015-05-12',NULL,15,NULL,NULL),(26,8000000,'TransferenciaCuenta','2015-05-12','1022333357',16,NULL,NULL),(27,1000,'PagoServicio','2015-05-12',NULL,14,'cote111','123456c111'),(28,8000000,'PagoServicio','2015-05-12',NULL,15,'fisic','102222666'),(29,999999,'PagoTarjeta','2015-05-12',NULL,15,NULL,NULL),(30,1000,'PagoPrestamo','2015-05-12',NULL,15,NULL,NULL),(31,50000000,'PagoTarjeta','2015-05-12',NULL,17,NULL,NULL),(32,40000000,'PagoPrestamo','2015-05-12',NULL,17,NULL,NULL),(33,888888,'PagoPrestamo','2015-05-12',NULL,15,NULL,NULL),(34,100000,'Retiro','2015-05-12',NULL,1,NULL,NULL),(35,400000,'Retiro','2015-05-12',NULL,1,NULL,NULL),(36,200000,'Consignacion','2015-05-12','987654322',19,NULL,NULL),(37,200000,'TransferenciaCuenta','2015-05-12','987654322',1,NULL,NULL),(38,100000,'Consignacion','2015-05-12','987654322',1,NULL,NULL),(39,100,'PagoTarjeta','2015-05-12',NULL,1,NULL,NULL),(40,8000000,'Retiro','2015-05-12',NULL,24,NULL,NULL),(41,100000,'PagoTarjeta','2015-05-12',NULL,1,NULL,NULL),(42,200,'PagoTarjeta','2015-05-12',NULL,1,NULL,NULL),(43,1000,'PagoTarjeta','2015-05-12',NULL,2,NULL,NULL),(44,1000,'PagoTarjeta','2015-05-12',NULL,2,NULL,NULL),(45,300000,'PagoTarjeta','2015-05-12',NULL,1,NULL,NULL),(46,1000,'PagoTarjeta','2015-05-12',NULL,2,NULL,NULL),(47,1000,'PagoTarjeta','2015-05-12',NULL,2,NULL,NULL),(48,1000,'PagoTarjeta','2015-05-12',NULL,2,NULL,NULL),(49,1000,'Consignacion','2015-05-12','987654322',1,NULL,NULL),(50,30000,'Consignacion','2015-05-12','987654322',1,NULL,NULL),(51,30000,'Retiro','2015-05-12',NULL,1,NULL,NULL),(52,300000,'TransferenciaCuenta','2015-05-13','987654322',1,NULL,NULL),(53,10000,'TransferenciaCuenta','2015-05-13','987654321',19,NULL,NULL),(54,100,'PagoTarjeta','2015-05-13',NULL,1,NULL,NULL),(55,100,'PagoTarjeta','2015-05-13',NULL,1,NULL,NULL),(56,100,'PagoPrestamo','2015-05-13',NULL,1,NULL,NULL),(57,100,'TransferenciaCuenta','2015-05-15','987654322',1,NULL,NULL),(58,1000,'TransferenciaCuenta','2015-05-15','987654322',1,NULL,NULL),(59,10000,'TransferenciaCuenta','2015-05-15','987654322',1,NULL,NULL),(60,40000,'TransferenciaCuenta','2015-05-15','987654322',1,NULL,NULL),(61,40000,'TransferenciaCuenta','2015-05-15','987654322',1,NULL,NULL),(62,48000,'TransferenciaCuenta','2015-05-15','987654322',1,NULL,NULL),(63,1000,'PagoTarjeta','2015-05-15',NULL,2,NULL,NULL),(64,48000,'Consignacion','2015-05-15','987654322',1,NULL,NULL),(65,100000,'Retiro','2015-05-15',NULL,1,NULL,NULL),(66,78000,'TransferenciaCuenta','2015-05-15','987654321',19,NULL,NULL),(67,100000,'PagoTarjeta','2015-05-15',NULL,1,NULL,NULL),(68,30000,'PagoServicio','2015-05-15',NULL,1,'LlanoGas','45312121');
/*!40000 ALTER TABLE `transaccion` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `transaccionInsert` AFTER INSERT ON `transaccion`
 FOR EACH ROW insert into log_transaccion (monto, tipo_transferencia, fecha, cuentaDestino, Cuenta_id, empresa, codigoRecibo, tipo)
values (new.monto_transferencia, new.tipo_transferencia, now(), new.cuentaDestino, new.Cuenta_id, new.empresa, new.codigoRecibo, 1) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `transaccionUpdate` AFTER UPDATE ON `transaccion`
 FOR EACH ROW insert into log_transaccion (monto, tipo_trasnferencia, fecha, cuentaDestino, Cuenta_id, empresa, codigoRecibo, tipo)
values (new.monto_transferencia, old.tipo_transferencia, now(), old.cuentaDestino, old.Cuenta_id, old.empresa, old.codigoRecibo, 2) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `transaccionDelete` AFTER DELETE ON `transaccion`
 FOR EACH ROW insert into log_transaccion (monto, tipo_trasnferencia, fecha, cuentaDestino, Cuenta_id, empresa, codigoRecibo, tipo)
values (old.monto_transferencia, old.tipo_transferencia, now(), old.cuentaDestino, old.Cuenta_id, old.empresa, old.codigoRecibo, 3) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'banca'
--

--
-- Dumping routines for database 'banca'
--
/*!50003 DROP PROCEDURE IF EXISTS `buscarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarCliente`(in numI varchar(45))
begin
declare clienteid int;
declare claveV varchar(45);
select t1.Cliente_id,t2.claveVirtual_cuenta from cliente as t1 inner join cuenta as t2 on t1.Cliente_id=t2.Cliente_id where cedula_cliente=numI;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarIdCuenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarIdCuenta`(in numC varchar(45))
begin
declare cuentaId int;
select Cuenta_id into cuentaId from cuenta where numero_cuenta=numC;
select cuentaId;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultaCredito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultaCredito`(in numI varchar(45))
begin
select * from estadocreditos where cedula_cliente=numI;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultaCuenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultaCuenta`(in numI varchar(45))
begin
select * from estadocuentas where cedula_cliente=numI;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consultaTotal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultaTotal`(in numI varchar(45))
begin
select * from estadototal where cedula_cliente=numI;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `iniciarSesion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `iniciarSesion`(in ceduC varchar(45), in claveV varchar(45))
begin
declare idCl integer;
declare cedula varchar(45);
declare nombre varchar(100);
declare apellido varchar(100);
declare idCu integer;
declare pwd varchar(30);

declare val boolean;

select t1.Cliente_id, t1.cedula_cliente, t1.nombre_cliente, t1.apellido_cliente, t2.Cuenta_id, t2.claveVirtual_cuenta 
into idCl, cedula, nombre, apellido, idCu, pwd from cliente as t1 
inner join cuenta as t2 on t1.Cliente_id=t2.Cliente_id where t1.cedula_cliente=ceduC limit 1;

if(cedula=ceduC and pwd=claveV) then
set val=true;
else
set val=false;
end if;

select val, idCl, nombre, apellido, idCu;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `trans1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `trans1`(in cuenta varchar(45), in pass varchar(45),in destino varchar(45),in monto int,in tipo varchar(5), out num int)
Begin
declare exist int;
declare clave varchar(45);
declare valor int;
declare id_cuenta int(11);   
	select count(*) into exist from cuenta where numero_cuenta=destino or numero_cuenta=cuenta ;
    if exist=2 then
    	select clave_cuenta into clave from cuenta where numero_cuenta=cuenta;
        if clave=pass then
        	select saldoActual_cuenta into valor from cuenta where numero_cuenta=cuenta;
            if valor>=monto then
            	select cuenta_id into id_cuenta from cuenta where numero_cuenta=cuenta;
            	update cuenta set saldoActual_cuenta=saldoActual_cuenta-monto where numero_cuenta=cuenta;
                update cuenta set saldoActual_cuenta=saldoActual_cuenta+monto where numero_cuenta=destino;
                insert into transaccion (monto_transferencia, tipo_transferencia, fecha_transferencia, cuentaDestino, cuenta_id) values(monto,tipo,now(),destino, id_cuenta);
                       set num=4;
           else
            	set num=3;
            end if;
        else
        	set num=2;
        end if;
    else
    	set num=1;
    end if;
    select num;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `trans2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `trans2`(in cuenta varchar(45), in pass varchar(45),in monto int ,in tipo varchar(5), out num int)
Begin
	declare exist int;
    declare clave varchar(45);
    declare valor int;
    declare id_cuenta int(11);
    
	select count(*) into exist from cuenta where numero_cuenta=cuenta ;
    if exist=1 then
    	select clave_cuenta into clave from cuenta where numero_cuenta=cuenta;
        if clave=pass then
        	select saldoActual_cuenta into valor from cuenta where numero_cuenta=cuenta;
            if valor>=monto then
            	select cuenta_id into id_cuenta from cuenta where numero_cuenta=cuenta;
            	update cuenta set saldoActual_cuenta=saldoActual_cuenta-monto where numero_cuenta=cuenta;
                insert into transaccion (monto_transferencia, tipo_transferencia, fecha_transferencia, cuenta_id) values(monto,tipo,now(), id_cuenta);
            	
               set num=4;
           else
            	set num=3;
            end if;
        else
        	set num=2;
        end if;
    else
    	set num=1;
    end if;
    select num;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `trans3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `trans3`(in cuenta varchar(45), in pass varchar(45),in monto int, in nombre varchar(45),in recibo varchar(45),in tipo varchar(5), out num int)
Begin
	declare exist int;
    declare clave varchar(45);
    declare valor int;
    declare id_cuenta int(11);
    
	select count(*) into exist from cuenta where numero_cuenta=cuenta ;
    if exist=1 then
    	select clave_cuenta into clave from cuenta where numero_cuenta=cuenta;
        if clave=pass then
        	select saldoActual_cuenta into valor from cuenta where numero_cuenta=cuenta;
            if valor>=monto then
            	select cuenta_id into id_cuenta from cuenta where numero_cuenta=cuenta;
            	update cuenta set saldoActual_cuenta=saldoActual_cuenta-monto where numero_cuenta=cuenta;
                insert into transaccion (monto_transferencia, tipo_transferencia, fecha_transferencia, cuenta_id, empresa,codigoRecibo) values(monto,tipo,now(), id_cuenta,nombre,recibo);
            	
               set num=4;
           else
            	set num=3;
            end if;
        else
        	set num=2;
        end if;
    else
    	set num=1;
    end if;
    select num;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `trans4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `trans4`(in cuenta varchar(45), in pass varchar(45),in credito varchar(45),in monto int,in tipo varchar(5), out num int)
Begin
	declare exist int;
    declare exist2 int;
    declare clave varchar(45);
    declare valor int;
    declare id_cuenta int(11);
    declare id_credito int(11);
    
    select count(*) into exist from cuenta where numero_cuenta=cuenta ;
    select count(*) into exist2 from credito where numero_credito=credito;
    if exist=1 and exist2=1 then
    	select clave_cuenta into clave from cuenta where numero_cuenta=cuenta;
        if clave=pass then
        	select saldoActual_cuenta into valor from cuenta where numero_cuenta=cuenta;
            if valor>=monto then
            	select cuenta_id into id_cuenta from cuenta where numero_cuenta=cuenta;
            	update cuenta set saldoActual_cuenta=saldoActual_cuenta-monto where numero_cuenta=cuenta;
                                
                select credito_id into id_credito from credito where numero_credito=credito;
                 
                insert into transaccion (monto_transferencia, tipo_transferencia, fecha_transferencia, cuenta_id) values(monto,tipo,now(), id_cuenta);
                  
                if tipo='4' then
					update credito set monto_credito=monto_credito-monto where numero_credito=credito and tipo_credito='Tarjeta';
                     insert into pago_tarjeta (transaccion_id,credito_id) values(LAST_INSERT_ID(),id_credito);
                     set num=4;
                else if tipo='6' then
                 	insert into pago_prestamo (transaccion_id,credito_id) values(LAST_INSERT_ID(),id_credito);
                    update credito set monto_credito=monto_credito-monto where numero_credito=credito and tipo_credito='Prestamo';
                     set num=4;
                else
                     set num=5;
               	end if;
                end if;
           else
            	set num=3;
            end if;
        else
        	set num=2;
        end if;
    else
    	set num=1;
    end if;
    select num;
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `estadocreditos`
--

/*!50001 DROP TABLE IF EXISTS `estadocreditos`*/;
/*!50001 DROP VIEW IF EXISTS `estadocreditos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `estadocreditos` AS select `t2`.`cedula_cliente` AS `cedula_cliente`,`t3`.`Credito_id` AS `Credito_id`,`t3`.`tipo_credito` AS `tipo_credito`,`t3`.`monto_credito` AS `monto_credito` from ((`cuenta` `t1` join `cliente` `t2` on((`t1`.`Cliente_id` = `t2`.`Cliente_id`))) join `credito` `t3` on((`t3`.`Cuenta_id` = `t1`.`Cuenta_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `estadocuentas`
--

/*!50001 DROP TABLE IF EXISTS `estadocuentas`*/;
/*!50001 DROP VIEW IF EXISTS `estadocuentas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `estadocuentas` AS select `t1`.`Cliente_id` AS `Cliente_id`,`t1`.`nombre_cliente` AS `nombre_cliente`,`t1`.`apellido_cliente` AS `apellido_cliente`,`t1`.`cedula_cliente` AS `cedula_cliente`,`t2`.`Cuenta_id` AS `Cuenta_id`,`t2`.`numero_cuenta` AS `numero_cuenta`,`t2`.`saldoActual_cuenta` AS `saldoActual_cuenta` from (`cliente` `t1` join `cuenta` `t2` on((`t1`.`Cliente_id` = `t2`.`Cliente_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `estadototal`
--

/*!50001 DROP TABLE IF EXISTS `estadototal`*/;
/*!50001 DROP VIEW IF EXISTS `estadototal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `estadototal` AS select `t1`.`Cliente_id` AS `Cliente_id`,`t1`.`nombre_cliente` AS `nombre_cliente`,`t1`.`apellido_cliente` AS `apellido_cliente`,`t1`.`cedula_cliente` AS `cedula_cliente`,`t2`.`Cuenta_id` AS `Cuenta_id`,`t2`.`numero_cuenta` AS `numero_cuenta`,`t2`.`saldoActual_cuenta` AS `saldoActual_cuenta`,`t3`.`Credito_id` AS `Credito_id`,`t3`.`tipo_credito` AS `tipo_credito`,`t3`.`monto_credito` AS `monto_credito`,`t4`.`Transaccion_id` AS `Transaccion_id`,`t4`.`monto_transferencia` AS `monto_transferencia`,`t4`.`tipo_Transferencia` AS `tipo_Transferencia`,`t4`.`fecha_transferencia` AS `fecha_transferencia` from (((`cliente` `t1` join `cuenta` `t2` on((`t1`.`Cliente_id` = `t2`.`Cliente_id`))) join `credito` `t3` on((`t2`.`Cuenta_id` = `t3`.`Cuenta_id`))) join `transaccion` `t4` on((`t2`.`Cuenta_id` = `t4`.`Cuenta_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `resumen_movimientos`
--

/*!50001 DROP TABLE IF EXISTS `resumen_movimientos`*/;
/*!50001 DROP VIEW IF EXISTS `resumen_movimientos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `resumen_movimientos` AS select `t6`.`Cliente_id` AS `cliente_id`,`t1`.`Cuenta_id` AS `cuenta_id`,`t1`.`monto_transferencia` AS `monto`,`t1`.`tipo_Transferencia` AS `tipo`,`t1`.`fecha_transferencia` AS `fecha`,`t1`.`cuentaDestino` AS `destino`,`t4`.`numero_credito` AS `num_credito`,`t1`.`empresa` AS `empresa`,`t1`.`codigoRecibo` AS `codigo`,`t5`.`numero_cuenta` AS `numero_cuenta`,`t7`.`Cliente_id` AS `destino_id` from ((((((`transaccion` `t1` left join `pago_tarjeta` `t2` on((`t1`.`Transaccion_id` = `t2`.`Transaccion_id`))) left join `pago_prestamo` `t3` on((`t1`.`Transaccion_id` = `t3`.`Transaccion_id`))) left join `credito` `t4` on(((`t2`.`Credito_id` = `t4`.`Credito_id`) or (`t3`.`Credito_id` = `t4`.`Credito_id`)))) left join `cuenta` `t5` on((`t1`.`Cuenta_id` = `t5`.`Cuenta_id`))) left join `cliente` `t6` on((`t5`.`Cliente_id` = `t6`.`Cliente_id`))) left join `cuenta` `t7` on((`t1`.`cuentaDestino` = `t7`.`numero_cuenta`))) order by `t1`.`fecha_transferencia` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-15  2:01:15
