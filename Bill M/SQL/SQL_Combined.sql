-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

/*________________________________________________________*/

CREATE TABLE Location (
	ID int NOT NULL,
    ZipCode int   NOT NULL,
    City varchar(30)   NOT NULL,
    State varchar(2)   NOT NULL,
    Latitude int   NOT NULL,
    Longitude int   NOT NULL,
    CONSTRAINT pk_Location PRIMARY KEY (
        ID
     )
);

CREATE INDEX idx_Location_City
ON Location (City);

CREATE INDEX idx_Location_State
ON Location (State);

/*________________________________________________________*/


CREATE TABLE Fema_Disaster (
	ID int NOT NULL,
    Dis_num int   NOT NULL,
    IH_Program_Declared BOOLEAN,
	IA_Program_Declared BOOLEAN,
	PA_Program_Declared BOOLEAN,
    HM_Program_Declared BOOLEAN,
    State varchar(10)   NOT NULL,
    Declaration_date date,
    Disaster_type varchar(2),
    Incident_type varchar(60),
    Title varchar(100)   NOT NULL,
    Incident_Begin_date date,
    Incident_End_date date,
    Close_Out_date date,
    Place_Code int,
    Declared_County varchar(60),
    Declaration_Req_Num int,
    CONSTRAINT pk_Fema_Disater PRIMARY KEY (
        ID
     )
);


/*________________________________________________________*/

CREATE TABLE County_zip (
    ID int NOT NULL,	
    Zip int   NOT NULL,
    ST_County_FP int   NOT NULL,
    City varchar(30)   NOT NULL,
    State varchar(10)   NOT NULL,
    County_Name varchar(40)   NOT NULL,
    Class_FP varchar(30)   NOT NULL,
    CONSTRAINT pk_County_zip PRIMARY KEY (
        ID
     )
);