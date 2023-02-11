/*
Activity Rank



https://platform.stratascratch.com/coding/10351-activity-rank?code_type=1
*/

select from_user,count(*) as total_emails,
row_number() OVER (ORDER BY count(*) desc,from_user)
from google_gmail_emails group by from_user;