show databases;
use sakila;
show tables;
describe actor;
select * from actor;
select actor_id, first_name, actor_id from actor;
select * from actor
 where actor_id =2;
select * from actor 
 where actor_id between 1 and 5;
select * from actor 
 where actor_id in (2,5,500);
 
-- get the actor id firt name is nic or ed
select * from actor 
  where first_name in ('Nick', 'Ed');

-- like operator => pattern dhunda
-- wildcard charactor => % => zero or more character
-- _ => only one character

SELECT 
    *
FROM
    actor
WHERE
    first_name LIKE 'E%';
    
Select * from actor 
  where first_name like '_a%';
  
-- Q get those name whose first na,e has 4 char
-- Q last 3 word i]
--  e in middle
-- get those user ehaich have mimum 4 letter and last 3rd letter should be r 
--  ee in name
-- 2 nd letter h and 2nd last letter z

Select * from actor 
  where first_name like '____';
  
Select * from actor 
  where first_name like '%i__';

  Select * from actor 
  where first_name like '_%E%_';

Select * from actor 
  where first_name like '%_r__';
  
Select * from actor 
  where first_name like '_%ee%_';
  
Select * from actor 
  where first_name like '_h%z_';
  
--  Sql type of language
--  dbms vs RDBMS
-- ABOUT  dbms and its type
-- string functions