/*
Responsible for Most Customers
https://platform.stratascratch.com/coding/2108-responsible-for-most-customers?code_type=3*/

select et.empl_id,tc.cust_count
from map_employee_territory et
inner join
(select territory_id,count(cust_id) as cust_count
from map_customer_territory
group by territory_id
having cust_count = (
select max(cust_count) from (select territory_id,count(cust_id) as cust_count
from map_customer_territory
group by territory_id) as cc)) as tc
on et.territory_id = tc.territory_id
;