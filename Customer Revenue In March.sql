/*
Customer Revenue In March



https://platform.stratascratch.com/coding/9782-customer-revenue-in-march?code_type=3
*/

select 
distinct cust_id,
sum(total_order_cost) OVER(PARTITION BY cust_id) as revenue
from orders
where order_date between '2019-03-01' and '2019-03-31'
order by revenue desc
;