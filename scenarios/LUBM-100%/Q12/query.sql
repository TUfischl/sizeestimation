SELECT dbrdf_Chair.s, dbrdf_Department.s
FROM dbrdf_Chair, dbrdf_Department, dbrdf_worksFor, dbrdf_subOrganizationOf
WHERE dbrdf_Chair.s=  dbrdf_worksFor.s AND
dbrdf_worksFor.o = dbrdf_Department.s AND
dbrdf_Department.s=dbrdf_subOrganizationOf.s AND
dbrdf_subOrganizationOf.o = 1411;