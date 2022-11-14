/*
Distances Traveled


https://platform.stratascratch.com/coding/10324-distances-traveled?code_type=3
*/

select distinct(l.user_id),u.name,
sum(distance) OVER (PARTITION BY user_id) as total_dist
from lyft_rides_log l
inner join lyft_users u
on l.user_id = u.id
order by total_dist desc
limit 10;