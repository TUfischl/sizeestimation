# Contents of this folder

Subfolder *schema*: Contains the table definitions and key foreign key constraints. 

Subfolder queries: Contains 20 queries generated using our own synthetic query generator. Each query subfolder contains the SPJ query and the additional statistics (statistical views and filtered statistics) that we collected for SQL Server and DB2 along with the base table statistics.

# Instructions to install the schema and data for the TPCH-MANUAL and TPCH-SYNTHETIC test scenarios in SQL Server and DB2 

This is easy :) We downloaded the TPC-H generator from http://www.tpc.org/tpc_documents_current_versions/current_specifications.asp and generated data by setting parameter scaling-factor to 1.
