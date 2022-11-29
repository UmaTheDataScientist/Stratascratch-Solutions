/*

Total Cost Of Orders



https://platform.stratascratch.com/coding/10183-total-cost-of-orders?code_type=3
*/

select c.id,c.first_name,
sum(o.total_order_cost) as total_order_cost
from customers c
join orders o
on c.id = o.cust_id
group by c.id
order by c.first_name;