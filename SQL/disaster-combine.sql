--FEMA DISASTERS ETL Project
-- by Mary Brown

-- Add code to pull data from each source table into combined NATURAL_DISASTER table
insert into natural_disaster
select id,data_source,DISCOVERY_DATE,data_source,state
from wild_fire;
commit;


