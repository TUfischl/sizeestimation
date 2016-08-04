DECLARE @Faculty TABLE(
s	INT);

INSERT INTO @Faculty
SELECT * FROM Faculty;

SELECT DISTINCT A0.s, A1.s, A2.s
FROM Student AS A0,@Faculty AS A1,Course AS A2,advisor AS A3,teacherOf AS A4,takesCourse AS A5
WHERE A0.s=A3.s AND A0.s=A5.s AND A1.s=A3.o AND A1.s=A4.s AND A2.s=A4.o AND A2.s=A5.o;