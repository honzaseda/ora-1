# ora

```
$ sudo yum install tree
$ sudo yum install git
$ git clone https://github.com/Fifal/ora
$ cd ora
$ chmod u+x *.sh
```
## Návod
* Vložim testovací data, nastavim si zálohování a tak ([Návod jak pán](https://github.com/Vrbikk/ora/blob/master/oracle_is_life.txt))
* Pro jistotu pustim zálohu **$ ./backup.sh**
  - potom co nám rozbije DB můžu pustit **$ ./save_tree2.sh** což vypíše změny ve složkách **/u01/app/oracle/oradata/orcl12c/** a **/u01/app/oracle/product/12.1.0.2/db_1/dbs/** takže můžem vidět kde nám jakej soubor smazal
  - např.:
  ```
  |-- pdbseed				                        |-- pdbseed
  |   |-- pdbseed_temp012016-06-02_07-1	    |   |-- pdbseed_temp012016-06-02_07-1
  |   |-- sysaux01.dbf			                |   |-- sysaux01.dbf
  |   `-- system01.dbf			                |   `-- system01.dbf
  |-- redo01.log			                      <
  |-- redo02.log			                      <
  |-- redo03.log			                      <
  |-- sysaux01.dbf			                    |-- sysaux01.dbf
  |-- system01.dbf			                    |-- system01.dbf
  ```
    znamená, že smazal všechny tři redo logy


* Pokusim se obnovu udělat pomocí RMANU ([Návod jak pán](https://github.com/Vrbikk/ora/blob/master/oracle_is_life.txt))-> když budu v ouzkejch, můžu zavolat **$ ./recover.sh** což nakopíruje controlfiles, redology a spfile zpátky
