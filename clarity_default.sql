-- MySQL dump 10.16  Distrib 10.1.28-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: clarity
-- ------------------------------------------------------
-- Server version	10.1.28-MariaDB
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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TMP1`
--

INSERT INTO `TMP1` VALUES ('ECOCHE','ECOMEAL',18250,720,'AVO',0.0240,315360.0027);

--
-- Table structure for table `V2_area_product_debitors`
--

DROP TABLE IF EXISTS `V2_area_product_debitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V2_area_product_debitors` (
  `id` int(11) NOT NULL,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `kg` bigint(11) NOT NULL,
  `c_kg_pp` float DEFAULT NULL,
  `c_kg_pp_yr` float DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V2_area_product_debitors`
--

INSERT INTO `V2_area_product_debitors` VALUES (3,'AVO','ECOCHE',2014,0,NULL,NULL);

--
-- Table structure for table `V2_creditor_stats`
--

DROP TABLE IF EXISTS `V2_creditor_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V2_creditor_stats` (
  `id` int(11) NOT NULL,
  `loc` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pop` bigint(16) NOT NULL,
  `gdp` bigint(16) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V2_creditor_stats`
--

INSERT INTO `V2_creditor_stats` VALUES (1,'ARG',43850000,545900000000,2014);

--
-- Table structure for table `V2_creditors`
--

DROP TABLE IF EXISTS `V2_creditors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V2_creditors` (
  `id` int(11) NOT NULL,
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loc` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partof` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V2_creditors`
--

INSERT INTO `V2_creditors` VALUES (1,'ARG','ARG','S.A.','GOVT');

--
-- Table structure for table `V2_debitor_stats`
--

DROP TABLE IF EXISTS `V2_debitor_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V2_debitor_stats` (
  `id` int(11) NOT NULL,
  `loc` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pop` bigint(16) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V2_debitor_stats`
--

INSERT INTO `V2_debitor_stats` VALUES (2,'EC',18250,2014);

--
-- Table structure for table `V2_debitors`
--

DROP TABLE IF EXISTS `V2_debitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V2_debitors` (
  `id` int(11) NOT NULL,
  `name` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loc` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partof` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V2_debitors`
--

INSERT INTO `V2_debitors` VALUES (2,'EC','EC','ARG','BUSI');

--
-- Table structure for table `V3_area`
--

DROP TABLE IF EXISTS `V3_area`;
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

DROP TABLE IF EXISTS `V3_entity`;
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

DROP TABLE IF EXISTS `V3_entity_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_entity_item` (
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) DEFAULT NULL,
  `kg` bigint(11) DEFAULT NULL,
  `gdp` bigint(16) DEFAULT NULL,
  `c_kg_val` float DEFAULT NULL,
  `c_pp_val_gdp_yr` float DEFAULT NULL,
  PRIMARY KEY (`entity`,`item`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_entity_item`
--

INSERT INTO `V3_entity_item` VALUES ('ARGNAT','AVO',2014,3877000,2686838,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ARGNAT','CPE',2014,5450800,26385703,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ARGNAT','PER',2014,771271000,315319521,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ECOCHE','AVO',2014,319740,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ECOCHE','CPE',2014,532900,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ECOCHE','PER',2014,1065800,NULL,NULL,NULL);

--
-- Table structure for table `V3_entity_service`
--

DROP TABLE IF EXISTS `V3_entity_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_entity_service` (
  `id` int(11) NOT NULL,
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
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_entity_service`
--

INSERT INTO `V3_entity_service` VALUES (1,'ECOCHE','ECOMEAL',18250,730,25,2014,NULL,NULL,NULL,NULL);

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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_entity_stats`
--

INSERT INTO `V3_entity_stats` VALUES ('ARGNAT',43850000,545900000000,2014);
INSERT INTO `V3_entity_stats` VALUES ('ECOCHE',18250,NULL,2014);

--
-- Table structure for table `V3_item`
--

DROP TABLE IF EXISTS `V3_item`;
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
INSERT INTO `V3_item` VALUES ('CPE');
INSERT INTO `V3_item` VALUES ('PER');

--
-- Table structure for table `V3_ledger`
--

DROP TABLE IF EXISTS `V3_ledger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `V3_ledger` (
  `id` int(11) NOT NULL,
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `production` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumption` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_ledger`
--

INSERT INTO `V3_ledger` VALUES (1,'ARGNAT','AVO','');
INSERT INTO `V3_ledger` VALUES (2,'ARGNAT','CPE','');
INSERT INTO `V3_ledger` VALUES (3,'ARGNAT','PER','');
INSERT INTO `V3_ledger` VALUES (4,'ECOCHE','','AVO');
INSERT INTO `V3_ledger` VALUES (5,'ECOCHE','','CPE');
INSERT INTO `V3_ledger` VALUES (6,'ECOCHE','','PER');

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
-- Table structure for table `V3_service`
--

DROP TABLE IF EXISTS `V3_service`;
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

DROP TABLE IF EXISTS `V3_service_item`;
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
INSERT INTO `V3_service_item` VALUES ('ECOMEAL','CPE',NULL);
INSERT INTO `V3_service_item` VALUES ('ECOMEAL','PER',NULL);

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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_service_stats`
--

INSERT INTO `V3_service_stats` VALUES ('ECOMEAL','AVO',0.6000);
INSERT INTO `V3_service_stats` VALUES ('ECOMEAL','CPE',1.0000);
INSERT INTO `V3_service_stats` VALUES ('ECOMEAL','PER',2.0000);

--
-- Table structure for table `_V2_area_product`
--

DROP TABLE IF EXISTS `_V2_area_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_V2_area_product` (
  `id` int(11) NOT NULL,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loc` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `kg` bigint(11) NOT NULL,
  `gdp` bigint(16) NOT NULL,
  `c_kg_gdp` float DEFAULT NULL,
  `c_kg_pp` float DEFAULT NULL,
  `c_kg_pp_yr` float DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_V2_area_product`
--

INSERT INTO `_V2_area_product` VALUES (1,'AVO','ARG',2014,3877000,2686838,0.69302,0.0612734,0.088415);
INSERT INTO `_V2_area_product` VALUES (3,'AVO','EC',2014,438,0,NULL,NULL,NULL);

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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_cpu_per_person`
--

INSERT INTO `_cpu_per_person` VALUES ('AR',10000,2005,'app','aa','P1',43323,3432,4.3323,0.3432);
INSERT INTO `_cpu_per_person` VALUES ('AR',100000,2005,'asp','cc','P3',6767,54,0.0677,0.0005);
INSERT INTO `_cpu_per_person` VALUES ('AR',1231212,2006,'app','bb','P5',8854,3543,0.0072,0.0029);
INSERT INTO `_cpu_per_person` VALUES ('AR',3442442,2006,'asp','fg','P6',74645,45433,0.0217,0.0132);
INSERT INTO `_cpu_per_person` VALUES ('AR',1000,2006,'avo','ec','AR',1000,100,1.0000,0.1000);
INSERT INTO `_cpu_per_person` VALUES ('AR',1000000,2006,'avo','all','P4',6446,545,0.0064,0.0005);
INSERT INTO `_cpu_per_person` VALUES ('AR',1000,2006,'ora','ec','AR',5000,2000,5.0000,2.0000);
INSERT INTO `_cpu_per_person` VALUES ('AR',500,2006,'pea','bb','P2',43423,5234,86.8460,10.4680);
INSERT INTO `_cpu_per_person` VALUES ('AR',1000,2006,'pot','ec','AR',4000,1000,4.0000,1.0000);
INSERT INTO `_cpu_per_person` VALUES ('US',5443534,2005,'pot','gh','US',5645,54,0.0010,0.0000);
INSERT INTO `_cpu_per_person` VALUES ('US',5443534,2005,'wal','gh','US',6000,3000,0.0011,0.0006);

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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_metric_tots`
--

INSERT INTO `_metric_tots` VALUES (1000,100,'avo','AR',2006,10.0000,'ec','1',10,0.01,0.01);
INSERT INTO `_metric_tots` VALUES (6446,545,'avo','P4',2006,11.8275,'ec','1',11.8275,0.001834862385321101,0.0018348588271796464);
INSERT INTO `_metric_tots` VALUES (4000,1000,'pot','AR',2005,4.0000,'ec','2',8,0.002,0.002);
INSERT INTO `_metric_tots` VALUES (5645,54,'pot','US',2006,104.5370,'ec','2',209.074,0.037037037037037035,0.037037023914969);
INSERT INTO `_metric_tots` VALUES (5000,2000,'ora','AR',2006,2.5000,'bb','2323',5807.5,1.1615,1.1615);
INSERT INTO `_metric_tots` VALUES (1000,100,'avo','AR',2006,10.0000,'cc','3434',34340,34.34,34.34);
INSERT INTO `_metric_tots` VALUES (6446,545,'avo','P4',2006,11.8275,'cc','3434',40615.635,6.30091743119266,6.300905212534905);
INSERT INTO `_metric_tots` VALUES (5000,2000,'ora','AR',2006,2.5000,'bb','123',307.5,0.0615,0.0615);
INSERT INTO `_metric_tots` VALUES (43323,3432,'app','P1',2005,12.6233,'fg','234',2953.8522000000003,0.06818181818181818,0.06818207880340697);
INSERT INTO `_metric_tots` VALUES (8854,3543,'app','P5',2006,2.4990,'fg','234',584.7660000000001,0.06604572396274344,0.0660454032075898);
INSERT INTO `_metric_tots` VALUES (43423,5234,'pea','P2',2005,8.2963,'sd','345',2862.2235,0.06591517004203286,0.06591491836123714);
INSERT INTO `_metric_tots` VALUES (6767,54,'asp','P3',2005,125.3148,'hy','456',57143.548800000004,8.444444444444445,8.44444344613566);
INSERT INTO `_metric_tots` VALUES (74645,45433,'asp','P6',2006,1.6430,'hy','456',749.208,0.010036757423018511,0.010036948221582156);
INSERT INTO `_metric_tots` VALUES (1000,100,'avo','AR',2006,10.0000,'bn','567',5670,5.67,5.67);
INSERT INTO `_metric_tots` VALUES (6446,545,'avo','P4',2006,11.8275,'bn','567',6706.1925,1.0403669724770641,1.0403649550108596);
INSERT INTO `_metric_tots` VALUES (6767,54,'asp','P3',2005,125.3148,'jh','678',84963.4344,12.555555555555555,12.555554071228018);
INSERT INTO `_metric_tots` VALUES (74645,45433,'asp','P6',2006,1.6430,'jh','678',1113.954,0.01492307353685647,0.01492335722419452);
INSERT INTO `_metric_tots` VALUES (4000,1000,'pot','AR',2005,4.0000,'aq','789',3156,0.789,0.789);
INSERT INTO `_metric_tots` VALUES (5645,54,'pot','US',2006,104.5370,'aq','789',82479.693,14.61111111111111,14.61110593445527);
INSERT INTO `_metric_tots` VALUES (1000,100,'avo','AR',2006,10.0000,'gh','890',8900,8.9,8.9);
INSERT INTO `_metric_tots` VALUES (6446,545,'avo','P4',2006,11.8275,'gh','890',10526.475,1.6330275229357798,1.6330243561898852);

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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prod_tots`
--

INSERT INTO `_prod_tots` VALUES (1000,100,'avo','AR',2006,10.0000,0.0010,0.0001);
INSERT INTO `_prod_tots` VALUES (5000,2000,'ora','AR',2006,2.5000,0.0050,0.0018);
INSERT INTO `_prod_tots` VALUES (4000,1000,'pot','AR',2005,4.0000,0.0040,0.0009);
INSERT INTO `_prod_tots` VALUES (5645,54,'pot','US',2006,104.5370,0.0056,0.0000);
INSERT INTO `_prod_tots` VALUES (6000,3000,'wal','US',2005,2.0000,0.0060,0.0003);
INSERT INTO `_prod_tots` VALUES (43323,3432,'app','P1',2005,12.6233,0.0195,0.0010);
INSERT INTO `_prod_tots` VALUES (43423,5234,'pea','P2',2005,8.2963,130.0090,1.2052);
INSERT INTO `_prod_tots` VALUES (6767,54,'asp','P3',2005,125.3148,0.0020,0.0022);
INSERT INTO `_prod_tots` VALUES (6446,545,'avo','P4',2006,11.8275,1.5224,0.0126);
INSERT INTO `_prod_tots` VALUES (8854,3543,'app','P5',2006,2.4990,27.3272,885.7500);
INSERT INTO `_prod_tots` VALUES (74645,45433,'asp','P6',2006,1.6430,3.1868,1.9389);

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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prod_tots_tmp`
--

INSERT INTO `_prod_tots_tmp` VALUES (43323,3432,'app','P1',2005);
INSERT INTO `_prod_tots_tmp` VALUES (8854,3543,'app','P5',2006);
INSERT INTO `_prod_tots_tmp` VALUES (6767,54,'asp','P3',2005);
INSERT INTO `_prod_tots_tmp` VALUES (74645,45433,'asp','P6',2006);
INSERT INTO `_prod_tots_tmp` VALUES (1000,100,'avo','AR',2006);
INSERT INTO `_prod_tots_tmp` VALUES (6446,545,'avo','P4',2006);
INSERT INTO `_prod_tots_tmp` VALUES (5000,2000,'ora','AR',2006);
INSERT INTO `_prod_tots_tmp` VALUES (43423,5234,'pea','P2',2005);
INSERT INTO `_prod_tots_tmp` VALUES (4000,1000,'pot','AR',2005);
INSERT INTO `_prod_tots_tmp` VALUES (5645,54,'pot','US',2006);
INSERT INTO `_prod_tots_tmp` VALUES (6000,3000,'wal','US',2005);

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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prod_tots_year`
--

INSERT INTO `_prod_tots_year` VALUES (103513,12720,'pot','AR',2005,152.2344,130.0405,1.2096);
INSERT INTO `_prod_tots_year` VALUES (101590,51675,'avo','AR',2006,133.0065,32.0480,887.7034);

--
-- Table structure for table `area_stats`
--

DROP TABLE IF EXISTS `area_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area_stats` (
  `id` int(11) NOT NULL,
  `area` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gdp` int(11) DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `pop` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_stats`
--

INSERT INTO `area_stats` VALUES (1,'AR',1000000,1111111,2005,40000000);
INSERT INTO `area_stats` VALUES (2,'US',1000000,11111111,2005,100000000);
INSERT INTO `area_stats` VALUES (3,'P1',2222222,3333333,2006,80000000);
INSERT INTO `area_stats` VALUES (4,'P2',334,4343,2006,54343423);
INSERT INTO `area_stats` VALUES (5,'P3',3423423,24234,2006,24243);
INSERT INTO `area_stats` VALUES (6,'P4',4234,43423,2006,342);
INSERT INTO `area_stats` VALUES (7,'P5',324,4,2006,3423434);
INSERT INTO `area_stats` VALUES (8,'P6',23423,23432,2006,4);
INSERT INTO `area_stats` VALUES (9,'P7',23424,24324,2005,242342342);
INSERT INTO `area_stats` VALUES (10,'P8',23423,24234,2005,432);
INSERT INTO `area_stats` VALUES (11,'P9',2344,234234,2005,4);
INSERT INTO `area_stats` VALUES (12,'P10',234,2423,2005,2);
INSERT INTO `area_stats` VALUES (13,'P11',2342,2424,2005,23434);

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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geotree`
--

INSERT INTO `geotree` VALUES ('AR','AR');
INSERT INTO `geotree` VALUES ('P1','AR');
INSERT INTO `geotree` VALUES ('P10','US');
INSERT INTO `geotree` VALUES ('P11','US');
INSERT INTO `geotree` VALUES ('P2','AR');
INSERT INTO `geotree` VALUES ('P3','AR');
INSERT INTO `geotree` VALUES ('P4','AR');
INSERT INTO `geotree` VALUES ('P5','AR');
INSERT INTO `geotree` VALUES ('P6','AR');
INSERT INTO `geotree` VALUES ('P7','US');
INSERT INTO `geotree` VALUES ('P8','US');
INSERT INTO `geotree` VALUES ('P9','US');
INSERT INTO `geotree` VALUES ('US','US');

--
-- Table structure for table `local`
--

DROP TABLE IF EXISTS `local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `local` (
  `id` int(11) NOT NULL,
  `party` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local`
--

INSERT INTO `local` VALUES (14,'ec','avo');
INSERT INTO `local` VALUES (15,'cc','avo');
INSERT INTO `local` VALUES (16,'ec','pot');
INSERT INTO `local` VALUES (17,'bb','ora');
INSERT INTO `local` VALUES (21,'fg','app');
INSERT INTO `local` VALUES (22,'sd','pea');
INSERT INTO `local` VALUES (23,'hy','asp');
INSERT INTO `local` VALUES (24,'bn','avo');
INSERT INTO `local` VALUES (25,'jh','app');
INSERT INTO `local` VALUES (26,'aq','asp');
INSERT INTO `local` VALUES (27,'gh','pot');

--
-- Table structure for table `local_copy`
--

DROP TABLE IF EXISTS `local_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `local_copy` (
  `id` int(11) NOT NULL,
  `party` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gdp_agric_total_cost` int(11) DEFAULT NULL,
  `gdp_unit_cost` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local_copy`
--

INSERT INTO `local_copy` VALUES (14,'ec','avo',10,10);
INSERT INTO `local_copy` VALUES (15,'cc','avo',117923560,34340);
INSERT INTO `local_copy` VALUES (16,'ec','pot',40,8);
INSERT INTO `local_copy` VALUES (17,'bb','ora',53963290,6969);

--
-- Table structure for table `metric`
--

DROP TABLE IF EXISTS `metric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metric` (
  `id` int(11) NOT NULL,
  `party` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consumed` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metric`
--

INSERT INTO `metric` VALUES (1,'ec','1','avo',2005);
INSERT INTO `metric` VALUES (2,'ec','2','pot',2006);
INSERT INTO `metric` VALUES (3,'bb','2323','ora',2005);
INSERT INTO `metric` VALUES (4,'cc','3434','avo',2006);
INSERT INTO `metric` VALUES (5,'bb','123','ora',2006);
INSERT INTO `metric` VALUES (6,'fg','234','app',2006);
INSERT INTO `metric` VALUES (7,'sd','345','pea',2006);
INSERT INTO `metric` VALUES (8,'hy','456','asp',2006);
INSERT INTO `metric` VALUES (9,'bn','567','avo',2005);
INSERT INTO `metric` VALUES (10,'jh','678','asp',2005);
INSERT INTO `metric` VALUES (11,'aq','789','pot',2005);
INSERT INTO `metric` VALUES (12,'gh','890','avo',2005);

--
-- Table structure for table `metric_copy`
--

DROP TABLE IF EXISTS `metric_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metric_copy` (
  `id` int(11) NOT NULL,
  `party` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consumed` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calculated_cost_per_unit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metric_copy`
--

INSERT INTO `metric_copy` VALUES (1,'ec','1','avo',10);
INSERT INTO `metric_copy` VALUES (2,'ec','2','pot',20);
INSERT INTO `metric_copy` VALUES (3,'bb','2323','ora',23230);
INSERT INTO `metric_copy` VALUES (4,'cc','3434','avo',34340);

--
-- Table structure for table `parties`
--

DROP TABLE IF EXISTS `parties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parties` (
  `id` int(11) NOT NULL,
  `local` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pop` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parties`
--

INSERT INTO `parties` VALUES (1,'ec','AR',1000,2006);
INSERT INTO `parties` VALUES (2,'aa','P1',10000,2005);
INSERT INTO `parties` VALUES (3,'bb','P2',500,2006);
INSERT INTO `parties` VALUES (4,'cc','P3',100000,2005);
INSERT INTO `parties` VALUES (5,'all','P4',1000000,2006);
INSERT INTO `parties` VALUES (6,'bb','P5',1231212,2006);
INSERT INTO `parties` VALUES (7,'fg','P6',3442442,2006);
INSERT INTO `parties` VALUES (8,'sd','P7',34344,2006);
INSERT INTO `parties` VALUES (9,'hy','P8',6565754,2006);
INSERT INTO `parties` VALUES (10,'bn','P9',554355,2005);
INSERT INTO `parties` VALUES (11,'jh','P10',453454,2005);
INSERT INTO `parties` VALUES (12,'aq','P11',53456,2005);
INSERT INTO `parties` VALUES (13,'gh','US',5443534,2005);

--
-- Table structure for table `pre_proj`
--

DROP TABLE IF EXISTS `pre_proj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pre_proj` (
  `cv_sample_pop` double DEFAULT NULL,
  `ecval` double DEFAULT NULL,
  `c_new_kg_item` double DEFAULT NULL,
  `bau_kg_gdp_item` bigint(20) DEFAULT NULL,
  `c_redcued` double DEFAULT NULL,
  `c_redcuedby` double DEFAULT NULL,
  `c_new_tot_kg_gdp_item` double DEFAULT NULL,
  `c_kg_delta_pct` double DEFAULT NULL,
  `bau_gdp` bigint(20) DEFAULT NULL,
  `c_item_gdp_pct` decimal(26,4) DEFAULT NULL,
  `c_gdp_redcued` double DEFAULT NULL,
  `c_new_tot_kg_gdp` double DEFAULT NULL,
  `c_gdp_delta_pct` double DEFAULT NULL,
  `c_val_gdp_tot` double DEFAULT NULL,
  `bau_pop` bigint(16) DEFAULT NULL,
  `bau_gdp_item` bigint(16) DEFAULT NULL,
  `v_pct_pop` float DEFAULT NULL,
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pre_proj`
--

INSERT INTO `pre_proj` VALUES (438499.9901987612,12.141698837280273,5324134.82114371,3877000,3838230.000866577,38769.99913342297,9162364.822010286,136.32614965205795,545900000000,0.0007,545899961230.00085,545905285364.822,0.0009681928598683796,3689731.20533752,43850000,2686838,0.01,'ARGNAT','AVO',2014);
INSERT INTO `pre_proj` VALUES (876999.9803975224,12.141698837280273,10648269.64228742,3877000,3799460.001733154,77539.99826684594,14447729.644020574,272.6522993041159,545900000000,0.0007,545899922460.0017,545910570729.644,0.0019363857197255787,7379462.41067504,43850000,2686838,0.02,'ARGNAT','AVO',2014);
INSERT INTO `pre_proj` VALUES (2192500.032670796,12.141698837280273,26620675.097415965,3877000,3683149.99711141,193850.0028885901,30303825.094527375,681.6307736530146,545900000000,0.0007,545899806149.99713,545926426825.09454,0.004840964479674566,18448656.713953614,43850000,2686838,0.05,'ARGNAT','AVO',2014);
INSERT INTO `pre_proj` VALUES (4385000.065341592,12.141698837280273,53241350.19483193,3877000,3489299.99422282,387700.0057771802,56730650.18905475,1363.2615473060291,545900000000,0.0007,545899612299.9942,545952853650.189,0.009681928959337952,36897313.42790723,43850000,2686838,0.1,'ARGNAT','AVO',2014);
INSERT INTO `pre_proj` VALUES (8770000.130683184,12.141698837280273,106482700.38966386,3877000,3101599.9884456396,775400.0115543604,109584300.3781095,2726.5230946120582,545900000000,0.0007,545899224599.98846,546005707300.3781,0.019363857918687083,73794626.85581446,43850000,2686838,0.2,'ARGNAT','AVO',2014);

--
-- Table structure for table `pre_proj2`
--

DROP TABLE IF EXISTS `pre_proj2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pre_proj2` (
  `v_frac_pop` double DEFAULT NULL,
  `cv_sample_pop` double DEFAULT NULL,
  `ecval` double DEFAULT NULL,
  `c_new_kg_item` double DEFAULT NULL,
  `bau_kg_gdp_item` bigint(20) DEFAULT NULL,
  `c_redcued` double DEFAULT NULL,
  `c_redcuedby` double DEFAULT NULL,
  `c_new_tot_kg_gdp_item` double DEFAULT NULL,
  `c_kg_delta_pct` double DEFAULT NULL,
  `bau_gdp` bigint(20) DEFAULT NULL,
  `c_item_gdp_pct` decimal(26,4) DEFAULT NULL,
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
-- Dumping data for table `pre_proj2`
--

INSERT INTO `pre_proj2` VALUES (0.01,438500,17.520000457763672,7682520.20072937,3877000,3838230,38770,11520750.20072937,197.15631159993217,545900000000,0.0007,545899961230,545907643750.20074,0.0014002106980664278,5324139.127299138,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `pre_proj2` VALUES (0.02,877000,17.520000457763672,15365040.40145874,3877000,3799460,77540,19164500.40145874,394.31262319986433,545900000000,0.0007,545899922460,545915287500.4015,0.0028004213961328557,10648278.254598277,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `pre_proj2` VALUES (0.05,2192500,17.520000457763672,38412601.00364685,3877000,3683150,193850,42095751.00364685,985.7815579996608,545900000000,0.0007,545899806150,545938218751.00366,0.007001053490320958,26620695.636495695,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `pre_proj2` VALUES (0.1,4385000,17.520000457763672,76825202.0072937,3877000,3489300,387700,80314502.0072937,1971.5631159993216,545900000000,0.0007,545899612300,545976437502.0073,0.014002106980641915,53241391.27299139,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `pre_proj2` VALUES (0.2,8770000,17.520000457763672,153650404.0145874,3877000,3101600,775400,156752004.0145874,3943.126231998643,545900000000,0.0007,545899224600,546052875004.0146,0.028004213961272652,106482782.54598278,43850000,2686838,'ARGNAT','AVO',2014);

--
-- Table structure for table `pre_proj3`
--

DROP TABLE IF EXISTS `pre_proj3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pre_proj3` (
  `v_frac_pop` double DEFAULT NULL,
  `cv_sample_pop` double DEFAULT NULL,
  `ecval` double DEFAULT NULL,
  `c_new_kg_item` double DEFAULT NULL,
  `bau_kg_gdp_item` bigint(20) DEFAULT NULL,
  `c_redcued` double DEFAULT NULL,
  `c_redcuedby` double DEFAULT NULL,
  `c_new_tot_kg_gdp_item` double DEFAULT NULL,
  `c_kg_delta_pct` double DEFAULT NULL,
  `bau_gdp` bigint(20) DEFAULT NULL,
  `c_item_gdp_pct` decimal(26,4) DEFAULT NULL,
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

INSERT INTO `pre_proj3` VALUES (0.01,438500,17.520000457763672,7682520.20072937,3877000,3838230,38770,11520750.20072937,197.15631159993217,545900000000,0.0007,545899961230,545907643750.20074,0.0014002106980664278,5324139.127299138,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `pre_proj3` VALUES (0.02,877000,17.520000457763672,15365040.40145874,3877000,3799460,77540,19164500.40145874,394.31262319986433,545900000000,0.0007,545899922460,545915287500.4015,0.0028004213961328557,10648278.254598277,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `pre_proj3` VALUES (0.05,2192500,17.520000457763672,38412601.00364685,3877000,3683150,193850,42095751.00364685,985.7815579996608,545900000000,0.0007,545899806150,545938218751.00366,0.007001053490320958,26620695.636495695,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `pre_proj3` VALUES (0.1,4385000,17.520000457763672,76825202.0072937,3877000,3489300,387700,80314502.0072937,1971.5631159993216,545900000000,0.0007,545899612300,545976437502.0073,0.014002106980641915,53241391.27299139,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `pre_proj3` VALUES (0.2,8770000,17.520000457763672,153650404.0145874,3877000,3101600,775400,156752004.0145874,3943.126231998643,545900000000,0.0007,545899224600,546052875004.0146,0.028004213961272652,106482782.54598278,43850000,2686838,'ARGNAT','AVO',2014);

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `volume_produced` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `area` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

INSERT INTO `product` VALUES (1,'avo',100,1000,'AR',2006);
INSERT INTO `product` VALUES (2,'pot',1000,4000,'AR',2005);
INSERT INTO `product` VALUES (3,'ora',2000,5000,'AR',2006);
INSERT INTO `product` VALUES (4,'wal',3000,6000,'US',2005);
INSERT INTO `product` VALUES (5,'app',3432,43323,'P1',2005);
INSERT INTO `product` VALUES (6,'pea',5234,43423,'P2',2005);
INSERT INTO `product` VALUES (7,'asp',54,6767,'P3',2005);
INSERT INTO `product` VALUES (8,'avo',545,6446,'P4',2006);
INSERT INTO `product` VALUES (9,'app',3543,8854,'P5',2006);
INSERT INTO `product` VALUES (10,'asp',45433,74645,'P6',2006);
INSERT INTO `product` VALUES (11,'pot',54,5645,'US',2006);

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
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_copy`
--

INSERT INTO `product_copy` VALUES (1,'avo',100,1000,'AR',10);
INSERT INTO `product_copy` VALUES (2,'pot',1000,4000,'AR',4);
INSERT INTO `product_copy` VALUES (3,'ora',2000,5000,'AR',3);
INSERT INTO `product_copy` VALUES (4,'wal',3000,6000,'US',2);

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
  `bau_pop` bigint(16) DEFAULT NULL,
  `bau_gdp` bigint(16) DEFAULT NULL,
  `bau_kg_gdp_item` bigint(11) DEFAULT NULL,
  `bau_gdp_item` bigint(16) DEFAULT NULL,
  `cv_sample_pop` double DEFAULT NULL,
  `c_adj_kg_gdp_item` double DEFAULT NULL,
  `ecval` double DEFAULT NULL,
  `XXX` double DEFAULT NULL,
  `c_kg_new` double DEFAULT NULL,
  `c_gdp` bigint(16) DEFAULT NULL,
  `c_kg` bigint(11) DEFAULT NULL,
  `v_pct_pop` float DEFAULT NULL,
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp`
--

INSERT INTO `tmp` VALUES (43850000,545900000000,3877000,2686838,438499.9901987612,NULL,12.141698837280273,NULL,NULL,NULL,NULL,0.01,'ARGNAT','AVO',2014);
INSERT INTO `tmp` VALUES (43850000,545900000000,3877000,2686838,876999.9803975224,NULL,12.141698837280273,NULL,NULL,NULL,NULL,0.02,'ARGNAT','AVO',2014);
INSERT INTO `tmp` VALUES (43850000,545900000000,3877000,2686838,2192500.032670796,NULL,12.141698837280273,NULL,NULL,NULL,NULL,0.05,'ARGNAT','AVO',2014);
INSERT INTO `tmp` VALUES (43850000,545900000000,3877000,2686838,4385000.065341592,NULL,12.141698837280273,NULL,NULL,NULL,NULL,0.1,'ARGNAT','AVO',2014);
INSERT INTO `tmp` VALUES (43850000,545900000000,3877000,2686838,8770000.130683184,NULL,12.141698837280273,NULL,NULL,NULL,NULL,0.2,'ARGNAT','AVO',2014);

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
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-15  0:45:51
