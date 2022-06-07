BACKUP DATABASE testDB
TO DISK = 'D:\testDB.bak';

Alter table CustomersCopy
Add Email nvarchar(50)

Alter table CustomersCopy
alter column Email nvarchar(30)

Alter table CustomersCopy
drop column Email

truncate table CustomersCopy

drop table CustomersCopy

select * from CustomersCopy

select * into 
CustomersCopy from Customers

insert into CustomersCopy
select * from Customers

Alter table CustomersCopy
alter column City nvarchar(30) not null

Alter table CustomersCopy
alter column City nvarchar(30) null

Alter table CustomersCopy
Add Constraint UC_CustomerName Unique (CustomerName)

Alter table CustomersCopy
Add Constraint PK_ID primary key (Id)

Alter table CustomersCopy
drop constraint PK_ID







