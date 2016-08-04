SELECT dbrdf_Student.s, dbrdf_Department.s, dbrdf_emailAddress.o
FROM dbrdf_Student, dbrdf_subOrganizationOf, dbrdf_Department, dbrdf_memberOf, dbrdf_emailAddress
WHERE dbrdf_Student.s=dbrdf_memberOf.s AND
dbrdf_memberOf.o=dbrdf_Department.s AND
dbrdf_Department.s = dbrdf_subOrganizationOf.s AND
dbrdf_subOrganizationOf.o=1411 AND
dbrdf_Student.s=dbrdf_emailAddress.s 