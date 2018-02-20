#!/bin/sh
echo $1 >> /usr/local/src/tv_db/rm.log
rm -f $1
exit
