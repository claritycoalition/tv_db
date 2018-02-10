<?php


ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

define("CLI",0);
define("HTTP",1);

require "lib/functions.php";
require "lib/Class/DataMapper.class.php";"=[".

$_SESSION['mode'] = CLI;
if (php_sapi_name() != "cli") {
    $_SESSION['mode'] = HTTP;
}

//print $_SESSION['mode'];exit;




//require "lib/Class/queries.php";
//$dbh = new DataMapper($q);
$dbh = new DataMapper();

$step=0	;
/* dump all the data to screen */
//$dbh->screendump();

//print_r($dbh->getCols("V3_entity"));

if ($_SESSION['mode'] == HTTP)  echo "<pre>";

$dbh->test("select NOW()");

    print G($dbh->update_KG_VAL_for_Entity_item());
//    step(0,"update_avg_units");



    step(0,"\t('AVO','CO2')");
    print G($dbh->update_avg_units('AVO','CO2','2014'));
    
    step(0,"\t('AVO','WAT')");
    print G($dbh->update_avg_units('AVO','WAT','2014'));

    step(0,"\t('WHT','CO2')");
    print G($dbh->update_avg_units('WHT','CO2','2014'));
    step(0,"\t('WHT','WAT')");
    print G($dbh->update_avg_units('WHT','WAT','2014'));

    step(0,"\t('COW','CO2')");
    print G($dbh->update_avg_units('COW','CO2','2014'));
    step(0,"\t('COW','WAT')");
    print G($dbh->update_avg_units('COW','WAT','2014'));

    step(0,"\t('PER','CO2')");
    print G($dbh->update_avg_units('PER','CO2','2014'));
    step(0,"\t('PER','WAT')");
    print G($dbh->update_avg_units('PER','WAT','2014'));

    step(0,"\t('MIL','CO2')");
    print G($dbh->update_avg_units('MIL','CO2','2014'));
    step(0,"\t('MIL','WAT')");
    print G($dbh->update_avg_units('MIL','WAT','2014'));

    step(0,"\t('CPE','CO2')");
    print G($dbh->update_avg_units('CPE','CO2','2014'));
    step(0,"\t('CPE','WAT')");
    print G($dbh->update_avg_units('CPE','WAT','2014'));

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
//
step(0,"update_KgVal_for_svc_Entity_item('PER')");
print G($dbh->update_newdata_for_svc_Entity_item("PER"));
//
step(0,"update_KgVal_for_svc_Entity_item('MIL')");
print G($dbh->update_newdata_for_svc_Entity_item("MIL"));
//
step(0,"update_KgVal_for_svc_Entity_item('COW')");
print G($dbh->update_newdata_for_svc_Entity_item("COW"));
//
step(0,"update_KgVal_for_svc_Entity_item('WHT')");
print G($dbh->update_newdata_for_svc_Entity_item("WHT"));

step(0,"update_Entity_Stats()");
print G($dbh->update_Entity_Stats());

//step(0,"update_KG_VAL_for_Entity_item");
//print G($dbh->update_KG_VAL_for_Entity_item());

step(0,"Update projections");
print G($dbh->update_projections());

//step(0,"Export...");
//print G($dbh->export());



step(0,"FINISH - show tables");
print $dbh->getTables("V3");

