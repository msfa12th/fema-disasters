--FEMA DISASTERS ETL Project
-- by Mary Brown

-- Add code to pull data from each source table into combined NATURAL_DISASTER table
insert into natural_disaster
select id,data_source,DISCOVERY_DATE,data_source,state
from wild_fire;
commit;

insert into natural_disaster
select id,data_source,to_date(date,'mm/dd/yyyy'),data_source,st
from tornado;
commit;

insert into natural_disaster
select id,data_source,declaration_date,data_source,state
from fema;
commit;

insert into natural_disaster
select 
id,data_source,to_date(date,'m/dd/yy') ,
data_source,null
from earthquake ;



