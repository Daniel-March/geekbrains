select * from users where id in (select user_id from orders);


select id, name, (select name from catalogs where catalogs.id = products.catalog_id) as catalog from products;


select id, (select name from cities where cities.lable = flights.from) as `from`, (select name from cities where cities.lable = flights.to) as `to` from flights;