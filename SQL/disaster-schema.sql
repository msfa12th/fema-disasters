-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/YG3XLa
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
-- Execute this on new database fema_disasters_db

CREATE TABLE DATA_SOURCE (
    ID serial primary key,
    DATA_SOURCE VARCHAR UNIQUE  NOT NULL,
    SOURCE_URL varchar   NOT NULL,
    SOURCE_TYPE varchar   NOT NULL
);

CREATE TABLE NATURAL_DISASTER (
    DATA_SOURCE varchar   NOT NULL,
    EVENT_ID varchar   NOT NULL,
    event_date date   NOT NULL,
    event_type varchar   NOT NULL,
    state varchar   NOT NULL,
    CONSTRAINT pk_NATURAL_DISASTER PRIMARY KEY (
        DATA_SOURCE,EVENT_ID
     )
);

CREATE TABLE LOCATION (
    ZipCode VARCHAR   NOT NULL,
    City VARCHAR   NOT NULL,
    State VARCHAR   NOT NULL,
    Latitude FLOAT   NOT NULL,
    Longitude FLOAT   NOT NULL,
    Classification VARCHAR   NULL,
    Population INTEGER   NULL,
    CONSTRAINT pk_LOCATION PRIMARY KEY (
        ZipCode
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

CREATE TABLE WILD_FIRE (
    ID int   NOT NULL,
    DATA_SOURCE varchar   NOT NULL,
    OBJECTID varchar   NOT NULL,
    FOD_ID INTEGER   NULL,
    FPA_ID VARCHAR   NULL,
    SOURCE_SYSTEM_TYPE VARCHAR   NULL,
    SOURCE_SYSTEM VARCHAR   NULL,
    NWCG_REPORTING_AGENCY VARCHAR   NULL,
    NWCG_REPORTING_UNIT_ID VARCHAR   NULL,
    NWCG_REPORTING_UNIT_NAME VARCHAR   NULL,
    SOURCE_REPORTING_UNIT INTEGER   NULL,
    SOURCE_REPORTING_UNIT_NAME VARCHAR   NULL,
    LOCAL_FIRE_REPORT_ID INTEGER   NULL,
    LOCAL_INCIDENT_ID VARCHAR   NULL,
    FIRE_CODE VARCHAR   NULL,
    FIRE_NAME VARCHAR   NULL,
    ICS_209_INCIDENT_NUMBER VARCHAR   NULL,
    ICS_209_NAME VARCHAR   NULL,
    MTBS_ID VARCHAR   NULL,
    MTBS_FIRE_NAME VARCHAR   NULL,
    COMPLEX_NAME VARCHAR   NULL,
    FIRE_YEAR INTEGER   NOT NULL,
    DISCOVERY_DATE DATE   NOT NULL,
    DISCOVERY_DOY INTEGER   NOT NULL,
    DISCOVERY_TIME INTEGER   NULL,
    STAT_CAUSE_CODE INTEGER   NULL,
    STAT_CAUSE_DESCR VARCHAR   NULL,
    CONT_DATE DATE   NULL,
    CONT_DOY INTEGER   NULL,
    CONT_TIME INTEGER   NULL,
    FIRE_SIZE FLOAT   NULL,
    FIRE_SIZE_CLASS VARCHAR   NULL,
    LATITUDE FLOAT   NULL,
    LONGITUDE FLOAT   NULL,
    OWNER_CODE INTEGER   NULL,
    OWNER_DESCR VARCHAR   NULL,
    STATE VARCHAR   NULL,
    COUNTY INTEGER   NULL,
    FIPS_CODE INTEGER   NULL,
    FIPS_NAME VARCHAR   NULL,
    CONSTRAINT pk_WILD_FIRE PRIMARY KEY (
        ID
     ),
    CONSTRAINT uc_WILD_FIRE_OBJECTID UNIQUE (
        OBJECTID
    )
);

CREATE TABLE EARTHQUAKE (
    ID int   NOT NULL,
    DATA_SOURCE varchar   NOT NULL,
    EQ_ID VARCHAR   NOT NULL,
    Date VARCHAR   NOT NULL,
    Time VARCHAR   NULL,
    Latitude FLOAT   NOT NULL,
    Longitude FLOAT   NOT NULL,
    Type VARCHAR   NULL,
    Depth FLOAT   NULL,
    Magnitude FLOAT   NULL,
    Magnitude_Type VARCHAR   NULL,
    Source VARCHAR   NULL,
    Location_Source VARCHAR   NULL,
    Magnitude_Source VARCHAR   NULL,
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
    DATA_SOURCE varchar   NOT NULL,
    om varchar   NOT NULL,
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
    f2 INTEGER   NULL,
    f3 INTEGER   NULL,
    f4 INTEGER   NULL,
    fc INTEGER   NULL,
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

ALTER TABLE FEMA ADD CONSTRAINT fk_FEMA_DATA_SOURCE_Disaster_Number FOREIGN KEY(DATA_SOURCE, Disaster_Number)
REFERENCES NATURAL_DISASTER (DATA_SOURCE, EVENT_ID);

ALTER TABLE WILD_FIRE ADD CONSTRAINT fk_WILD_FIRE_DATA_SOURCE_OBJECTID FOREIGN KEY(DATA_SOURCE, OBJECTID)
REFERENCES NATURAL_DISASTER (DATA_SOURCE, EVENT_ID);

ALTER TABLE EARTHQUAKE ADD CONSTRAINT fk_EARTHQUAKE_DATA_SOURCE_EQ_ID FOREIGN KEY(DATA_SOURCE, EQ_ID)
REFERENCES NATURAL_DISASTER (DATA_SOURCE, EVENT_ID);

ALTER TABLE TORNADO ADD CONSTRAINT fk_TORNADO_DATA_SOURCE_om FOREIGN KEY(DATA_SOURCE, om)
REFERENCES NATURAL_DISASTER (DATA_SOURCE, EVENT_ID);
 */
