
DECLARE 
	cursor mycursor is select * from SoldEmp; 
	idc integer; 
	countc integer; 
	namec varchar2(50); 
BEGIN 
open mycursor; 
dbms_output.put_line('Explicit cursor.'); 
loop 
	fetch mycursor into idc,namec; 
	if mycursor%NOTFOUND then 
	dbms_output.put_line('No data found.Rows of old table completed'); 
	EXIT; 
	elsif mycursor%FOUND then 
	dbms_output.put_line('ID is : '||idc || '   NAME : '||namec); 
	end if; 
	select count(*) into countc from SnewEmp where id=idc and name=namec; 
	if countc=0 then 
		insert into SnewEmp values(idc,namec); 
		dbms_output.put_line('inserted into new table'); 
	else 
		dbms_output.put_line('data already present in new table'); 
	end if;	 
end loop; 

close mycursor; 
end; 
/ 

delete from SnewEmp where id in (11,4,3,1); 
DECLARE 
	cursor mycursor(idpc number:=&id ) is select * from SoldEmp where id=idpc; 
	idc integer; 
	countc integer; 
	namec varchar2(50); 
BEGIN 
open mycursor; 
dbms_output.put_line('Parameterized cursor.'); 
	fetch mycursor into idc,namec; 
	if mycursor%NOTFOUND then 
	dbms_output.put_line('No data found.Rows of old table completed'); 
	elsif mycursor%FOUND then 
	dbms_output.put_line('ID is : '||idc || '   NAME : '||namec); 
	end if; 
	select count(*) into countc from SnewEmp where id=idc and name=namec; 
	if countc=0 then 
		insert into SnewEmp values(idc,namec); 
		dbms_output.put_line('inserted into new table'); 
	else 
		dbms_output.put_line('data already present in new table'); 
	end if;	 
close mycursor; 
end; 
/ 
delete from SnewEmp where id in (5,4,3,2,1); 
DECLARE 	 
	cursor mycursor is select * from SoldEmp; 
	idc integer; 
	countc integer; 
	namec varchar2(50); 
BEGIN 
dbms_output.put_line('Implicit and For Loop.'); 
	for i in mycursor 
loop 
	idc:=i.id; 
	namec:=i.name; 
	if sql%NOTFOUND then 
	dbms_output.put_line('No data found.Rows of old table completed'); 
	EXIT; 
	elsif sql%FOUND then 
	dbms_output.put_line('ID is : '||idc || '   NAME : '||namec); 
	end if; 
	select count(*) into countc from SnewEmp where id=idc and name=namec; 
	if countc=0 then 
		insert into SnewEmp values(idc,namec); 
		dbms_output.put_line('inserted into new table'); 
	else 
		dbms_output.put_line('data already present in new table'); 
	end if;	 
end loop; 
end; 

