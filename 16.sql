use sakila;
-- wrong method
select amount , sum(amount)
  from payment
    group by amount
      having amount!= 0.99;
-- right method
when condition then statement
-- order by 
-- alias
select amount , amount*10 as `select` -- `` if we write even something like select in it it will not be a problem
   from payment;
select * from payment 
  order by  amount desc,  rental_id desc;  
-- subquery
-- case statement
-- if
select amount,
  if(amount = 0.99,'correct','incorrect')
    from payment;
-- nested if
select amount,
  if(amount = 0.99,'correct',
	if(amount = 2.99,'yes','incorrect'))
	   from payment;
-- case syntax
--  select col,
--   case
--      when condition then statement
--        when condition then statement
--          else
--            end
--              from table;
select amount,
  case
     when amount = 0.99 then 'value is 0.99'
       when amount = 2.99 then 'yes'
         else amount
           end as new
  from payment;
-- Q = payment table if the count of payments done for each amount is greater than 10000 print 
--     we have greater than 10000 else 
-- Q =  if the amount is greater than 1$,3$,7$ print amount is greater than _$ else less than 1$
 
          
select amount , count(amount),
   case
     when count(amount ) >= 1000  then 'count is grater than 1000'
         else 'count is less than 1000'
           end as new
  from payment
    group by amount;

select amount,
   case
     when amount  >= 1 and amount <=3  then ' amount is grater than 1$'
        when amount  >= 3  and amount <=7 then ' amount is is grater than 3$'
           when amount  >= 7  then ' amount is  is grater than7$'
         else 'amount is less than 1$'
           end as new
  from payment
    group by amount;
-- subquery
select * from payment where 
amount = (select amount
           from payment where payment_id = 3);