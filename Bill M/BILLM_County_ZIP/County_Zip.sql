-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


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