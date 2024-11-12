select 
avg(assistance_request.completed_at - assistance_request.started_at) 
as average_assistance_request_duration
from assistance_request;