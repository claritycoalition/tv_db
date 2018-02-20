-- MySQL dump 10.16  Distrib 10.1.31-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: clarity
-- ------------------------------------------------------
-- Server version	10.1.31-MariaDB
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `V3_area`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_area` (
  `loc` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`loc`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_area`
--

INSERT INTO `V3_area` VALUES ('ARG');

--
-- Table structure for table `V3_entity`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_entity` (
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loc` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`entity`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_entity`
--

INSERT INTO `V3_entity` VALUES ('ARGNAT','ARG');
INSERT INTO `V3_entity` VALUES ('ECOCHE','ARG');

--
-- Table structure for table `V3_entity_item`
--

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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_entity_item`
--

INSERT INTO `V3_entity_item` VALUES ('ARGNAT','AVO',2014,3877000,2686838,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ARGNAT','COW',2014,2821700000,7037021448,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ARGNAT','CPE',2014,54508000,26385703,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ARGNAT','MIL',2014,11009900000,3435760403,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ARGNAT','PER',2014,771271000,315319521,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ARGNAT','WHT',2014,9315049000,1469747061,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ECOCHE','AVO',2014,319740,NULL,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ECOCHE','COW',2014,0,NULL,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ECOCHE','CPE',2014,532900,NULL,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ECOCHE','MIL',2014,6021770,NULL,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ECOCHE','PER',2014,1065800,NULL,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ECOCHE','WHT',2014,532900,NULL,NULL,NULL,NULL);

--
-- Table structure for table `V3_entity_service`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_entity_service` (
  `entity_name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_pop` bigint(16) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `c_tot_kg` float(16,6) DEFAULT NULL,
  PRIMARY KEY (`entity_name`,`service_name`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_entity_service`
--

INSERT INTO `V3_entity_service` VALUES ('ECOCHE','ECOMEAL',18250,2014,10000000000.000000);

--
-- Table structure for table `V3_entity_stats`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_entity_stats` (
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pop` bigint(16) DEFAULT NULL,
  `gdp` bigint(16) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`entity`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_entity_stats`
--

INSERT INTO `V3_entity_stats` VALUES ('ARGNAT',43850000,545900000000,2014);
INSERT INTO `V3_entity_stats` VALUES ('ECOCHE',18250,98587,2014);

--
-- Table structure for table `V3_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_item` (
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_item`
--

INSERT INTO `V3_item` VALUES ('AVO');
INSERT INTO `V3_item` VALUES ('COW');
INSERT INTO `V3_item` VALUES ('CPE');
INSERT INTO `V3_item` VALUES ('MIL');
INSERT INTO `V3_item` VALUES ('PER');
INSERT INTO `V3_item` VALUES ('WHT');

--
-- Table structure for table `V3_item_resource`
--

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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_item_resource`
--

INSERT INTO `V3_item_resource` VALUES ('AVO','CO2',2014,0.7187,0.2046,0.2046,0.2046,0.2506,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('AVO','EDU',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('AVO','EXT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('AVO','HEA',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('AVO','IMP',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('AVO','JOB',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('AVO','LDT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('AVO','PEN',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('AVO','WAT',2014,1085.0000,85.0000,85.0000,85.0000,120.2082,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('COW','CO2',2014,29.9533,2.1396,2.1396,2.1396,2.6204,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('COW','EDU',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('COW','EXT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('COW','HEA',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('COW','IMP',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('COW','JOB',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('COW','LDT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('COW','PEN',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('COW','WAT',2014,15298.5000,214.6724,214.6724,214.6724,247.8824,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('CPE','CO2',2014,0.7167,0.0974,0.0974,0.0974,0.1193,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('CPE','EDU',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('CPE','EXT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('CPE','HEA',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('CPE','IMP',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('CPE','JOB',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('CPE','LDT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('CPE','PEN',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('CPE','WAT',2014,4079.0000,79.0000,79.0000,79.0000,111.7229,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('MIL','CO2',2014,0.8600,0.3238,0.3238,0.3238,0.3966,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('MIL','EDU',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('MIL','EXT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('MIL','HEA',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('MIL','IMP',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('MIL','JOB',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('MIL','LDT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('MIL','PEN',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('MIL','WAT',2014,1010.0000,10.0000,10.0000,10.0000,14.1421,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('PER','CO2',2014,0.6550,0.2250,0.2250,0.2250,0.3182,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('PER','EDU',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('PER','EXT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('PER','HEA',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('PER','IMP',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('PER','JOB',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('PER','LDT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('PER','PEN',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('PER','WAT',2014,911.0000,89.0000,89.0000,89.0000,125.8650,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('WHT','CO2',2014,0.6375,0.3467,0.3467,0.3467,0.4004,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('WHT','EDU',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('WHT','EXT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('WHT','HEA',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('WHT','IMP',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('WHT','JOB',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('WHT','LDT',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('WHT','PEN',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('WHT','WAT',2014,1466.6667,124.7219,124.7219,124.7219,152.7525,NULL,NULL,NULL,NULL);

--
-- Table structure for table `V3_item_resource_stats`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_item_resource_stats` (
  `id` int(11) NOT NULL,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `unit_gdp` float(16,4) DEFAULT NULL,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_item_resource_stats`
--

INSERT INTO `V3_item_resource_stats` VALUES (1,'AVO','CO2',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (2,'AVO','CO2',2014,0.4300,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (3,'AVO','CO2',2014,0.8800,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (4,'AVO','CO2',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (5,'AVO','CO2',2014,0.8460,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (6,'AVO','CO2',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (7,'COW','CO2',2014,30.8600,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (8,'COW','CO2',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (9,'COW','CO2',2014,32.0000,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (10,'COW','CO2',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (11,'COW','CO2',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (12,'COW','CO2',2014,27.0000,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (13,'CPE','CO2',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (14,'CPE','CO2',2014,0.7700,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (15,'CPE','CO2',2014,0.8000,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (16,'CPE','CO2',2014,0.5800,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (17,'CPE','CO2',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (18,'CPE','CO2',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (19,'MIL','CO2',2014,0.4200,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (20,'MIL','CO2',2014,1.1900,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (21,'MIL','CO2',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (22,'MIL','CO2',2014,0.9700,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (23,'MIL','CO2',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (24,'MIL','CO2',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (25,'PER','CO2',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (26,'PER','CO2',2014,0.4300,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (27,'PER','CO2',2014,0.8800,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (28,'PER','CO2',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (29,'PER','CO2',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (30,'PER','CO2',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (31,'WHT','CO2',2014,0.1400,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (32,'WHT','CO2',2014,0.6300,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (33,'WHT','CO2',2014,0.6600,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (34,'WHT','CO2',2014,1.1200,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (35,'WHT','CO2',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (36,'WHT','CO2',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (37,'AVO','WAT',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (38,'AVO','WAT',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (39,'AVO','WAT',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (40,'AVO','WAT',2014,1170.0000,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (41,'AVO','WAT',2014,1000.0000,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (42,'AVO','WAT',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (43,'COW','WAT',2014,15500.0000,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (44,'COW','WAT',2014,15415.0000,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (45,'COW','WAT',2014,14940.0000,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (46,'COW','WAT',2014,15339.0000,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (47,'COW','WAT',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (48,'COW','WAT',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (49,'CPE','WAT',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (50,'CPE','WAT',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (51,'CPE','WAT',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (52,'CPE','WAT',2014,4158.0000,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (53,'CPE','WAT',2014,4000.0000,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (54,'CPE','WAT',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (55,'MIL','WAT',2014,1000.0000,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (56,'MIL','WAT',2014,1020.0000,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (57,'MIL','WAT',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (58,'MIL','WAT',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (59,'MIL','WAT',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (60,'MIL','WAT',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (61,'PER','WAT',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (62,'PER','WAT',2014,822.0000,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (63,'PER','WAT',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (64,'PER','WAT',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (65,'PER','WAT',2014,1000.0000,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (66,'PER','WAT',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (67,'WHT','WAT',2014,1300.0000,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (68,'WHT','WAT',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (69,'WHT','WAT',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (70,'WHT','WAT',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (71,'WHT','WAT',2014,1600.0000,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (72,'WHT','WAT',2014,1500.0000,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (73,'AVO','IMP',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (74,'AVO','IMP',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (75,'AVO','IMP',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (76,'AVO','IMP',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (77,'AVO','IMP',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (78,'AVO','IMP',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (79,'COW','IMP',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (80,'COW','IMP',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (81,'COW','IMP',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (82,'COW','IMP',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (83,'COW','IMP',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (84,'COW','IMP',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (85,'CPE','IMP',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (86,'CPE','IMP',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (87,'CPE','IMP',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (88,'CPE','IMP',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (89,'CPE','IMP',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (90,'CPE','IMP',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (91,'MIL','IMP',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (92,'MIL','IMP',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (93,'MIL','IMP',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (94,'MIL','IMP',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (95,'MIL','IMP',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (96,'MIL','IMP',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (97,'PER','IMP',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (98,'PER','IMP',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (99,'PER','IMP',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (100,'PER','IMP',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (101,'PER','IMP',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (102,'PER','IMP',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (103,'WHT','IMP',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (104,'WHT','IMP',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (105,'WHT','IMP',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (106,'WHT','IMP',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (107,'WHT','IMP',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (108,'WHT','IMP',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (109,'AVO','EXP',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (110,'AVO','EXP',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (111,'AVO','EXP',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (112,'AVO','EXP',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (113,'AVO','EXP',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (114,'AVO','EXP',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (115,'COW','EXP',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (116,'COW','EXP',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (117,'COW','EXP',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (118,'COW','EXP',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (119,'COW','EXP',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (120,'COW','EXP',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (121,'CPE','EXP',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (122,'CPE','EXP',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (123,'CPE','EXP',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (124,'CPE','EXP',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (125,'CPE','EXP',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (126,'CPE','EXP',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (127,'MIL','EXP',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (128,'MIL','EXP',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (129,'MIL','EXP',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (130,'MIL','EXP',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (131,'MIL','EXP',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (132,'MIL','EXP',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (133,'PER','EXP',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (134,'PER','EXP',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (135,'PER','EXP',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (136,'PER','EXP',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (137,'PER','EXP',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (138,'PER','EXP',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (139,'WHT','EXP',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (140,'WHT','EXP',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (141,'WHT','EXP',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (142,'WHT','EXP',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (143,'WHT','EXP',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (144,'WHT','EXP',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (145,'AVO','PEN',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (146,'AVO','PEN',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (147,'AVO','PEN',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (148,'AVO','PEN',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (149,'AVO','PEN',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (150,'AVO','PEN',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (151,'COW','PEN',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (152,'COW','PEN',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (153,'COW','PEN',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (154,'COW','PEN',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (155,'COW','PEN',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (156,'COW','PEN',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (157,'CPE','PEN',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (158,'CPE','PEN',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (159,'CPE','PEN',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (160,'CPE','PEN',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (161,'CPE','PEN',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (162,'CPE','PEN',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (163,'MIL','PEN',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (164,'MIL','PEN',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (165,'MIL','PEN',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (166,'MIL','PEN',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (167,'MIL','PEN',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (168,'MIL','PEN',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (169,'PER','PEN',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (170,'PER','PEN',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (171,'PER','PEN',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (172,'PER','PEN',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (173,'PER','PEN',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (174,'PER','PEN',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (175,'WHT','PEN',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (176,'WHT','PEN',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (177,'WHT','PEN',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (178,'WHT','PEN',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (179,'WHT','PEN',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (180,'WHT','PEN',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (181,'AVO','LDT',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (182,'AVO','LDT',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (183,'AVO','LDT',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (184,'AVO','LDT',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (185,'AVO','LDT',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (186,'AVO','LDT',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (187,'COW','LDT',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (188,'COW','LDT',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (189,'COW','LDT',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (190,'COW','LDT',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (191,'COW','LDT',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (192,'COW','LDT',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (193,'CPE','LDT',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (194,'CPE','LDT',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (195,'CPE','LDT',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (196,'CPE','LDT',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (197,'CPE','LDT',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (198,'CPE','LDT',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (199,'MIL','LDT',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (200,'MIL','LDT',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (201,'MIL','LDT',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (202,'MIL','LDT',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (203,'MIL','LDT',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (204,'MIL','LDT',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (205,'PER','LDT',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (206,'PER','LDT',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (207,'PER','LDT',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (208,'PER','LDT',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (209,'PER','LDT',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (210,'PER','LDT',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (211,'WHT','LDT',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (212,'WHT','LDT',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (213,'WHT','LDT',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (214,'WHT','LDT',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (215,'WHT','LDT',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (216,'WHT','LDT',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (217,'AVO','JOB',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (218,'AVO','JOB',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (219,'AVO','JOB',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (220,'AVO','JOB',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (221,'AVO','JOB',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (222,'AVO','JOB',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (223,'COW','JOB',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (224,'COW','JOB',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (225,'COW','JOB',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (226,'COW','JOB',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (227,'COW','JOB',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (228,'COW','JOB',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (229,'CPE','JOB',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (230,'CPE','JOB',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (231,'CPE','JOB',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (232,'CPE','JOB',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (233,'CPE','JOB',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (234,'CPE','JOB',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (235,'MIL','JOB',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (236,'MIL','JOB',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (237,'MIL','JOB',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (238,'MIL','JOB',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (239,'MIL','JOB',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (240,'MIL','JOB',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (241,'PER','JOB',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (242,'PER','JOB',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (243,'PER','JOB',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (244,'PER','JOB',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (245,'PER','JOB',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (246,'PER','JOB',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (247,'WHT','JOB',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (248,'WHT','JOB',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (249,'WHT','JOB',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (250,'WHT','JOB',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (251,'WHT','JOB',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (252,'WHT','JOB',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (253,'AVO','HEA',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (254,'AVO','HEA',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (255,'AVO','HEA',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (256,'AVO','HEA',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (257,'AVO','HEA',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (258,'AVO','HEA',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (259,'COW','HEA',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (260,'COW','HEA',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (261,'COW','HEA',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (262,'COW','HEA',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (263,'COW','HEA',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (264,'COW','HEA',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (265,'CPE','HEA',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (266,'CPE','HEA',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (267,'CPE','HEA',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (268,'CPE','HEA',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (269,'CPE','HEA',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (270,'CPE','HEA',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (271,'MIL','HEA',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (272,'MIL','HEA',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (273,'MIL','HEA',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (274,'MIL','HEA',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (275,'MIL','HEA',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (276,'MIL','HEA',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (277,'PER','HEA',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (278,'PER','HEA',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (279,'PER','HEA',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (280,'PER','HEA',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (281,'PER','HEA',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (282,'PER','HEA',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (283,'WHT','HEA',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (284,'WHT','HEA',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (285,'WHT','HEA',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (286,'WHT','HEA',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (287,'WHT','HEA',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (288,'WHT','HEA',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (289,'AVO','EDU',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (290,'AVO','EDU',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (291,'AVO','EDU',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (292,'AVO','EDU',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (293,'AVO','EDU',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (294,'AVO','EDU',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (295,'COW','EDU',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (296,'COW','EDU',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (297,'COW','EDU',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (298,'COW','EDU',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (299,'COW','EDU',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (300,'COW','EDU',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (301,'CPE','EDU',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (302,'CPE','EDU',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (303,'CPE','EDU',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (304,'CPE','EDU',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (305,'CPE','EDU',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (306,'CPE','EDU',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (307,'MIL','EDU',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (308,'MIL','EDU',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (309,'MIL','EDU',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (310,'MIL','EDU',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (311,'MIL','EDU',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (312,'MIL','EDU',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (313,'PER','EDU',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (314,'PER','EDU',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (315,'PER','EDU',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (316,'PER','EDU',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (317,'PER','EDU',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (318,'PER','EDU',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (319,'WHT','EDU',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (320,'WHT','EDU',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (321,'WHT','EDU',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (322,'WHT','EDU',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (323,'WHT','EDU',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (324,'WHT','EDU',2014,NULL,'src-6');

--
-- Table structure for table `V3_ledger`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_ledger` (
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `production` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `consumption` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`entity`,`production`,`consumption`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_ledger`
--

INSERT INTO `V3_ledger` VALUES ('ARGNAT','AVO','');
INSERT INTO `V3_ledger` VALUES ('ARGNAT','COW','');
INSERT INTO `V3_ledger` VALUES ('ARGNAT','CPE','');
INSERT INTO `V3_ledger` VALUES ('ARGNAT','MIL','');
INSERT INTO `V3_ledger` VALUES ('ARGNAT','PER','');
INSERT INTO `V3_ledger` VALUES ('ARGNAT','WHT','');
INSERT INTO `V3_ledger` VALUES ('ECOCHE','','AVO');
INSERT INTO `V3_ledger` VALUES ('ECOCHE','','COW');
INSERT INTO `V3_ledger` VALUES ('ECOCHE','','CPE');
INSERT INTO `V3_ledger` VALUES ('ECOCHE','','MIL');
INSERT INTO `V3_ledger` VALUES ('ECOCHE','','PER');
INSERT INTO `V3_ledger` VALUES ('ECOCHE','','WHT');

--
-- Table structure for table `V3_pre_proj3`
--

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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_pre_proj3`
--

INSERT INTO `V3_pre_proj3` VALUES ('AVO',0.99,0.01,0.0884,17.5200,0.08751599885523319,0.1752000045776367,0.2627160034328699);
INSERT INTO `V3_pre_proj3` VALUES ('AVO',0.98,0.02,0.0884,17.5200,0.0866319988667965,0.3504000091552734,0.43703200802206993);
INSERT INTO `V3_pre_proj3` VALUES ('AVO',0.95,0.05,0.0884,17.5200,0.0839799989014864,0.8760000228881837,0.9599800217896701);
INSERT INTO `V3_pre_proj3` VALUES ('AVO',0.9,0.1,0.0884,17.5200,0.07955999895930291,1.7520000457763674,1.8315600447356704);
INSERT INTO `V3_pre_proj3` VALUES ('AVO',0.8,0.2,0.0884,17.5200,0.07071999907493591,3.5040000915527347,3.574720090627671);
INSERT INTO `V3_pre_proj3` VALUES ('MIL',0.99,0.01,251.0810,329.9600,248.57018371582032,3.2995999145507815,251.8697836303711);
INSERT INTO `V3_pre_proj3` VALUES ('MIL',0.98,0.02,251.0810,329.9600,246.05937377929686,6.599199829101563,252.65857360839843);
INSERT INTO `V3_pre_proj3` VALUES ('MIL',0.95,0.05,251.0810,329.9600,238.52694396972655,16.49799957275391,255.02494354248046);
INSERT INTO `V3_pre_proj3` VALUES ('MIL',0.9,0.1,251.0810,329.9600,225.97289428710937,32.99599914550782,258.96889343261716);
INSERT INTO `V3_pre_proj3` VALUES ('MIL',0.8,0.2,251.0810,329.9600,200.86479492187502,65.99199829101563,266.85679321289064);
INSERT INTO `V3_pre_proj3` VALUES ('CPE',0.99,0.01,1.2431,29.2000,1.230669046640396,0.29200000762939454,1.5226690542697905);
INSERT INTO `V3_pre_proj3` VALUES ('CPE',0.98,0.02,1.2431,29.2000,1.218238046169281,0.5840000152587891,1.8022380614280702);
INSERT INTO `V3_pre_proj3` VALUES ('CPE',0.95,0.05,1.2431,29.2000,1.1809450447559355,1.4600000381469727,2.640945082902908);
INSERT INTO `V3_pre_proj3` VALUES ('CPE',0.9,0.1,1.2431,29.2000,1.11879004240036,2.9200000762939453,4.038790118694306);
INSERT INTO `V3_pre_proj3` VALUES ('CPE',0.8,0.2,1.2431,29.2000,0.994480037689209,5.840000152587891,6.8344801902771);
INSERT INTO `V3_pre_proj3` VALUES ('COW',0.99,0.01,64.3489,0.0000,63.70541084289551,0,63.70541084289551);
INSERT INTO `V3_pre_proj3` VALUES ('COW',0.98,0.02,64.3489,0.0000,63.06192184448242,0,63.06192184448242);
INSERT INTO `V3_pre_proj3` VALUES ('COW',0.95,0.05,64.3489,0.0000,61.13145484924316,0,61.13145484924316);
INSERT INTO `V3_pre_proj3` VALUES ('COW',0.9,0.1,64.3489,0.0000,57.91400985717774,0,57.91400985717774);
INSERT INTO `V3_pre_proj3` VALUES ('COW',0.8,0.2,64.3489,0.0000,51.479119873046876,0,51.479119873046876);
INSERT INTO `V3_pre_proj3` VALUES ('PER',0.99,0.01,17.5888,58.4000,17.41291242599487,0.5840000152587891,17.99691244125366);
INSERT INTO `V3_pre_proj3` VALUES ('PER',0.98,0.02,17.5888,58.4000,17.237024421691896,1.1680000305175782,18.405024452209474);
INSERT INTO `V3_pre_proj3` VALUES ('PER',0.8,0.2,17.5888,58.4000,14.071040344238282,11.680000305175781,25.751040649414065);
INSERT INTO `V3_pre_proj3` VALUES ('PER',0.9,0.1,17.5888,58.4000,15.829920387268066,5.840000152587891,21.66992053985596);
INSERT INTO `V3_pre_proj3` VALUES ('PER',0.8,0.2,17.5888,58.4000,14.071040344238282,11.680000305175781,25.751040649414065);
INSERT INTO `V3_pre_proj3` VALUES ('WHT',0.99,0.01,212.4299,29.2000,210.3056021118164,0.29200000762939454,210.59760211944578);
INSERT INTO `V3_pre_proj3` VALUES ('WHT',0.98,0.02,212.4299,29.2000,208.18130310058592,0.5840000152587891,208.76530311584472);
INSERT INTO `V3_pre_proj3` VALUES ('WHT',0.95,0.05,212.4299,29.2000,201.80840606689452,1.4600000381469727,203.2684061050415);
INSERT INTO `V3_pre_proj3` VALUES ('WHT',0.9,0.1,212.4299,29.2000,191.1869110107422,2.9200000762939453,194.10691108703614);
INSERT INTO `V3_pre_proj3` VALUES ('WHT',0.8,0.2,212.4299,29.2000,169.9439208984375,5.840000152587891,175.7839210510254);

--
-- Table structure for table `V3_projections`
--

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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_projections`
--

INSERT INTO `V3_projections` VALUES (1,'ARGNAT','AVO',2014,NULL,NULL,1);
INSERT INTO `V3_projections` VALUES (2,'ARGNAT','AVO',2014,NULL,NULL,2);
INSERT INTO `V3_projections` VALUES (3,'ARGNAT','AVO',2014,NULL,NULL,5);
INSERT INTO `V3_projections` VALUES (4,'ARGNAT','AVO',2014,NULL,NULL,10);
INSERT INTO `V3_projections` VALUES (5,'ARGNAT','AVO',2014,NULL,NULL,20);
INSERT INTO `V3_projections` VALUES (6,'ARGNAT','MIL',2014,NULL,NULL,1);
INSERT INTO `V3_projections` VALUES (7,'ARGNAT','MIL',2014,NULL,NULL,2);
INSERT INTO `V3_projections` VALUES (8,'ARGNAT','MIL',2014,NULL,NULL,5);
INSERT INTO `V3_projections` VALUES (9,'ARGNAT','MIL',2014,NULL,NULL,10);
INSERT INTO `V3_projections` VALUES (10,'ARGNAT','MIL',2014,NULL,NULL,20);
INSERT INTO `V3_projections` VALUES (11,'ARGNAT','CPE',2014,NULL,NULL,1);
INSERT INTO `V3_projections` VALUES (12,'ARGNAT','CPE',2014,NULL,NULL,2);
INSERT INTO `V3_projections` VALUES (13,'ARGNAT','CPE',2014,NULL,NULL,5);
INSERT INTO `V3_projections` VALUES (14,'ARGNAT','CPE',2014,NULL,NULL,10);
INSERT INTO `V3_projections` VALUES (15,'ARGNAT','CPE',2014,NULL,NULL,20);
INSERT INTO `V3_projections` VALUES (16,'ARGNAT','COW',2014,NULL,NULL,1);
INSERT INTO `V3_projections` VALUES (17,'ARGNAT','COW',2014,NULL,NULL,2);
INSERT INTO `V3_projections` VALUES (18,'ARGNAT','COW',2014,NULL,NULL,5);
INSERT INTO `V3_projections` VALUES (19,'ARGNAT','COW',2014,NULL,NULL,10);
INSERT INTO `V3_projections` VALUES (20,'ARGNAT','COW',2014,NULL,NULL,20);
INSERT INTO `V3_projections` VALUES (23,'ARGNAT','PER',2014,NULL,NULL,1);
INSERT INTO `V3_projections` VALUES (24,'ARGNAT','PER',2014,NULL,NULL,2);
INSERT INTO `V3_projections` VALUES (25,'ARGNAT','PER',2014,NULL,NULL,20);
INSERT INTO `V3_projections` VALUES (26,'ARGNAT','PER',2014,NULL,NULL,10);
INSERT INTO `V3_projections` VALUES (27,'ARGNAT','PER',2014,NULL,NULL,20);
INSERT INTO `V3_projections` VALUES (28,'ARGNAT','WHT',2014,NULL,NULL,1);
INSERT INTO `V3_projections` VALUES (29,'ARGNAT','WHT',2014,NULL,NULL,2);
INSERT INTO `V3_projections` VALUES (30,'ARGNAT','WHT',2014,NULL,NULL,5);
INSERT INTO `V3_projections` VALUES (31,'ARGNAT','WHT',2014,NULL,NULL,10);
INSERT INTO `V3_projections` VALUES (32,'ARGNAT','WHT',2014,NULL,NULL,20);

--
-- Table structure for table `V3_projections_copy`
--

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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_projections_copy`
--

INSERT INTO `V3_projections_copy` VALUES (1,'ARGNAT','AVO',2014,NULL,NULL,1);
INSERT INTO `V3_projections_copy` VALUES (2,'ARGNAT','AVO',2014,NULL,NULL,2);
INSERT INTO `V3_projections_copy` VALUES (3,'ARGNAT','AVO',2014,NULL,NULL,5);
INSERT INTO `V3_projections_copy` VALUES (4,'ARGNAT','AVO',2014,NULL,NULL,10);
INSERT INTO `V3_projections_copy` VALUES (5,'ARGNAT','AVO',2014,NULL,NULL,20);
INSERT INTO `V3_projections_copy` VALUES (6,'ARGNAT','MIL',2014,NULL,NULL,1);
INSERT INTO `V3_projections_copy` VALUES (7,'ARGNAT','MIL',2014,NULL,NULL,2);
INSERT INTO `V3_projections_copy` VALUES (8,'ARGNAT','MIL',2014,NULL,NULL,5);
INSERT INTO `V3_projections_copy` VALUES (9,'ARGNAT','MIL',2014,NULL,NULL,10);
INSERT INTO `V3_projections_copy` VALUES (10,'ARGNAT','MIL',2014,NULL,NULL,20);
INSERT INTO `V3_projections_copy` VALUES (11,'ARGNAT','CPE',2014,NULL,NULL,1);
INSERT INTO `V3_projections_copy` VALUES (12,'ARGNAT','CPE',2014,NULL,NULL,2);
INSERT INTO `V3_projections_copy` VALUES (13,'ARGNAT','CPE',2014,NULL,NULL,5);
INSERT INTO `V3_projections_copy` VALUES (14,'ARGNAT','CPE',2014,NULL,NULL,10);
INSERT INTO `V3_projections_copy` VALUES (15,'ARGNAT','CPE',2014,NULL,NULL,20);
INSERT INTO `V3_projections_copy` VALUES (16,'ARGNAT','COW',2014,NULL,NULL,1);
INSERT INTO `V3_projections_copy` VALUES (17,'ARGNAT','COW',2014,NULL,NULL,2);
INSERT INTO `V3_projections_copy` VALUES (18,'ARGNAT','COW',2014,NULL,NULL,5);
INSERT INTO `V3_projections_copy` VALUES (19,'ARGNAT','COW',2014,NULL,NULL,10);
INSERT INTO `V3_projections_copy` VALUES (20,'ARGNAT','COW',2014,NULL,NULL,20);
INSERT INTO `V3_projections_copy` VALUES (23,'ARGNAT','PER',2014,NULL,NULL,1);
INSERT INTO `V3_projections_copy` VALUES (24,'ARGNAT','PER',2014,NULL,NULL,2);
INSERT INTO `V3_projections_copy` VALUES (25,'ARGNAT','PER',2014,NULL,NULL,20);
INSERT INTO `V3_projections_copy` VALUES (26,'ARGNAT','PER',2014,NULL,NULL,10);
INSERT INTO `V3_projections_copy` VALUES (27,'ARGNAT','PER',2014,NULL,NULL,20);
INSERT INTO `V3_projections_copy` VALUES (28,'ARGNAT','WHT',2014,NULL,NULL,1);
INSERT INTO `V3_projections_copy` VALUES (29,'ARGNAT','WHT',2014,NULL,NULL,2);
INSERT INTO `V3_projections_copy` VALUES (30,'ARGNAT','WHT',2014,NULL,NULL,5);
INSERT INTO `V3_projections_copy` VALUES (31,'ARGNAT','WHT',2014,NULL,NULL,10);
INSERT INTO `V3_projections_copy` VALUES (32,'ARGNAT','WHT',2014,NULL,NULL,20);

--
-- Table structure for table `V3_resource`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_resource` (
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_resource`
--

INSERT INTO `V3_resource` VALUES ('CO2','Green');
INSERT INTO `V3_resource` VALUES ('EDU','Fair');
INSERT INTO `V3_resource` VALUES ('EXP','Good');
INSERT INTO `V3_resource` VALUES ('HEA','Fair');
INSERT INTO `V3_resource` VALUES ('IMP','Good');
INSERT INTO `V3_resource` VALUES ('JOB','Fair');
INSERT INTO `V3_resource` VALUES ('LDT','Green');
INSERT INTO `V3_resource` VALUES ('PEN','Green');
INSERT INTO `V3_resource` VALUES ('WAT','Green');

--
-- Table structure for table `V3_service`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_service` (
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_service`
--

INSERT INTO `V3_service` VALUES ('ECOMEAL');

--
-- Table structure for table `V3_service_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_service_item` (
  `service_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_kg_pp_meal` float(16,4) DEFAULT NULL,
  PRIMARY KEY (`service_name`,`item`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_service_item`
--

INSERT INTO `V3_service_item` VALUES ('ECOMEAL','AVO',NULL);
INSERT INTO `V3_service_item` VALUES ('ECOMEAL','COW',NULL);
INSERT INTO `V3_service_item` VALUES ('ECOMEAL','CPE',NULL);
INSERT INTO `V3_service_item` VALUES ('ECOMEAL','MIL',NULL);
INSERT INTO `V3_service_item` VALUES ('ECOMEAL','PER',NULL);
INSERT INTO `V3_service_item` VALUES ('ECOMEAL','WHT',NULL);

--
-- Table structure for table `V3_service_stats`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_service_stats` (
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contains` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kg` float(16,4) NOT NULL,
  PRIMARY KEY (`name`,`contains`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_service_stats`
--

INSERT INTO `V3_service_stats` VALUES ('ECOMEAL','AVO',319740.0000);
INSERT INTO `V3_service_stats` VALUES ('ECOMEAL','COW',0.0000);
INSERT INTO `V3_service_stats` VALUES ('ECOMEAL','CPE',532900.0000);
INSERT INTO `V3_service_stats` VALUES ('ECOMEAL','MIL',6021770.0000);
INSERT INTO `V3_service_stats` VALUES ('ECOMEAL','PER',1065800.0000);
INSERT INTO `V3_service_stats` VALUES ('ECOMEAL','WHT',532900.0000);

--
-- Table structure for table `_adjust`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_adjust` (
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `c_kg_val` float(16,4) DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_adjust`
--

INSERT INTO `_adjust` VALUES ('ARGNAT','AVO',2014,0.6930);
INSERT INTO `_adjust` VALUES ('ARGNAT','COW',2014,2.4939);
INSERT INTO `_adjust` VALUES ('ARGNAT','CPE',2014,0.4841);
INSERT INTO `_adjust` VALUES ('ARGNAT','MIL',2014,0.3121);
INSERT INTO `_adjust` VALUES ('ARGNAT','PER',2014,0.4088);
INSERT INTO `_adjust` VALUES ('ARGNAT','WHT',2014,0.1578);

--
-- Temporary table structure for view `proj_view`
--

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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp`
--

INSERT INTO `tmp` VALUES (4079.00000000,79.00000000,79.00000000,79.00000000,111.72287143,'CPE','WAT',2014);

--
-- Final view structure for view `proj_view`
--

/*!50001 DROP TABLE IF EXISTS `proj_view`*/;
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
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-20 13:15:23
