-- dcl
-- authentication -> make sure that a user can access the MySQL server
-- authrization -> making sure that a user can intract with object in the database
-- user = username (password)
create user test identified by 'test123';

select user from mysql.user;
select * from mysql.user;

-- data dic. is when mysql store its data in the table 
-- grant privilages
GRANT ALL privileges ON  sakila.* to test;
select * from mysql.user where user = 'test';
--  show privileges
show grants for test;

-- revoke privileges

revoke all privileges on sakila.* from test;

-- grant select privilege
grant select on sakila.* to test;

-- change password 
alter user 'test' identified by 'regex';

grant select (staff_id, first_name) on sakila.staff to test;

use sakila;
select * from staff;
-- lock all privileges
alter user 'test' account lock;
-- unlock
alter user 'test' account unlock; 

-- create role(group)
create role sales2;
grant select on sakila.* to sales2;


create user 'isha' identified by 'isha';

show grants for isha;

grant sales2 to isha;

set default role all to isha;

