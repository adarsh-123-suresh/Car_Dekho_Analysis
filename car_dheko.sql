create database car_dheko;
use car_dheko;
select * from car_table;
# rows - 7927
select count(*) from car_table;
describe car_table;
select distinct(fuel) from car_table;
select distinct(transmission) from car_table;
select distinct(seller_type) from car_table;
set sql_safe_updates=0;
update car_table set transmission="automatic" where transmission=" automatic";
select trim(name) as cars_name,year from car_table order by cars_name;
update car_table set name=trim(name);
select count(*) from car_table where fuel="diesel";
 select fuel,count(*)as cnt from car_table group by fuel;
select * from car_table order by km_driven limit 10;
select fuel,avg(selling_price) as avg_price from car_table group by fuel order by avg_price limit 1;
select fuel,avg(selling_price) as avg_price from car_table group by fuel;
select fuel,min(selling_price) as avg_price from car_table group by fuel order by avg_price ;
select * from car_table where selling_price=29999;
select substring_index(name," ",1);
alter table car_table add column real_mileage1 int;
update car_table set real_mileage1=trim(substring_index(mileage," ",1));
alter table car_table add column real_engine1 int;
update car_table set real_engine1=trim(substring_index(engine," ",1));
alter table car_table drop column real_power;
delete from car_table where; 
update car_table set max_power=trim(substring_index(real_power1,".",1));
rollback;
alter table car_table modify column max_power varchar(100);

update car_table set max_power=(select max_power from dummy);
