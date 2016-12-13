#!/bin/bash

sudo yum install tree

echo "Dělám strom /u01/app/oracle/oradata/orcl12c/"
mkdir /home/oracle/ora_backup/tree/
tree /u01/app/oracle/oradata/orcl12c/ > /home/oracle/ora_backup/tree/oradata_tree.txt

echo "Dělám strom /u01/app/oracle/product/12.1.0.2/db_1/dbs/"
tree /u01/app/oracle/product/12.1.0.2/db_1/dbs/ >> /home/oracle/ora_backup/tree/oradata_tree.txt
