
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