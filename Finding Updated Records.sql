/*
Finding Updated Records



https://platform.stratascratch.com/coding/10299-finding-updated-records?code_type=3
*/

SELECT distinct(id),first_name,last_name,department_id,max(salary) OVER (PARTITION BY id)
as current_salary
from ms_employee_salary ORDER BY id;