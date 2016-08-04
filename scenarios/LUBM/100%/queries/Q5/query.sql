SELECT memberOf.s
FROM memberOf, Person
WHERE Person.s = memberOf.s AND 
memberOf.o=299276