use employee;
create table employees(id int primary key auto_increment,
ename varchar(20) not null,department varchar(20) not null ,
salary decimal(10,2) not null);

-- add column  emil to employees table
alter table employees add column  email varchar(30);

-- rename column department to dept
alter table employees rename column department to dept;

-- add column gender varchar(10) after dept colomn
alter table employees add column gender varchar(10) after dept;

-- modify column gender data type to char(1)
alter table employees modify gender char(1);

-- rename table name employees to emp
rename table employees to emp;

-- insert 3 records of data with in emp table 
insert into emp values( 101,"mohan","dev","M",100000,"mohan@gmail.com");
insert into emp values(102,"murali","Tester","M",50000,"murali@gmail.com");
insert into emp values(105 ,"Prabha","HR","F",60000,"prabha@gmail.com"),(104,"deepu","manager","F",80000,"deepu@gmail.com");
insert into emp(ename,dept,salary,email,gender) values("Teja","HR",75000,"teja@gmail.com","F");

-- As bonus insrease every employee salary by 20%
set sql_safe_updates=false;
update emp set salary = salary +salary*(20/100);

-- delete all employees whose salary less than 70000
delete from emp where salary<70000;

-- print or display all the employees from emp table
select *from emp;

-- find the highest salaried employee
select *from emp order by salary desc limit 1;

-- find second lowest salaried employee
select *from emp order by salary limit 1 offset 1;

-- WAQ to print no of employees based on gender 
select gender, count(gender) as no_of_people  from emp
group by gender;

-- find the avg salary of employees
select  round(avg(salary),2) from emp ;

-- display employees whose salary is grater than avg employe salary
select* from emp 
where salary>(select round(avg(salary),2) from emp) ;

-- display employees who are not from hr dept but earns more than the avgsalary of hr
select *from emp 
where salary >(select avg(salary) from emp 
where dept="hr" group by dept) and dept != "HR";


select avg(salary) from emp 
where dept="hr" group by dept;
