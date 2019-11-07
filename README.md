# FEMA Disaster Database
Construction of a Comprehensive Database for earthquakes, wildfires, and tornados affecting the United States of America the past few decades.

The strength of these natural diasaters will be compared to known FEMA disaster declarations to determine if the former qualify for federal funding for disaster relief.

### DOC
- Project Proposal describing above and listing the specific datasets used in the project
- QuickD&D schema and Entity Relational Diagram (ERD)

## Application Execution Steps
1. from PGADMIN execute two sql scripts (disaster-db.sql and disaster-schema.sql)
2. from each source directory execute source jupyter:
     Wildfire_Pourninma/wildfire.ipynb
     Tornado_Jackie/tornado.ipynb
     FEMA_BillM/FEMA*.ipynb
     FEMA_BillM/Locations*.ipynb
     EARTHQUAKE_Brendan/Earthquake.ipynb
3. from PGAMDIN execute two sql scriopts (disaster-combine.sql and disaster-analysis.sql)

### EARTHQUAKE
- Jupyter Notebook (Python) file that details how the data was cleaned and connected to SQLAlchemy, the initial sqlite file that creates table into PosstgrSQL, and the final cleaned up Earhquake CSV

### FEMA_BillM
- **BILLM_County_ZIP:** Folders dedicated to PostgrSQL table County_Zip (locational data such as Zip Code)
- **BILLM_Fema:** Folder dedicated to table Fema_Disaster (what, how, and when FEMA declares an event a disaster)

### SQL
- Folder with SQL schema creating all final tables in PostgrSQL

### TORNADO
- Initial Tornado SQL Table code, the Tornadorawdata.csv, and Jupyter Notebook file that cleaned up and loaded the CSV data into SQLAlchemy

### WILDFIRE
- Wildfire raw data Folder and Jupyter Notebook file detailing cleanup and loading into SQLAlchemy.  The raw data for this section had to be divided into 95 files because of the sheer size of the original file.

### ERD for FEMA-Disaster Tables
![](https://github.com/msfa12th/fema-disasters/blob/master/DOC/disaster-schema.png)


