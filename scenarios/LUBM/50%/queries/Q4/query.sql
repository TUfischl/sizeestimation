DECLARE @worksFor TABLE(
s	INT,
o	INT);

INSERT INTO @worksFor
SELECT * FROM worksFor;

SELECT DISTINCT A0.s, A2.o, A3.o, A4.o
FROM Professor AS A0,@worksFor AS A1,name AS A2,emailAddress AS A3,telephone AS A4
WHERE A0.s=A1.s AND A0.s=A2.s AND A0.s=A3.s AND A0.s=A4.s AND A1.o='299276';