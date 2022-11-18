/*
Highest Energy Consumption


https://platform.stratascratch.com/coding/10064-highest-energy-consumption?code_type=3
*/

with lasts as
(WITH totals as
(WITH all_tables as
(
select * from fb_eu_energy
UNION
select * from fb_asia_energy
UNION
select * from fb_na_energy
)
select date,
sum(consumption) as c_by_date
from all_tables
group by date)

select date,c_by_date,
rank() over(order by c_by_date desc) as ranked
from totals)

select date,c_by_date
from lasts
where ranked = 1 order by date