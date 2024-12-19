select first_name, 
if(first_name='NICK',0,1) 
from actor;

select first_name, 
if(first_name='NICK',0,if(first_name="ED",2,"not value")) 
from actor;

select first_name,
case
	when first_name='NICK' then 0
    when first_name='ED' then 1
    else 'no value'
end as "new"
from actor;

-- get the payment id , customer id , amount ,month of payment date and quater of payment date with the folloing incriment in the amount 
-- if amount> 2$ then increese 10% amount
-- if amount> 5$ then 25%
-- > 8$ then 50%
-- else 5%

 




-- what is the order of execution in sql
-- primary , super , candiate, forigen
-- types of relationshipe
-- what are corelated subquries


use regex;
create table product(pid int, pname varchar(20), price int);
insert into product 
values
(10,"tv",100),
(20,"mobile",200),
(30,"gyser",4000),
(40,"yash",5000);
select * from product;
create table orders(oid int, city varchar(20), product_id int);
insert into orders 
values
(1991,"jaipur",10),
(1992,"goa",20),
(1993,"uk",30),
(1994,"shimla",40),
("1995","kerala",80);
insert into orders 
values
(1996,"Delhi",10);
select * from product;
select * from orders;

-- cross join or cartition join are (n*m) where ever element of first table joins with the second table's every element.
select o.oid, o.city, o.product_id ,p.pname, p.price
from orders as o join product as p; 

select o.oid, o.city, o.product_id ,p.pname, p.price
from orders as o join product as p
where o.product_id = p.pid ; 
  -- or
select o.oid, o.city, o.product_id ,p.pname, p.price
from orders as o inner join product as p
on o.product_id = p.pid ; 
