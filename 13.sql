use sakila;
select * from payment;
select max(amount) from sakila.payment
where amount = (select max(amount) from sakila.payment where amount < 11.99);
 -- min
select min(amount) from sakila.payment
where amount = (select min(amount) from sakila.payment where amount > 0.00);


-- TCL = transection control language.

-- traction=> any locical task
-- DDL, DML, DCL  if we run aany of therse command then we call it TCL
-- if we run any DML task we stat the Transection 
-- or start transection 
-- we can end transection by commit, rollbak 
select @@autocommit;
use regex;
set @@autocommit =0;
-- commit is used when the transiction is set 0 it means that sql changes that are done here will not be showen every place when the transiction=0.
commit;

-- if we don't waht to commit some transection than we use rollbak
-- if a transaction is incomplete and we perform any DDL OR DML than we automaticatly commit the transection
rollback;
-- savepoint is a check point if we use savepoint then our work will be saved to that poin and doing that if we perform some more transections and want to rollback till the check poin then we use [rollback to (savepoint name);]
savepoint regex_insert;
rollback to regex_insert;
