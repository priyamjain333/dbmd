DECLARE  
   total_rows number(2); 
BEGIN 
   UPDATE old_emp_31250 
   SET salary = salary + 500; 
   IF sql%notfound THEN 
      dbms_output.put_line('no Employee selected'); 
   ELSIF sql%found THEN 
      total_rows := sql%rowcount;
      dbms_output.put_line( total_rows || ' old employees selected '); 
   END IF;  
END; 
/     
