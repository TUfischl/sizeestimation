DECLARE @hasAlumnus TABLE(
s	INT,
o	INT);

INSERT INTO @hasAlumnus
SELECT * FROM hasAlumnus;

SELECT DISTINCT A0.s
FROM Person AS A0,@hasAlumnus AS A1
WHERE A0.s=A1.o AND A1.s='1411';