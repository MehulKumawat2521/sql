-- views :
-- the refrence of the table but not the data of the table
-- are used to make your complex query simple
-- enhance the security => row and column
 
 show databases;
 use regex;
 
show tables;
select * from employee;
 select * from orders;
 
 create view order_view
 as select oid as order_id, product_id from orders;
 
 select * from order_view;
 
 insert into order_view values (1998, 50);
 
create view actor_join3
as select actor.actor_id, film_actor.film_id , first_name, last_name  
from sakila.actor 
join sakila.film_actor 
on  actor.actor_id = film_actor.actor_id;

select * from actor_join3;

select * from actor;

select first_name from actor
where actor_id = min(actor_id); 

