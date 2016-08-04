DECLARE @UndergraduateStudent TABLE (
s	INT);

INSERT INTO @UndergraduateStudent
SELECT * FROM UndergraduateStudent;

SELECT A0.s
FROM @UndergraduateStudent AS A0
;