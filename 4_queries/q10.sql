select assignments.id, day, assignments.chapter, assignments.name, 
count(assistance_request.*) as total_requests from assignments 
join  assistance_request on assignments.id = assistance_request.assignment_id
group by assignments.id
order by count(assistance_request.*) desc;