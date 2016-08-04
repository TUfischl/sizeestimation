SELECT dbrdf_GraduateStudent.s, dbrdf_University.s, dbrdf_Department.s
FROM dbrdf_GraduateStudent, dbrdf_University, dbrdf_Department, dbrdf_memberOf, dbrdf_subOrganizationOf, dbrdf_undergraduateDegreeFrom
WHERE dbrdf_GraduateStudent.s=dbrdf_memberOf.s AND
dbrdf_memberOf.o=dbrdf_Department.s AND 
dbrdf_Department.s = dbrdf_subOrganizationOf.s AND
dbrdf_subOrganizationOf.o = dbrdf_University.s AND
dbrdf_GraduateStudent.s=dbrdf_undergraduateDegreeFrom.s AND
dbrdf_undergraduateDegreeFrom.o=dbrdf_University.s