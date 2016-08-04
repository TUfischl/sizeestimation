SELECT dbrdf_memberOf.s
FROM dbrdf_memberOf, dbrdf_Person
WHERE dbrdf_Person.s = dbrdf_memberOf.s AND 
dbrdf_memberOf.o=299276