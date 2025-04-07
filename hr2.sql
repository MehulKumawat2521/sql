--  exception : unwanted condition 
-- terminated
-- expection error
-- system define exception
-- user defined exception
set serveroutput on;
declare
  c_name employees.first_name%type;
  tushar_exception EXCEPTION;
begin
   
   select first_name into c_name from employees where employee_id=506;
   if c_name='Neena' then
      dbms_output.put_line('rows are found' || ' ' || c_name );
   else
      raise tushar_exception;
   end if;
exception
     when no_data_found then 
       dbms_output.put_line('No row are found');
    

end;