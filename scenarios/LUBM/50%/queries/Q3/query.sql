DECLARE @publicationAuthor TABLE(
s	INT,
o	INT);

INSERT INTO @publicationAuthor
SELECT * FROM publicationAuthor;

SELECT DISTINCT A0.s
FROM Publication AS A0,@publicationAuthor AS A1
WHERE A0.s=A1.s AND A1.o='2';