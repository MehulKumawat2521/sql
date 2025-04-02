-- Q create a table crete a user name audit ,
-- 4 columns- date1(date), user1 (varchar), object1 (varchar), operation1 (varchar)
-- 1 trigger - name(user_aduit_trigger), trigger should be created after ddl on schema
-- then begin - insert values in user audit(sysdate), user name, object(sudio column- ora_dict_obj_name), operation(ora_sysevent)


create table user_audit (
    date1 date,
    user1 varchar2(100),
    object1 varchar2(100),
    operation1 varchar2(50)
);


--
set SERVEROUTPUT on;

create or replace trigger user_audit_trigger
after ddl 
on schema
begin
    insert into user_audit (date1, user1, object1, operation1)
    values (sysdate, user, ora_dict_obj_name, ora_sysevent);
end;




