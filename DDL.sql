create database project

--1 Sol
create table department
(
 Dept_id int primary key,
 D_name nvarchar(100) not null,
 Contact_no int unique
 );

 -- 2 Sol
 create table employee
(
 Emp_id int primary key,
 Dep_id int ,

 Emp_name nvarchar(100),
 Designation nvarchar(100),
 salary money,
);

--3  Sol
alter table department
add city nvarchar(50)

--4 Sol
alter table employee
alter column salary char(10);

--5 Sol
drop city from department
