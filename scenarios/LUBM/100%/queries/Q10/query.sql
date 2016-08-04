SELECT Student.s
FROM Student, takesCourse
WHERE Student.s = takesCourse.s AND
takesCourse.o=237113;