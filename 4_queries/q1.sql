select count(assistance_request.*), teacher.name 
from assistance_request
join teacher on teacher.id = assistance_request.teacher_id 
and teacher.name = 'Waylon Boehm'
group by teacher,name;