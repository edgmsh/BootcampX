select teacher.name, student.name , 
assignments.name, assistance_request.completed_at - assistance_request.started_at
from assistance_request
join student on student.id = assistance_request.student_id 
join teacher on teacher.id = assistance_request.teacher_id 
join assignments on assignments.id = assistance_request.assignment_id
order by (assistance_request.completed_at - assistance_request.started_at) ASC;