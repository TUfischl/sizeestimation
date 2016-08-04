DECLARE @Course TABLE(
s	INT);

INSERT INTO @Course
SELECT * FROM Course;

SELECT DISTINCT A0.s, A1.s
FROM Student AS A0,@Course AS A1,takesCourse AS A2,teacherOf AS A3
WHERE A0.s=A2.s AND A1.s=A2.o AND A1.s=A3.o AND A3.s='33491';