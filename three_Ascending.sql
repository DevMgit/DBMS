DECLARE
    a INT;
    b INT;
    c INT;
BEGIN
    a :=:enter_a_value;
    b :=:enter_b_value;
    c :=:enter_c_value;

    IF (a <= b AND a <= c) THEN
        dbms_output.put_line(a);
        IF (b <= c) THEN
            dbms_output.put_line(' ' || b);
            dbms_output.put_line(' ' || c);
        ELSE
            dbms_output.put_line(' ' || c);
            dbms_output.put_line(' ' || b);
        END IF;
    ELSIF (b <= a AND b <= c) THEN
        dbms_output.put_line(b);
        IF (a <= c) THEN
            dbms_output.put_line(' ' || a);
            dbms_output.put_line(' ' || c);
        ELSE
            dbms_output.put_line(' ' || c);
            dbms_output.put_line(' ' || a);
        END IF;
    ELSE
        dbms_output.put_line(c);
        IF (a <= b) THEN
            dbms_output.put_line(' ' || a);
            dbms_output.put_line(' ' || b);
        ELSE
            dbms_output.put_line(' ' || b);
            dbms_output.put_line(' ' || a);
        END IF;
    END IF;
END;