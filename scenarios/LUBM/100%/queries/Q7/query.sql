
SELECT Student.s, Course.s
FROM Student, takesCourse, teacherOf, Course
WHERE Student.s=takesCourse.s AND
takesCourse.o=Course.s AND
teacherOf.s=33491 AND
teacherOf.o=Course.s

