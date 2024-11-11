select day, count(*) from assignments
group by day
having count(*) >= 10
order by day;