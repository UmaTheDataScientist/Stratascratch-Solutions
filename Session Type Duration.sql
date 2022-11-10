/*
Session Type Duration



https://platform.stratascratch.com/coding/2011-session-type-duration?tabname=solutions
*/

select session_type,avg(timestampdiff(second,session_start,session_end)) as duration from twitch_sessions group by session_type;
