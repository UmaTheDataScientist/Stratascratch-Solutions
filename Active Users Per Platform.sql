/*
Active Users Per Platform



https://platform.stratascratch.com/coding/2072-active-users-per-platform?code_type=3
*/


select platform,count(distinct(user_id))
from user_sessions
group by platform