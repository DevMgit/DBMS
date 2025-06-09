DECLARE
    n number; 
    f1 NUMBER;
    f2 NUMBER;
    f3 NUMBER;
BEGIN
    n:=:enter_n;
    f1:=0;
    f2:=1;
    dbms_output.put_line(f1);
    dbms_output.put_line(f2);
    LOOP
        f3 := f1 + f2;
        dbms_output.put_line(f3);
        f1 := f2;
        f2 := f3;
        EXIT WHEN (f3 >= n);
    END LOOP;
END;
