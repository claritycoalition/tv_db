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
  `kg_yr` bigint(11) DEFAULT NULL,
  `gdp` bigint(16) DEFAULT NULL,
  `c_kg_val` float(16,4) DEFAULT NULL,
  `c_gdp_pp_yr` float(16,4) DEFAULT NULL,
  `c_kg_pp_yr` float(16,4) DEFAULT NULL,
  `c_kg_svc_yr` float(16,4) DEFAULT NULL,
  `c_kg_svc_single` float(16,4) DEFAULT NULL,
  PRIMARY KEY (`entity`,`item`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_entity_item`
--

INSERT INTO `V3_entity_item` VALUES ('ARGNAT','AVO',2014,3877000,2686838,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ARGNAT','CPE',2014,5450800,26385703,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ARGNAT','PER',2014,771271000,315319521,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ECOCHE','AVO',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ECOCHE','CPE',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `V3_entity_item` VALUES ('ECOCHE','PER',2014,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

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
  `production` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consumption` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `V3_pre_proj3`
--

DROP TABLE IF EXISTS `V3_pre_proj3`;
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
  `year` int(11) DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `V3_pre_proj3`
--

INSERT INTO `V3_pre_proj3` VALUES (0.01,438500,525.6000,230475606.0218811,3877000,3838230,38770,234313836.0218811,5943.689347997965,545900000000,0.0007102033339439457,545899961230,546130436836.02185,0.04221227990874713,159719599.2592376,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `V3_pre_proj3` VALUES (0.02,877000,525.6000,460951212.0437622,3877000,3799460,77540,464750672.0437622,11887.37869599593,545900000000,0.0007102033339439457,545899922460,546360873672.04376,0.08442455981750543,319439198.5184752,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `V3_pre_proj3` VALUES (0.05,2192500,525.6000,1152378030.1094055,3877000,3683150,193850,1156061180.1094055,29718.446739989828,545900000000,0.0007102033339439457,545899806150,547052184180.1094,0.21106139954375802,798597996.296188,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `V3_pre_proj3` VALUES (0.1,4385000,525.6000,2304756060.218811,3877000,3489300,387700,2308245360.218811,59436.893479979655,545900000000,0.0007102033339439457,545899612300,548204368360.2188,0.42212279908752715,1597195992.592376,43850000,2686838,'ARGNAT','AVO',2014);
INSERT INTO `V3_pre_proj3` VALUES (0.2,8770000,525.6000,4609512120.437622,3877000,3101600,775400,4612613720.437622,118873.78695995931,545900000000,0.0007102033339439457,545899224600,550508736720.4376,0.8442455981750543,3194391985.184752,43850000,2686838,'ARGNAT','AVO',2014);

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
-- Table structure for table `_tmp`
--

DROP TABLE IF EXISTS `_tmp`;
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

DROP TABLE IF EXISTS `pre_proj3`;
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
  `c_gdp_pp_yr` decimal(23,4) DEFAULT NULL,
  `pop` bigint(16) DEFAULT NULL,
  `entity` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) DEFAULT NULL,
  `gdp` bigint(16) DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp`
--

INSERT INTO `tmp` VALUES (0.0327,18250,'ECOCHE','PER',2014,597);

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

-- Dump completed on 2017-11-21  0:32:43