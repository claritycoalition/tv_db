DROP TABLE IF EXISTS `v3_item_resource_stats`;

CREATE TABLE `v3_item_resource_stats` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `kg_gdp_co2` float(16,4) DEFAULT NULL,
  `src_co2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ltr_gdp_wat` float(16,4) DEFAULT NULL,
  `src_wat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
);
-- Dumping data for table `v3_item_resource_stats`
--

INSERT INTO `v3_item_resource_stats` VALUES (1,'AVO','CO2',2014,NULL,'src-1',NULL,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (2,'AVO','CO2',2014,NULL,'src-2',NULL,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (3,'AVO','CO2',2014,NULL,'src-3',NULL,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (4,'AVO','CO2',2014,NULL,'src-4',NULL,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (5,'AVO','CO2',2014,NULL,'src-5',NULL,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (6,'AVO','CO2',2014,NULL,'src-6',NULL,'src-6');

INSERT INTO `v3_item_resource_stats` VALUES (7,'COW','CO2',2014,NULL,'src-1',NULL,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (8,'COW','CO2',2014,NULL,'src-2',NULL,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (9,'COW','CO2',2014,NULL,'src-3',NULL,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (10,'COW','CO2',2014,NULL,'src-4',NULL,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (11,'COW','CO2',2014,NULL,'src-5',NULL,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (12,'COW','CO2',2014,NULL,'src-6',NULL,'src-6');

INSERT INTO `v3_item_resource_stats` VALUES (13,'CPE','CO2',2014,NULL,'src-1',NULL,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (14,'CPE','CO2',2014,NULL,'src-2',NULL,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (15,'CPE','CO2',2014,NULL,'src-3',NULL,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (16,'CPE','CO2',2014,NULL,'src-4',NULL,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (17,'CPE','CO2',2014,NULL,'src-5',NULL,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (18,'CPE','CO2',2014,NULL,'src-6',NULL,'src-6');

INSERT INTO `v3_item_resource_stats` VALUES (19,'MIL','CO2',2014,NULL,'src-1',NULL,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (20,'MIL','CO2',2014,NULL,'src-2',NULL,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (21,'MIL','CO2',2014,NULL,'src-3',NULL,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (22,'MIL','CO2',2014,NULL,'src-4',NULL,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (23,'MIL','CO2',2014,NULL,'src-5',NULL,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (24,'MIL','CO2',2014,NULL,'src-6',NULL,'src-6');

INSERT INTO `v3_item_resource_stats` VALUES (25,'PER','CO2',2014,NULL,'src-1',NULL,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (26,'PER','CO2',2014,NULL,'src-2',NULL,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (27,'PER','CO2',2014,NULL,'src-3',NULL,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (28,'PER','CO2',2014,NULL,'src-4',NULL,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (29,'PER','CO2',2014,NULL,'src-5',NULL,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (30,'PER','CO2',2014,NULL,'src-6',NULL,'src-6');

INSERT INTO `v3_item_resource_stats` VALUES (31,'WHT','CO2',2014,NULL,'src-1',NULL,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (32,'WHT','CO2',2014,NULL,'src-2',NULL,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (33,'WHT','CO2',2014,NULL,'src-3',NULL,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (34,'WHT','CO2',2014,NULL,'src-4',NULL,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (35,'WHT','CO2',2014,NULL,'src-5',NULL,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (36,'WHT','CO2',2014,NULL,'src-6',NULL,'src-6');


--------

INSERT INTO `v3_item_resource_stats` VALUES (41,'AVO','WAT',2014,NULL,'src-1',NULL,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (42,'AVO','WAT',2014,NULL,'src-2',NULL,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (43,'AVO','WAT',2014,NULL,'src-3',NULL,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (44,'AVO','WAT',2014,NULL,'src-4',NULL,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (45,'AVO','WAT',2014,NULL,'src-5',NULL,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (46,'AVO','WAT',2014,NULL,'src-6',NULL,'src-6');

INSERT INTO `v3_item_resource_stats` VALUES (47,'COW','WAT',2014,NULL,'src-1',NULL,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (48,'COW','WAT',2014,NULL,'src-2',NULL,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (49,'COW','WAT',2014,NULL,'src-3',NULL,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (110,'COW','WAT',2014,NULL,'src-4',NULL,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (111,'COW','WAT',2014,NULL,'src-5',NULL,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (112,'COW','WAT',2014,NULL,'src-6',NULL,'src-6');

INSERT INTO `v3_item_resource_stats` VALUES (113,'CPE','WAT',2014,NULL,'src-1',NULL,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (114,'CPE','WAT',2014,NULL,'src-2',NULL,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (115,'CPE','WAT',2014,NULL,'src-3',NULL,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (116,'CPE','WAT',2014,NULL,'src-4',NULL,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (117,'CPE','WAT',2014,NULL,'src-5',NULL,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (118,'CPE','WAT',2014,NULL,'src-6',NULL,'src-6');

INSERT INTO `v3_item_resource_stats` VALUES (119,'MIL','WAT',2014,NULL,'src-1',NULL,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (120,'MIL','WAT',2014,NULL,'src-2',NULL,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (121,'MIL','WAT',2014,NULL,'src-3',NULL,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (122,'MIL','WAT',2014,NULL,'src-4',NULL,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (123,'MIL','WAT',2014,NULL,'src-5',NULL,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (124,'MIL','WAT',2014,NULL,'src-6',NULL,'src-6');

INSERT INTO `v3_item_resource_stats` VALUES (125,'PER','WAT',2014,NULL,'src-1',NULL,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (126,'PER','WAT',2014,NULL,'src-2',NULL,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (127,'PER','WAT',2014,NULL,'src-3',NULL,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (128,'PER','WAT',2014,NULL,'src-4',NULL,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (129,'PER','WAT',2014,NULL,'src-5',NULL,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (130,'PER','WAT',2014,NULL,'src-6',NULL,'src-6');

INSERT INTO `v3_item_resource_stats` VALUES (131,'WHT','WAT',2014,NULL,'src-1',NULL,'src-1');
INSERT INTO `v3_item_resource_stats` VALUES (132,'WHT','WAT',2014,NULL,'src-2',NULL,'src-2');
INSERT INTO `v3_item_resource_stats` VALUES (133,'WHT','WAT',2014,NULL,'src-3',NULL,'src-3');
INSERT INTO `v3_item_resource_stats` VALUES (134,'WHT','WAT',2014,NULL,'src-4',NULL,'src-4');
INSERT INTO `v3_item_resource_stats` VALUES (135,'WHT','WAT',2014,NULL,'src-5',NULL,'src-5');
INSERT INTO `v3_item_resource_stats` VALUES (136,'WHT','WAT',2014,NULL,'src-6',NULL,'src-6');


