SELECT GraduateStudent.s
FROM GraduateStudent, takesCourse
WHERE GraduateStudent.s = takesCourse.s AND 
takesCourse.o=237113;