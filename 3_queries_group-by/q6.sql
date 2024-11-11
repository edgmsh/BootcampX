select student.name, 
avg(assignment_submissions.duration) as avg_assesment_duration,
avg(assignments.duration) as ave_est_duration 
from assignment_submissions
join student on student.id = assignment_submissions.student_id and 
student.end_date is null
join assignments on assignments.id = assignment_submissions.assignment_id
group by student.name
having avg(assignment_submissions.duration) < avg(assignments.duration)
order by avg(assignment_submissions.duration) asc;
