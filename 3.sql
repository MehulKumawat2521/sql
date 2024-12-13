-- Q1 how coustumer has been deald by stafe
select  staff_id,count(customer_id) from payment group by staff_id;
-- Q2 find out the total no. payments,total amount spend,and total no. of coustomer serverd in each month.
select month(payment_date),count(amount), sum(amount) from payment group by month(payment_date);
-- where clause can only be used with group by when the column is peresent in the main table.alter like(customer_id, amount)
select month(payment_date),count(amount), sum(amount) from payment group by month(payment_date)  having count(amount)> 2000;
-- insted of where clause use having clause when the column is created by you like (count,sum,max,min).
select *  from address;
select count(address_id) from address;
select count(address2)  from address;
-- Q3 get the each distic name , the total district present and the sum of city if for each district
select district, count(district), sum(city_id) from address group by district;
-- order by
 select customer_id ,sum(amount) as "total" from payment
 group by customer_id order by totalAmount desc;
select amount from payment where payment_id=3;
select * from payment 
where amount=(select amount from payment where payment_id=3);
-- get he payment id ,staff id and rent, where the rent_id>the rental of payment_id =4
select payment_id, staff_id, rental_id from payment 
where rental_id>(select rental_id from payment where payment_id=4);
-- get the payment_id ,amount,the 10% incriment in amount for those payment where the month of
-- paymnet date = the month of payment_id=5
select payment_id, amount*0.1 from payment 
where month(payment_date)=(select month(payment_date) from payment where payment_id =5); 
-- get the custorm_id and the total of no. of payments done by each csudtomer only for
-- those whoes total no. of payment should be greater than the total no of payment done by the customer id =2
select customer_id, count(amount) from payment 
group by customer_id
having count(amount)>(select count(amount) from payment where customer_id=2);