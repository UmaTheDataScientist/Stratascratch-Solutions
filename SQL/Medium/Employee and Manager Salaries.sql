/*
Employee and Manager Salaries

https://platform.stratascratch.com/coding/9894-employee-and-manager-salaries?code_type=3
*/

select e1.first_name,e1.salary as emp_sal
from employee e1
inner join employee e2
on e1.manager_id = e2.id
where e1.salary > e2.salary;
