/*
https://platform.stratascratch.com/coding/9912-lowest-priced-orders?code_type=3
*/

select c.id,
c.first_name,
min(o.total_order_cost)
from customers c
inner join orders o
on c.id = o.cust_id
group by o.cust_id
