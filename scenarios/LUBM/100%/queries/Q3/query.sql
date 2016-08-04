SELECT Publication.s
FROM Publication, publicationAuthor
WHERE  Publication.s = publicationAuthor.s AND
publicationAuthor.o= 2