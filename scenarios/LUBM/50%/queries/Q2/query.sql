DECLARE @University TABLE(
s	INT);

INSERT INTO @University
SELECT * FROM University;

SELECT DISTINCT A0.s, A1.s, A2.s
FROM GraduateStudent AS A0,@University AS A1,Department AS A2,memberOf AS A3,subOrganizationOf AS A4,undergraduateDegreeFrom AS A5
WHERE A0.s=A3.s AND A0.s=A5.s AND A1.s=A4.o AND A1.s=A5.o AND A2.s=A3.o AND A2.s=A4.s;