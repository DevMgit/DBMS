
-- payable sal
create or replace function total_sal 
return number is
total_sal NUMBER :=0;
begin 
    select sum(sal) into total_sal from emp_46;
    return total_sal;
end;

-- main code
DECLARE
    sal NUMBER := 0;
BEGIN
    sal := total_sal;
    dbms_output.put_line('Total Salary: ' || sal);
END;
