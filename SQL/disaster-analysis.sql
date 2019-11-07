--FEMA DISASTERS ETL Project
-- by Mary Brown

-- Queries to analyze the data

select data_source,event_type,count(*)
from natural_disaster
group by data_source,event_type;