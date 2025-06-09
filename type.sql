DECLARE
   eno emp_46.eid%type;
   ename emp_46.ename%type;
   ejob emp_46.job%type;
   emgr emp_46.mgr%type;
   ehdate emp_46.hdate%type;
   esal emp_46.sal%type;
   ecomm emp_46.comm%type;
   edid emp_46.did%type;
BEGIN
    eno:=:enter_emp_no;
    select  eid,ename,job,mgr,hdate,sal,comm,did  into eno,ename,ejob,emgr,ehdate,esal,ecomm,edid from emp_46 where eid=eno;
    dbms_output.put_line(ename);
	-- do same for all the remaining once like eid,job etc
END;