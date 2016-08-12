# generators


##querygen.jar: generates (possibly empty) queries over the relations of a database schema. 

Inputs:

-s the-input-schema (in query-generator format) 

-a active-domain-of-the-schema-relations 

-q query-generator-policies 

-o path-to-store-the-output-queries

The input schema specifies the complete list of attributes that can participate in join and selection predicates (joinable and filterable attributes, respectively). 

The query generator policies define the number of output queries (parameter numQueries), the total number of joins in each output query (parameter NumJoins) and the total number of filtering predicates in each query (parameter MaxNumEquiFilters).

The file querygen.sh shows an example that calls the query querygen.jar.

##viewgen.jar: generates (possibly empty) views given an input query. 

Inputs:

-s the-input-schema (in query-generator format) 

-q input-query (in SQL)

-v view-generator-policies (defined similarly to the query generator policies)

-o path-to-store-the-output-queries

The file viewgen.sh shows an example that calls the viewgen.jar.

*CAUTION: The generators are tested using only equality filtering predicates and theta joins.

For any queries contact us at efthymia.tsamoura@cs.ox.ac.uk



