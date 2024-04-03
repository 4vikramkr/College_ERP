
use dkstudent
-- How to create primary key auto generated ID

create table employee1(
E_id int identity(1,1) primary key not null,
E_name char(20) not null,
E_salary money not null
)
insert into employee1 values ('Vikram',30000)

select * from employee1
------------------------------------------------------------
create table employee2(
E_id int identity(1,1) primary key not null,
E_name char(20) not null,
E_salary money not null,
E_age int check(E_age>18)
)
insert into employee2 
	values
	 ('Vikram',30000,19),
	 ('suraj',30000,20),
	 ('Ravi',30000,30),
	 ('Rrahul',40000,40)
-- How to crete  order by clause
--there are two types of clause ASC , DESC
SELECT * from employee2 order by E_name asc
SELECT * from employee2 order by E_name desc
select * from employee2

--------------------------------------------------------
--How to create upper and lower function()
select upper(E_name) as 'Emp name'
from employee2

select LOWER(E_name) as 'emp-name'
from employee2

--------------------------------------------------------------
-- How to use Top clause
select top 3 * from employee2

----------------------------------
--How to use where clause
select * from employee2
where E_id=4

---------------------------------
-- if you want to see specific attribute 
select E_id , E_name,E_age from employee2
-------------------------------------------

--How to use LIKE keyword-- string pattern
select * from employee2 where E_name like '%m'
select * from employee2 where E_name like 's%'
select * from employee2 where E_name like 'v%m'
select * from employee2 where E_name like '_u%'  --second letter is a
select * from employee2 where E_name like '__m%' --third letter id a 
select * from employee2 where E_name like '[a-z]%'
------------------------------------------------------------------------------
--How to use IN and NOT IN
select * from employee2 
where E_name in ('vikram','suraj')

select * from employee2 
where E_name not in ('vikram','suraj')

----------------------------------------------
-- How to use Agrigate function
-- Agrigate function summarise the value column format (AVG, SUM, MAX,MIN,COUNT)
select max(E_salary) as 'Maxium Salary'
from employee2

select min(E_salary) as 'min Salary'
from employee2

select sum(E_salary) as 'sum of Salary'
from employee2

select avg(E_salary) as 'average Salary'
from employee2

select count(E_salary) as 'number of emp'
from employee2

select* from employee2
where E_salary=max(E_salary)

-----------------------------------------------
--How to use operator
--How to use Range operators
-- It work only numeric value attribute
-- There are two types of range opertor 1-Between 2- NOT Between

select * from employee2
where E_salary between 10000 and 30000 

select * from employee2
where E_age between 20 and 20

--------------------------------------------
--Relational operator
select * from employee2
where E_age >= 20000 and E_salary<=30000 

--How to create schema in sqql
--schema is one type of container which store database objects
-- In database by defult schema is (DBO.Epm) in this table name DBO is schema name and emp is table name
--DBO standss for database objects, we can create our own schema name in database.

--How to create schema
------------------------------------------------------
create schema vk
create table vk.costomer(id int primary key identity(1,1),name varchar(20))


-------------------------------------------------------------------
--The inner query returns the average vacation hours of all the employees who are titled as Marketing Assistant
use AdventureWorks
select EmployeeId from HumanResources.Employee
where VacationHours>(select AVG(VacationHours) from HumanResources.Employee
where Title='Marketing Assistant')

------------------------------------------------------------------------------------------------------------------
--How to create Joins
create database joins
use joins

create table orders
(order_id int primary key,
customer_Id int not null,
order_date date
)
drop database joins
use AdventureWorks

insert into orders values(1001,1,'1-jan-2024'),
(1002,2,'2-jan-2024'),
(1003,3,'3-jan-2024'),
(1004,4,'4-jan-2024')
select * from orders
--------------------------------------------------------------
--create second table
create table costomers
(
Costomer_Id int primary key,
Costomer_Name varchar(20),
Contact_Person varchar(30),
city varchar(20)
)

insert into costomers  values(1,'vikram','Harse','USA'),
(2,'suraj','Ravi','Noida'),
(3,'Ravi','suraj','Delhi')
select * from orders
select * from costomers
--How to create inner join

select orders.order_id,costomers.Costomer_Id,costomers.Costomer_Name,costomers.city
from orders 
inner join costomers
on 
orders.customer_Id=costomers.Costomer_Id

