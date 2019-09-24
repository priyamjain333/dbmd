
//create table Student52111(Roll number,Name varchar2(10),Dateof DATE,branch varchar2(10),percent number,Status varchar2(10),primary key(Roll));
//insert into Student52111 values(1,'Jon','01-aug-2017','cs',98,'passout');
//insert into Student52111 values(2,'Jonny','01-jan-2017','it',98,'passout');
//insert into Student52111 values(3,'Janardan','05-aug-2017','entc',98,'passout');
select * from Student52111;
create trigger triggerp before update on Student31252
create table almuni52111(Roll number,Name varchar2(10),Dateof DATE,branch varchar2(10),percent number,Status varchar2(10),primary key(Roll));

for each row 
begin 
insert into almuni52111 values(old.Roll,old.Name,old.DAteof,old.branch,old.percent,old.status);
dbms_output.put_line("query executed");
end; 

