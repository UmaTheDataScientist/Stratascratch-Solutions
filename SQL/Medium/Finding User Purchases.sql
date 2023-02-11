/*https://platform.stratascratch.com/coding/10322-finding-user-purchases?code_type=3
*/

select distinct user_id from 
(select f.user_id,s.created_at as second_Date,f.created_at as first_date,datediff(s.created_at,f.created_at) as difference_in_days
from amazon_transactions f
inner join amazon_transactions s
on f.user_id = s.user_id and f.id!= s.id) as x
where difference_in_days>=0 and difference_in_days<8 order by user_id
