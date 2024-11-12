select count(assistance_request.*), student.name 
from assistance_request
join student on student.id = assistance_request.student_id 
and student.name = 'Elliot Dickinson'
group by student.name;