DECLARE
n int;
i number;
fact int;
begin
   n:=:enter_fact_number;
   fact:=1;
   for i in 1..n loop
        fact:=fact*i;
    end loop;
    dbms_output.put_line(fact);
end;