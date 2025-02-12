create database Sql_tops;
use Sql_tops;

create table Emp(Empno int Primary key default 0, Ename varchar(10) default null,
job varchar(9) default null,Mgr int default null,Hiredate date default null,
Sal decimal(7,2) default NULL,
Comm decimal(7,2) default NULL,
Deptno int default null) ;

create table DEPT(Deptno int primary key default 0,
Dname varchar(14) Default null,Loc varchar(13) default Null);

Alter table Emp add constraint foreign key(Deptno) references Dept(Deptno);

Create table Student(Rno int Primary key default 0,Sname varchar(14) Default Null,
City varchar(20) Default Null,State varchar(20) Default Null);


Create table EMP_LOG(Emp_id int  default Null,Log_Date date Default Null,
New_salary int Default Null, Action varchar(20) Default Null);