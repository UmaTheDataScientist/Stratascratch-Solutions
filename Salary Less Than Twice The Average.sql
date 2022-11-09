/*
Salary Less Than Twice The Average
https://platform.stratascratch.com/coding/2110-salary-less-than-twice-the-average?code_type=3
*/



WITH temporaryTable(manager_id,reporting_salary) as 
(select m.manager_empl_id,avg(d.salary) as emp_salary
from map_employee_hierarchy m
inner join dim_employee d
on m.empl_id = d.empl_id
where m.manager_empl_id is not null
group by m.manager_empl_id)

select distinct(m.manager_empl_id),d.salary as manager_salary,tt.reporting_salary
from map_employee_hierarchy m
inner join dim_employee d
on m.manager_empl_id = d.empl_id
inner join temporaryTable tt
on m.manager_empl_id = tt.manager_id
where d.salary < 2*tt.reporting_salary

