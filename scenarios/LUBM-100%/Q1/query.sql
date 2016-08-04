SELECT dbrdf_GraduateStudent.s
FROM dbo.dbrdf_GraduateStudent, dbo.dbrdf_takesCourse
WHERE dbrdf_GraduateStudent.s = dbrdf_takesCourse.s AND 
dbrdf_takesCourse.o=237113;