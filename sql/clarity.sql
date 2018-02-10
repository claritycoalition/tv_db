-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: clarity
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB

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
-- Table structure for table `TMP1`
--

DROP TABLE IF EXISTS `TMP1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TMP1` (
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_pop` bigint(16) NOT NULL,
  `returning` int(11) DEFAULT NULL,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kg` float(16,4) NOT NULL,
  `c_tot_kg` double(21,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TMP1`
--

LOCK TABLES `TMP1` WRITE;
/*!40000 ALTER TABLE `TMP1` DISABLE KEYS */;
INSERT INTO `TMP1` VALUES ('ECOCHE','ECOMEAL',18250,720,'AVO',0.0240,315360.0027);
/*!40000 ALTER TABLE `TMP1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V2_area_product_debitors`
--

DROP TABLE IF EXISTS `V2_area_product_debitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V2_area_product_debitors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `kg` bigint(11) NOT NULL,
  `c_kg_pp` float DEFAULT NULL,
  `c_kg_pp_yr` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V2_area_product_debitors`
--

LOCK TABLES `V2_area_product_debitors` WRITE;
/*!40000 ALTER TABLE `V2_area_product_debitors` DISABLE KEYS */;
INSERT INTO `V2_area_product_debitors` VALUES (3,'AVO','ECOCHE',2014,0,NULL,NULL);
/*!40000 ALTER TABLE `V2_area_product_debitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V2_creditor_stats`
--

DROP TABLE IF EXISTS `V2_creditor_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V2_creditor_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loc` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pop` bigint(16) NOT NULL,
  `gdp` bigint(16) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V2_creditor_stats`
--

LOCK TABLES `V2_creditor_stats` WRITE;
/*!40000 ALTER TABLE `V2_creditor_stats` DISABLE KEYS */;
INSERT INTO `V2_creditor_stats` VALUES (1,'ARG',43850000,545900000000,2014);
/*!40000 ALTER TABLE `V2_creditor_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V2_creditors`
--

DROP TABLE IF EXISTS `V2_creditors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V2_creditors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loc` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partof` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V2_creditors`
--

LOCK TABLES `V2_creditors` WRITE;
/*!40000 ALTER TABLE `V2_creditors` DISABLE KEYS */;
INSERT INTO `V2_creditors` VALUES (1,'ARG','ARG','S.A.','GOVT');
/*!40000 ALTER TABLE `V2_creditors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V2_debitor_stats`
--

DROP TABLE IF EXISTS `V2_debitor_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V2_debitor_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loc` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pop` bigint(16) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V2_debitor_stats`
--

LOCK TABLES `V2_debitor_stats` WRITE;
/*!40000 ALTER TABLE `V2_debitor_stats` DISABLE KEYS */;
INSERT INTO `V2_debitor_stats` VALUES (2,'EC',18250,2014);
/*!40000 ALTER TABLE `V2_debitor_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V2_debitors`
--

DROP TABLE IF EXISTS `V2_debitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V2_debitors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loc` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partof` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V2_debitors`
--

LOCK TABLES `V2_debitors` WRITE;
/*!40000 ALTER TABLE `V2_debitors` DISABLE KEYS */;
INSERT INTO `V2_debitors` VALUES (2,'EC','EC','ARG','BUSI');
/*!40000 ALTER TABLE `V2_debitors` ENABLE KEYS */;
UNLOCK TABLES;

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
  `year` int(11) DEFAULT NULL,
  `kg` bigint(11) DEFAULT NULL,
  `gdp` bigint(16) DEFAULT NULL,
  `c_kg_gdp` float DEFAULT NULL,
  `c_kg_pp` float DEFAULT NULL,
  `c_kg_pp_yr` float DEFAULT NULL,
  PRIMARY KEY (`entity`,`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_entity_item`
--

LOCK TABLES `V3_entity_item` WRITE;
/*!40000 ALTER TABLE `V3_entity_item` DISABLE KEYS */;
INSERT INTO `V3_entity_item` VALUES ('ARGNAT','AVO',2014,3877000,2686838,0.69302,0.0612734,0.088415),('ECOCHE','AVO',2014,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `V3_entity_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V3_entity_service`
--

DROP TABLE IF EXISTS `V3_entity_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_entity_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_pop` bigint(16) NOT NULL,
  `returning` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `c_tot_kg` float(16,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_entity_service`
--

LOCK TABLES `V3_entity_service` WRITE;
/*!40000 ALTER TABLE `V3_entity_service` DISABLE KEYS */;
INSERT INTO `V3_entity_service` VALUES (1,'ECOCHE','ECOMEAL',18250,720,2014,315360.000000);
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
INSERT INTO `V3_entity_stats` VALUES ('ARGNAT',43850000,545900000000,2014),('ECOCHE',18250,NULL,2014);
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
INSERT INTO `V3_item` VALUES ('AVO');
/*!40000 ALTER TABLE `V3_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `V3_ledger`
--

DROP TABLE IF EXISTS `V3_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_ledger` (
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `production` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumption` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`entity`,`production`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_ledger`
--

LOCK TABLES `V3_ledger` WRITE;
/*!40000 ALTER TABLE `V3_ledger` DISABLE KEYS */;
INSERT INTO `V3_ledger` VALUES ('ARGNAT','AVO',''),('ECOCHE','','AVO');
/*!40000 ALTER TABLE `V3_ledger` ENABLE KEYS */;
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
INSERT INTO `V3_service_stats` VALUES ('ECOMEAL','AVO',0.0240);
/*!40000 ALTER TABLE `V3_service_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_V2_area_product`
--

DROP TABLE IF EXISTS `_V2_area_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_V2_area_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loc` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `kg` bigint(11) NOT NULL,
  `gdp` bigint(16) NOT NULL,
  `c_kg_gdp` float DEFAULT NULL,
  `c_kg_pp` float DEFAULT NULL,
  `c_kg_pp_yr` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_V2_area_product`
--

LOCK TABLES `_V2_area_product` WRITE;
/*!40000 ALTER TABLE `_V2_area_product` DISABLE KEYS */;
INSERT INTO `_V2_area_product` VALUES (1,'AVO','ARG',2014,3877000,2686838,0.69302,0.0612734,0.088415),(3,'AVO','EC',2014,438,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `_V2_area_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_cpu_per_person`
--

DROP TABLE IF EXISTS `_cpu_per_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_cpu_per_person` (
  `country` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_pop` decimal(32,0) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `product` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_cost` decimal(54,0) DEFAULT NULL,
  `total_produced` decimal(54,0) DEFAULT NULL,
  `cpp` decimal(58,4) DEFAULT NULL,
  `ppp` decimal(58,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_cpu_per_person`
--

LOCK TABLES `_cpu_per_person` WRITE;
/*!40000 ALTER TABLE `_cpu_per_person` DISABLE KEYS */;
INSERT INTO `_cpu_per_person` VALUES ('AR',10000,2005,'app','aa','P1',43323,3432,4.3323,0.3432),('AR',100000,2005,'asp','cc','P3',6767,54,0.0677,0.0005),('AR',1231212,2006,'app','bb','P5',8854,3543,0.0072,0.0029),('AR',3442442,2006,'asp','fg','P6',74645,45433,0.0217,0.0132),('AR',1000,2006,'avo','ec','AR',1000,100,1.0000,0.1000),('AR',1000000,2006,'avo','all','P4',6446,545,0.0064,0.0005),('AR',1000,2006,'ora','ec','AR',5000,2000,5.0000,2.0000),('AR',500,2006,'pea','bb','P2',43423,5234,86.8460,10.4680),('AR',1000,2006,'pot','ec','AR',4000,1000,4.0000,1.0000),('US',5443534,2005,'pot','gh','US',5645,54,0.0010,0.0000),('US',5443534,2005,'wal','gh','US',6000,3000,0.0011,0.0006);
/*!40000 ALTER TABLE `_cpu_per_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_metric_tots`
--

DROP TABLE IF EXISTS `_metric_tots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_metric_tots` (
  `total_product_cost` decimal(32,0) DEFAULT NULL,
  `total_volume_produced` decimal(32,0) DEFAULT NULL,
  `product` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `cpu` decimal(36,4) DEFAULT NULL,
  `party` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consumed` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tot_cons_cost` double DEFAULT NULL,
  `cons_vol_pct` double DEFAULT NULL,
  `cons_cost_pct` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_metric_tots`
--

LOCK TABLES `_metric_tots` WRITE;
/*!40000 ALTER TABLE `_metric_tots` DISABLE KEYS */;
INSERT INTO `_metric_tots` VALUES (1000,100,'avo','AR',2006,10.0000,'ec','1',10,0.01,0.01),(6446,545,'avo','P4',2006,11.8275,'ec','1',11.8275,0.001834862385321101,0.0018348588271796464),(4000,1000,'pot','AR',2005,4.0000,'ec','2',8,0.002,0.002),(5645,54,'pot','US',2006,104.5370,'ec','2',209.074,0.037037037037037035,0.037037023914969),(5000,2000,'ora','AR',2006,2.5000,'bb','2323',5807.5,1.1615,1.1615),(1000,100,'avo','AR',2006,10.0000,'cc','3434',34340,34.34,34.34),(6446,545,'avo','P4',2006,11.8275,'cc','3434',40615.635,6.30091743119266,6.300905212534905),(5000,2000,'ora','AR',2006,2.5000,'bb','123',307.5,0.0615,0.0615),(43323,3432,'app','P1',2005,12.6233,'fg','234',2953.8522000000003,0.06818181818181818,0.06818207880340697),(8854,3543,'app','P5',2006,2.4990,'fg','234',584.7660000000001,0.06604572396274344,0.0660454032075898),(43423,5234,'pea','P2',2005,8.2963,'sd','345',2862.2235,0.06591517004203286,0.06591491836123714),(6767,54,'asp','P3',2005,125.3148,'hy','456',57143.548800000004,8.444444444444445,8.44444344613566),(74645,45433,'asp','P6',2006,1.6430,'hy','456',749.208,0.010036757423018511,0.010036948221582156),(1000,100,'avo','AR',2006,10.0000,'bn','567',5670,5.67,5.67),(6446,545,'avo','P4',2006,11.8275,'bn','567',6706.1925,1.0403669724770641,1.0403649550108596),(6767,54,'asp','P3',2005,125.3148,'jh','678',84963.4344,12.555555555555555,12.555554071228018),(74645,45433,'asp','P6',2006,1.6430,'jh','678',1113.954,0.01492307353685647,0.01492335722419452),(4000,1000,'pot','AR',2005,4.0000,'aq','789',3156,0.789,0.789),(5645,54,'pot','US',2006,104.5370,'aq','789',82479.693,14.61111111111111,14.61110593445527),(1000,100,'avo','AR',2006,10.0000,'gh','890',8900,8.9,8.9),(6446,545,'avo','P4',2006,11.8275,'gh','890',10526.475,1.6330275229357798,1.6330243561898852);
/*!40000 ALTER TABLE `_metric_tots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_prod_tots`
--

DROP TABLE IF EXISTS `_prod_tots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_prod_tots` (
  `total_product_cost` decimal(32,0) DEFAULT NULL,
  `total_volume_produced` decimal(32,0) DEFAULT NULL,
  `product` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `cpu` decimal(36,4) DEFAULT NULL,
  `pct_gdp` decimal(36,4) DEFAULT NULL,
  `pct_volume` decimal(36,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prod_tots`
--

LOCK TABLES `_prod_tots` WRITE;
/*!40000 ALTER TABLE `_prod_tots` DISABLE KEYS */;
INSERT INTO `_prod_tots` VALUES (1000,100,'avo','AR',2006,10.0000,0.0010,0.0001),(5000,2000,'ora','AR',2006,2.5000,0.0050,0.0018),(4000,1000,'pot','AR',2005,4.0000,0.0040,0.0009),(5645,54,'pot','US',2006,104.5370,0.0056,0.0000),(6000,3000,'wal','US',2005,2.0000,0.0060,0.0003),(43323,3432,'app','P1',2005,12.6233,0.0195,0.0010),(43423,5234,'pea','P2',2005,8.2963,130.0090,1.2052),(6767,54,'asp','P3',2005,125.3148,0.0020,0.0022),(6446,545,'avo','P4',2006,11.8275,1.5224,0.0126),(8854,3543,'app','P5',2006,2.4990,27.3272,885.7500),(74645,45433,'asp','P6',2006,1.6430,3.1868,1.9389);
/*!40000 ALTER TABLE `_prod_tots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_prod_tots_tmp`
--

DROP TABLE IF EXISTS `_prod_tots_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_prod_tots_tmp` (
  `total_product_cost` decimal(32,0) DEFAULT NULL,
  `total_volume_produced` decimal(32,0) DEFAULT NULL,
  `product` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prod_tots_tmp`
--

LOCK TABLES `_prod_tots_tmp` WRITE;
/*!40000 ALTER TABLE `_prod_tots_tmp` DISABLE KEYS */;
INSERT INTO `_prod_tots_tmp` VALUES (43323,3432,'app','P1',2005),(8854,3543,'app','P5',2006),(6767,54,'asp','P3',2005),(74645,45433,'asp','P6',2006),(1000,100,'avo','AR',2006),(6446,545,'avo','P4',2006),(5000,2000,'ora','AR',2006),(43423,5234,'pea','P2',2005),(4000,1000,'pot','AR',2005),(5645,54,'pot','US',2006),(6000,3000,'wal','US',2005);
/*!40000 ALTER TABLE `_prod_tots_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_prod_tots_year`
--

DROP TABLE IF EXISTS `_prod_tots_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_prod_tots_year` (
  `sum(_prod_tots.total_product_cost)` decimal(54,0) DEFAULT NULL,
  `sum(_prod_tots.total_volume_produced)` decimal(54,0) DEFAULT NULL,
  `product` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `sum(_prod_tots.cpu)` decimal(58,4) DEFAULT NULL,
  `sum(_prod_tots.pct_gdp)` decimal(58,4) DEFAULT NULL,
  `sum(_prod_tots.pct_volume)` decimal(58,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prod_tots_year`
--

LOCK TABLES `_prod_tots_year` WRITE;
/*!40000 ALTER TABLE `_prod_tots_year` DISABLE KEYS */;
INSERT INTO `_prod_tots_year` VALUES (103513,12720,'pot','AR',2005,152.2344,130.0405,1.2096),(101590,51675,'avo','AR',2006,133.0065,32.0480,887.7034);
/*!40000 ALTER TABLE `_prod_tots_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area_stats`
--

DROP TABLE IF EXISTS `area_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gdp` int(11) DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `pop` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_stats`
--

LOCK TABLES `area_stats` WRITE;
/*!40000 ALTER TABLE `area_stats` DISABLE KEYS */;
INSERT INTO `area_stats` VALUES (1,'AR',1000000,1111111,2005,40000000),(2,'US',1000000,11111111,2005,100000000),(3,'P1',2222222,3333333,2006,80000000),(4,'P2',334,4343,2006,54343423),(5,'P3',3423423,24234,2006,24243),(6,'P4',4234,43423,2006,342),(7,'P5',324,4,2006,3423434),(8,'P6',23423,23432,2006,4),(9,'P7',23424,24324,2005,242342342),(10,'P8',23423,24234,2005,432),(11,'P9',2344,234234,2005,4),(12,'P10',234,2423,2005,2),(13,'P11',2342,2424,2005,23434);
/*!40000 ALTER TABLE `area_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geotree`
--

DROP TABLE IF EXISTS `geotree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geotree` (
  `area` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`area`,`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geotree`
--

LOCK TABLES `geotree` WRITE;
/*!40000 ALTER TABLE `geotree` DISABLE KEYS */;
INSERT INTO `geotree` VALUES ('AR','AR'),('P1','AR'),('P10','US'),('P11','US'),('P2','AR'),('P3','AR'),('P4','AR'),('P5','AR'),('P6','AR'),('P7','US'),('P8','US'),('P9','US'),('US','US');
/*!40000 ALTER TABLE `geotree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local`
--

DROP TABLE IF EXISTS `local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `local` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `party` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local`
--

LOCK TABLES `local` WRITE;
/*!40000 ALTER TABLE `local` DISABLE KEYS */;
INSERT INTO `local` VALUES (14,'ec','avo'),(15,'cc','avo'),(16,'ec','pot'),(17,'bb','ora'),(21,'fg','app'),(22,'sd','pea'),(23,'hy','asp'),(24,'bn','avo'),(25,'jh','app'),(26,'aq','asp'),(27,'gh','pot');
/*!40000 ALTER TABLE `local` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local_copy`
--

DROP TABLE IF EXISTS `local_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `local_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `party` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gdp_agric_total_cost` int(11) DEFAULT NULL,
  `gdp_unit_cost` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local_copy`
--

LOCK TABLES `local_copy` WRITE;
/*!40000 ALTER TABLE `local_copy` DISABLE KEYS */;
INSERT INTO `local_copy` VALUES (14,'ec','avo',10,10),(15,'cc','avo',117923560,34340),(16,'ec','pot',40,8),(17,'bb','ora',53963290,6969);
/*!40000 ALTER TABLE `local_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metric`
--

DROP TABLE IF EXISTS `metric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metric` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `party` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consumed` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metric`
--

LOCK TABLES `metric` WRITE;
/*!40000 ALTER TABLE `metric` DISABLE KEYS */;
INSERT INTO `metric` VALUES (1,'ec','1','avo',2005),(2,'ec','2','pot',2006),(3,'bb','2323','ora',2005),(4,'cc','3434','avo',2006),(5,'bb','123','ora',2006),(6,'fg','234','app',2006),(7,'sd','345','pea',2006),(8,'hy','456','asp',2006),(9,'bn','567','avo',2005),(10,'jh','678','asp',2005),(11,'aq','789','pot',2005),(12,'gh','890','avo',2005);
/*!40000 ALTER TABLE `metric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metric_copy`
--

DROP TABLE IF EXISTS `metric_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metric_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `party` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consumed` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calculated_cost_per_unit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metric_copy`
--

LOCK TABLES `metric_copy` WRITE;
/*!40000 ALTER TABLE `metric_copy` DISABLE KEYS */;
INSERT INTO `metric_copy` VALUES (1,'ec','1','avo',10),(2,'ec','2','pot',20),(3,'bb','2323','ora',23230),(4,'cc','3434','avo',34340);
/*!40000 ALTER TABLE `metric_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parties`
--

DROP TABLE IF EXISTS `parties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `local` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pop` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parties`
--

LOCK TABLES `parties` WRITE;
/*!40000 ALTER TABLE `parties` DISABLE KEYS */;
INSERT INTO `parties` VALUES (1,'ec','AR',1000,2006),(2,'aa','P1',10000,2005),(3,'bb','P2',500,2006),(4,'cc','P3',100000,2005),(5,'all','P4',1000000,2006),(6,'bb','P5',1231212,2006),(7,'fg','P6',3442442,2006),(8,'sd','P7',34344,2006),(9,'hy','P8',6565754,2006),(10,'bn','P9',554355,2005),(11,'jh','P10',453454,2005),(12,'aq','P11',53456,2005),(13,'gh','US',5443534,2005);
/*!40000 ALTER TABLE `parties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `volume_produced` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `area` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'avo',100,1000,'AR',2006),(2,'pot',1000,4000,'AR',2005),(3,'ora',2000,5000,'AR',2006),(4,'wal',3000,6000,'US',2005),(5,'app',3432,43323,'P1',2005),(6,'pea',5234,43423,'P2',2005),(7,'asp',54,6767,'P3',2005),(8,'avo',545,6446,'P4',2006),(9,'app',3543,8854,'P5',2006),(10,'asp',45433,74645,'P6',2006),(11,'pot',54,5645,'US',2006);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_copy`
--

DROP TABLE IF EXISTS `product_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_copy` (
  `id` int(11) NOT NULL,
  `product` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `volume_produced` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `area` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calculated_cost_per_unit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_copy`
--

LOCK TABLES `product_copy` WRITE;
/*!40000 ALTER TABLE `product_copy` DISABLE KEYS */;
INSERT INTO `product_copy` VALUES (1,'avo',100,1000,'AR',10),(2,'pot',1000,4000,'AR',4),(3,'ora',2000,5000,'AR',3),(4,'wal',3000,6000,'US',2);
/*!40000 ALTER TABLE `product_copy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-23 11:35:57
