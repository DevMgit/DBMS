DECLARE
   eno emp_46.eid%type;
   ejob emp_46.job%type;
   esal emp_46.sal%type;
BEGIN
   eno := :enter_emp_no;

   SELECT eid, job, sal INTO eno, ejob, esal 
   FROM emp_46 
   WHERE eid = eno;

   IF ejob = 'Manager' THEN
       UPDATE emp_46 
       SET sal = sal * 0.2 + sal 
       WHERE eid = eno;

   ELSIF ejob = 'Salesman' THEN
       UPDATE emp_46 
       SET sal = sal * 0.15 + sal 
       WHERE eid = eno;

   ELSE
       UPDATE emp_46 
       SET sal = sal * 0.10 + sal 
       WHERE eid = eno;
   END IF;

   dbms_output.put_line(ejob || ' updated'); 
END;