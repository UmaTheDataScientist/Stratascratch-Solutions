/*
https://platform.stratascratch.com/coding/9908-customer-orders-and-details?tabname=question
*/

select c.city,
count(o.id) as num_orders,
count(distinct c.id) as num_cust,
sum(o.total_order_cost)
from orders o
right join customers c
on o.cust_id = c.id
group by c.city
having count(o.id)>=5
