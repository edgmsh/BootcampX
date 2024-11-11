SELECT student.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN student ON student.id = student_id and student.end_date is null
GROUP BY student.name
having count(assignment_submissions.*) < 100;