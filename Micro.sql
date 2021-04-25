--creating data base
create database micro 
--activating data base
use micro
--droping data base 
drop database micro
--creating table
create table customer_data(cust_id int,cust_name varchar(30),age int)
-- we seeing the table
 select * from customer_data
--seeing specific columm in table
select age from customer_data
-- inserting into the table
insert into customer_data values(102,'sam',30)
insert into customer_data values(103,'Ramu',32)
insert into customer_data values(104,'Raju',33)
insert into customer_data values(105,'raj',34)
insert into customer_data values(106,'rani',34)

-- where clause
select *from customer_data where cust_id=103

-- sorting of the table
select * from customer_data order by cust_name
select * from customer_data order by cust_name desc
select * from customer_data order by age
select * from customer_data order by age desc

--multiful where condition 

select * from customer_data where cust_id=103 and cust_name='ramu'

select * from customer_data where cust_id=103 or cust_name='rani'

select * from customer_data where not cust_id=103

-- Deleting the record from from table
delete from customer_data where cust_id=105

--function 
--//**Date, time and few advanced functions**//
Select CURRENT_TIMESTAMP
Select DAY ('2020-12-05')
Select GETDATE ()
Select GETUTCDATE ()
Select ISDATE ('2020-12-05')
Select MONTH ('2020-12-05')
Select SYSDATETIME ()
Select YEAR ('2020-12-05')
Select COALESCE (null,null,'chandra',null,'Besant')    --takes first non null value
Select CONVERT (float,26.85)       
Select SESSION_USER
Select SYSTEM_USER
Select USER_NAME ()

--Numeric functions

//**
ABS Returns the absolute value of a number**//

Select ABS(+18)

//**ACOS Returns the arc cosine of a number**//

Select Acos (0.5)

//**ASIN Returns the arc sine of a number**//

Select ASIN(0.5)

//**ATAN Returns the arc tangent of one or two numbers**//

Select ATAN(0.5)

//**AVG Returns the average value of an expression**//

Select AVG (age)from customer_data

--//**CEILING Returns the smallest integer value that is >= to a number**//

Select CEILING(26.10)


//**COS Returns the cosine of a number**//

Select Cos(90)


//**COT Returns the cotangent of a number**//

Select Cot(90)


//**COUNT Returns the number of records returned by a select query**//

Select Count(age) from customer_data

//**DEGREES Converts a value in radians to degrees**//

Select DEGREES(1)


//**EXP Returns e raised to the power of a specified number**//

Select EXP(1)

//**FLOOR Returns the largest integer value that is <= to a number**//

Select FLOOR(25.90)

//**LOG Returns the natural logarithm of a number, or the logarithm of a number to a specified base**//

Select Log(2)

//**LOG10 Returns the natural logarithm of a number to base 10**//

Select LOG10(10)


//**MAX Returns the maximum value in a set of values**//

Select Max(age)from customer_data


//**MIN Returns the minimum value in a set of values**//

Select Min (age)from customer_data

//**PI Returns the value of PI**//

Select PI()

//**POWER Returns the value of a number raised to the power of another number**//

Select POWER(2,3)

//**RADIANS Converts a degree value into radians**//

Select Radians(90)

//**RAND Returns a random number**//

Select Rand()

//**ROUND Rounds a number to a specified number of decimal places**//

Select ROUND(25.68,1)

//**SIGN Returns the sign of a number**//

Select sign (-9)


//**SIN Returns the sine of a number**//

Select sin (45)

//**SQRT Returns the square root of a number**//

Select sqrt (64)

--//**SUM Calculates the sum of a set of values**//

Select Sum (age) from customer_data

--//**TAN Returns the tangent of a number**//

Select TAN(90)

--string functions

SELECT CHAR (56)           --ascii code
SELECT CONCAT ('chandra','  ','mohan')
SELECT DATALENGTH ('chandra C')
SELECT LEFT('CHANDRA',2)
select LEN('CHANDRA MOHAN')
SELECT LOWER('SURESH')
SELECT LTRIM('   SURESH')
select REPLACE('SURESH','S','R')
SELECT REPLICATE('SURESH ',5)	
select REVERSE('SURESH')
SELECT RIGHT('SURESH',3)
SELECT RTRIM('SURESH   ')
SELECT SUBSTRING('SURESH',3,2)
select UNICODE('A')                  -- Reverse of Char
select UPPER('suresh unnikrishnan')
-- creating the table
create table customer_sale(customer_id int,sales float, profit float, product_id int)
select * from customer_sale
insert into customer_sale values(102,96.45,98.45,10)
insert into customer_sale values(103,96.87,99,11)
insert into customer_sale values(104,96,99.68,12)
insert into customer_sale values(106,96.27,99.87,13)
insert into customer_sale values(107,97.58,99.12,14)
--adding column table to the exitsing table
alter table customer_sale add product_name varchar(30)
--alter column datatype
alter table customer_sale alter column product_name varchar(30)
-- entering the value inside the table 
update customer_sale set product_name='pepsi' where product_id=10
update customer_sale set product_name='fanta' where product_id=11
update customer_sale set product_name='lemka' where product_id=12
update customer_sale set product_name='redbull' where product_id=13
update customer_sale set product_name='thump' where product_id=14

delete from customer_sale where customer_id=102
delete from customer_sale where customer_id=103
delete from customer_sale where customer_id=104
delete from customer_sale where customer_id=106
delete from customer_sale where customer_id=107


--removing the table
alter table customer_sale drop column product_name
--select * from parent table inner join child table on P.T.P.K=C.T.P.K

select * from customer_data inner join customer_sale on customer_data.cust_id=customer_sale.customer_id
select * from customer_data left join customer_sale on customer_data.cust_id=customer_sale.customer_id
select * from customer_data right join customer_sale on customer_data.cust_id=customer_sale.customer_id
select * from customer_data full outer join customer_sale on customer_data.cust_id=customer_sale.customer_id

--union join

create table customer_data_2(cust_id int,cust_name varchar(30),age int)
 select * from customer_data_2
 insert into customer_data_2 values(108,'chandu',24)
insert into customer_data_2 values(109,'mohan',28)
insert into customer_data_2 values(110,'balu',34)
insert into customer_data_2 values(111,'bavya',31)
insert into customer_data_2 values(112,'geetha',30)

select * from customer_data union  select * from customer_data_2
--joning three tables

create table customer_details(customer_id int,discount float)

 select * from customer_details

 insert into customer_details values(103,20.4)
 insert into customer_details values(104,21.4)
 insert into customer_details values(105,22.4)
 insert into customer_details values(106,23.4)
 insert into customer_details values(120,20.8)

 truncate table customer_details 

 -- merging of three tables
//** select * from parent table inner join child table 1 parent table.primary key= child table primary key
 inner join child table2 parent table.primary key=child table2 primary key**//

 select * from customer_sale
 select * from customer_data_2
 select * from customer_data
 select * from customer_details 

 select * from customer_data inner join  customer_sale on customer_data.cust_id=customer_sale.customer_id 
 inner join customer_details on customer_data.cust_id=customer_details.customer_id

 select * from customer_data full outer join  customer_sale on customer_data.cust_id=customer_sale.customer_id 
 full outer join customer_details on customer_data.cust_id=customer_details.customer_id

 -- union or appending join--

 select * from customer_data union select * from customer_data_2



 //**Working with duplicates**//
Create table Employees
(
ID int,
FirstName nvarchar(50),
LastName nvarchar(50),
Gender nvarchar(50),
Salary int
)
Select * from Employees


Insert into Employees values (1, 'Mark', 'Hastings', 'Male', 56000)
Insert into Employees values (1, 'Mark', 'Hastings', 'Male', 58000)
Insert into Employees values (1, 'Mark', 'Hastings', 'Male', 60000)
Insert into Employees values (2, 'Mary', 'Lambeth', 'Female', 28000)
Insert into Employees values (2, 'Mary', 'Lambeth', 'Female', 30000)
Insert into Employees values (3, 'Ben', 'Hoskins', 'Male', 65000)
Insert into Employees values (3, 'Ben', 'Hoskins', 'Male', 68000)
Insert into Employees values (3, 'Ben', 'Hoskins', 'Male', 70000)
Insert into Employees values (4, 'Shri', 'gowda', 'Male', 40000)

-- truncate table 
truncate table Employees
 -- drop table 
 drop table Employees

//**Dense rank**//
SELECT ID,
DENSE_RANK() OVER (ORDER BY ID DESC) AS DENSERANK FROM Employees

SELECT *,
DENSE_RANK() OVER (ORDER BY ID DESC) AS DENSERANK FROM Employees

select * Employees

-- type rank

SELECT *,
RANK() OVER (ORDER BY ID DESC) AS RANK FROM Employees

-- row number
SELECT *,
Row_Number() OVER (ORDER BY ID DESC) AS Rownumber FROM Employees


//** Condition to Dense Ranking**//

WITH RESULT AS
(SELECT *,DENSE_RANK() OVER (ORDER BY SALARY DESC) AS DENSERANK
FROM EMPLOYEES
)
SELECT TOP 2 SALARY
FROM RESULT
WHERE DENSERANK =2

//**Row number**//
SELECT SALARY,
ROW_NUMBER() OVER (ORDER BY SALARY DESC) AS ROWNUMBER FROM EMPLOYEES

//** Giving condition to Row number**//
WITH RESULT AS
(SELECT SALARY,ROW_NUMBER() OVER (ORDER BY SALARY DESC) AS ROWNUMBER
FROM EMPLOYEES
)
SELECT SALARY
FROM RESULT
WHERE ROWNUMBER = 2
//** Top Command**//
SELECT TOP 1 Sales
FROM
(SELECT DISTINCT TOP 4 Sales FROM tb1 ORDER BY Sales DESC
) RESULT
ORDER BY Sales desc
select * from tb1
//** Case statement**//
Create table Employees_1(Id int primary key identity,Name nvarchar(10),GenderId int)

Insert into Employees_1 values ('Mark', 1)
Insert into Employees_1 values ('John', 1)
Insert into Employees_1 values ('Amy', 2)
Insert into Employees_1 values ('Ben', 1)
Insert into Employees_1 values ('Sara', 2)
Insert into Employees_1 values ('David', 1)

Select * from Employees_1

--Using CASE statement

SELECT Name, GenderId,
CASE WHEN GenderId = 1
THEN 'Male'
ELSE 'Female'
END AS Gender
FROM Employees_1

--Using iif statement

SELECT Name, GenderId, IIF(GenderId = 1, 'Male', 'Female') AS Gender
FROM Employees_1

--removing the duplicates

Create table Employees_2
(
ID int,
FirstName nvarchar(50),
LastName nvarchar(50),
Gender nvarchar(50),
Salary int
)

select * from Employees_2

Insert into Employees_2 values (1, 'Mark', 'Hastings', 'Male', 60000)
Insert into Employees_2 values (1, 'Mark', 'Hastings', 'Male', 60000)
Insert into Employees_2 values (1, 'Mark', 'Hastings', 'Male', 60000)
Insert into Employees_2 values (2, 'Mary', 'Lambeth', 'Female', 30000)
Insert into Employees_2 values (2, 'Mary', 'Lambeth', 'Female', 30000)
Insert into Employees_2 values (3, 'Ben', 'Hoskins', 'Male', 70000)
Insert into Employees_2 values (3, 'Ben', 'Hoskins', 'Male', 70000)
Insert into Employees_2 values (3, 'Ben', 'Hoskins', 'Male', 70000)


WITH RESULT AS
(
SELECT *, ROW_NUMBER()OVER(PARTITION BY ID ORDER BY ID) AS RowNumber
FROM Employees_2
)
DELETE FROM Result WHERE RowNumber > 1

DROP TABLE EMPLOYEE_3
-- creating a new table do the opertaors in and between 

create table Employees_3( ID INT,NAME VARCHAR(40),SALES FLOAT, PROFILT FLOAT)

select * from Employees_3

Insert into Employees_3 values (1, 'sam',1000,20.4)
Insert into Employees_3 values (2, 'ram', 2000,24.5)
Insert into Employees_3 values (3, 'chandra', 3000,27.5)
Insert into Employees_3 values (4, 'mohan', 4000,24.6)
Insert into Employees_3 values (5, 'geetha',5000,28.3)
Insert into Employees_3 values (6, 'chandu', 6000,28.5)
Insert into Employees_3 values (7, 'bargav', 7000,25.2)
Insert into Employees_3 values (8, 'puskar', 8000,19.5)
Insert into Employees_3 values (9, 'fuuj', 9000,17.5)
Insert into Employees_3 values (10, 'jock', 1000,18.3)

-- in operator
select * from Employees_3  where  NAME in ('chandra','chandu')   

-- betwenn operator

select * from Employees_3 where SALES between 3000 and 6000

-- multiple condition

select * from Employees_3 where ID=3 and PROFILT >15

-- or operator

select * from Employees_3 where ID=3 or PROFILT >15

-- not operator

select * from Employees_3 where  not NAME='chandra'

-- like operator

select * from Employees_3 where NAME Like '%a'


select * from Employees_3 where NAME like'_____r'

--aggregate function
select sum (SALES)FROM  Employees_3
select max (SALES)FROM  Employees_3
select avg (SALES)FROM  Employees_3
select count (SALES)FROM  Employees_3
select min (SALES)FROM  Employees_3

aliasas 

select sum (SALES)as 'sum of sales'FROM  Employees_3
select max (SALES)as 'Maximun sales'FROM  Employees_3
select avg (SALES)as 'Average sales'FROM  Employees_3
select count (SALES)as 'Total count of sales'FROM  Employees_3
select min (SALES)as 'Minimun  sales'FROM  Employees_3

-- top
select  top 3 * from Employees_3 order by sales Desc

-- creating temparory table
create view v1 as select  top 3 * from Employees_3 order by sales Desc

select * from v1

--stored procedure

create procedure P1 as

select * from customer_data cd full outer join customer_sale cs on cd.cust_id = cs.customer_id
full outer join customer_details cdetails on cd.cust_id = cdetails.customer_id
 
 exec P1 


 create procedure P2 as 
 select * from customer_data
 select * from customer_sale
 select * from customer_details
 select * from customer_data cd full outer join customer_sale cs on cd.cust_id = cs.customer_id
full outer join customer_details cdetails on cd.cust_id = cdetails.customer_id
 
 exec P2

 
  
