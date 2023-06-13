/*All employees with their department names,
employee table doesnot contain the department name so we need to join employee and department tables*/
select empname, deptname from employee inner join department on employee.deptno=department.deptno

--Employee names who are working in sales department 
select empname,deptname from employee inner join department on employee.deptno=department.deptno where deptname='sales'

--Display employee name,department name,salary for those salary between 2000 to 5000 while location is chicago
select empname,deptname,sal from employee inner join department on employee.deptno=department.deptno 
where sal between 1000 and 5000 and loc='chicago'

--employees who are working in sales or research
select empname,deptname from employee inner join department on employee.deptno=department.deptno 
where deptname in ('sales','research')

--get number of employees on each department
select deptname,count(empname) as employeesCount from employee inner join department 
on employee.deptno=department.deptno group by deptname

--Average sal of each department
select deptname,avg(sal) as AvgSalary from employee join department 
on employee.deptno=department.deptno group by deptname

--second max salary
select max(sal) from employee where sal<(select max(sal) from employee)

--second min salary
select min(sal) from employee where sal>(select min(sal) from employee)
select sal from employee order by sal