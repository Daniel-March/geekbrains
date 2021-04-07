set @id = 3;
start transaction;
delete from catalogs where id = @id;
insert into catalogs select * from products where id = @id;
delete from products where id = @id;
commit;



drop view if exists v;
create view v as select products.name, (select name from catalogs where catalogs.id = products.id) from products;
select * from v;