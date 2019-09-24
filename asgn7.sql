

select * from Category;


create [OR REPLACE] procedure procustome is
begin
cursor c;
cu_id number;
total number(20);
class varchar2(20);
name varchar2(20);

select total_purchase into total,name from Customer31252 where custid =1;
if total>2000 and total<5000 then
elsif total>5000 and total<10000 then
set class='Gold';
else set class='Platinum';
end if;
insert into Category values(cu_id,name,class); 
end;



