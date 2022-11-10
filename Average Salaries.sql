/*
Average Salaries



https://platform.stratascratch.com/coding/9917-average-salaries?code_type=3
*/

select department,first_name,salary,avg(salary) OVER( PARTITION BY department) as avg_sal_department from employee;