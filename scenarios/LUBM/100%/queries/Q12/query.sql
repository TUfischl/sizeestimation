SELECT Chair.s, Department.s
FROM Chair, Department, worksFor, subOrganizationOf
WHERE Chair.s=  worksFor.s AND
worksFor.o = Department.s AND
Department.s=subOrganizationOf.s AND
subOrganizationOf.o = 1411;