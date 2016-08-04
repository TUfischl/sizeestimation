SELECT ResearchGroup.s
FROM ResearchGroup, subOrganizationOf
WHERE ResearchGroup.s = subOrganizationOf.s AND 
subOrganizationOf.o = 1411