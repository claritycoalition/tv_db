-- for ALL ---
INSERT IGNORE into V3_item (name) values('WHT');
-- for V3_entity_item ---
INSERT IGNORE into V3_entity_item (entity,item,year,kg_yr,gdp) values('ARGNAT','WHT',2014,9315049000,1469747061);
-- for V3_ledger ---
INSERT IGNORE into V3_ledger (entity,production,consumption) values('ARGNAT','WHT',NULL);
-- for ALL ---
INSERT IGNORE into V3_item (name) values('COW');
-- for V3_entity_item ---
INSERT IGNORE into V3_entity_item (entity,item,year,kg_yr,gdp) values('ARGNAT','COW',2014,2821700000,7037021448);
-- for V3_ledger ---
INSERT IGNORE into V3_ledger (entity,production,consumption) values('ARGNAT','COW',NULL);
-- for ALL ---
INSERT IGNORE into V3_item (name) values('MIL');
-- for V3_entity_item ---
INSERT IGNORE into V3_entity_item (entity,item,year,kg_yr,gdp) values('ARGNAT','MIL',2014,11009900000,3435760403);
-- for V3_ledger ---
INSERT IGNORE into V3_ledger (entity,production,consumption) values('ARGNAT','MIL',NULL);
-- for V3_entity_item ---
INSERT IGNORE into V3_entity_item (entity,item,year) values('ECOCHE','WHT',2014);
-- for V3_ledger ---
INSERT IGNORE into V3_ledger (entity,production,consumption) values('ECOCHE',NULL,'WHT');
-- for V3_service_item ---
INSERT IGNORE into V3_service_item (service_name, item) values('ECOMEAL','WHT');
-- for V3_service_state ---
INSERT IGNORE into V3_service_stats (name,contains,kg) values('ECOMEAL','WHT','1');
-- for V3_entity_item ---
INSERT IGNORE into V3_entity_item (entity,item,year) values('ECOCHE','COW',2014);
-- for V3_ledger ---
INSERT IGNORE into V3_ledger (entity,production,consumption) values('ECOCHE',NULL,'COW');
-- for V3_service_item ---
INSERT IGNORE into V3_service_item (service_name, item) values('ECOMEAL','COW');
-- for V3_service_state ---
INSERT IGNORE into V3_service_stats (name,contains,kg) values('ECOMEAL','COW','0');
-- for V3_entity_item ---
INSERT IGNORE into V3_entity_item (entity,item,year) values('ECOCHE','MIL',2014);
-- for V3_ledger ---
INSERT IGNORE into V3_ledger (entity,production,consumption) values('ECOCHE',NULL,'MIL');
-- for V3_service_item ---
INSERT IGNORE into V3_service_item (service_name, item) values('ECOMEAL','MIL');
-- for V3_service_state ---
INSERT IGNORE into V3_service_stats (name,contains,kg) values('ECOMEAL','MIL','11.3');
-- for V3_resource ---
INSERT IGNORE INTO V3_resource (name) VALUES('CO2');
-- for V3_item_resource ---
INSERT into V3_item_resource (item,resource,year,res_kg_gdp) values('AVO','CO2',2014,0.14) ON DUPLICATE KEY UPDATE item='AVO',resource='CO2',year=2014,res_kg_gdp=0.14;
-- for V3_resource ---
INSERT IGNORE INTO V3_resource (name) VALUES('CO2');
-- for V3_item_resource ---
INSERT into V3_item_resource (item,resource,year,res_kg_gdp) values('PER','CO2',2014,0.14) ON DUPLICATE KEY UPDATE item='PER',resource='CO2',year=2014,res_kg_gdp=0.14;
-- for V3_resource ---
INSERT IGNORE INTO V3_resource (name) VALUES('CO2');
-- for V3_item_resource ---
INSERT into V3_item_resource (item,resource,year,res_kg_gdp) values('CPE','CO2',2014,0.14) ON DUPLICATE KEY UPDATE item='CPE',resource='CO2',year=2014,res_kg_gdp=0.14;
-- for V3_resource ---
INSERT IGNORE INTO V3_resource (name) VALUES('CO2');
-- for V3_item_resource ---
INSERT into V3_item_resource (item,resource,year,res_kg_gdp) values('COW','CO2',2014,30.86) ON DUPLICATE KEY UPDATE item='COW',resource='CO2',year=2014,res_kg_gdp=30.86;
-- for V3_resource ---
INSERT IGNORE INTO V3_resource (name) VALUES('CO2');
-- for V3_item_resource ---
INSERT into V3_item_resource (item,resource,year,res_kg_gdp) values('MIL','CO2',2014,0.42) ON DUPLICATE KEY UPDATE item='MIL',resource='CO2',year=2014,res_kg_gdp=0.42;
-- for V3_resource ---
INSERT IGNORE INTO V3_resource (name) VALUES('CO2');
-- for V3_item_resource ---
INSERT into V3_item_resource (item,resource,year,res_kg_gdp) values('WHT','CO2',2014,0.14) ON DUPLICATE KEY UPDATE item='WHT',resource='CO2',year=2014,res_kg_gdp=0.14;
