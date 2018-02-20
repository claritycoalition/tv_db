-- MySQL dump 10.16  Distrib 10.1.31-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: clarity
-- ------------------------------------------------------
-- Server version	10.1.31-MariaDB

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
-- Table structure for table `V3_area`
--

DROP TABLE IF EXISTS `V3_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_area` (
  `loc` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`loc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_area`
--

LOCK TABLES `V3_area` WRITE;
/*!40000 ALTER TABLE `V3_area` DISABLE KEYS */;
INSERT INTO `V3_area` VALUES ('ARG');
/*!40000 ALTER TABLE `V3_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V3_entity`
--

DROP TABLE IF EXISTS `V3_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_entity` (
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loc` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_entity`
--

LOCK TABLES `V3_entity` WRITE;
/*!40000 ALTER TABLE `V3_entity` DISABLE KEYS */;
INSERT INTO `V3_entity` VALUES ('ARGNAT','ARG'),('ECOCHE','ARG');
/*!40000 ALTER TABLE `V3_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V3_entity_item`
--

DROP TABLE IF EXISTS `V3_entity_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_entity_item` (
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `kg_yr` bigint(11) DEFAULT NULL,
  `gdp` bigint(16) DEFAULT NULL,
  `c_kg_val` float(16,4) DEFAULT NULL,
  `c_gdp_pp_yr` float(16,4) DEFAULT NULL,
  `c_kg_pp_yr` float(16,4) DEFAULT NULL,
  PRIMARY KEY (`entity`,`item`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_entity_item`
--

LOCK TABLES `V3_entity_item` WRITE;
/*!40000 ALTER TABLE `V3_entity_item` DISABLE KEYS */;
INSERT INTO `V3_entity_item` VALUES ('ARGNAT','AVO',2014,3877000,2686838,NULL,NULL,NULL),('ARGNAT','COW',2014,2821700000,7037021448,NULL,NULL,NULL),('ARGNAT','CPE',2014,54508000,26385703,NULL,NULL,NULL),('ARGNAT','MIL',2014,11009900000,3435760403,NULL,NULL,NULL),('ARGNAT','PER',2014,771271000,315319521,NULL,NULL,NULL),('ARGNAT','WHT',2014,9315049000,1469747061,NULL,NULL,NULL),('ECOCHE','AVO',2014,319740,NULL,NULL,NULL,NULL),('ECOCHE','COW',2014,0,NULL,NULL,NULL,NULL),('ECOCHE','CPE',2014,532900,NULL,NULL,NULL,NULL),('ECOCHE','MIL',2014,6021770,NULL,NULL,NULL,NULL),('ECOCHE','PER',2014,1065800,NULL,NULL,NULL,NULL),('ECOCHE','WHT',2014,532900,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `V3_entity_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V3_entity_service`
--

DROP TABLE IF EXISTS `V3_entity_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_entity_service` (
  `entity_name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_pop` bigint(16) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `c_tot_kg` float(16,6) DEFAULT NULL,
  PRIMARY KEY (`entity_name`,`service_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_entity_service`
--

LOCK TABLES `V3_entity_service` WRITE;
/*!40000 ALTER TABLE `V3_entity_service` DISABLE KEYS */;
INSERT INTO `V3_entity_service` VALUES ('ECOCHE','ECOMEAL',18250,2014,10000000000.000000);
/*!40000 ALTER TABLE `V3_entity_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V3_entity_stats`
--

DROP TABLE IF EXISTS `V3_entity_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_entity_stats` (
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pop` bigint(16) DEFAULT NULL,
  `gdp` bigint(16) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`entity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_entity_stats`
--

LOCK TABLES `V3_entity_stats` WRITE;
/*!40000 ALTER TABLE `V3_entity_stats` DISABLE KEYS */;
INSERT INTO `V3_entity_stats` VALUES ('ARGNAT',43850000,545900000000,2014),('ECOCHE',18250,98587,2014);
/*!40000 ALTER TABLE `V3_entity_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V3_item`
--

DROP TABLE IF EXISTS `V3_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_item` (
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_item`
--

LOCK TABLES `V3_item` WRITE;
/*!40000 ALTER TABLE `V3_item` DISABLE KEYS */;
INSERT INTO `V3_item` VALUES ('AVO'),('COW'),('CPE'),('MIL'),('PER'),('WHT');
/*!40000 ALTER TABLE `V3_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V3_item_resource`
--

DROP TABLE IF EXISTS `V3_item_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_item_resource` (
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resource` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `res_unit_gdp_mean` float(16,4) DEFAULT NULL,
  `res_unit_gdp_std` float(16,4) DEFAULT NULL,
  `res_unit_gdp_stddev` float(16,4) DEFAULT NULL,
  `res_unit_gdp_stddev_pop` float(16,4) DEFAULT NULL,
  `res_unit_gdp_stddev_samp` float(16,4) DEFAULT NULL,
  `c_kg_val` float(16,4) DEFAULT NULL,
  `c_gdp_val` float(16,4) DEFAULT NULL,
  `c_gdp_pp_yr` float(16,4) DEFAULT NULL,
  `c_kg_pp_yr` float(16,4) DEFAULT NULL,
  PRIMARY KEY (`item`,`resource`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_item_resource`
--

LOCK TABLES `V3_item_resource` WRITE;
/*!40000 ALTER TABLE `V3_item_resource` DISABLE KEYS */;
INSERT INTO `V3_item_resource` VALUES ('AVO','CO2',2014,0.7187,0.2046,0.2046,0.2046,0.2506,NULL,NULL,NULL,NULL),('AVO','EDU',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('AVO','EXT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('AVO','HEA',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('AVO','IMP',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('AVO','JOB',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('AVO','LDT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('AVO','PEN',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('AVO','WAT',2014,1085.0000,85.0000,85.0000,85.0000,120.2082,NULL,NULL,NULL,NULL),('COW','CO2',2014,29.9533,2.1396,2.1396,2.1396,2.6204,NULL,NULL,NULL,NULL),('COW','EDU',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('COW','EXT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('COW','HEA',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('COW','IMP',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('COW','JOB',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('COW','LDT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('COW','PEN',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('COW','WAT',2014,15298.5000,214.6724,214.6724,214.6724,247.8824,NULL,NULL,NULL,NULL),('CPE','CO2',2014,0.7167,0.0974,0.0974,0.0974,0.1193,NULL,NULL,NULL,NULL),('CPE','EDU',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('CPE','EXT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('CPE','HEA',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('CPE','IMP',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('CPE','JOB',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('CPE','LDT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('CPE','PEN',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('CPE','WAT',2014,4079.0000,79.0000,79.0000,79.0000,111.7229,NULL,NULL,NULL,NULL),('MIL','CO2',2014,0.8600,0.3238,0.3238,0.3238,0.3966,NULL,NULL,NULL,NULL),('MIL','EDU',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('MIL','EXT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('MIL','HEA',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('MIL','IMP',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('MIL','JOB',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('MIL','LDT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('MIL','PEN',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('MIL','WAT',2014,1010.0000,10.0000,10.0000,10.0000,14.1421,NULL,NULL,NULL,NULL),('PER','CO2',2014,0.6550,0.2250,0.2250,0.2250,0.3182,NULL,NULL,NULL,NULL),('PER','EDU',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('PER','EXT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('PER','HEA',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('PER','IMP',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('PER','JOB',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('PER','LDT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('PER','PEN',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('PER','WAT',2014,911.0000,89.0000,89.0000,89.0000,125.8650,NULL,NULL,NULL,NULL),('WHT','CO2',2014,0.6375,0.3467,0.3467,0.3467,0.4004,NULL,NULL,NULL,NULL),('WHT','EDU',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('WHT','EXT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('WHT','HEA',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('WHT','IMP',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('WHT','JOB',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('WHT','LDT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('WHT','PEN',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('WHT','WAT',2014,1466.6667,124.7219,124.7219,124.7219,152.7525,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `V3_item_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V3_item_resource_stats`
--

DROP TABLE IF EXISTS `V3_item_resource_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_item_resource_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `unit_gdp` float(16,4) DEFAULT NULL,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_item_resource_stats`
--

LOCK TABLES `V3_item_resource_stats` WRITE;
/*!40000 ALTER TABLE `V3_item_resource_stats` DISABLE KEYS */;
INSERT INTO `V3_item_resource_stats` VALUES (1,'AVO','CO2',2014,NULL,'src-1'),(2,'AVO','CO2',2014,0.4300,'src-2'),(3,'AVO','CO2',2014,0.8800,'src-3'),(4,'AVO','CO2',2014,NULL,'src-4'),(5,'AVO','CO2',2014,0.8460,'src-5'),(6,'AVO','CO2',2014,NULL,'src-6'),(7,'COW','CO2',2014,30.8600,'src-1'),(8,'COW','CO2',2014,NULL,'src-2'),(9,'COW','CO2',2014,32.0000,'src-3'),(10,'COW','CO2',2014,NULL,'src-4'),(11,'COW','CO2',2014,NULL,'src-5'),(12,'COW','CO2',2014,27.0000,'src-6'),(13,'CPE','CO2',2014,NULL,'src-1'),(14,'CPE','CO2',2014,0.7700,'src-2'),(15,'CPE','CO2',2014,0.8000,'src-3'),(16,'CPE','CO2',2014,0.5800,'src-4'),(17,'CPE','CO2',2014,NULL,'src-5'),(18,'CPE','CO2',2014,NULL,'src-6'),(19,'MIL','CO2',2014,0.4200,'src-1'),(20,'MIL','CO2',2014,1.1900,'src-2'),(21,'MIL','CO2',2014,NULL,'src-3'),(22,'MIL','CO2',2014,0.9700,'src-4'),(23,'MIL','CO2',2014,NULL,'src-5'),(24,'MIL','CO2',2014,NULL,'src-6'),(25,'PER','CO2',2014,NULL,'src-1'),(26,'PER','CO2',2014,0.4300,'src-2'),(27,'PER','CO2',2014,0.8800,'src-3'),(28,'PER','CO2',2014,NULL,'src-4'),(29,'PER','CO2',2014,NULL,'src-5'),(30,'PER','CO2',2014,NULL,'src-6'),(31,'WHT','CO2',2014,0.1400,'src-1'),(32,'WHT','CO2',2014,0.6300,'src-2'),(33,'WHT','CO2',2014,0.6600,'src-3'),(34,'WHT','CO2',2014,1.1200,'src-4'),(35,'WHT','CO2',2014,NULL,'src-5'),(36,'WHT','CO2',2014,NULL,'src-6'),(37,'AVO','WAT',2014,NULL,'src-1'),(38,'AVO','WAT',2014,NULL,'src-2'),(39,'AVO','WAT',2014,NULL,'src-3'),(40,'AVO','WAT',2014,1170.0000,'src-4'),(41,'AVO','WAT',2014,1000.0000,'src-5'),(42,'AVO','WAT',2014,NULL,'src-6'),(43,'COW','WAT',2014,15500.0000,'src-1'),(44,'COW','WAT',2014,15415.0000,'src-2'),(45,'COW','WAT',2014,14940.0000,'src-3'),(46,'COW','WAT',2014,15339.0000,'src-4'),(47,'COW','WAT',2014,NULL,'src-5'),(48,'COW','WAT',2014,NULL,'src-6'),(49,'CPE','WAT',2014,NULL,'src-1'),(50,'CPE','WAT',2014,NULL,'src-2'),(51,'CPE','WAT',2014,NULL,'src-3'),(52,'CPE','WAT',2014,4158.0000,'src-4'),(53,'CPE','WAT',2014,4000.0000,'src-5'),(54,'CPE','WAT',2014,NULL,'src-6'),(55,'MIL','WAT',2014,1000.0000,'src-1'),(56,'MIL','WAT',2014,1020.0000,'src-2'),(57,'MIL','WAT',2014,NULL,'src-3'),(58,'MIL','WAT',2014,NULL,'src-4'),(59,'MIL','WAT',2014,NULL,'src-5'),(60,'MIL','WAT',2014,NULL,'src-6'),(61,'PER','WAT',2014,NULL,'src-1'),(62,'PER','WAT',2014,822.0000,'src-2'),(63,'PER','WAT',2014,NULL,'src-3'),(64,'PER','WAT',2014,NULL,'src-4'),(65,'PER','WAT',2014,1000.0000,'src-5'),(66,'PER','WAT',2014,NULL,'src-6'),(67,'WHT','WAT',2014,1300.0000,'src-1'),(68,'WHT','WAT',2014,NULL,'src-2'),(69,'WHT','WAT',2014,NULL,'src-3'),(70,'WHT','WAT',2014,NULL,'src-4'),(71,'WHT','WAT',2014,1600.0000,'src-5'),(72,'WHT','WAT',2014,1500.0000,'src-6'),(73,'AVO','IMP',2014,NULL,'src-1'),(74,'AVO','IMP',2014,NULL,'src-2'),(75,'AVO','IMP',2014,NULL,'src-3'),(76,'AVO','IMP',2014,NULL,'src-4'),(77,'AVO','IMP',2014,NULL,'src-5'),(78,'AVO','IMP',2014,NULL,'src-6'),(79,'COW','IMP',2014,NULL,'src-1'),(80,'COW','IMP',2014,NULL,'src-2'),(81,'COW','IMP',2014,NULL,'src-3'),(82,'COW','IMP',2014,NULL,'src-4'),(83,'COW','IMP',2014,NULL,'src-5'),(84,'COW','IMP',2014,NULL,'src-6'),(85,'CPE','IMP',2014,NULL,'src-1'),(86,'CPE','IMP',2014,NULL,'src-2'),(87,'CPE','IMP',2014,NULL,'src-3'),(88,'CPE','IMP',2014,NULL,'src-4'),(89,'CPE','IMP',2014,NULL,'src-5'),(90,'CPE','IMP',2014,NULL,'src-6'),(91,'MIL','IMP',2014,NULL,'src-1'),(92,'MIL','IMP',2014,NULL,'src-2'),(93,'MIL','IMP',2014,NULL,'src-3'),(94,'MIL','IMP',2014,NULL,'src-4'),(95,'MIL','IMP',2014,NULL,'src-5'),(96,'MIL','IMP',2014,NULL,'src-6'),(97,'PER','IMP',2014,NULL,'src-1'),(98,'PER','IMP',2014,NULL,'src-2'),(99,'PER','IMP',2014,NULL,'src-3'),(100,'PER','IMP',2014,NULL,'src-4'),(101,'PER','IMP',2014,NULL,'src-5'),(102,'PER','IMP',2014,NULL,'src-6'),(103,'WHT','IMP',2014,NULL,'src-1'),(104,'WHT','IMP',2014,NULL,'src-2'),(105,'WHT','IMP',2014,NULL,'src-3'),(106,'WHT','IMP',2014,NULL,'src-4'),(107,'WHT','IMP',2014,NULL,'src-5'),(108,'WHT','IMP',2014,NULL,'src-6'),(109,'AVO','EXP',2014,NULL,'src-1'),(110,'AVO','EXP',2014,NULL,'src-2'),(111,'AVO','EXP',2014,NULL,'src-3'),(112,'AVO','EXP',2014,NULL,'src-4'),(113,'AVO','EXP',2014,NULL,'src-5'),(114,'AVO','EXP',2014,NULL,'src-6'),(115,'COW','EXP',2014,NULL,'src-1'),(116,'COW','EXP',2014,NULL,'src-2'),(117,'COW','EXP',2014,NULL,'src-3'),(118,'COW','EXP',2014,NULL,'src-4'),(119,'COW','EXP',2014,NULL,'src-5'),(120,'COW','EXP',2014,NULL,'src-6'),(121,'CPE','EXP',2014,NULL,'src-1'),(122,'CPE','EXP',2014,NULL,'src-2'),(123,'CPE','EXP',2014,NULL,'src-3'),(124,'CPE','EXP',2014,NULL,'src-4'),(125,'CPE','EXP',2014,NULL,'src-5'),(126,'CPE','EXP',2014,NULL,'src-6'),(127,'MIL','EXP',2014,NULL,'src-1'),(128,'MIL','EXP',2014,NULL,'src-2'),(129,'MIL','EXP',2014,NULL,'src-3'),(130,'MIL','EXP',2014,NULL,'src-4'),(131,'MIL','EXP',2014,NULL,'src-5'),(132,'MIL','EXP',2014,NULL,'src-6'),(133,'PER','EXP',2014,NULL,'src-1'),(134,'PER','EXP',2014,NULL,'src-2'),(135,'PER','EXP',2014,NULL,'src-3'),(136,'PER','EXP',2014,NULL,'src-4'),(137,'PER','EXP',2014,NULL,'src-5'),(138,'PER','EXP',2014,NULL,'src-6'),(139,'WHT','EXP',2014,NULL,'src-1'),(140,'WHT','EXP',2014,NULL,'src-2'),(141,'WHT','EXP',2014,NULL,'src-3'),(142,'WHT','EXP',2014,NULL,'src-4'),(143,'WHT','EXP',2014,NULL,'src-5'),(144,'WHT','EXP',2014,NULL,'src-6'),(145,'AVO','PEN',2014,NULL,'src-1'),(146,'AVO','PEN',2014,NULL,'src-2'),(147,'AVO','PEN',2014,NULL,'src-3'),(148,'AVO','PEN',2014,NULL,'src-4'),(149,'AVO','PEN',2014,NULL,'src-5'),(150,'AVO','PEN',2014,NULL,'src-6'),(151,'COW','PEN',2014,NULL,'src-1'),(152,'COW','PEN',2014,NULL,'src-2'),(153,'COW','PEN',2014,NULL,'src-3'),(154,'COW','PEN',2014,NULL,'src-4'),(155,'COW','PEN',2014,NULL,'src-5'),(156,'COW','PEN',2014,NULL,'src-6'),(157,'CPE','PEN',2014,NULL,'src-1'),(158,'CPE','PEN',2014,NULL,'src-2'),(159,'CPE','PEN',2014,NULL,'src-3'),(160,'CPE','PEN',2014,NULL,'src-4'),(161,'CPE','PEN',2014,NULL,'src-5'),(162,'CPE','PEN',2014,NULL,'src-6'),(163,'MIL','PEN',2014,NULL,'src-1'),(164,'MIL','PEN',2014,NULL,'src-2'),(165,'MIL','PEN',2014,NULL,'src-3'),(166,'MIL','PEN',2014,NULL,'src-4'),(167,'MIL','PEN',2014,NULL,'src-5'),(168,'MIL','PEN',2014,NULL,'src-6'),(169,'PER','PEN',2014,NULL,'src-1'),(170,'PER','PEN',2014,NULL,'src-2'),(171,'PER','PEN',2014,NULL,'src-3'),(172,'PER','PEN',2014,NULL,'src-4'),(173,'PER','PEN',2014,NULL,'src-5'),(174,'PER','PEN',2014,NULL,'src-6'),(175,'WHT','PEN',2014,NULL,'src-1'),(176,'WHT','PEN',2014,NULL,'src-2'),(177,'WHT','PEN',2014,NULL,'src-3'),(178,'WHT','PEN',2014,NULL,'src-4'),(179,'WHT','PEN',2014,NULL,'src-5'),(180,'WHT','PEN',2014,NULL,'src-6'),(181,'AVO','LDT',2014,NULL,'src-1'),(182,'AVO','LDT',2014,NULL,'src-2'),(183,'AVO','LDT',2014,NULL,'src-3'),(184,'AVO','LDT',2014,NULL,'src-4'),(185,'AVO','LDT',2014,NULL,'src-5'),(186,'AVO','LDT',2014,NULL,'src-6'),(187,'COW','LDT',2014,NULL,'src-1'),(188,'COW','LDT',2014,NULL,'src-2'),(189,'COW','LDT',2014,NULL,'src-3'),(190,'COW','LDT',2014,NULL,'src-4'),(191,'COW','LDT',2014,NULL,'src-5'),(192,'COW','LDT',2014,NULL,'src-6'),(193,'CPE','LDT',2014,NULL,'src-1'),(194,'CPE','LDT',2014,NULL,'src-2'),(195,'CPE','LDT',2014,NULL,'src-3'),(196,'CPE','LDT',2014,NULL,'src-4'),(197,'CPE','LDT',2014,NULL,'src-5'),(198,'CPE','LDT',2014,NULL,'src-6'),(199,'MIL','LDT',2014,NULL,'src-1'),(200,'MIL','LDT',2014,NULL,'src-2'),(201,'MIL','LDT',2014,NULL,'src-3'),(202,'MIL','LDT',2014,NULL,'src-4'),(203,'MIL','LDT',2014,NULL,'src-5'),(204,'MIL','LDT',2014,NULL,'src-6'),(205,'PER','LDT',2014,NULL,'src-1'),(206,'PER','LDT',2014,NULL,'src-2'),(207,'PER','LDT',2014,NULL,'src-3'),(208,'PER','LDT',2014,NULL,'src-4'),(209,'PER','LDT',2014,NULL,'src-5'),(210,'PER','LDT',2014,NULL,'src-6'),(211,'WHT','LDT',2014,NULL,'src-1'),(212,'WHT','LDT',2014,NULL,'src-2'),(213,'WHT','LDT',2014,NULL,'src-3'),(214,'WHT','LDT',2014,NULL,'src-4'),(215,'WHT','LDT',2014,NULL,'src-5'),(216,'WHT','LDT',2014,NULL,'src-6'),(217,'AVO','JOB',2014,NULL,'src-1'),(218,'AVO','JOB',2014,NULL,'src-2'),(219,'AVO','JOB',2014,NULL,'src-3'),(220,'AVO','JOB',2014,NULL,'src-4'),(221,'AVO','JOB',2014,NULL,'src-5'),(222,'AVO','JOB',2014,NULL,'src-6'),(223,'COW','JOB',2014,NULL,'src-1'),(224,'COW','JOB',2014,NULL,'src-2'),(225,'COW','JOB',2014,NULL,'src-3'),(226,'COW','JOB',2014,NULL,'src-4'),(227,'COW','JOB',2014,NULL,'src-5'),(228,'COW','JOB',2014,NULL,'src-6'),(229,'CPE','JOB',2014,NULL,'src-1'),(230,'CPE','JOB',2014,NULL,'src-2'),(231,'CPE','JOB',2014,NULL,'src-3'),(232,'CPE','JOB',2014,NULL,'src-4'),(233,'CPE','JOB',2014,NULL,'src-5'),(234,'CPE','JOB',2014,NULL,'src-6'),(235,'MIL','JOB',2014,NULL,'src-1'),(236,'MIL','JOB',2014,NULL,'src-2'),(237,'MIL','JOB',2014,NULL,'src-3'),(238,'MIL','JOB',2014,NULL,'src-4'),(239,'MIL','JOB',2014,NULL,'src-5'),(240,'MIL','JOB',2014,NULL,'src-6'),(241,'PER','JOB',2014,NULL,'src-1'),(242,'PER','JOB',2014,NULL,'src-2'),(243,'PER','JOB',2014,NULL,'src-3'),(244,'PER','JOB',2014,NULL,'src-4'),(245,'PER','JOB',2014,NULL,'src-5'),(246,'PER','JOB',2014,NULL,'src-6'),(247,'WHT','JOB',2014,NULL,'src-1'),(248,'WHT','JOB',2014,NULL,'src-2'),(249,'WHT','JOB',2014,NULL,'src-3'),(250,'WHT','JOB',2014,NULL,'src-4'),(251,'WHT','JOB',2014,NULL,'src-5'),(252,'WHT','JOB',2014,NULL,'src-6'),(253,'AVO','HEA',2014,NULL,'src-1'),(254,'AVO','HEA',2014,NULL,'src-2'),(255,'AVO','HEA',2014,NULL,'src-3'),(256,'AVO','HEA',2014,NULL,'src-4'),(257,'AVO','HEA',2014,NULL,'src-5'),(258,'AVO','HEA',2014,NULL,'src-6'),(259,'COW','HEA',2014,NULL,'src-1'),(260,'COW','HEA',2014,NULL,'src-2'),(261,'COW','HEA',2014,NULL,'src-3'),(262,'COW','HEA',2014,NULL,'src-4'),(263,'COW','HEA',2014,NULL,'src-5'),(264,'COW','HEA',2014,NULL,'src-6'),(265,'CPE','HEA',2014,NULL,'src-1'),(266,'CPE','HEA',2014,NULL,'src-2'),(267,'CPE','HEA',2014,NULL,'src-3'),(268,'CPE','HEA',2014,NULL,'src-4'),(269,'CPE','HEA',2014,NULL,'src-5'),(270,'CPE','HEA',2014,NULL,'src-6'),(271,'MIL','HEA',2014,NULL,'src-1'),(272,'MIL','HEA',2014,NULL,'src-2'),(273,'MIL','HEA',2014,NULL,'src-3'),(274,'MIL','HEA',2014,NULL,'src-4'),(275,'MIL','HEA',2014,NULL,'src-5'),(276,'MIL','HEA',2014,NULL,'src-6'),(277,'PER','HEA',2014,NULL,'src-1'),(278,'PER','HEA',2014,NULL,'src-2'),(279,'PER','HEA',2014,NULL,'src-3'),(280,'PER','HEA',2014,NULL,'src-4'),(281,'PER','HEA',2014,NULL,'src-5'),(282,'PER','HEA',2014,NULL,'src-6'),(283,'WHT','HEA',2014,NULL,'src-1'),(284,'WHT','HEA',2014,NULL,'src-2'),(285,'WHT','HEA',2014,NULL,'src-3'),(286,'WHT','HEA',2014,NULL,'src-4'),(287,'WHT','HEA',2014,NULL,'src-5'),(288,'WHT','HEA',2014,NULL,'src-6'),(289,'AVO','EDU',2014,NULL,'src-1'),(290,'AVO','EDU',2014,NULL,'src-2'),(291,'AVO','EDU',2014,NULL,'src-3'),(292,'AVO','EDU',2014,NULL,'src-4'),(293,'AVO','EDU',2014,NULL,'src-5'),(294,'AVO','EDU',2014,NULL,'src-6'),(295,'COW','EDU',2014,NULL,'src-1'),(296,'COW','EDU',2014,NULL,'src-2'),(297,'COW','EDU',2014,NULL,'src-3'),(298,'COW','EDU',2014,NULL,'src-4'),(299,'COW','EDU',2014,NULL,'src-5'),(300,'COW','EDU',2014,NULL,'src-6'),(301,'CPE','EDU',2014,NULL,'src-1'),(302,'CPE','EDU',2014,NULL,'src-2'),(303,'CPE','EDU',2014,NULL,'src-3'),(304,'CPE','EDU',2014,NULL,'src-4'),(305,'CPE','EDU',2014,NULL,'src-5'),(306,'CPE','EDU',2014,NULL,'src-6'),(307,'MIL','EDU',2014,NULL,'src-1'),(308,'MIL','EDU',2014,NULL,'src-2'),(309,'MIL','EDU',2014,NULL,'src-3'),(310,'MIL','EDU',2014,NULL,'src-4'),(311,'MIL','EDU',2014,NULL,'src-5'),(312,'MIL','EDU',2014,NULL,'src-6'),(313,'PER','EDU',2014,NULL,'src-1'),(314,'PER','EDU',2014,NULL,'src-2'),(315,'PER','EDU',2014,NULL,'src-3'),(316,'PER','EDU',2014,NULL,'src-4'),(317,'PER','EDU',2014,NULL,'src-5'),(318,'PER','EDU',2014,NULL,'src-6'),(319,'WHT','EDU',2014,NULL,'src-1'),(320,'WHT','EDU',2014,NULL,'src-2'),(321,'WHT','EDU',2014,NULL,'src-3'),(322,'WHT','EDU',2014,NULL,'src-4'),(323,'WHT','EDU',2014,NULL,'src-5'),(324,'WHT','EDU',2014,NULL,'src-6');
/*!40000 ALTER TABLE `V3_item_resource_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V3_ledger`
--

DROP TABLE IF EXISTS `V3_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_ledger` (
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `production` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `consumption` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`entity`,`production`,`consumption`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_ledger`
--

LOCK TABLES `V3_ledger` WRITE;
/*!40000 ALTER TABLE `V3_ledger` DISABLE KEYS */;
INSERT INTO `V3_ledger` VALUES ('ARGNAT','AVO',''),('ARGNAT','COW',''),('ARGNAT','CPE',''),('ARGNAT','MIL',''),('ARGNAT','PER',''),('ARGNAT','WHT',''),('ECOCHE','','AVO'),('ECOCHE','','COW'),('ECOCHE','','CPE'),('ECOCHE','','MIL'),('ECOCHE','','PER'),('ECOCHE','','WHT');
/*!40000 ALTER TABLE `V3_ledger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V3_pre_proj3`
--

DROP TABLE IF EXISTS `V3_pre_proj3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_pre_proj3` (
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NAT_Pop_Pct` double DEFAULT NULL,
  `ECO_Pop_Pct` double DEFAULT NULL,
  `NAT_kg_pp_yr` double(64,4) DEFAULT NULL,
  `ECO_kg_pp_yr` double(64,4) DEFAULT NULL,
  `NAT_Sample` double DEFAULT NULL,
  `ECO_Sample` double DEFAULT NULL,
  `Proj_NAT_kg_pp_yr` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_pre_proj3`
--

LOCK TABLES `V3_pre_proj3` WRITE;
/*!40000 ALTER TABLE `V3_pre_proj3` DISABLE KEYS */;
INSERT INTO `V3_pre_proj3` VALUES ('AVO',0.99,0.01,0.0884,17.5200,0.08751599885523319,0.1752000045776367,0.2627160034328699),('AVO',0.98,0.02,0.0884,17.5200,0.0866319988667965,0.3504000091552734,0.43703200802206993),('AVO',0.95,0.05,0.0884,17.5200,0.0839799989014864,0.8760000228881837,0.9599800217896701),('AVO',0.9,0.1,0.0884,17.5200,0.07955999895930291,1.7520000457763674,1.8315600447356704),('AVO',0.8,0.2,0.0884,17.5200,0.07071999907493591,3.5040000915527347,3.574720090627671),('MIL',0.99,0.01,251.0810,329.9600,248.57018371582032,3.2995999145507815,251.8697836303711),('MIL',0.98,0.02,251.0810,329.9600,246.05937377929686,6.599199829101563,252.65857360839843),('MIL',0.95,0.05,251.0810,329.9600,238.52694396972655,16.49799957275391,255.02494354248046),('MIL',0.9,0.1,251.0810,329.9600,225.97289428710937,32.99599914550782,258.96889343261716),('MIL',0.8,0.2,251.0810,329.9600,200.86479492187502,65.99199829101563,266.85679321289064),('CPE',0.99,0.01,1.2431,29.2000,1.230669046640396,0.29200000762939454,1.5226690542697905),('CPE',0.98,0.02,1.2431,29.2000,1.218238046169281,0.5840000152587891,1.8022380614280702),('CPE',0.95,0.05,1.2431,29.2000,1.1809450447559355,1.4600000381469727,2.640945082902908),('CPE',0.9,0.1,1.2431,29.2000,1.11879004240036,2.9200000762939453,4.038790118694306),('CPE',0.8,0.2,1.2431,29.2000,0.994480037689209,5.840000152587891,6.8344801902771),('COW',0.99,0.01,64.3489,0.0000,63.70541084289551,0,63.70541084289551),('COW',0.98,0.02,64.3489,0.0000,63.06192184448242,0,63.06192184448242),('COW',0.95,0.05,64.3489,0.0000,61.13145484924316,0,61.13145484924316),('COW',0.9,0.1,64.3489,0.0000,57.91400985717774,0,57.91400985717774),('COW',0.8,0.2,64.3489,0.0000,51.479119873046876,0,51.479119873046876),('PER',0.99,0.01,17.5888,58.4000,17.41291242599487,0.5840000152587891,17.99691244125366),('PER',0.98,0.02,17.5888,58.4000,17.237024421691896,1.1680000305175782,18.405024452209474),('PER',0.8,0.2,17.5888,58.4000,14.071040344238282,11.680000305175781,25.751040649414065),('PER',0.9,0.1,17.5888,58.4000,15.829920387268066,5.840000152587891,21.66992053985596),('PER',0.8,0.2,17.5888,58.4000,14.071040344238282,11.680000305175781,25.751040649414065),('WHT',0.99,0.01,212.4299,29.2000,210.3056021118164,0.29200000762939454,210.59760211944578),('WHT',0.98,0.02,212.4299,29.2000,208.18130310058592,0.5840000152587891,208.76530311584472),('WHT',0.95,0.05,212.4299,29.2000,201.80840606689452,1.4600000381469727,203.2684061050415),('WHT',0.9,0.1,212.4299,29.2000,191.1869110107422,2.9200000762939453,194.10691108703614),('WHT',0.8,0.2,212.4299,29.2000,169.9439208984375,5.840000152587891,175.7839210510254);
/*!40000 ALTER TABLE `V3_pre_proj3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V3_projections`
--

DROP TABLE IF EXISTS `V3_projections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_projections` (
  `id` int(11) NOT NULL,
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) DEFAULT NULL,
  `c_kg` bigint(11) DEFAULT NULL,
  `c_gdp` bigint(16) DEFAULT NULL,
  `v_pct_pop` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_projections`
--

LOCK TABLES `V3_projections` WRITE;
/*!40000 ALTER TABLE `V3_projections` DISABLE KEYS */;
INSERT INTO `V3_projections` VALUES (1,'ARGNAT','AVO',2014,NULL,NULL,1),(2,'ARGNAT','AVO',2014,NULL,NULL,2),(3,'ARGNAT','AVO',2014,NULL,NULL,5),(4,'ARGNAT','AVO',2014,NULL,NULL,10),(5,'ARGNAT','AVO',2014,NULL,NULL,20),(6,'ARGNAT','MIL',2014,NULL,NULL,1),(7,'ARGNAT','MIL',2014,NULL,NULL,2),(8,'ARGNAT','MIL',2014,NULL,NULL,5),(9,'ARGNAT','MIL',2014,NULL,NULL,10),(10,'ARGNAT','MIL',2014,NULL,NULL,20),(11,'ARGNAT','CPE',2014,NULL,NULL,1),(12,'ARGNAT','CPE',2014,NULL,NULL,2),(13,'ARGNAT','CPE',2014,NULL,NULL,5),(14,'ARGNAT','CPE',2014,NULL,NULL,10),(15,'ARGNAT','CPE',2014,NULL,NULL,20),(16,'ARGNAT','COW',2014,NULL,NULL,1),(17,'ARGNAT','COW',2014,NULL,NULL,2),(18,'ARGNAT','COW',2014,NULL,NULL,5),(19,'ARGNAT','COW',2014,NULL,NULL,10),(20,'ARGNAT','COW',2014,NULL,NULL,20),(23,'ARGNAT','PER',2014,NULL,NULL,1),(24,'ARGNAT','PER',2014,NULL,NULL,2),(25,'ARGNAT','PER',2014,NULL,NULL,20),(26,'ARGNAT','PER',2014,NULL,NULL,10),(27,'ARGNAT','PER',2014,NULL,NULL,20),(28,'ARGNAT','WHT',2014,NULL,NULL,1),(29,'ARGNAT','WHT',2014,NULL,NULL,2),(30,'ARGNAT','WHT',2014,NULL,NULL,5),(31,'ARGNAT','WHT',2014,NULL,NULL,10),(32,'ARGNAT','WHT',2014,NULL,NULL,20);
/*!40000 ALTER TABLE `V3_projections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V3_projections_copy`
--

DROP TABLE IF EXISTS `V3_projections_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_projections_copy` (
  `id` int(11) NOT NULL,
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) DEFAULT NULL,
  `c_kg` bigint(11) DEFAULT NULL,
  `c_gdp` bigint(16) DEFAULT NULL,
  `v_pct_pop` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_projections_copy`
--

LOCK TABLES `V3_projections_copy` WRITE;
/*!40000 ALTER TABLE `V3_projections_copy` DISABLE KEYS */;
INSERT INTO `V3_projections_copy` VALUES (1,'ARGNAT','AVO',2014,NULL,NULL,1),(2,'ARGNAT','AVO',2014,NULL,NULL,2),(3,'ARGNAT','AVO',2014,NULL,NULL,5),(4,'ARGNAT','AVO',2014,NULL,NULL,10),(5,'ARGNAT','AVO',2014,NULL,NULL,20),(6,'ARGNAT','MIL',2014,NULL,NULL,1),(7,'ARGNAT','MIL',2014,NULL,NULL,2),(8,'ARGNAT','MIL',2014,NULL,NULL,5),(9,'ARGNAT','MIL',2014,NULL,NULL,10),(10,'ARGNAT','MIL',2014,NULL,NULL,20),(11,'ARGNAT','CPE',2014,NULL,NULL,1),(12,'ARGNAT','CPE',2014,NULL,NULL,2),(13,'ARGNAT','CPE',2014,NULL,NULL,5),(14,'ARGNAT','CPE',2014,NULL,NULL,10),(15,'ARGNAT','CPE',2014,NULL,NULL,20),(16,'ARGNAT','COW',2014,NULL,NULL,1),(17,'ARGNAT','COW',2014,NULL,NULL,2),(18,'ARGNAT','COW',2014,NULL,NULL,5),(19,'ARGNAT','COW',2014,NULL,NULL,10),(20,'ARGNAT','COW',2014,NULL,NULL,20),(23,'ARGNAT','PER',2014,NULL,NULL,1),(24,'ARGNAT','PER',2014,NULL,NULL,2),(25,'ARGNAT','PER',2014,NULL,NULL,20),(26,'ARGNAT','PER',2014,NULL,NULL,10),(27,'ARGNAT','PER',2014,NULL,NULL,20),(28,'ARGNAT','WHT',2014,NULL,NULL,1),(29,'ARGNAT','WHT',2014,NULL,NULL,2),(30,'ARGNAT','WHT',2014,NULL,NULL,5),(31,'ARGNAT','WHT',2014,NULL,NULL,10),(32,'ARGNAT','WHT',2014,NULL,NULL,20);
/*!40000 ALTER TABLE `V3_projections_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V3_resource`
--

DROP TABLE IF EXISTS `V3_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_resource` (
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_resource`
--

LOCK TABLES `V3_resource` WRITE;
/*!40000 ALTER TABLE `V3_resource` DISABLE KEYS */;
INSERT INTO `V3_resource` VALUES ('CO2','Green'),('EDU','Fair'),('EXP','Good'),('HEA','Fair'),('IMP','Good'),('JOB','Fair'),('LDT','Green'),('PEN','Green'),('WAT','Green');
/*!40000 ALTER TABLE `V3_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V3_service`
--

DROP TABLE IF EXISTS `V3_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_service` (
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_service`
--

LOCK TABLES `V3_service` WRITE;
/*!40000 ALTER TABLE `V3_service` DISABLE KEYS */;
INSERT INTO `V3_service` VALUES ('ECOMEAL');
/*!40000 ALTER TABLE `V3_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V3_service_item`
--

DROP TABLE IF EXISTS `V3_service_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_service_item` (
  `service_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_kg_pp_meal` float(16,4) DEFAULT NULL,
  PRIMARY KEY (`service_name`,`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_service_item`
--

LOCK TABLES `V3_service_item` WRITE;
/*!40000 ALTER TABLE `V3_service_item` DISABLE KEYS */;
INSERT INTO `V3_service_item` VALUES ('ECOMEAL','AVO',NULL),('ECOMEAL','COW',NULL),('ECOMEAL','CPE',NULL),('ECOMEAL','MIL',NULL),('ECOMEAL','PER',NULL),('ECOMEAL','WHT',NULL);
/*!40000 ALTER TABLE `V3_service_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V3_service_stats`
--

DROP TABLE IF EXISTS `V3_service_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_service_stats` (
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contains` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kg` float(16,4) NOT NULL,
  PRIMARY KEY (`name`,`contains`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_service_stats`
--

LOCK TABLES `V3_service_stats` WRITE;
/*!40000 ALTER TABLE `V3_service_stats` DISABLE KEYS */;
INSERT INTO `V3_service_stats` VALUES ('ECOMEAL','AVO',319740.0000),('ECOMEAL','COW',0.0000),('ECOMEAL','CPE',532900.0000),('ECOMEAL','MIL',6021770.0000),('ECOMEAL','PER',1065800.0000),('ECOMEAL','WHT',532900.0000);
/*!40000 ALTER TABLE `V3_service_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_adjust`
--

DROP TABLE IF EXISTS `_adjust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_adjust` (
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `c_kg_val` float(16,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_adjust`
--

LOCK TABLES `_adjust` WRITE;
/*!40000 ALTER TABLE `_adjust` DISABLE KEYS */;
INSERT INTO `_adjust` VALUES ('ARGNAT','AVO',2014,0.6930),('ARGNAT','COW',2014,2.4939),('ARGNAT','CPE',2014,0.4841),('ARGNAT','MIL',2014,0.3121),('ARGNAT','PER',2014,0.4088),('ARGNAT','WHT',2014,0.1578);
/*!40000 ALTER TABLE `_adjust` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `proj_view`
--

DROP TABLE IF EXISTS `proj_view`;
/*!50001 DROP VIEW IF EXISTS `proj_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `proj_view` (
  `entity` tinyint NOT NULL,
  `pop` tinyint NOT NULL,
  `gdp` tinyint NOT NULL,
  `year` tinyint NOT NULL,
  `v_pct_pop` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tmp`
--

DROP TABLE IF EXISTS `tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp` (
  `cmean` double(20,8) DEFAULT NULL,
  `cstd` double(21,8) DEFAULT NULL,
  `cstddev` double(21,8) DEFAULT NULL,
  `cstddev_pop` double(21,8) DEFAULT NULL,
  `cstddev_samp` double(21,8) DEFAULT NULL,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp`
--

LOCK TABLES `tmp` WRITE;
/*!40000 ALTER TABLE `tmp` DISABLE KEYS */;
INSERT INTO `tmp` VALUES (4079.00000000,79.00000000,79.00000000,79.00000000,111.72287143,'CPE','WAT',2014);
/*!40000 ALTER TABLE `tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `proj_view`
--

/*!50001 DROP TABLE IF EXISTS `proj_view`*/;
/*!50001 DROP VIEW IF EXISTS `proj_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `proj_view` AS select `V3_entity_item`.`entity` AS `entity`,`V3_entity_stats`.`pop` AS `pop`,`V3_entity_stats`.`gdp` AS `gdp`,`V3_entity_item`.`year` AS `year`,`V3_projections`.`v_pct_pop` AS `v_pct_pop` from ((`V3_entity_stats` join `V3_entity_item` on(((`V3_entity_stats`.`entity` = `V3_entity_item`.`entity`) and (`V3_entity_stats`.`year` = `V3_entity_item`.`year`)))) join `V3_projections` on(((`V3_entity_item`.`year` = `V3_projections`.`year`) and (`V3_entity_item`.`entity` = `V3_projections`.`entity`)))) */;
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

-- Dump completed on 2018-02-20 13:15:23
