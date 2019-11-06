

CREATE TABLE EARTHQUAKE (
	EarthQ_ID VARCHAR(30) NOT NULL
	,ID INT NOT NULL
	, Date DATE NOT NULL
	, Time TIME(0) NOT null
	, Latitude FLOAT
	, Longitude FLOAT
	, Disaster_Type varchar(20)
	, Depth FLOAT
	, Magnitude FLOAT
	, Magnitude_Type varchar(10)
	, Data_Source VARCHAR(20)
	, Status VARCHAR(20)
	, CONSTRAINT pk_EARTHQUAKE PRIMARY KEY (EarthQ_ID, ID)
);