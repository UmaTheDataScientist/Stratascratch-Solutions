/*
https://platform.stratascratch.com/coding/10172-best-selling-item?code_type=3
*/

WITH x2 as (
WITH x1 as(
select *,
month(invoicedate) as month,
unitprice*quantity as item_cost
from online_retail
)
select month,description,invoiceno,
sum(item_cost) as total_invoice_cost
from x1
group by description,month order by 1,4 desc
)
select distinct month,
description,
max(total_invoice_cost) OVER (PARTITION by month) as amount_paid
from x2
group by month


