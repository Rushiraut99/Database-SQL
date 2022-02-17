create database projectJoin


-- Step 1
create table company
(
Emp_id int,
Names nvarchar(50),
Age int,
Addres nvarchar(50),
Salary numeric(8,2),
Join_date date
);

-- Step 2
insert into company values(1,'FAUL',32,'CALIFORNIA',20000.00,'2001-07-13')
insert into company values(3,'ALLEN',23,'NORWAY',20000.00,'')
insert into company values(4,'DAVID',25,'CALIFORNIA',65000.00,'2001-07-13')
insert into company values(5,'MARK',27,'RICHMOND',35000.00,'2001-07-13')
insert into company values(2,'TEDDY',25,'LOS VEGAS',0.00,'2013-09-01')

select * from company

-- Step 3
create table Dept
(
id int,
dept character varying(20),
emp_id int
);

-- Step 4

insert into Dept values(1,'IT BILLIG', 1)
insert into Dept values(2,'ENGINEERING', 2)
insert into Dept values(3,'FINANCE', 41)

select * from Dept

-- 17 Sol
select Emp_id, Names, Age, Salary from company where Emp_id =2;

-- 18 Sol
create proc dbo.Pro
@coll1 int = null
as
select Emp_id, Names, Age, Salary from company
where Emp_id = @coll1
select id,  dept,emp_id from Dept
where emp_id = @coll1
go

exec dbo.Pro @coll1 = 2

-- 19 Sol

select Emp_id, Names, Age,Salary from company 
select dept,dept from Dept

