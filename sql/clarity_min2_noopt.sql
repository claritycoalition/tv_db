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
INSERT INTO `V3_entity_item` VALUES ('ECOCHE','AVO',2014,10950,7588,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ECOCHE','COW',2014,0,0,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ECOCHE','CPE',2014,18250,8835,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ECOCHE','MIL',2014,206225,64363,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ECOCHE','PER',2014,36500,14921,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ECOCHE','WHT',2014,18250,2880,NULL,NULL,NULL);

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
INSERT INTO `V3_item_resource` VALUES ('AVO','WAT',2014,1085.0000,85.0000,85.0000,85.0000,120.2082,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('COW','CO2',2014,29.9533,2.1396,2.1396,2.1396,2.6204,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('COW','WAT',2014,15298.5000,214.6724,214.6724,214.6724,247.8824,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('CPE','CO2',2014,0.7167,0.0974,0.0974,0.0974,0.1193,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('CPE','WAT',2014,4079.0000,79.0000,79.0000,79.0000,111.7229,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('MIL','CO2',2014,0.8600,0.3238,0.3238,0.3238,0.3966,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('MIL','WAT',2014,1010.0000,10.0000,10.0000,10.0000,14.1421,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('PER','CO2',2014,0.6550,0.2250,0.2250,0.2250,0.3182,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('PER','WAT',2014,911.0000,89.0000,89.0000,89.0000,125.8650,NULL,NULL,NULL,NULL);
INSERT INTO `V3_item_resource` VALUES ('WHT','CO2',2014,0.6375,0.3467,0.3467,0.3467,0.4004,NULL,NULL,NULL,NULL);
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
INSERT INTO `V3_item_resource_stats` VALUES (41,'AVO','WAT',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (42,'AVO','WAT',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (43,'AVO','WAT',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (44,'AVO','WAT',2014,1170.0000,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (45,'AVO','WAT',2014,1000.0000,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (46,'AVO','WAT',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (47,'COW','WAT',2014,15500.0000,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (48,'COW','WAT',2014,15415.0000,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (49,'COW','WAT',2014,14940.0000,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (110,'COW','WAT',2014,15339.0000,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (111,'COW','WAT',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (112,'COW','WAT',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (113,'CPE','WAT',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (114,'CPE','WAT',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (115,'CPE','WAT',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (116,'CPE','WAT',2014,4158.0000,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (117,'CPE','WAT',2014,4000.0000,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (118,'CPE','WAT',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (119,'MIL','WAT',2014,1000.0000,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (120,'MIL','WAT',2014,1020.0000,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (121,'MIL','WAT',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (122,'MIL','WAT',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (123,'MIL','WAT',2014,NULL,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (124,'MIL','WAT',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (125,'PER','WAT',2014,NULL,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (126,'PER','WAT',2014,822.0000,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (127,'PER','WAT',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (128,'PER','WAT',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (129,'PER','WAT',2014,1000.0000,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (130,'PER','WAT',2014,NULL,'src-6');
INSERT INTO `V3_item_resource_stats` VALUES (131,'WHT','WAT',2014,1300.0000,'src-1');
INSERT INTO `V3_item_resource_stats` VALUES (132,'WHT','WAT',2014,NULL,'src-2');
INSERT INTO `V3_item_resource_stats` VALUES (133,'WHT','WAT',2014,NULL,'src-3');
INSERT INTO `V3_item_resource_stats` VALUES (134,'WHT','WAT',2014,NULL,'src-4');
INSERT INTO `V3_item_resource_stats` VALUES (135,'WHT','WAT',2014,1600.0000,'src-5');
INSERT INTO `V3_item_resource_stats` VALUES (136,'WHT','WAT',2014,1500.0000,'src-6');

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
-- Dumping data for table `V3_pre_proj3`
--

INSERT INTO `V3_pre_proj3` VALUES (0.01,438500,79.5000,34860750.47045946,3877000,3838230,38770,38698980.47045946,898.1681834010693,545900000000,0.0007102033339439457,545899961230,545934821980.47046,0.006378820382938082,24158500.72432155,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `V3_pre_proj3` VALUES (0.02,877000,79.5000,69721500.94091892,3877000,3799460,77540,73520960.94091892,1796.3363668021386,545900000000,0.0007102033339439457,545899922460,545969643960.9409,0.012757640765876163,48317001.4486431,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `V3_pre_proj3` VALUES (0.05,2192500,79.5000,174303752.3522973,3877000,3683150,193850,177986902.3522973,4490.840917005347,545900000000,0.0007102033339439457,545899806150,546074109902.3523,0.03189410191469041,120792503.62160777,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `V3_pre_proj3` VALUES (0.1,4385000,79.5000,348607504.7045946,3877000,3489300,387700,352096804.7045946,8981.681834010695,545900000000,0.0007102033339439457,545899612300,546248219804.7046,0.06378820382938082,241585007.24321553,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `V3_pre_proj3` VALUES (0.2,8770000,79.5000,697215009.4091892,3877000,3101600,775400,700316609.4091892,17963.36366802139,545900000000,0.0007102033339439457,545899224600,546596439609.4092,0.12757640765876163,483170014.48643106,43850000,2686838,'ARGNAT','AVO',2014);

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

--
-- Table structure for table `V3_resource`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_resource` (
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`name`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_resource`
--

INSERT INTO `V3_resource` VALUES ('CO2');
INSERT INTO `V3_resource` VALUES ('LAN');
INSERT INTO `V3_resource` VALUES ('WAT');

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

-- Dump completed on 2018-02-02 19:37:19
