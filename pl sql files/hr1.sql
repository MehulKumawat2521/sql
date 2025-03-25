set serveroutput on;

declare 
   varl varchar(20) := 'hey';
   a int:= 10;
   b int:= 20;
   c int;
   d constant int := 19;
   
begin
  --  c:= a+b;
  dbms_output.put_line(varl || ' ' || c || ' ' || d);
  if(a>5) then 
    dbms_output.put_line('a value is grater than 5');
  elsif(a=10) then
    dbms_output.put_line('value is 10');
  else
     dbms_output.put_line('else part');
  end if;
  
  loop
     dbms_output.put_line(a);
     a := a+1;
     -- exit when a>14;
     --      or
     if(a = 15) then exit;
     end if;
  end loop;
  
  while(b <= 25) loop
     dbms_output.put_line(b);
     b := b+1;
     end loop;
  for c in 1..10 loop
     dbms_output.put_line(c);
  end loop;
end;