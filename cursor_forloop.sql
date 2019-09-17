DECLARE
  CURSOR E_cursor IS
    SELECT 
        empid, name,salary,dept
    FROM new_emp;
        
    
BEGIN
  FOR empid IN E_cursor
  LOOP
    dbms_output.put_line(empid.name || ': ' ||  empid.salary );
  END LOOP;
  
END;
