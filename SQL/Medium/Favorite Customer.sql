/*
https://platform.stratascratch.com/coding/9910-favorite-customer?code_type=3
*/

select c.first_name,
c.city,
count(o.id) as num_orders,
sum(o.total_order_cost) as total_order_cost
from customers c
inner join orders o
on c.id = o.cust_id
group by o.cust_id
having count(o.id)>3 and sum(total_order_cost)>100