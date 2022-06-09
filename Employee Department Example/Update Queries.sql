select * from Employee
select * from Department

Update  Employee
set DeptId = 13
where DeptId = 12



Update Employee
set City = 'Hadapsar'
where EName = 'Rohit'

Update Department 
set IsActive = 1
where DName = 'IdealSpaces'

-- update reportsto to null where department name = IdealSpaces
update Employee
set Employee.ReportsTo = Null
From Employee as E
inner join Department as D
on E.DeptId = D.DeptId
where D.DName = 'IdealSpaces'

-- Update reportsTo to Asmita where Employee Department is IdealSpaces
Update E
Set E.ReportsTo = EE.EmpId -- (select EmpId from Employee where EName = 'Asmita')
From Employee as E
inner join Department as D
on E.DeptId = D.DeptId
inner join Employee as EE
on E.EmpId = E.EmpId
where D.DName = 'IdealSpaces' and E.EmpId <> 113 and EE.EmpId = 113

Update Employee
set DateOfJoin = '2021-11-17'
From Employee as E
inner join Department as D
on E.DeptId = E.DeptId
where EName = 'Kuldeep' and D.DName = 'IdealSpaces'

select top 1 * from Employee
inner join Department
on Employee.DeptId = Department.DeptId
where Department.DName = 'IdealSpaces'
order by Employee.DateOfJoin desc






