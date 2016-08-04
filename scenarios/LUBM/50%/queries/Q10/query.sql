DECLARE @takesCourse TABLE(
s	INT,
o	INT);

INSERT INTO @takesCourse
SELECT * FROM takesCourse;

SELECT DISTINCT A0.s
FROM Student AS A0,@takesCourse AS A1
WHERE A0.s=A1.s AND A1.o='237113';