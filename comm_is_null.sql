DECLARE
   eno emp_46.eid%type;
   ecomm emp_46.comm%type;
BEGIN
   eno := :enter_emp_no;
   SELECT eid, comm INTO eno, ecomm FROM emp_46  WHERE eid = eno;
    if ecomm = Null THEN
        dbms_output.put_line('For '|| eno || ' the comm is null'); 
    else
        dbms_output.put_line('For '|| eno || ' the comm is not null'); 
    end if;
END;
