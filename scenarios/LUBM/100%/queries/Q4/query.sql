SELECT Professor.s, name.o, emailAddress.o, telephone.o
FROM Professor, name, worksFor, telephone, emailAddress
WHERE Professor.s= worksFor.s AND
worksFor.o = 299276 AND 
Professor.s = name.s AND
Professor.s = telephone.s AND
Professor.s = emailAddress.s 