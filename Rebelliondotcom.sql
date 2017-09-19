set ORACLE_SID=orcl
sqlplus /nolog
sqlplus / as sysdba (or) sqlplus sys/oracle as sysdba
sqlplus sys/oracle as sysdba@192.168.11.104:1521/orcl
sqlplus crmuser/crmuser;
select name from v$database;

create table example (
first_name varchar2(100),
middle_name varchar2(100),
last_name varchar2(100),
ex_id number(3)
);

SQL> ARCHIVE LOG LIST;
SQL> select log_mode from v$database;
SQL> shutdown immediate;
SQL> startup mount
SQL> alter database archivelog;
SQL> alter database open;
SQL> select log_mode from v$database;

Few important archive log commands:
Start archive logging 	:	alter system archive log start;
Stop archive logging	:	alter system archive log stop;
Force archiving of all logs:alter system archive log all;
Force archiving of current log file: alter system archive log current;
Sql functions:
1. case-manipulation functions
lower(), upper(),initcap()
2.character manipulation functions
concat(),substr(),length(),instr(),lpad(),rpad(),trim(),replace()