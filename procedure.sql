
-- procedure function
CREATE OR REPLACE PROCEDURE update_data(
    eno emp_46.eid%TYPE,
    inc NUMBER
) AS
BEGIN
    UPDATE emp_46 SET sal = sal + inc WHERE eid = eno;
    COMMIT;
END;

DECLARE
    eno emp_46.eid%type;
    inc NUMBER;
BEGIN
    eno := :emp_id;    
    inc := :inc_value; 
    update_data(eno, inc);
END;