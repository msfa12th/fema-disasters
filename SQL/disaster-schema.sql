-- FEMA DISASTERS ETL Project
-- disaster-schema.sql
-- SQL to create schema/tables
-- by Mary Brown

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/YG3XLa
-- with customizations
-- 

-- Execute this script to create schema 
-- after new database fema_disasters_db, created using disaster-db.sql

--select * from data_source;
CREATE TABLE DATA_SOURCE (
    ID serial primary key,
    DATA_SOURCE VARCHAR UNIQUE  NOT NULL,
    SOURCE_URL varchar   NOT NULL,
    SOURCE_TYPE varchar   NOT NULL
);


--drop table natural_disaster;
CREATE TABLE NATURAL_DISASTER (
    EVENT_ID integer   NOT NULL,
    DATA_SOURCE varchar   NOT NULL,
    event_date date   NOT NULL,
    event_type varchar   NOT NULL,
    state varchar   NOT NULL,
    CONSTRAINT pk_NATURAL_DISASTER PRIMARY KEY (
        DATA_SOURCE,EVENT_ID
     )
);



CREATE TABLE LOCATION (
    ID int not null,
    ZipCode VARCHAR   NOT NULL,
    City VARCHAR   NOT NULL,
    State VARCHAR   NOT NULL,
    Latitude FLOAT   NOT NULL,
    Longitude FLOAT   NOT NULL,
    CONSTRAINT pk_LOCATION PRIMARY KEY (
        ID
     )
);

CREATE TABLE FEMA (
    ID int   NOT NULL,
    DATA_SOURCE varchar   NOT NULL,
    Disaster_Number varchar   NOT NULL,
    IH_Program_Declared boolean   NULL,
    IA_Program_Declared boolean   NULL,
    PA_Program_Declared boolean   NULL,
    HM_Program_Declared boolean   NULL,
    State varchar   NULL,
    Declaration_Date date   NOT NULL,
    Disaster_Type varchar   NULL,
    Incident_Type varchar   NULL,
    Title varchar   NULL,
    Incident_Begin_Date date   NOT NULL,
    Incident_End_Date date   NULL,
    Disaster_Close_Out_Date date   NULL,
    Place_Code integer   NULL,
    Declared_County_Area varchar   NULL,
    Declaration_Request_Number integer   NULL,
    CONSTRAINT pk_FEMA PRIMARY KEY (
        ID
     ),
    CONSTRAINT uc_FEMA_Disaster_Number UNIQUE (
        Disaster_Number
    )
);

--drop TABLE WILD_FIRE;
CREATE TABLE WILD_FIRE (
    ID int   NOT NULL,
    OBJECTID varchar   NOT NULL,
    DATA_SOURCE varchar   NOT NULL,
    DISCOVERY_DATE DATE   NOT NULL,
    NWCG_REPORTING_UNIT_NAME VARCHAR   NULL,
    FIRE_SIZE FLOAT   NULL,
    LATITUDE FLOAT   NULL,
    LONGITUDE FLOAT   NULL,
    STATE VARCHAR   NULL,
    CONSTRAINT pk_WILD_FIRE PRIMARY KEY (
        ID
     )
);

CREATE TABLE EARTHQUAKE (
    ID int   NOT NULL,
    DATA_SOURCE varchar   NOT NULL,
    EARTHQ_ID VARCHAR   NOT NULL,
    Date VARCHAR   NOT NULL,
    Time VARCHAR   NULL,
    Latitude FLOAT   NOT NULL,
    Longitude FLOAT   NOT NULL,
    Type VARCHAR   NULL,
    Depth FLOAT   NULL,
    Magnitude FLOAT   NULL,
    Magnitude_Type VARCHAR   NULL,
    Source VARCHAR   NULL,
    Status VARCHAR   NULL,
    CONSTRAINT pk_EARTHQUAKE PRIMARY KEY (
        ID
     ),
    CONSTRAINT uc_EARTHQUAKE_EQ_ID UNIQUE (
        EQ_ID
    )
);

CREATE TABLE TORNADO (
    ID int   NOT NULL,
    om varchar   NOT NULL,
    DATA_SOURCE varchar   NOT NULL,
    yr INTEGER   NOT NULL,
    mo INTEGER   NOT NULL,
    dy INTEGER   NOT NULL,
    date VARCHAR   NOT NULL,
    time VARCHAR   NULL,
    tz INTEGER   NULL,
    st VARCHAR   NULL,
    stf INTEGER   NULL,
    stn INTEGER   NULL,
    mag INTEGER   NULL,
    inj INTEGER   NULL,
    fat INTEGER   NULL,
    loss INTEGER   NULL,
    closs INTEGER   NULL,
    slat FLOAT   NOT NULL,
    slon FLOAT   NOT NULL,
    elat FLOAT   NULL,
    elon FLOAT   NULL,
    len FLOAT   NULL,
    wid INTEGER   NULL,
    ns INTEGER   NULL,
    sn INTEGER   NULL,
    sg INTEGER   NULL,
    f1 INTEGER   NULL,
    CONSTRAINT pk_TORNADO PRIMARY KEY (
        ID
     ),
    CONSTRAINT uc_TORNADO_om UNIQUE (
        om
    )
);

/*
 * temporarily comment out foreign key constraints, may need to rework this
ALTER TABLE NATURAL_DISASTER ADD CONSTRAINT fk_NATURAL_DISASTER_DATA_SOURCE FOREIGN KEY(DATA_SOURCE)
REFERENCES DATA_SOURCE (DATA_SOURCE);

-- ALTER TABLE NATURAL_DISASTER ADD CONSTRAINT fk_NATURAL_DISASTER_state FOREIGN KEY(state)
-- REFERENCES LOCATION (State);

ALTER TABLE FEMA ADD CONSTRAINT fk_FEMA_DATA_SOURCE_Disaster_Number FOREIGN KEY(DATA_SOURCE, ID)
REFERENCES NATURAL_DISASTER (DATA_SOURCE, EVENT_ID);

ALTER TABLE WILD_FIRE ADD CONSTRAINT fk_WILD_FIRE_DATA_SOURCE_OBJECTID FOREIGN KEY(DATA_SOURCE, ID)
REFERENCES NATURAL_DISASTER (DATA_SOURCE, EVENT_ID);

ALTER TABLE EARTHQUAKE ADD CONSTRAINT fk_EARTHQUAKE_DATA_SOURCE_EQ_ID FOREIGN KEY(DATA_SOURCE, ID)
REFERENCES NATURAL_DISASTER (DATA_SOURCE, EVENT_ID);

ALTER TABLE TORNADO ADD CONSTRAINT fk_TORNADO_DATA_SOURCE_om FOREIGN KEY(DATA_SOURCE, ID)
REFERENCES NATURAL_DISASTER (DATA_SOURCE, EVENT_ID);
 */
