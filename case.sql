DECLARE
grade char(1);
begin
    grade:=:enter_grade_in_caps;
    case grade
        when 'A' then dbms_output.put_line('OUTSTANDING');
        when 'B' then dbms_output.put_line('Excellent');
        when 'C' then dbms_output.put_line('VERY GOOD');
        when 'D' then dbms_output.put_line('GOOD');
        when 'F' then dbms_output.put_line('Fail');
        else
         dbms_output.put_line('Invalid grade');
    end case;
    end;