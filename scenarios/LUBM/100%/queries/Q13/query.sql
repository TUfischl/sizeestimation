SELECT Person.s
FROM Person, hasAlumnus
WHERE Person.s = hasAlumnus.o AND
hasAlumnus.s=1411