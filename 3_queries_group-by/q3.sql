select cohort.name, count(student.*) from cohort
join student on cohort.id = student.cohort_id
group by cohort.name
having count(student.*) >=18
order by cohort.name;