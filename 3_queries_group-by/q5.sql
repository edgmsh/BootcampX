select student.name, avg(assignment_submissions.duration) 
from assignment_submissions
join student on student.id = assignment_submissions.student_id and 
student.end_date is null
group by student.name
order by avg(assignment_submissions.duration) desc;
