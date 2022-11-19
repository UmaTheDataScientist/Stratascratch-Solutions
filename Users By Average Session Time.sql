/*
Users By Average Session Time


https://platform.stratascratch.com/coding/10352-users-by-avg-session-time?code_type=3
*/


WITH load_dets as
(select distinct(user_id),
max(timestamp) OVER (partition by user_id,day(timestamp)) as day_latest_load
from facebook_web_log
where action in ('page_load')
order by user_id,timestamp),
exit_dets as
(select distinct(user_id),
min(timestamp) OVER (partition by user_id,day(timestamp)) as day_earliest_exit
from facebook_web_log
where action in ('page_exit')
order by user_id,timestamp)

select l.user_id,avg(timestampdiff(second,l.day_latest_load,e.day_earliest_exit))
from load_dets l
join exit_dets e
on l.user_id = e.user_id
where day(l.day_latest_load) = day(e.day_earliest_exit)
group by user_id



