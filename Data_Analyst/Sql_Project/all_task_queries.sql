use sql_tops;
-- 1)Select unique job from EMP table

select distinct job from emp;

-- 2)List the details of the emps in asc order of the Dptnos and desc of Jobs
select * from emp
order by  Deptno asc,job desc;

-- 3)Display all the unique job groups in the descending order

select distinct job from emp order by job desc;

-- 4)List the emps who joined before 1981
select * from emp 
where Year(Hiredate) < 1981; 

-- .5) List the Empno, Ename, Sal, Daily sal of all emps in the asc order of 
-- Annsal
 select Empno,Ename,Sal,cast(Sal/30  as decimal(10,2)) as Daily_sal,Sal*12 as Annsal from emp
 order by Annsal ASC;

-- 6)List the Empno, Ename, Sal, Exp of all emps working for Mgr 7369
select Empno,Ename,Sal,(Year(curdate()) - Year(Hiredate)) as Experience_Years from emp
where Mgr=7369;

-- 7)Display all the details of the emps who’s Comm. Is more than their Sal
select * from emp where Comm > sal;

-- 8. List the emps who are either ‘CLERK’ or ‘ANALYST’ in the Desc order.
select * from emp where job = 'CLERK' or job='ANALYST';

-- 9. List the emps Who Annual sal ranging from 22000 and 45000
select *,Sal*12 as Annual_Sale from emp
where (Sal*12) Between 22000 and 45000;

-- 10). List the Enames those are starting with ‘S’ and with five characters.
Select Ename from emp
where Ename like 'S____%';

-- 11)List the emps whose Empno not starting with digit78
select * from emp where Empno not like '78%';

-- 12. List all the Clerks of Deptno 20
select * from emp 
where Deptno =20 and job='CLERK';

--- -- -13) List the Emps who are senior to their own MGRS


select emp.Empno,emp.Ename,emp.Mgr,emp.Hiredate as HireDate_Emp,Manager.Mgr,Manager.Ename as manager_name,Manager.Hiredate as Hiredate_manager from emp

join emp as Manager 
on emp.Empno=Manager.Mgr
where emp.Hiredate < Manager.Hiredate;


-- 14. List the Emps of Deptno 20 who’s Jobs are same as Deptno10.

Select * from emp
where Deptno=20 And  job in (Select  Distinct job  from emp where Deptno=10);

-- 15. List the Emps who’s Sal is same as FORD or SMITH in desc order of Sal.

select * from emp where Sal in  (select Sal from emp where Ename in ('SMITH','FORD'))
order by Sal desc;

-- 16. List the emps whose jobs same as SMITH or ALLEN.

select * from emp where job in (select job from emp where Ename in ('SMITH','ALLEN'));

-- 17)Any jobs of deptno 10 those that are not found in deptno 20
select distinct job,Deptno from emp 
where Deptno=10 And job not in (select job from emp where  Deptno=20);

-- 18)Find the highest sal of EMP table.
select Max(Sal) as Highest_Sal from emp;

-- 19)Find details of highest paid employee.
select * from emp where Sal=(Select Max(Sal) from emp);


-- 20) Find the total salary given to MGR

Select Sum(sal) as Total_sal from emp
where job='MANAGER';

-- 21). List the emps whose names contains ‘A'
select Ename from emp
where Ename like '%A%';

 -- 22)Find all the emps who earn the minimum Salary for each job wise in
-- -- -- ascending order


SELECT e.Empno, e.Ename, e.Job, e.Sal
FROM emp e
JOIN (
    SELECT Job, MIN(Sal) AS MinSalary
    FROM emp
    GROUP BY Job
) min_sal ON e.Job = min_sal.Job AND e.Sal = min_sal.MinSalary
ORDER BY e.Job ASC, e.Sal ASC;


-- 23. List the emps whose sal greater than Blake’s sal.

select * from emp
where Sal > (Select Sal from emp where Ename ='Blake');

-- 24)Create view v1 to select ename, job, dname, loc whose deptno are
-- same
create view V1 AS
select E.Ename,E.job,E.Deptno,D.Dname,D.Loc from emp E
join dept D
on  E.Deptno=D.Deptno; 
 
-- 25. Create a procedure with dno as input parameter to fetch ename and
-- dname
Delimiter //
 CREATE  PROCEDURE `Ename`(in Dno int)
BEGIN
Select ename,Dname from emp
join dept on emp.Empno=dept.Deptno
where emp.Deptno=Dno;
END //
Delimiter ;
 
-- 26)Add column Pin with bigint data type in table student
Alter table student add column Pin bigint ;

-- 27. Modify the student table to change the sname length from 14 to 40.
alter table student  modify column Sname Varchar(40);


-- Create trigger to insert data in emp_log table whenever any update of sal 
-- in EMP table. You can set action as ‘New Salary’.

delimiter //
create trigger New_salary 
after update on emp
for each row 
Begin
if old.Sal <> New.Sal then
insert into emp_log(Emp_id,Log_Date,New_salary,Action) values(old.Empno,Now(),new.Sal,'New_Salary');
End if ; 

End //
delimiter ;









