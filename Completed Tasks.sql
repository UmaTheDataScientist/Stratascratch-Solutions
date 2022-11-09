/*
Completed Tasks
https://platform.stratascratch.com/coding/2096-completed-tasks?code_type=3
*/

WITH comprows as
(SELECT user_id,sum(num_actions) as sum_actions
from asana_actions
where action_name = 'CompleteTask'
and date between '2022-01-01' and '2022-01-31'
group by user_id)

select u.user_id,coalesce(c.sum_actions, 0)
from asana_users u
left outer join comprows c
on u.user_id = c.user_id
where u.company = 'ClassPass'
;



