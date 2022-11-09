/*
Duplicate Training Lessons
https://platform.stratascratch.com/coding/2130-duplicate-training-lessons?code_type=3
*/
select ut.u_name,td.training_id,td.training_date,count(*) as n_attended
from users_training ut
inner join training_details td
on ut.u_id = td.u_id
group by td.u_id,td.training_date,td.training_id
having count(*)>1;
