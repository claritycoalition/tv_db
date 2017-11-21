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
step(0,"FINISH - show tables");
print $dbh->getTables("V3");

