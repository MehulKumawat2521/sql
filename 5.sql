create database regex;
use regex;
create table xyz(id int);
create table emp(emp_id int unsigned);
insert into emp value(2147483648);
insert into xyz value(-20);
select * from xyz;
select * from emp;
 
create table abc(salary double(5,2));
insert into abc value(20.1);
insert into abc value(210.342354541);
select * from abc;

create table test_bool(i BOOL);
INSERT INTO test_bool value(true),(false);
select * from test_bool;



create table ep2(name1 char(4));
insert into ep2 value("zz");
insert into ep2 value("zz  ");
select * from ep2;
select name1, length(name1) from ep2;

 
create table ep_var(name1 varchar(4));
insert into ep_var value("zz");
insert into ep_var value("zz      ");
select * from ep_var;
select name1, length(name1) from ep_var;


create table e1(dob date);
insert into e1 value ('2024-05-02');
select * from e1;

create table e1(dob date);
insert into e1 value ('2024-05-02');
select * from e1;