1.1
UPDATE users SET created_at = NOW(), updated_at = NOW()

1.2
WHERE id > 0; UPDATE user SET created_at = concat(SUBSTR(created_at,7,4), "-",SUBSTR(created_at,4,2),"-",SUBSTR(created_at,1,2), SUBSTR(created_at,11,5))
WHERE id > 0; UPDATE user SET updated_at  = concat(SUBSTR(updated_at ,7,4), "-",SUBSTR(updated_at ,4,2),"-",SUBSTR(updated_at ,1,2), SUBSTR(updated_at ,11,5))
WHERE SUBSTR(created_at,3,1) = "." ; ALTER TABLE user CHANGE created_at created_at DATETIME; 
WHERE SUBSTR(updated_at,3,1) = "." ; ALTER TABLE user CHANGE updated_at updated_at DATETIME; 

1.3
select * from storehouses_products order by case when value > 0 then 0 else 1 end, value;


2.1
select round(avg(year(from_days(datediff(now(),birthday))))) from profile


2.2
select dayname(birthday) 'День', count(*) 'Кол-во' from profile group by weekday(birthday) order by weekday(birthday)