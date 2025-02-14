use sakila;
select * from actor;
select * 
  from actor 
    where actor_id >2 and first_name ='JOHNNY';
select * 
  from actor 
    where actor_id >2 OR first_name ='JOHNNY';
SELECT *
   FROM actor
	 where (first_name = 'ED' or first_name = 'NICK')
        and actor_id > 2; 
-- functions
-- pre-defined function
-- string
select first_name, 
   lower(first_name) 
     from actor; 
select first_name, 
    upper(first_name) 
      from actor; 
select first_name, last_name,
   concat(first_name, '-', last_name) 
      from actor; 
select first_name, last_name,
   concat_ws('_',first_name, last_name, 'xyz')
	from actor;
select * 
  from actor
    where concat(first_name, last_name) = 'EDCHASE';
-- substring
select first_name,
   substr(first_name,-3),
     substr(first_name,1,3) 
       from actor;    
select first_name,
   instr(first_name,'E'),
      locate('E', first_name, 3)
     from actor;
select first_name,
   char_length(first_name)
       from actor;

select length('字'), 
    char_length('字') 
       from dual;
select first_name,
   lpad(first_name,5,'&')
     from actor;
select first_name,
   rpad(first_name,5,'&')
     from actor;
select '  hey  ',
   trim('  hey  ')
      from dual;
select 'zzzzhezzzz',
   trim(leading 'z' from 'zzzzhezzzz'),
     trim(trailing 'z' from 'zzzzhezzzz'),
       trim(both 'z' from 'zzzzhezzzz')
          from dual; 
select first_name,
   replace(first_name, 'E', 'X')
     from actor;