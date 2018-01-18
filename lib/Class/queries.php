
<?php
$table=null;
$q = array (
    'getCols' => "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='clarity' AND TABLE_NAME='${table}';"
);
