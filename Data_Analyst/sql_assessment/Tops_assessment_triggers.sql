use try;
-- create a Trigger that will insert a record into the employee_audit table every time
-- a new employee is added to the employee’s table:
-- We have an employee’s table, and we want to create a stored procedure to add a
-- new employee and automatically log this action in an
-- employee_audit table. 
delimiter //
create trigger add_emp_audit
after insert on employees
for each row
begin
insert into employee_audit(employee_id,name,position,salary,hire_date) values(new.employee_id,new.name,new.position,new.salary,new.hire_date);
End //

