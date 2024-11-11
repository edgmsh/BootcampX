select sum(duration) from assignment_submissions
join student on assignment_submissions.student_id = student.id
join cohort on student.cohort_id = cohort.id and cohort.name = 'FEB12';