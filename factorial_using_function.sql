
-- factoral function
create or replace function factorial(n number) 
return number is 
fact number := 1;
begin
    for i in 1..n loop
        fact:= fact*i;
    end loop;
    return fact;
end;


-- main code
DECLARE
    n number;
begin
    n:=:enter_numebr;
    dbms_output.put_line(FACTORIAL(n));
end;
