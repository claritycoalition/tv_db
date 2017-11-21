# tv_db
code for crunching database


commands

BUILD
~>php ./read.php

Rebuild all the data

VIEW
~>php ./view.php

View the ANSI output of the tables in teh console

EXPORT
~>sudo ./CSV

expoer all teh tables to a Excel spreadsheet with a new leaf doe easg table

SAVE/RESTORE
~>./SAVE <optional_name>

Exper the database to a defauly backup file, or a backup file you name.  The filename is stored in the file 'lastsave'

~>./REST
Restoire the database to whatever backup is stoer in 'lastsave'


TO ADD NEW ITEMS

Create a shell script like the following

#!/bin/bash -x
#(    entity item year   kg_yr       gdp         kg_co2)
./ADD PROD ARGNAT WHT  2014	9315049000  1469747061 
./ADD PROD ARGNAT COW  2014	2821700000  7037021448 
./ADD PROD ARGNAT MIL  2014	11009900000 3435760403
	
#(    TYPE entity item year  )
./ADD CONS ECOCHE WHT  2014 1
./ADD CONS ECOCHE COW  2014 0
./ADD CONS ECOCHE MIL  2014 11.3

Run the script ands sabe the output to an sql file 

~>sh ./newitems.sh > newitems.sql

Impport new sql file into database

~>mysql -u -p clarity < newitems.sql





