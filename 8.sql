select * from product1;
select * from orders1;

-- DDL - data defination language
-- create, drop, truncate, alter
-- create 
drop table test;
create table test (id int, name varchar(20));
insert into test values (10, "mehul");
-- insert into test values("tushar") -- erroe 
insert into test(name) value("tushar");
insert into test values(20,'aman'); -- insert -- DML
select * from test;

-- update
update test set name='xyz' where id=10;
delete from test where id is null;
truncate test; -- DDL  becatue the table is deleted first and after then created again
create table company (id int);
insert into company values (10);
select * from company;
-- alter
alter table company
add column phone varchar(15); 
alter table company
add column employee_count3 int not null; 
alter table company
drop column employee_count3; 
