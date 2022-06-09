Select * from Employee 
Select * from Department 

Backup database EmployeeDept
to disk = 'D:\file1.bak'

Alter table Employee
Alter Column City nvarchar(30)

Alter table Employee
Alter Column City nvarchar(10) 

Alter table Employee
Add Constraint UC_Employee_EName Unique (EName)

Alter table Employee
Drop Constraint UC_Employee_EName

insert into Department values ('IdealSpaces', 0)
insert into Employee (EName, City, DateOfJoin,BirthDate)values('Atul1', 'Pune', '2013-08-01', '1980-03-20')

Alter table Employee
Drop Constraint FK_Employee_Department

Alter table Employee
Add Constraint FK_Employee_Department 
foreign key (DeptId)
references Department (DeptId)

Alter table Employee
Add COnstraint CK_Employee_BirthDate CHECK (BirthDate > '1970-01-01');

Alter table Employee
Add Constraint DF_Employee_Department DEFAULT 10 for DeptID 

Create index FetchByCity
on Employee(City)

select City from Employee 
drop index Employee.FetchByCity

Create View [Employee Pune] AS
Select * from Employee
where City = 'Pune'

Create View [Employee Belgaon] AS
Select * from Employee
where City = 'Belgaon'

Create View [EmployeeCity Belgaon] AS
Select EName, City from Employee
where City = 'Belgaon'


select * from [Employee Pune]
select * from [Employee Belgaon]
select * from [EmployeeCity Belgaon]

insert into [Employee Belgaon] values('Shubham1', 'Belgaon', '2018-08-01', '1995-03-20', 13, null)
insert into [EmployeeCity Belgaon] values('Shubham3', 'Belgaon')

insert into Employee values('BigCity', 'Pune1234567890', '2013-08-01', '1980-03-20', 13, null)

Drop VIEW [EmployeeCity Belgaon]
