SELECT GraduateStudent.s, University.s, Department.s
FROM GraduateStudent, University, Department, memberOf, subOrganizationOf, undergraduateDegreeFrom
WHERE GraduateStudent.s=memberOf.s AND
memberOf.o=Department.s AND 
Department.s = subOrganizationOf.s AND
subOrganizationOf.o = University.s AND
GraduateStudent.s=undergraduateDegreeFrom.s AND
undergraduateDegreeFrom.o=University.s