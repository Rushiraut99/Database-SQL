create database projectDML

create table employee
(
emp_id character(10),
dept_id character(10),
emp_name character varying(20),
desig character varying(20),
salary numeric,
contact_no character varying(20),
city character varying(20)
);

-- Insert values in the table

insert into employee values('emp-1','dep-1','S Ahamad','Sales Mgr', 50000,0110,'New Delhi')
insert into employee values('emp-2','dep-2','Anand','Senior Mgr', 40000,0111,'New Delhi')
insert into employee values('emp-3','dep-3','Aruna','Account Mgr', 45000,0112,'New Delhi')
insert into employee values('emp-4','dep-4','Alpesh','Accoutant', 35000,0113,'Banglore')
insert into employee values('emp-5','dep-5','Monica','Sales Mgr', 25000,0114,'Holida')
insert into employee values('emp-6','dep-6','Harish','Sales Man', 15000,0115,'Banglore')

select * from employee

-- 7 Sol
update employee set contact_no = 0116 where emp_id = 'emp-6' and city = 'Banglore';
select * from employee

-- 8 Sol
select emp_id, emp_name,desig from employee

-- 9 Sol
select * from employee where salary > 30000;

--10 Sol
select * from employee where salary  between 15000 and 30000;

-- 11 Sol
select * from employee where city = 'Banglore' or city = 'New Delhi';

--12 Sol
select * from employee where city != 'Banglore' and city != 'New Delhi';

-- 13 Sol
select * from employee where emp_name like 'A%';

--14 Sol
select  * from employee order by salary desc;

--15 Sol
select avg(salary) from employee 

--16 Sol
select dept_id , salary from employee where salary > 30000;