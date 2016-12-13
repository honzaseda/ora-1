#!/bin/bash

echo "Obnovuji control01.ctl"
cp /home/oracle/ora_backup/control01.ctl /u01/app/oracle/oradata/orcl12c/control01.ctl
cp /home/oracle/ora_backup/control01.ctl /u01/app/oracle/fast_recovery_area/orcl12c/control02.ctl


echo "Obnovuji redo logy"
cp /home/oracle/ora_backup/redo01.log /u01/app/oracle/oradata/orcl12c/redo01.log
cp /home/oracle/ora_backup/redo02.log /u01/app/oracle/oradata/orcl12c/redo02.log
cp /home/oracle/ora_backup/redo03.log /u01/app/oracle/oradata/orcl12c/redo03.log

echo "Obnovuji spfile"
cp /home/oracle/ora_backup/spfileorcl12c.ora /u01/app/oracle/product/12.1.0.2/db_1/dbs/spfileorcl12c.ora
