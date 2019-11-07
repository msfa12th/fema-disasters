# FEMA Disaster Database
Construction of a Comprehensive Database for earthquakes, wildfires, and tornados affecting the United States of America the past few decades.

The strength of these natural diasaters will be compared to known FEMA disaster declarations to determine if the former qualify for federal funding for disaster relief.

### DOC
- Project Proposal describing above and listing the specific datasets used in the project
- QuickD&D schema and Entity Relational Diagram (ERD)

### EARTHQUAKE_Brendan
- **Earthquake.ipynb:** Jupyter Notebook (Python) file that details how the data was cleaned and focused roughly around the USA
- **Earthquake_DB.sql:** Sqlite file that creates table into PosstgrSQL
- **Earthquake_v2.csv:** cleaned up Earhquake CSV

### FEMA_BillM
- **BILLM_County_ZIP:** Folders dedicated to PostgrSQL table County_Zip (locational data such as Zip Code)
- **BILLM_Fema:** Folder dedicated to table Fema_Disaster (what, how, and when FEMA declares an event a disaster)

### SQL
- Folder with 
