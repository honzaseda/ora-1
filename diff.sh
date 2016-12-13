#!/bin/bash

echo "Dělám strom /u01/app/oracle/oradata/orcl12c/"
tree /u01/app/oracle/oradata/orcl12c/ > /home/oracle/ora_backup/tree/oradata_tree1.txt



echo "Dělám strom /u01/app/oracle/product/12.1.0.2/db_1/dbs/"
tree /u01/app/oracle/product/12.1.0.2/db_1/dbs/ >> /home/oracle/ora_backup/tree/oradata_tree1.txt

diff -y -W80 /home/oracle/ora_backup/tree/oradata_tree.txt /home/oracle/ora_backup/tree/oradata_tree1.txt
