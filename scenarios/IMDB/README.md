# Contents of this folder

Subfolder *schema*: Contains the table definitions and key foreign key constraints. 

Subfolder queries: Contains 14 queries from the IMDB benchmark. Each query subfolder contains the SPJ query and the additional statistics (statistical views and filtered statistics) that we collected for SQL Server and DB2 along with the base table statistics.

# Instructions to install the schema and data for the IMDB test scenario in SQL Server and DB2 

We followed a three-step procedure to install the IMDB schema and data in SQL Server and DB2. First, we installed the IMDB schema and the data in Postgres by following the instructions from "How Good Are Query Optimizers, Really?". Second, we exported both the schema definition and the tuples of each table. The data of each table is stored in '|'-delimited files. Finally, we used these files to create the schema and load the data to SQL Server and DB2. 

If you want to skip steps one and two follow the instructions below: 

1.Run *only* the CREATE TABLE statements from schema.sql 

2.Get the data :) Download the raw '|'-delimited data from http://www.cs.ox.ac.uk/people/efthymia.tsamoura/sizeestimation/imdb.zip 

3.Load the data

*DB2* command: 

LOAD from 'path-file' of del modified by coldel| insert into <TABLE>

*SQL Server* command: 

BULK INSERT TABLE
FROM ‘path-to-file’
WITH
(
FIRSTROW = 1,
FIELDTERMINATOR = '|',      
ROWTERMINATOR = '\n',   
ERRORFILE = ‘path-to-log-file',
TABLOCK
)

*CAUTION*: Due to errors observed while loading the data in DB2 we had to break the data of table title in two different files (title.dsv and title-cont.sql). Load the data of both files prior to proceeding to the next step.  

4.Create the constraints: Run *only* the statements creating the foreign key constraints from schema.sql
