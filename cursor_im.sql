
DECLARE 
   c_empid old_emp_31252.empid%type; 
   c_name old_emp_31252.name%type; 
   c_sal old_emp_31252.salary%type;
   c_dep old_emp_31252.dept%type;  
   CURSOR c_employee is 
      SELECT empid, name, salary,dept FROM old_emp_31252; 
BEGIN 
   OPEN c_employee; 
   LOOP 
   FETCH c_employee into c_empid, c_name, c_sal,c_dep; 
      EXIT WHEN c_employee%notfound; 
      dbms_output.put_line(c_empid || ' ' || c_name || ' ' || c_sal||'  '||c_dep); 
   END LOOP; 
   CLOSE c_employee; 
END; 
/
