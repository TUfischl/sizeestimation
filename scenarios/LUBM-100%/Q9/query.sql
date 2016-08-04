SELECT dbrdf_Student.s, dbrdf_Faculty.s, dbrdf_Course.s
FROM dbrdf_Student, dbrdf_Faculty, dbrdf_Course, dbrdf_advisor, dbrdf_teacherOf, dbrdf_takesCourse
WHERE dbrdf_Student.s=dbrdf_advisor.s AND
dbrdf_advisor.o=dbrdf_Faculty.s AND
dbrdf_Faculty.s=dbrdf_teacherOf.s AND
dbrdf_teacherOf.o=dbrdf_Course.s AND
dbrdf_Student.s=dbrdf_takesCourse.s AND
dbrdf_takesCourse.o=dbrdf_Course.s

