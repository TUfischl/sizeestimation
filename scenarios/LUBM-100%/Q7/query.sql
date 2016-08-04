
SELECT dbrdf_Student.s, dbrdf_Course.s
FROM dbrdf_Student, dbrdf_takesCourse, dbrdf_teacherOf, dbrdf_Course
WHERE dbrdf_Student.s=dbrdf_takesCourse.s AND
dbrdf_takesCourse.o=dbrdf_Course.s AND
dbrdf_teacherOf.s=33491 AND
dbrdf_teacherOf.o=dbrdf_Course.s

