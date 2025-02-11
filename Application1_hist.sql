REPLACE PROCEDURE tes_db.test_state_hist

 ------------------------------------------------------------------------------------------
--              				 test_state                         	                  --
------------------------------------------------------------------------------------------
-- DBMS Name        :  Snowflake                                                      --
-- Database Name    :  test_db                                         			        --
-- Applipation      : test_state                                                  	    --
-- Program Name     :  application1_hist.sql                               	          --
-- Description      :  Load the DATA TO cube  table                	  --
-- Job Name         : NA                 --
-- Final Table Name : test_snowflakedb.target_test_hist_table                    	           --
------------------------------------------------------------------------------------------

BEGIN

 DECLARE create_ts 	TIMESTAMP(0);
 DECLARE new_create_ts 	TIMESTAMP(0);
 DECLARE create_dt            DATE;
 DECLARE new_create_dt           TIMESTAMP(0);
 

insert into test_db.hist_stage1
sel  a,b,c
  from  src_db.source_hist1 a, src_db.source_hist2  b
  where a.id = b.id  ;



insert into test_db.hist_stage2
select a,b,c

from src_db.hist_source3 

insert into test_db.hist_stage3
select a,b,c

from src_db.hist_source4

update test_db.hist_stage3
from  src_db.hist_source5
set
id = b.abc_id
