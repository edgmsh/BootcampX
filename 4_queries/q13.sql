select distinct teacher.name, cohort.name, count(assistance_request.*) as total_assistances
from assistance_request
join teacher on teacher.id = assistance_request.teacher_id
join student on student.id = assistance_request.student_id
join cohort on cohort.id = student.cohort_id and cohort.name = 'JUL02'
group by teacher.name, cohort.name
order by teacher.name;