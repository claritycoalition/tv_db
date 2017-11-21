#!/bin/bash -x
#       $1     #2   $3   $4              $5          $6          $7
#(    type entity item year           kg_yr         gdp  res_kg_gdp )
./ADD PROD ARGNAT WHT  2014	 9315049000  1469747061        0.14
./ADD PROD ARGNAT COW  2014	 2821700000  7037021448       30.86
./ADD PROD ARGNAT MIL  2014	11009900000  3435760403        0.42
	
#       $1     $2   $3   $4
#(    TYPE entity item year  )
./ADD CONS ECOCHE WHT  2014 1
./ADD CONS ECOCHE COW  2014 0
./ADD CONS ECOCHE MIL  2014 11.3


#       $1   $2   $3   $4        $5
#(    TYPE name item year res_kg_gdp )
./ADD RES  CO2   AVO 2014      0.14
./ADD RES  CO2   PER 2014      0.14
./ADD RES  CO2   CPE 2014      0.14
./ADD RES  CO2   COW 2014     30.86
./ADD RES  CO2   MIL 2014      0.42
./ADD RES  CO2   WHT 2014      0.14
