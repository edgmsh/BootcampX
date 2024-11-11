select cohort.name, count(assignment_submissions.*) as total from assignment_submissions
join student on assignment_submissions.student_id = student.id
join cohort on cohort.id = student.cohort_id
group by cohort.name
ORDER BY count(assignment_submissions.*) DESC;