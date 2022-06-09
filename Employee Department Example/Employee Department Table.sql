
use TestDB
go
Create table Employee 
(EmpId int identity(100,1) primary key, EName varchar(30) not null,
 City nvarchar(20) null, DateOfJoin date null,BirthDate date, DeptId int null,ReportsTo int null,
 Constraint  FK_Employee_Department foreign key (DeptId) references Department (DeptId)
)
Create table Department (DeptId int identity(10,1) primary key, DName nvarchar(20) not null, IsActive int null)

insert into Department values ('Office', 1)
insert into Department values ('IKOVIA', 1),('ContentStudio', 0)
insert into Department values ('IdealSpaces', 0)

insert into Employee values 
('Sachin', 'Amravati','2013-08-01', '1978-08-02',10,null),
('Abhijeet B', 'Daund','2014-08-01', '1988-08-02',10,100),
('Adil ', 'Akola','2017-08-01', '1990-08-02',11,100),
('Abhijeet D', 'Nanded','2017-02-22', '1994-08-02',12,100),
('Pandurang', 'Latur','2017-02-22', '1993-08-16',12,100),
('Samarth', 'Barshi','2021-08-01', '1998-08-02',10,101),
('Suyog', 'Amaravati','2018-08-01', '1992-08-02',10,101),
('Kuldeep', 'Daund','2021-08-01', '1999-08-02',12,100),
('Rohit', 'Pune','2021-08-01', '1992-08-02',11,102),
('Puspak', 'Akola','2022-08-01', '1998-08-02',10,101),
('Pranjul', 'Delhi','2022-08-01', '1999-08-02',10,106)

insert into Employee values ('Swanand', 'Belgaon','2021-08-01', '1991-08-02',null,101)
insert into Employee values ('Sagar', 'Belgaon','2018-08-01', '1990-08-02',null,100)
insert into Employee values('Asmita', 'Pune', '2013-08-01', '1980-03-20', 13, null)
