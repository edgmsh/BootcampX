
select cohort.name, avg(assistance_request.completed_at - assistance_request.started_at) as average_assistance_request_duration
from assistance_request
join student on student.id = assistance_request.student_id
join cohort on cohort.id = student.cohort_id
group by cohort.name
order by avg(assistance_request.completed_at - assistance_request.started_at) ASC;