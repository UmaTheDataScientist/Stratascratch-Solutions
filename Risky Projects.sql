/*
https://platform.stratascratch.com/coding/10304-risky-projects?code_type=3
Risky Projects



*/

WITH ALL_DETS as(
WITH PROJECT_DURATION_DETS AS
(select id as project_id,
datediff(end_date,start_date) as duration
from linkedin_projects),

PROJECT_BUDGET_DETS AS
(select id as project_id,
budget as project_budget
from linkedin_projects),

EMPLOYEE_BUDGET_DETS AS
(select project_id,
sum(salary)/365 as employee_salary 
from linkedin_emp_projects ep
join linkedin_employees e
on ep.emp_id = e.id
group by project_id)

select d.project_id,d.duration,
pb.project_budget as pb_act,
eb.employee_salary*d.duration as emp_pro
from PROJECT_DURATION_DETS d,PROJECT_BUDGET_DETS pb,EMPLOYEE_BUDGET_DETS eb
where d.project_id = pb.project_id
and d.project_id = eb.project_id
and pb.project_id = eb.project_id)

select p.title,
a.pb_act,
ceiling(a.emp_pro)
from ALL_DETS a
join linkedin_projects p
on a.project_id = p.id
where a.emp_pro>a.pb_act


