# FEMA Disaster Database
Construction of a Comprehensive Historical Database for earthquakes, wildfires, and tornados affecting the US, along with FEMA disaster declarations.

### QUESTIONS the data will answer:
We will investigate the frequency and location of these natural diasaters and compare to frequency/location of FEMA disaster declarations.  
1. From this data we should be able to see based on the comparison, if state should receive more funding (if number of disasters far exceeds number of disaster declarations.
2. Which states receive the most FEMA disaster funding
3. Which states have the most disasters.
4. Which states receive the least FEMA disaster funding.

### DOC
- Project Proposal describing above and listing the specific datasets used in the project
- QuickD&D schema and Entity Relational Diagram (ERD)
- Challenges Document outlines issues with CSV's, jupyter code, and PostgrSQL in detail.

## Application Execution Steps
1. from PGADMIN execute two sql scripts (disaster-db.sql and disaster-schema.sql)
2. from each source directory execute source jupyter:
     1. Wildfire_Pourninma/wildfire.ipynb
     2. Tornado_Jackie/tornado.ipynb
     3. FEMA_BillM/FEMA*.ipynb
     4. FEMA_BillM/Locations*.ipynb
     5. EARTHQUAKE_Brendan/Earthquake.ipynb
3. from PGAMDIN execute two sql scriopts (disaster-combine.sql and disaster-analysis.sql)

### EARTHQUAKE
- Jupyter Notebook (Python) file that details how the data was cleaned and connected to SQLAlchemy, the initial sqlite file that creates table into PosstgrSQL, and the final cleaned up Earthquake CSV

### FEMA
- **BILLM_County_ZIP:** Folders dedicated to PostgrSQL table County_Zip (locational data such as Zip Code)
- **BILLM_Fema:** Folder dedicated to table Fema_Disaster (what, how, and when FEMA declares an event a disaster)

### SQL
- Folder with SQL schema creating all final tables in PostgrSQL

### TORNADO
- Initial Tornado SQL Table code, the Tornadorawdata.csv, and Jupyter Notebook file that cleaned up and loaded the CSV data into PostgreSQL

### WILDFIRE
- Wildfire raw data Folder and Jupyter Notebook file detailing cleanup and loading into PostgreSQL.  The raw data for this section had to be divided into 95 files because of the sheer size of the original file.

### ERD for FEMA-Disaster Tables
![](https://github.com/msfa12th/fema-disasters/blob/master/DOC/disaster-schema.png)


