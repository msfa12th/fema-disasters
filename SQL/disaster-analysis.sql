-- FEMA DISASTERS ETL Project
-- disaster-analysis.sql
-- SQL to analyze data
-- by Mary Brown

select data_source,event_type,count(distinct state),count(*)
from natural_disaster
group by data_source,event_type
order by data_source,event_type;