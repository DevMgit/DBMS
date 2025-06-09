DECLARE
n int;
i int;
begin
    n:=:enter_n_value;
    i:=1;
    while(i<=10) loop
        dbms_output.put_line(n || '*' || i || '=' || (n*i));
        i:=i+1;
    end loop;
end;