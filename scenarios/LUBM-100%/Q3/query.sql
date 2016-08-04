SELECT dbrdf_Publication.s
FROM dbrdf_Publication, dbrdf_publicationAuthor
WHERE  dbrdf_Publication.s = dbrdf_publicationAuthor.s AND
dbrdf_publicationAuthor.o= 2