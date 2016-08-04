SELECT Student.s, Department.s, emailAddress.o
FROM Student, subOrganizationOf, Department, memberOf, emailAddress
WHERE Student.s=memberOf.s AND
memberOf.o=Department.s AND
Department.s = subOrganizationOf.s AND
subOrganizationOf.o=1411 AND
Student.s=emailAddress.s 