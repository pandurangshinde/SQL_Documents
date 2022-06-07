
Create database TestDB

Create table Customers (Id int not null primary key, CustomersName nvarchar(50) not null, City nvarchar(20) null)
select * from Customers

insert into Customers (Id, CustomerName, City) values (105,'Kuldeep','Daund')
insert into Customers values (106, 'Dogendra', 'indor'),(107,'Shubham','jalgaon')

select distinct City from Customers

select * from Customers
where CustomerName 
--like '%%'
--like '%g'
--like 'S%'
--like '%a%'
--like '_a%'
--like '__a%'
--like 'a%t'
like 'S__%'


select * from Customers
where CustomerName between 'Pandurang' and 'Swanand'
order by CustomerName

select AVG(Id) from Customers

select count(CustomerName),City from Customers group by City;
select min(CustomerName),City from Customers group by City;
select count(CustomerName), max(CustomerName),City from Customers group by City order by City desc;

select count(CustomerName), max(CustomerName),City from Customers group by City order by count(CustomerName);

select count(CustomerName), City from Customers
group by City
Having count(CustomerName) >2

select CustomerName, City 
from Customers
where Exists (select * from Customers where Id = 101)

select all CustomerName
from Customers
where Id >=102 and Id = 102

select * INTO CustomersCopy
from Customers

insert into Customers
select * from CustomersCopy
where Id = 107

select * from Customers

select Id,CustomerName,
(CASE 
	when Id >104 then 'Id is greater than 104'
	when Id =104 then 'Id is equal to 104'
	else 'the id is under 104'
END) AS QuantityText
FROM Customers;

CREATE PROCEDURE FetchCustomers @City nvarchar(20)
AS 
select * from Customers where City = @City

Exec FetchCustomers @City = 'Pune'

