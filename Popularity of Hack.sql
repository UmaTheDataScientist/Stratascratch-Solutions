/*

Popularity of Hack



https://platform.stratascratch.com/coding/10061-popularity-of-hack?code_type=3

*/


select e.location,
avg(popularity) as average_popularity
from facebook_employees e
join facebook_hack_survey s
on e.id = s.employee_id
group by e.location;