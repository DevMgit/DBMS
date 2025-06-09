DECLARE
   eno emp_46%rowtype;
BEGIN
    eno.eid:=:enter_emp_no;
    select * into eno from emp_46 where eid=eno.eid;
    dbms_output.put_line(eno.ename);
	-- do same for all the remaining once like eid,job etc
END;