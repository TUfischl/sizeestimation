SELECT dbrdf_Person.s
FROM dbrdf_Person, dbrdf_hasAlumnus
WHERE dbrdf_Person.s = dbrdf_hasAlumnus.o AND
dbrdf_hasAlumnus.s=1411