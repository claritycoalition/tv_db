-- MySQL dump 10.16  Distrib 10.1.30-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: clarity
-- ------------------------------------------------------
-- Server version	10.1.30-MariaDB
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_tmp`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tmp` (
  `c_kg_pp_yr` decimal(23,4) DEFAULT NULL,
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_tmp`
--

INSERT INTO `_tmp` VALUES (0.0884,'ARGNAT','AVO',2014);
INSERT INTO `_tmp` VALUES (0.1243,'ARGNAT','CPE',2014);
INSERT INTO `_tmp` VALUES (17.5888,'ARGNAT','PER',2014);
INSERT INTO `_tmp` VALUES (438.0000,'ECOCHE','AVO',2014);
INSERT INTO `_tmp` VALUES (730.0000,'ECOCHE','CPE',2014);
INSERT INTO `_tmp` VALUES (1460.0000,'ECOCHE','PER',2014);

--
-- Table structure for table `pre_proj3`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pre_proj3` (
  `v_frac_pop` double DEFAULT NULL,
  `cv_sample_pop` double DEFAULT NULL,
  `ecval` double(21,4) DEFAULT NULL,
  `c_new_kg_item` double DEFAULT NULL,
  `bau_kg_gdp_item` bigint(20) DEFAULT NULL,
  `c_redcued` double DEFAULT NULL,
  `c_redcuedby` double DEFAULT NULL,
  `c_new_tot_kg_gdp_item` double DEFAULT NULL,
  `c_kg_delta_pct` double DEFAULT NULL,
  `bau_gdp` bigint(20) DEFAULT NULL,
  `c_item_gdp_pct` double DEFAULT NULL,
  `c_gdp_redcued` double DEFAULT NULL,
  `c_new_tot_kg_gdp` double DEFAULT NULL,
  `c_gdp_delta_pct` double DEFAULT NULL,
  `c_val_gdp_tot` double DEFAULT NULL,
  `bau_pop` bigint(16) DEFAULT NULL,
  `bau_gdp_item` bigint(16) DEFAULT NULL,
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pre_proj3`
--

INSERT INTO `pre_proj3` VALUES (0.01,438500,525.6000,230475606.0218811,3877000,3838230,38770,234313836.0218811,5943.689347997965,545900000000,0.0007102033339439457,545899961230,546130436836.02185,0.04221227990874713,159719599.2592376,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `pre_proj3` VALUES (0.02,877000,525.6000,460951212.0437622,3877000,3799460,77540,464750672.0437622,11887.37869599593,545900000000,0.0007102033339439457,545899922460,546360873672.04376,0.08442455981750543,319439198.5184752,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `pre_proj3` VALUES (0.05,2192500,525.6000,1152378030.1094055,3877000,3683150,193850,1156061180.1094055,29718.446739989828,545900000000,0.0007102033339439457,545899806150,547052184180.1094,0.21106139954375802,798597996.296188,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `pre_proj3` VALUES (0.1,4385000,525.6000,2304756060.218811,3877000,3489300,387700,2308245360.218811,59436.893479979655,545900000000,0.0007102033339439457,545899612300,548204368360.2188,0.42212279908752715,1597195992.592376,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `pre_proj3` VALUES (0.2,8770000,525.6000,4609512120.437622,3877000,3101600,775400,4612613720.437622,118873.78695995931,545900000000,0.0007102033339439457,545899224600,550508736720.4376,0.8442455981750543,3194391985.184752,43850000,2686838,'ARGNAT','AVO',2014);

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
  `c_gdp_pp_yr` decimal(23,4) DEFAULT NULL,
  `pop` bigint(16) DEFAULT NULL,
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `gdp` bigint(16) DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp`
--

INSERT INTO `tmp` VALUES (0.0063,18250,'ECOCHE','WHT',2014,115);

--
-- Table structure for table `v3_area`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v3_area` (
  `loc` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`loc`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v3_area`
--

INSERT INTO `v3_area` VALUES ('ARG');

--
-- Table structure for table `v3_entity`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v3_entity` (
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loc` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`entity`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v3_entity`
--

INSERT INTO `v3_entity` VALUES ('ARGNAT','ARG');
INSERT INTO `v3_entity` VALUES ('ECOCHE','ARG');

--
-- Table structure for table `v3_entity_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v3_entity_item` (
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `kg_yr` bigint(11) DEFAULT NULL,
  `gdp` bigint(16) DEFAULT NULL,
  `c_kg_val` float(16,4) DEFAULT NULL,
  `c_gdp_pp_yr` float(16,4) DEFAULT NULL,
  `c_kg_pp_yr` float(16,4) DEFAULT NULL,
  `c_kg_svc_yr` float(16,4) DEFAULT NULL,
  `c_kg_svc_single` float(16,4) DEFAULT NULL,
  PRIMARY KEY (`entity`,`item`,`year`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v3_entity_item`
--

INSERT INTO `v3_entity_item` VALUES ('ARGNAT','AVO',2014,3877000,2686838,0.6930,0.0613,0.0884,NULL,NULL);
INSERT INTO `v3_entity_item` VALUES ('ARGNAT','COW',2014,2821700000,7037021448,2.4939,160.4794,64.3489,NULL,NULL);
INSERT INTO `v3_entity_item` VALUES ('ARGNAT','CPE',2014,54508000,26385703,0.4841,0.6017,1.2431,NULL,NULL);
INSERT INTO `v3_entity_item` VALUES ('ARGNAT','MIL',2014,11009900000,3435760403,0.3121,78.3526,251.0810,NULL,NULL);
INSERT INTO `v3_entity_item` VALUES ('ARGNAT','PER',2014,771271000,315319521,0.4088,7.1909,17.5888,NULL,NULL);
INSERT INTO `v3_entity_item` VALUES ('ARGNAT','WHT',2014,9315049000,1469747061,0.1578,33.5176,212.4299,NULL,NULL);
INSERT INTO `v3_entity_item` VALUES ('ECOCHE','AVO',2014,438,304,0.6941,0.0167,17.5200,438.0000,0.0240);
INSERT INTO `v3_entity_item` VALUES ('ECOCHE','COW',2014,0,0,NULL,0.0000,0.0000,0.0000,0.0000);
INSERT INTO `v3_entity_item` VALUES ('ECOCHE','CPE',2014,730,353,0.4836,0.0193,29.2000,730.0000,0.0400);
INSERT INTO `v3_entity_item` VALUES ('ECOCHE','MIL',2014,8249,2575,0.3122,0.1411,329.9600,8249.0000,0.4520);
INSERT INTO `v3_entity_item` VALUES ('ECOCHE','PER',2014,1460,597,0.4089,0.0327,58.4000,1460.0000,0.0800);
INSERT INTO `v3_entity_item` VALUES ('ECOCHE','WHT',2014,730,115,0.1575,0.0063,29.2000,730.0000,0.0400);

--
-- Table structure for table `v3_entity_item_copy`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v3_entity_item_copy` (
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `kg_yr` bigint(11) DEFAULT NULL,
  `gdp` bigint(16) DEFAULT NULL,
  `c_kg_val` float(16,4) DEFAULT NULL,
  `c_gdp_pp_yr` float(16,4) DEFAULT NULL,
  `c_kg_pp_yr` float(16,4) DEFAULT NULL,
  `c_kg_svc_yr` float(16,4) DEFAULT NULL,
  `c_kg_svc_single` float(16,4) DEFAULT NULL,
  PRIMARY KEY (`entity`,`item`,`year`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v3_entity_item_copy`
--

INSERT INTO `v3_entity_item_copy` VALUES ('ARGNAT','AVO',2014,3877000,2686838,0.6930,0.0613,0.0884,NULL,NULL);
INSERT INTO `v3_entity_item_copy` VALUES ('ARGNAT','COW',2014,2821700000,7037021448,2.4939,160.4794,64.3489,NULL,NULL);
INSERT INTO `v3_entity_item_copy` VALUES ('ARGNAT','CPE',2014,54508000,26385703,0.4841,0.6017,1.2431,NULL,NULL);
INSERT INTO `v3_entity_item_copy` VALUES ('ARGNAT','MIL',2014,11009900000,3435760403,0.3121,78.3526,251.0810,NULL,NULL);
INSERT INTO `v3_entity_item_copy` VALUES ('ARGNAT','PER',2014,771271000,315319521,0.4088,7.1909,17.5888,NULL,NULL);
INSERT INTO `v3_entity_item_copy` VALUES ('ARGNAT','WHT',2014,9315049000,1469747061,0.1578,33.5176,212.4299,NULL,NULL);
INSERT INTO `v3_entity_item_copy` VALUES ('ECOCHE','AVO',2014,438,304,0.6941,0.0167,17.5200,438.0000,0.0240);
INSERT INTO `v3_entity_item_copy` VALUES ('ECOCHE','COW',2014,0,0,NULL,0.0000,0.0000,0.0000,0.0000);
INSERT INTO `v3_entity_item_copy` VALUES ('ECOCHE','CPE',2014,730,353,0.4836,0.0193,29.2000,730.0000,0.0400);
INSERT INTO `v3_entity_item_copy` VALUES ('ECOCHE','MIL',2014,8249,2575,0.3122,0.1411,329.9600,8249.0000,0.4520);
INSERT INTO `v3_entity_item_copy` VALUES ('ECOCHE','PER',2014,1460,597,0.4089,0.0327,58.4000,1460.0000,0.0800);
INSERT INTO `v3_entity_item_copy` VALUES ('ECOCHE','WHT',2014,730,115,0.1575,0.0063,29.2000,730.0000,0.0400);

--
-- Table structure for table `v3_entity_service`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v3_entity_service` (
  `entity_name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_pop` bigint(16) NOT NULL,
  `returning` int(11) DEFAULT NULL,
  `meals_pp` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `c_tot_kg` float(16,6) DEFAULT NULL,
  `c_kg_per_client` float(16,6) DEFAULT NULL,
  `c_kg_per_event` float(16,6) DEFAULT NULL,
  `c_kg_per_meal` float(16,6) DEFAULT NULL,
  PRIMARY KEY (`entity_name`,`service_name`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v3_entity_service`
--

INSERT INTO `v3_entity_service` VALUES ('ECOCHE','ECOMEAL',18250,730,25,2014,211827760.000000,11607.000977,290175.000000,15.900001);

--
-- Table structure for table `v3_entity_stats`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v3_entity_stats` (
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pop` bigint(16) DEFAULT NULL,
  `gdp` bigint(16) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`entity`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v3_entity_stats`
--

INSERT INTO `v3_entity_stats` VALUES ('ARGNAT',43850000,545900000000,2014);
INSERT INTO `v3_entity_stats` VALUES ('ECOCHE',18250,3944,2014);

--
-- Table structure for table `v3_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v3_item` (
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v3_item`
--

INSERT INTO `v3_item` VALUES ('AVO');
INSERT INTO `v3_item` VALUES ('COW');
INSERT INTO `v3_item` VALUES ('CPE');
INSERT INTO `v3_item` VALUES ('MIL');
INSERT INTO `v3_item` VALUES ('PER');
INSERT INTO `v3_item` VALUES ('WHT');

--
-- Table structure for table `v3_item_resource`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v3_item_resource` (
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resource` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `res_kg_gdp` float(16,4) DEFAULT NULL,
  `c_kg_val` float(16,4) DEFAULT NULL,
  `c_gdp_val` float(16,4) DEFAULT NULL,
  `c_gdp_pp_yr` float(16,4) DEFAULT NULL,
  `c_kg_pp_yr` float(16,4) DEFAULT NULL,
  PRIMARY KEY (`item`,`resource`,`year`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v3_item_resource`
--

INSERT INTO `v3_item_resource` VALUES ('AVO','CO2',2014,0.1400,NULL,NULL,NULL,NULL);
INSERT INTO `v3_item_resource` VALUES ('AVO','WAT',2014,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `v3_item_resource` VALUES ('COW','CO2',2014,30.8600,NULL,NULL,NULL,NULL);
INSERT INTO `v3_item_resource` VALUES ('COW','WAT',2014,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `v3_item_resource` VALUES ('CPE','CO2',2014,0.1400,NULL,NULL,NULL,NULL);
INSERT INTO `v3_item_resource` VALUES ('CPE','WAT',2014,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `v3_item_resource` VALUES ('MIL','CO2',2014,0.4200,NULL,NULL,NULL,NULL);
INSERT INTO `v3_item_resource` VALUES ('MIL','WAT',2014,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `v3_item_resource` VALUES ('PER','CO2',2014,0.1400,NULL,NULL,NULL,NULL);
INSERT INTO `v3_item_resource` VALUES ('PER','WAT',2014,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `v3_item_resource` VALUES ('WHT','CO2',2014,0.1400,NULL,NULL,NULL,NULL);
INSERT INTO `v3_item_resource` VALUES ('WHT','WAT',2014,NULL,NULL,NULL,NULL,NULL);

--
-- Table structure for table `v3_item_resource_stats`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v3_item_resource_stats` (
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
-- Dumping data for table `v3_item_resource_stats`
--

INSERT INTO `v3_item_resource_stats` VALUES (1,'AVO','CO2',2014,NULL,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (2,'AVO','CO2',2014,0.4300,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (3,'AVO','CO2',2014,0.8800,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (4,'AVO','CO2',2014,NULL,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (5,'AVO','CO2',2014,0.8460,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (6,'AVO','CO2',2014,NULL,'src-6');
INSERT INTO `v3_item_resource_stats` VALUES (7,'COW','CO2',2014,30.8600,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (8,'COW','CO2',2014,NULL,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (9,'COW','CO2',2014,32.0000,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (10,'COW','CO2',2014,NULL,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (11,'COW','CO2',2014,NULL,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (12,'COW','CO2',2014,27.0000,'src-6');
INSERT INTO `v3_item_resource_stats` VALUES (13,'CPE','CO2',2014,NULL,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (14,'CPE','CO2',2014,0.7700,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (15,'CPE','CO2',2014,0.8000,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (16,'CPE','CO2',2014,0.5800,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (17,'CPE','CO2',2014,NULL,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (18,'CPE','CO2',2014,NULL,'src-6');
INSERT INTO `v3_item_resource_stats` VALUES (19,'MIL','CO2',2014,0.4200,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (20,'MIL','CO2',2014,1.1900,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (21,'MIL','CO2',2014,NULL,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (22,'MIL','CO2',2014,0.9700,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (23,'MIL','CO2',2014,NULL,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (24,'MIL','CO2',2014,NULL,'src-6');
INSERT INTO `v3_item_resource_stats` VALUES (25,'PER','CO2',2014,NULL,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (26,'PER','CO2',2014,0.4300,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (27,'PER','CO2',2014,0.8800,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (28,'PER','CO2',2014,NULL,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (29,'PER','CO2',2014,NULL,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (30,'PER','CO2',2014,NULL,'src-6');
INSERT INTO `v3_item_resource_stats` VALUES (31,'WHT','CO2',2014,0.1400,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (32,'WHT','CO2',2014,0.6300,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (33,'WHT','CO2',2014,0.6600,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (34,'WHT','CO2',2014,1.1200,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (35,'WHT','CO2',2014,NULL,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (36,'WHT','CO2',2014,NULL,'src-6');
INSERT INTO `v3_item_resource_stats` VALUES (41,'AVO','WAT',2014,NULL,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (42,'AVO','WAT',2014,NULL,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (43,'AVO','WAT',2014,NULL,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (44,'AVO','WAT',2014,1170.0000,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (45,'AVO','WAT',2014,1000.0000,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (46,'AVO','WAT',2014,NULL,'src-6');
INSERT INTO `v3_item_resource_stats` VALUES (47,'COW','WAT',2014,15500.0000,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (48,'COW','WAT',2014,15415.0000,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (49,'COW','WAT',2014,14940.0000,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (110,'COW','WAT',2014,15339.0000,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (111,'COW','WAT',2014,NULL,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (112,'COW','WAT',2014,NULL,'src-6');
INSERT INTO `v3_item_resource_stats` VALUES (113,'CPE','WAT',2014,NULL,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (114,'CPE','WAT',2014,NULL,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (115,'CPE','WAT',2014,NULL,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (116,'CPE','WAT',2014,4158.0000,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (117,'CPE','WAT',2014,4000.0000,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (118,'CPE','WAT',2014,NULL,'src-6');
INSERT INTO `v3_item_resource_stats` VALUES (119,'MIL','WAT',2014,1000.0000,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (120,'MIL','WAT',2014,1020.0000,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (121,'MIL','WAT',2014,NULL,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (122,'MIL','WAT',2014,NULL,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (123,'MIL','WAT',2014,NULL,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (124,'MIL','WAT',2014,NULL,'src-6');
INSERT INTO `v3_item_resource_stats` VALUES (125,'PER','WAT',2014,NULL,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (126,'PER','WAT',2014,822.0000,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (127,'PER','WAT',2014,NULL,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (128,'PER','WAT',2014,NULL,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (129,'PER','WAT',2014,1000.0000,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (130,'PER','WAT',2014,NULL,'src-6');
INSERT INTO `v3_item_resource_stats` VALUES (131,'WHT','WAT',2014,1300.0000,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (132,'WHT','WAT',2014,NULL,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (133,'WHT','WAT',2014,NULL,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (134,'WHT','WAT',2014,NULL,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (135,'WHT','WAT',2014,1600.0000,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (136,'WHT','WAT',2014,1500.0000,'src-6');

--
-- Table structure for table `v3_ledger`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v3_ledger` (
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `production` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `consumption` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`entity`,`production`,`consumption`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v3_ledger`
--

INSERT INTO `v3_ledger` VALUES ('ARGNAT','AVO','');
INSERT INTO `v3_ledger` VALUES ('ARGNAT','COW','');
INSERT INTO `v3_ledger` VALUES ('ARGNAT','CPE','');
INSERT INTO `v3_ledger` VALUES ('ARGNAT','MIL','');
INSERT INTO `v3_ledger` VALUES ('ARGNAT','PER','');
INSERT INTO `v3_ledger` VALUES ('ARGNAT','WHT','');
INSERT INTO `v3_ledger` VALUES ('ECOCHE','','AVO');
INSERT INTO `v3_ledger` VALUES ('ECOCHE','','COW');
INSERT INTO `v3_ledger` VALUES ('ECOCHE','','CPE');
INSERT INTO `v3_ledger` VALUES ('ECOCHE','','MIL');
INSERT INTO `v3_ledger` VALUES ('ECOCHE','','PER');
INSERT INTO `v3_ledger` VALUES ('ECOCHE','','WHT');

--
-- Table structure for table `v3_pre_proj3`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v3_pre_proj3` (
  `v_frac_pop` double DEFAULT NULL,
  `cv_sample_pop` double DEFAULT NULL,
  `ecval` double(21,4) DEFAULT NULL,
  `c_new_kg_item` double DEFAULT NULL,
  `bau_kg_gdp_item` bigint(20) DEFAULT NULL,
  `c_redcued` double DEFAULT NULL,
  `c_redcuedby` double DEFAULT NULL,
  `c_new_tot_kg_gdp_item` double DEFAULT NULL,
  `c_kg_delta_pct` double DEFAULT NULL,
  `bau_gdp` bigint(20) DEFAULT NULL,
  `c_item_gdp_pct` double DEFAULT NULL,
  `c_gdp_redcued` double DEFAULT NULL,
  `c_new_tot_kg_gdp` double DEFAULT NULL,
  `c_gdp_delta_pct` double DEFAULT NULL,
  `c_val_gdp_tot` double DEFAULT NULL,
  `bau_pop` bigint(16) DEFAULT NULL,
  `bau_gdp_item` bigint(16) DEFAULT NULL,
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v3_pre_proj3`
--

INSERT INTO `v3_pre_proj3` VALUES (0.01,438500,2321.4000,1017933888.9598846,3877000,3838230,38770,1021772118.9598846,26254.71031622091,545900000000,0.0007102033339439457,545899961230,546917895118.9599,0.18646182798312877,705428203.9793595,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `v3_pre_proj3` VALUES (0.02,877000,2321.4000,2035867777.9197693,3877000,3799460,77540,2039667237.9197693,52509.42063244182,545900000000,0.0007102033339439457,545899922460,547935790237.9198,0.37292365596625754,1410856407.958719,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `v3_pre_proj3` VALUES (0.05,2192500,2321.4000,5089669444.799423,3877000,3683150,193850,5093352594.799423,131273.55158110455,545900000000,0.0007102033339439457,545899806150,550989475594.7994,0.9323091399156327,3527141019.896797,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `v3_pre_proj3` VALUES (0.1,4385000,2321.4000,10179338889.598846,3877000,3489300,387700,10182828189.598846,262547.1031622091,545900000000,0.0007102033339439457,545899612300,556078951189.5989,1.8646182798312654,7054282039.793594,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `v3_pre_proj3` VALUES (0.2,8770000,2321.4000,20358677779.197693,3877000,3101600,775400,20361779379.197693,525094.2063244182,545900000000,0.0007102033339439457,545899224600,566257902379.1978,3.7292365596625308,14108564079.587189,43850000,2686838,'ARGNAT','AVO',2014);

--
-- Table structure for table `v3_projections`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v3_projections` (
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
-- Dumping data for table `v3_projections`
--

INSERT INTO `v3_projections` VALUES (1,'ARGNAT','AVO',2014,NULL,NULL,1);
INSERT INTO `v3_projections` VALUES (2,'ARGNAT','AVO',2014,NULL,NULL,2);
INSERT INTO `v3_projections` VALUES (3,'ARGNAT','AVO',2014,NULL,NULL,5);
INSERT INTO `v3_projections` VALUES (4,'ARGNAT','AVO',2014,NULL,NULL,10);
INSERT INTO `v3_projections` VALUES (5,'ARGNAT','AVO',2014,NULL,NULL,20);

--
-- Table structure for table `v3_resource`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v3_resource` (
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v3_resource`
--

INSERT INTO `v3_resource` VALUES ('CO2');
INSERT INTO `v3_resource` VALUES ('LAN');
INSERT INTO `v3_resource` VALUES ('WAT');

--
-- Table structure for table `v3_service`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v3_service` (
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v3_service`
--

INSERT INTO `v3_service` VALUES ('ECOMEAL');

--
-- Table structure for table `v3_service_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v3_service_item` (
  `service_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_kg_pp_meal` float(16,4) DEFAULT NULL,
  PRIMARY KEY (`service_name`,`item`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v3_service_item`
--

INSERT INTO `v3_service_item` VALUES ('ECOMEAL','AVO',0.0240);
INSERT INTO `v3_service_item` VALUES ('ECOMEAL','COW',0.0000);
INSERT INTO `v3_service_item` VALUES ('ECOMEAL','CPE',0.0400);
INSERT INTO `v3_service_item` VALUES ('ECOMEAL','MIL',0.4520);
INSERT INTO `v3_service_item` VALUES ('ECOMEAL','PER',0.0800);
INSERT INTO `v3_service_item` VALUES ('ECOMEAL','WHT',0.0400);

--
-- Table structure for table `v3_service_stats`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v3_service_stats` (
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contains` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kg` float(16,4) NOT NULL,
  PRIMARY KEY (`name`,`contains`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v3_service_stats`
--

INSERT INTO `v3_service_stats` VALUES ('ECOMEAL','AVO',0.6000);
INSERT INTO `v3_service_stats` VALUES ('ECOMEAL','COW',0.0000);
INSERT INTO `v3_service_stats` VALUES ('ECOMEAL','CPE',1.0000);
INSERT INTO `v3_service_stats` VALUES ('ECOMEAL','MIL',11.3000);
INSERT INTO `v3_service_stats` VALUES ('ECOMEAL','PER',2.0000);
INSERT INTO `v3_service_stats` VALUES ('ECOMEAL','WHT',1.0000);

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
/*!50001 VIEW `proj_view` AS select `v3_entity_item`.`entity` AS `entity`,`v3_entity_stats`.`pop` AS `pop`,`v3_entity_stats`.`gdp` AS `gdp`,`v3_entity_item`.`year` AS `year`,`v3_projections`.`v_pct_pop` AS `v_pct_pop` from ((`v3_entity_stats` join `v3_entity_item` on(((`v3_entity_stats`.`entity` = `v3_entity_item`.`entity`) and (`v3_entity_stats`.`year` = `v3_entity_item`.`year`)))) join `v3_projections` on(((`v3_entity_item`.`year` = `v3_projections`.`year`) and (`v3_entity_item`.`entity` = `v3_projections`.`entity`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-09 16:12:55
