/*
Manager of the Largest Department
https://platform.stratascratch.com/coding/2060-manager-of-the-largest-department?code_type=3
*/

select first_name,last_name
from az_employees a
inner join 
(select department_id,count(id) as emp_count from az_employees
group by department_id having emp_count = 
(select max(emp_count)
from 
(select department_id,count(id) as emp_count from az_employees
group by department_id) as ecount)) as e3
on a.department_id = e3.department_id
where position like '%anager%'


