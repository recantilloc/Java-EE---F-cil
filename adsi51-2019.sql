CREATE DATABASE  IF NOT EXISTS `adsi51` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `adsi48`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: adsi48
-- ------------------------------------------------------
-- Server version	5.6.21-log

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
-- Table structure for table `aprendices`
--

DROP TABLE IF EXISTS `aprendices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aprendices` (
  `id_aprendices` int(11) NOT NULL AUTO_INCREMENT,
  `apellido1` varchar(45) DEFAULT NULL,
  `apellido2` varchar(45) DEFAULT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `documento` varchar(45) DEFAULT NULL,
  `fk_curso` int(11) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_aprendices`),
  KEY `fk_aprendices_cursos_idx` (`fk_curso`),
  CONSTRAINT `fk_aprendices_cursos` FOREIGN KEY (`fk_curso`) REFERENCES `cursos` (`id_curso`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='Esta tabla almacena la ikasjdksajdkasjdksaj';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aprendices`
--

LOCK TABLES `aprendices` WRITE;
/*!40000 ALTER TABLE `aprendices` DISABLE KEYS */;
INSERT INTO `aprendices` VALUES (1,'CABALLERO','MONTENEGRO','JUAN MANUEL','1079940222',1,18),(2,'CARO','VANEGAS','OSMAN ALFONSO','1045738818',2,19),(3,'DOVALE','ARRIETA','JESUS ENRIQUE','1002500235',3,18),(4,'GALOFRE','ALVAREZ','RODOLFO ANTONIO','1050973574',4,17),(5,'GUTIERREZ','CASTRO','EDINSON MANUEL','1234094757',5,20),(6,'GUTIERREZ','FRUTO','ROBERTO MIGUEL','1047361068',3,21),(7,'MACHADO','GUZMAN','GILBERT ELIAS','1002130170',3,23),(8,'MACKENZIE','GUTIERREZ','MIGUEL ANGEL','1143453009',1,25),(9,'MARTINEZ','ARIZA','HEYDER LUIS','1044332475',4,16),(10,'MONROY','MEDINA','DIEGO ALFREDO','1002234301',4,17),(11,'MUÑOZ','PIZARRO','SAMIRA MARGARITA','1047362240',4,17),(12,'PASOS','RUIZ','TALHIA','1042460474',4,19),(13,'PATIÑO','SUAREZ','CRISTIAN MANUEL','1081835378',4,20),(14,'PEREZ','ESQUEA','KATERIN JOHANA','1081765262',4,23),(15,'POLO','CASTILLO','JESUS ALBERTO','1001938580',4,25),(16,'RODRIGUEZ','FIGUEROA','JORDY ANDRES','1234888222',4,27),(17,'RODRIGUEZ','LERMA','JOSE GREGORIO','1002420753',4,30),(18,'ROJANO','PACHECO','ALEXANDER','1043150470',4,19),(19,'SALGADO','CONTRERAS','NILSON JOSE','1001821306',4,26),(20,'SANTANA','RIOS','ERBIN ANTONIO','1234093264',4,22),(21,'SUAREZ','SALAS','HUMBERTO LUIS','1140882798',5,22),(22,'TORRES','ARCHBOLD','ANGEL JUNIOR','1042464794',2,22),(23,'TORRES','BULA','JHON MIGUEL','1010148563',3,22),(24,'VIZCAINO','DIAZ','BRIAN SNEYDER','1042457257',3,22),(25,'CANTIILLO','CARRILLO','RICARDO ENRIQUE','72201581',3,30);
/*!40000 ALTER TABLE `aprendices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_curso` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_curso`),
  UNIQUE KEY `IND_UNQ` (`nombre_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'ADSI 47'),(2,'ADSI 48'),(3,'ADSI 49'),(4,'ADSI 50'),(5,'ADSI 51'),(6,'ADSI 52');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `datos_aprendices`
--

DROP TABLE IF EXISTS `datos_aprendices`;
/*!50001 DROP VIEW IF EXISTS `datos_aprendices`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `datos_aprendices` (
  `id_aprendiz` tinyint NOT NULL,
  `nombres` tinyint NOT NULL,
  `Apellidos` tinyint NOT NULL,
  `edad` tinyint NOT NULL,
  `promedio` tinyint NOT NULL,
  `id_curso` tinyint NOT NULL,
  `Tipo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_aprendices`
--

DROP TABLE IF EXISTS `v_aprendices`;
/*!50001 DROP VIEW IF EXISTS `v_aprendices`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_aprendices` (
  `id_aprendices` tinyint NOT NULL,
  `documento` tinyint NOT NULL,
  `apellido1` tinyint NOT NULL,
  `apellido2` tinyint NOT NULL,
  `nombres` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'adsi48'
--
/*!50003 DROP FUNCTION IF EXISTS `f_promedio_edad_curso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `f_promedio_edad_curso`(  CURSO_P INTEGER) RETURNS double
BEGIN

DECLARE promedio double;  

SELECT ROUND(avg(edad),2) INTO PROMEDIO FROM aprendices a, cursos c 
where a.fk_curso = c.id_curso and  c.id_curso = CURSO_P ;


RETURN promedio ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `datos_aprendices`
--

/*!50001 DROP TABLE IF EXISTS `datos_aprendices`*/;
/*!50001 DROP VIEW IF EXISTS `datos_aprendices`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `datos_aprendices` AS select `ap`.`id_aprendices` AS `id_aprendiz`,`ap`.`nombres` AS `nombres`,concat(`ap`.`apellido1`,' ',`ap`.`apellido2`) AS `Apellidos`,`ap`.`edad` AS `edad`,`f_promedio_edad_curso`(`ap`.`fk_curso`) AS `promedio`,`ap`.`fk_curso` AS `id_curso`,(case when (`ap`.`edad` > `f_promedio_edad_curso`(`ap`.`fk_curso`)) then 'Edad Mayor al Promedio' when (`ap`.`edad` < `f_promedio_edad_curso`(`ap`.`fk_curso`)) then 'Edad Menor al Promedio' else 'Tiene la Edad Promedio' end) AS `Tipo` from `aprendices` `ap` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_aprendices`
--

/*!50001 DROP TABLE IF EXISTS `v_aprendices`*/;
/*!50001 DROP VIEW IF EXISTS `v_aprendices`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_aprendices` AS select `aprendices`.`id_aprendices` AS `id_aprendices`,`aprendices`.`documento` AS `documento`,`aprendices`.`apellido1` AS `apellido1`,`aprendices`.`apellido2` AS `apellido2`,`aprendices`.`nombres` AS `nombres` from `aprendices` */;
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

-- Dump completed on 2018-11-06 10:39:12
