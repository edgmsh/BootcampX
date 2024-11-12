select assignments.day,
count(assignments.*) as number_of_assignments,
sum(assignments.duration) as duration
from assignments 
join  assignment_submissions on assignments.id = assignment_submissions.assignment_id
group by assignments.day
order by assignments.day asc;