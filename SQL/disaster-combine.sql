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
select id,data_source,declaration_date,incident_type,state
from fema;
commit;

insert into natural_disaster
(event_id,data_source,event_date,event_type)
select 
id,data_source,
to_date(date,'mm/dd/yy') ,
data_source
from earthquake ;

--found a few bad data elements
delete from earthquake
where date = '1975-02-23T02:58:41.000Z';
delete from earthquake
where date = '2011-03-13T02:23:34.520Z';
delete from earthquake
where date = '1985-04-28T02:53:41.530Z';
commit;

select * from earthquake limit 10;





