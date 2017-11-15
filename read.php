<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require "lib/functions.php";
require "lib/Class/DataMapper.class.php";
//require "lib/Class/queries.php";
//$dbh = new DataMapper($q);
$dbh = new DataMapper();

$step=0;
/* dump all the data to screen */
//$dbh->screendump();

//print_r($dbh->getCols("V3_entity"));

$dbh->test("select NOW()");
print G($dbh->update_KG_VAL_for_Entity_item());

step(0,"update_GPD_PP_YR_for_Entity_item");
print G($dbh->update_GPD_PP_YR_for_Entity_item());

step(0,"update_KG_PP_YR_for_Entity_Item");
print G($dbh->update_KG_PP_YR_for_Entity_Item());

step(0,"update_Entity_Service");
print G($dbh->update_Entity_Service());

step(0,"update_newdata_for_svc_Entity_item('AVO')");
print G($dbh->update_newdata_for_svc_Entity_item("AVO"));

//    step(0,"update_KgPp_for_Entity_Item");
//    print G($dbh->update_KgPp_for_Entity_Item());

step(0,"update_KgVal_for_svc_Entity_item('CPE')");
print G($dbh->update_newdata_for_svc_Entity_item("CPE"));

step(0,"update_KgVal_for_svc_Entity_item('PER')");
print G($dbh->update_newdata_for_svc_Entity_item("PER"));

step(0,"update_Entity_Stats()");
print G($dbh->update_Entity_Stats());

//step(0,"update_KG_VAL_for_Entity_item");
//print G($dbh->update_KG_VAL_for_Entity_item());

step(0,"Update projections");
print G($dbh->update_projections());

step(0,"FINISH - show tables");
print $dbh->getTables("V3");

