select * from Employee
select * from Department

select * from Employee,Department
select * from Department

-- inner join
Select EName, DName 
from Employee
inner join Department
on Employee.DeptId = Department.DeptId

-- left join
Select EName, DName 
from Employee
left outer join Department
on Employee.DeptId = Department.DeptId

-- right join
Select EName, DName 
from Employee
right outer join Department
on Employee.DeptId = Department.DeptId

-- full join
Select EName, DName 
from Employee
full outer join Department
on Employee.DeptId = Department.DeptId

--self join
Select E1.EName as Employee, E2.Ename as Manager
From Employee as E1, Employee as E2
where E1.ReportsTo = E2.EmpId



