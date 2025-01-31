CREATE TABLE TORNADO (
    id int   NOT NULL,
	om int,
    data_source int  NOT NULL,
    yr INTEGER   NOT NULL,
    mo INTEGER   NOT NULL,
    dy INTEGER   NOT NULL,
    date VARCHAR   NOT NULL,
    time time(0)   NULL,
    tz INTEGER   NULL,
    states VARCHAR   NULL,
    stf INTEGER   NULL,
    stn INTEGER   NULL,
    magnitude INTEGER   NULL,
    inj INTEGER   NULL,
    fat INTEGER   NULL,
    loss INTEGER   NULL,
    closs INTEGER   NULL,
    start_lat FLOAT   NOT NULL,
    start_lon FLOAT   NOT NULL,
    end_lat FLOAT   NULL,
    end_lon FLOAT   NULL,
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
        id
     )
);