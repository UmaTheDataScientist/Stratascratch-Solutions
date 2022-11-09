/*
Three Purchases

https://platform.stratascratch.com/coding/2095-three-purchases?code_type=3

*/
WITH t2020 as
(select user_id,count(id) as norder
from amazon_orders
where order_date between '2021-01-01' and '2021-12-31'
group by user_id
having norder >=3) ,
t2021 as 
(select user_id,count(id) as norder
from amazon_orders
where order_date between '2020-01-01' and '2020-12-31'
group by user_id
having norder >=3 )

select distinct(o.user_id)
from amazon_orders o
inner join t2020
on o.user_id = t2020.user_id
inner join t2021
on o.user_id = t2021.user_id;

