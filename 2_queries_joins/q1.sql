select sum(duration) from assignment_submissions
join student on assignment_submissions.student_id = student.id
and student.name = 'Ibrahim Schimmel';