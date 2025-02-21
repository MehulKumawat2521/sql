use sakila;
create database test;
use test;

create table product(pid int,name varchar(20), price int);
insert into product values(10,'tv',100),(20,'apple',200),
    (30,'mobile',300),(40,'shoe',1500);

select * from product;

create table orders(oid varchar(20), city varchar(20),
					product_id int);
insert into orders values('A1012','Jaipur',10),
   ('B21012','Goa',20), ('C3012','Japan',30),('D4012','uK',60);
select * from orders;
-- cross join is when all the row of first table match with all the rows of second table
-- cross join is also caled cartision join and the formula is = m x n

select p.pid, p.name, p.price, o.city
  from product as p join orders as o
    where p.pid = o.product_id;

-- inner join

select p.pid, p.name, p.price, o.city
  from product as p inner join orders as o
    on p.pid = o.product_id;
-- we can use both where or on

-- left join
    
 select p.pid, p.name, p.price, o.city
  from product as p left join orders as o
    on p.pid = o.product_id;  
    
-- right join

select p.pid, p.name, p.price, o.city
  from product as p right join orders as o
    on p.pid = o.product_id;
-- equi join - in this we use '=' with where  and use join key word 
-- non equi join -  in this we can use anything with where like '<', '>', etc and we do not use join key word.

select pid, name, price, city
  from product, orders 
    where pid = product_id;    
    
    
insert into orders values('E2132', 'JK',10),('F213', 'MH',30);
select p.pid, p.name,p.price,o.oid,o.city
from product as p right join orders as o
on p.pid=o.product_id;

 -- natural join -  works as a cross join when there is no same column in both the table 
 --              -   works as a inner join if there is a same column name  in the tables
 --              - if there is more than one column that has the same name in both the tables
 --                then its check if the values are same then it works as a inner join and
 --                 if the values are diffrent then it will not show any result
 select pid, name, price, city
 from product as natural join 
 
    