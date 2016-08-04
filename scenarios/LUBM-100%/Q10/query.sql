SELECT dbrdf_Student.s
FROM dbrdf_Student, dbrdf_takesCourse
WHERE dbrdf_Student.s = dbrdf_takesCourse.s AND
dbrdf_takesCourse.o=237113;