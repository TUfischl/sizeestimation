SELECT dbrdf_Professor.s, dbrdf_name.o, dbrdf_emailAddress.o, dbrdf_telephone.o
FROM dbrdf_Professor, dbrdf_name, dbrdf_worksFor, dbrdf_telephone, dbrdf_emailAddress
WHERE dbrdf_Professor.s= dbrdf_worksFor.s AND
dbrdf_worksFor.o = 299276 AND 
dbrdf_Professor.s = dbrdf_name.s AND
dbrdf_Professor.s = dbrdf_telephone.s AND
dbrdf_Professor.s = dbrdf_emailAddress.s 