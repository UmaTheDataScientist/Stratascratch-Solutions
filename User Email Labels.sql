/*
User Email Labels



https://platform.stratascratch.com/coding/10068-user-email-labels?code_type=3
*/

WITH join_table as
(select *
from google_gmail_emails e
inner join google_gmail_labels l
on e.id = l.email_id)
select distinct(to_user),
count(case when label = 'Promotion' then to_user end) OVER (PARTITION BY to_user) as promotion_count,
count(case when label = 'Social' then to_user end) OVER (PARTITION BY to_user) as social_count,
count(case when label = 'Shopping' then to_user end) OVER (PARTITION BY to_user) as shopping_count
from join_table;