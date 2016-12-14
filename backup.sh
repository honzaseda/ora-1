#!/bin/bash

mkdir /home/oracle/ora_backup

echo "Zalohuji control01.ctl"
cp /u01/app/oracle/oradata/orcl12c/control01.ctl /home/oracle/ora_backup/control01.ctl

echo "Zalohuji redo logy"
cp /u01/app/oracle/oradata/orcl12c/redo01.log /home/oracle/ora_backup/redo01.log
cp /u01/app/oracle/oradata/orcl12c/redo02.log /home/oracle/ora_backup/redo02.log
cp /u01/app/oracle/oradata/orcl12c/redo03.log /home/oracle/ora_backup/redo03.log

echo "Zalohuji spfile"
cp /u01/app/oracle/product/12.1.0.2/db_1/dbs/spfileorcl12c.ora /home/oracle/ora_backup/spfileorcl12c.ora

echo "Stahuju oracle_is_life.txt <3 naše spása"
wget https://raw.githubusercontent.com/Vrbikk/ora/master/oracle_is_life.txt

./save_tree1.sh
