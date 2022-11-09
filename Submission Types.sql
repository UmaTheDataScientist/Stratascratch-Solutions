/*
Submission Types

https://platform.stratascratch.com/coding/2002-submission-types?tabname=question
*/

WITH refin as
(SELECT user_id as ru,type,count(user_id)
FROM loans where type = 'Refinance'
GROUP BY user_id),
ins as
(SELECT user_id as iu,type,count(user_id)
FROM loans where type = 'InSchool'
GROUP BY user_id)

SELECt distinct(r.ru) as user_id
from refin r
inner join ins i
on r.ru = i.iu;