SELECT dbrdf_ResearchGroup.s
FROM dbrdf_ResearchGroup, dbrdf_subOrganizationOf
WHERE dbrdf_ResearchGroup.s = dbrdf_subOrganizationOf.s AND 
dbrdf_subOrganizationOf.o = 1411