# Contents of this folder

Subfolder *schema*: Contains the table definitions (file schema.sql) and the schema dependencies as tuple-generating-dependencies (file dependencies.txt). Note that in the latter file, we assume prefix variables by '?'. 

Subfolder *100%*: Contains the 14 queries of the LUBM benchmark. Statistics are available for each base table.

Subfolder *50%*: Contains the 14 queries of the LUBM benchmark. In this test scenario we want to realise cases where statistics are available only for a subset of the tables mentioned in the queries. We assume that tables prefixed by @ in the query body have no available statistics. 

# Instructions to install the schema and data for the LUBM test scenarios in SQL Server and DB2 

Instructions to install the schema and data for the IMDB test scenario in SQL Server and DB2

We got the LUBM ontology generator from http://swat.cse.lehigh.edu/projects/lubm/ and ran it with parameter 1K. We later borrowed a tool from Boris Motik (boris.motik@cs.ox.ac.uk) to convert the data of the ontology in relational format and extract its dependencies.  

Instructions: 

1.Run the CREATE TABLE statements from schema.sql 

2.Get the data :) Download the raw '|'-delimited data from http://www.cs.ox.ac.uk/people/efthymia.tsamoura/sizeestimation/lubm.zip

3.Load the data

*DB2* command: LOAD from 'path-file' of del modified by coldel| insert into <TABLE>

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



