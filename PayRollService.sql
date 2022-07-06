create database PayRollService;
show databases;
use payrollService;

create table employeePayroll (id int primary key auto_increment, name varchar(20), salary varchar(20),
startDate varchar(20));
desc employeePayroll;

insert into employeePayroll (name,salary,startDate) values ('Pavithra','300000','1-1-2022'), ('Bhooshan','40000','10-2-2022'), 
('Kotreh', '50000', '25-2-2022'), ('Udaya', '40000', '10-2-2022'); 
select *from employeePayroll;

select salary from employeePayroll where name = 'Rohit';
select salary from employeePayroll where name = 'Sarang';
select *from employeePayroll where startDate between cast('10-2-2022' as date) and date(now());

alter table employeePayroll add gender varchar(1);
update employeePayroll set gender = 'M' where name = 'Rohit' or name = 'sarang';
update employeePayroll set gender = 'F' where name = 'Krunali' or name = 'Deepika';

select min(salary) from employeePayroll;
select max(salary) from employeePayroll;
select avg(salary) from employeePayroll;
select count(*) from employeePayroll;
select sum(salary) from employeePayroll where gender = 'F' group by gender;
select sum(salary) from employeePayroll where gender = 'M' group by gender;