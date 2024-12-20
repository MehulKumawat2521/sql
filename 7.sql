use sakila;
select * from actor;
select * from film_actor;

-- Q get the actor id , the full name of a actor, the flim id, the last update column from these two tables

select f.actor_id, concat(a.first_name ,' ', a.last_name),  f.film_id, f.last_update from film_actor as f join actor as a;


use regex;
create table employee(eid int, ename varchar(20),
manager_id int);
insert into employee values (10, "aman", null),
(20,"akshay", 30 ), (30,"naina", 10), (40,"abhishake",30);
select * from employee;

select emp.eid, emp.ename, emp.manager_id, mgr.eid, mgr.ename from employee as emp
join employee as mgr
where emp.manager_id = mgr.eid;

select * from orders;
select * from product;

select * from orders natural join product;

-- FOREIGN KEY

use regex;
drop table product1;

create table product1(pid int primary key, pname varchar(20), price int);
insert into product1 
values
(10,"tv",100),
(20,"mobile",200),
(30,"gyser",4000),
(40,"yash",5000);

create table orders1(oid int, city varchar(20), 
product_id int,
foreign key (product_id) references product1(pid));
insert into orders1 
values
(1991,"jaipur",10),
(1992,"goa",20),
(1993,"uk",30),
(1994,"shimla",40);
