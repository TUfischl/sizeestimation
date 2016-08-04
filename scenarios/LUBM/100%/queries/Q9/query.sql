SELECT Student.s, Faculty.s, Course.s
FROM Student, Faculty, Course, advisor, teacherOf, takesCourse
WHERE Student.s=advisor.s AND
advisor.o=Faculty.s AND
Faculty.s=teacherOf.s AND
teacherOf.o=Course.s AND
Student.s=takesCourse.s AND
takesCourse.o=Course.s

