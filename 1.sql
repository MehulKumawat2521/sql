create database shik;
show databases;
drop database shik;
use sakila;
show tables;
select * from actor;
select first_name, substr(first_name,2,3) from actor;
select first_name, instr(first_name,'l') from actor;
select first_name, locate(first_name,'l') from actor;
select first_name, char_length(first_name,'l') from actor;
select trim(" hello ") from dual;
select trim(trailing ' ' from " hello ") from dual;
select trim(trailing 'l' from " hello xlllll") from dual;
select first_name,lpad(first_name,6,"#") from actor;
select first_name,rpad(first_name,6,"#") from actor;
select round(12.4) from dual;
select round(12.453,1) from dual;
select round(36.453,-1) from dual;
select truncate(12.453,2) from dual;
select mod(2,12) from dual;
select floor(10.99999) ceil(10.001) from dual;