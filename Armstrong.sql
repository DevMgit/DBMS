DECLARE
    n NUMBER;
    temp NUMBER;
    sum NUMBER;
    rem NUMBER;
    num_digits NUMBER;
BEGIN
    n:=:enter_number;
    sum:=0;
    temp := n;
    num_digits := LENGTH(TO_CHAR(n));
    WHILE temp > 0 LOOP
        rem := MOD(temp, 10);
        sum := sum + POWER(rem, num_digits);
        temp := FLOOR(temp / 10);
    END LOOP;
    IF sum = n THEN
        dbms_output.put_line(n || ' is an Armstrong number.');
    ELSE
        dbms_output.put_line(n || ' is NOT an Armstrong number.');
    END IF;
END