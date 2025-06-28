declare
v_pck sys_refcursor;
v employees%rowtype;
begin
get_emp_details(v_pck);
loop
fetch v_pck into v;
exit when v_pck%notfound;
dbms_output.put_line(v.emp_id||' '||v.first_name||' '||v.salary||' '||v.dept_id);
end loop;
end;
/
