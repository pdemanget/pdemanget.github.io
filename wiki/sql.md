

Postgresql
==========

Types de réplications
---------------------
Streaming replication
Synchronous replication
Warm/standby


Oracle
======

meta
----
select * from user_tab_COMMENTS 
where TABLE_NAME in 
(...
)
order by 1;

select * from user_col_COMMENTS 
where TABLE_NAME in 
(
...)
  
order by 1,2;


### columns
select TABLE_NAME, COLUMN_NAME, COMMENTS from user_col_COMMENTS 
  where ...
order by 1;


Version
--------
select * from v$version


functions
-----
 case when commision_pct is null then 'No Commission' else commision_pct end 
coalesce(commision_pct, 'No Commission')
nvl()


Mysql
=====
The authentication has changed from mysql V8, you must use a compatible client and server.  
BTW it's a bug : <https://bugs.mysql.com/bug.php?id=91828>

Here is a workaround without uninstalling the new workbench:
  
The most probable case is having an old server with a new workbench:

1. get the server version

From a SQL cli tool:
 
    SHOW VARIABLES LIKE "%version%";

or from a cli connected on the server:

    $ mysql -v

It should show a version < 8.0, in my case 5.1.73

2. Get the mysqlWorkbench for a version <8.0:
  You cannot install the msi if you already have a workbench V8.0, so you have to choose  a portable installation form a zip file here:

https://dev.mysql.com/downloads/workbench/6.1.html

Select the version 6.2.5 (last before v8.0) zip version
Unzip
Close the workbench v.8.0 (it lock any other workbench launch)
Launch the V6.2.3 version of workbench, it should works.



troubleshootings
-----------------

time zone
SET GLOBAL time_zone = '+1:00';

driver version
