/*
https://platform.stratascratch.com/coding/9892-second-highest-salary?code_type=3
*/

select salary from 
(select salary,rank() OVER(ORDER by salary desc) as ranked from employee) e
where ranked = 2;