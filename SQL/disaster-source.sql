-- fema_disasters_db database
-- add source info to DATA_SOURCE table

INSERT INTO DATA_SOURCE(DATA_SOURCE, SOURCE_URL, SOURCE_TYPE)
VALUES
   ('WILDFIRE','https://catalog.data.gov/dataset/fire-program-analysis-fire-occurrence-database-feature-layer','CSV'),
   ('LOCATION','https://www.zip-codes.com/account_database.asp','CSV'),
   ('FEMA','https://www.fema.gov/media-library/assets/documents/28318','XLS'),
   ('EARTHQUAKE','https://www.kaggle.com/usgs/earthquake-database#database.csv','CSV'),
   ('TORNADO','https://www.spc.noaa.gov/wcm/data/1950-2018_actual_tornadoes.csv','CSV');