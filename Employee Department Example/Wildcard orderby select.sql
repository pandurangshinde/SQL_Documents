Select * from Employee 
Select * from Department 

Select * from Employee  Order by EName
Select * from Employee  Order by City
Select * from Employee  Order by DateOfJoin desc
Select * from Employee  Order by BirthDate desc

select * from Employee
where DeptId IS NULL 

select * from Employee
where DeptId IS NOT NULL 

Select min(DateOfJoin) 
from Employee

Select max(DateOfJoin) 
from Employee

Select City, Count(EmpId) from Employee group by City

Select  E.EName ,Count(M.ReportsTo) as NoOfEmployee 
From Employee as E, Employee as M
group by E.EName


Select E1.EName as Employee, E2.Ename as Manager
From Employee as E1, Employee as E2
where E1.ReportsTo = E2.EmpId

select EName from Employee
where ReportsTo IS NOT NULL

Select E2.Ename as Manager, count(E1.EName) as Employee
From Employee as E1, Employee as E2
where E1.ReportsTo = E2.EmpId
group by E2.EName


Select E2.Ename as Manager,E2.City as City, count(E1.EName) as Employee
From Employee as E1
inner join Employee as E2
on E1.ReportsTo = E2.EmpId
group by E2.EName,E2.City
--having count(E1.EName) >1
--Having E2.EName = 'Asmita'

Select * from Employee
--where EName like 'a%'
--where EName like '%g'
--where EName like '%S%'
--where EName like '_a%'
--where EName like 'k%p'
--where EName like 'S[au]%'
--where EName like 'S[^au]%'
where EName like 'S[a-d]%'


Select * from Employee
where City in ('Pune', 'Latur')

Select * from Employee
where BirthDate BETWEEN '1980-03-20'and '1998-03-20'

Select * from Employee
where Exists (select DeptId from Department where DName = 'HR')

select * from Employee
where City = Any 
(Select City from Employee where ReportsTo = 113)

select * from Employee
where DeptId = ANY 
(Select DeptId from Department where DeptId = 10)

select * from Employee
where DeptId = All 
(Select DeptId from Department where DeptId = 1)

select * into
NewTable from Employee 
where City = 'Pune'

insert into NewTable(EName)
select EName from Employee
where City = 'Latur'

select EName, 10 * (1+ ISNULL(DeptId, 0))
from Employee

select EName, 10 * (1+ COALESCE(DeptId, 0))
from Employee









