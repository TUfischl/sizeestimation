DECLARE @subOrganizationOf TABLE(
s	INT,
o	INT);

INSERT INTO @subOrganizationOf
SELECT * FROM subOrganizationOf;

SELECT DISTINCT A0.s
FROM ResearchGroup AS A0,@subOrganizationOf AS A1
WHERE A0.s=A1.s AND A1.o='1411';