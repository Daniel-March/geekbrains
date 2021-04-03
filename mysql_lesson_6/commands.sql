select
    from_user_id
from
    message
where
    to_user_id = 50 and
    from_user_id in (select
                            from_user_id
                    from
                         friend_request
                    where
                          to_user_id = 50 and
                          status=1)
group by
    from_user_id
order by
    count(*) desc
limit 1;




drop table if exists like_count;
CREATE TABLE like_count AS
select (select count(*) from `like` where user_id = profile.user_id) l
from profile
order by birthday
desc limit 10;

select sum(l) from like_count;

drop table like_count;




drop table if exists like_count;
CREATE TABLE like_count AS
select gender, count(gender) count from profile
    where user_id in (select user_id from `like` where user_id is not null)
group by
gender;

select gender from like_count where count = (select max(count) from like_count);


drop table like_count;





select
    firstname,
       lastname,
    (select count(*) from post where user_id = profile.user_id)+
    (select count(*) from post where user_id = profile.user_id)+
    (select count(*) from message where from_user_id = profile.user_id or to_user_id =profile.user_id) active
from profile
order by active
limit 10;