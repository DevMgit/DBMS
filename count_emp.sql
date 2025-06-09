-- function 
CREATE OR REPLACE FUNCTION totalemps
RETURN number IS
total number(2) := 0;
BEGIN
SELECT count(*) into total FROM emp_46;
RETURN total;
END;


-- main code

DECLARE
c number(2);
BEGIN
c := totalemps();
dbms_output.put_line('Total no. of emps: ' || c);
END;