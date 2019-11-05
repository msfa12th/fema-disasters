-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

/*________________________________________________________*/

CREATE TABLE Locations (
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