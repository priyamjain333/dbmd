
declare
cursor E_cursor(sid number) is select * from old_emp_31252 where empid =sid;

id1 number;

x number;
y number;

eid old_emp_31252.empid%type;
name old_emp_31252.name%type;
salary old_emp_31252.salary%type;
dep old_emp_31252.dept%type;
begin
dbms_output.put_line('enter_empid');
x:=&x;

open E_cursor(x);
loop
fetch E_cursor into eid,name,salary,dep;
if E_cursor%notfound then
exit;
end if;
select count(nempid) into id1 from new_emp_31252 where nempid=eid;
if id1=0 then
insert into new_emp_31252 values(eid,name,salary,dep);
     end if;
end loop;
close E_cursor;
end;

