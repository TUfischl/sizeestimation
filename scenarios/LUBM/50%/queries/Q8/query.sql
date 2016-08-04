DECLARE @Department TABLE(
s	INT);

INSERT INTO @Department
SELECT * FROM Department;

SELECT DISTINCT A0.s, A1.s, A4.o
FROM Student AS A0,@Department AS A1,memberOf AS A2,subOrganizationOf AS A3,emailAddress AS A4
WHERE A0.s=A2.s AND A0.s=A4.s AND A1.s=A2.o AND A1.s=A3.s AND A3.o='1411';