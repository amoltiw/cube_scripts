REPLACE PROCEDURE tes_db.test_state

 ------------------------------------------------------------------------------------------
--              				 test_state                         	                  --
------------------------------------------------------------------------------------------
-- DBMS Name        :  Snowflake                                                      --
-- Database Name    :  test_db                                         			        --
-- Applipation      : test_state                                                  	    --
-- Program Name     :  application1.sql                               	          --
-- Description      :  Load the DATA TO cube  table                	  --
-- Job Name         : NA                 --
-- Final Table Name : test_snowflakedb.target_test_table                      	           --
------------------------------------------------------------------------------------------

BEGIN

 DECLARE create_ts 	TIMESTAMP(0);
 DECLARE new_create_ts 	TIMESTAMP(0);
 DECLARE create_dt            DATE;
 DECLARE new_create_dt           TIMESTAMP(0);
 
 del from its_test.its_testpurchase;

insert into test_db.stage1
sel  a,b,c
  from  src_db.source1 a, src_db.source2  b
  where a.id = b.id  ;



insert into test_db.stage2
select a,b,c

from src_db.source3 

insert into test_db.stage3
select a,b,c

from src_db.source4

update test_db.stage3
from  src_db.source5
set
id = b.abc_id

