--Details of all employees
select * from employee

--Name and job for all employees
select empname,job from employee

--name and salary for all employee
select empname,sal from employee

--Names of all employees who are working in deptno 10
select empname from employee where deptno=10

--Names of all employees who are working as clerks and drawing a salary more than 3000
select empname from employee where job='CLERK' and sal>3000

--Names of all employees who are working as clerks,salesman or analyst and drawing a salary more than 3000
select empname from employee where job in ('CLERK','SALESMAN','ANALYST') and sal>3000

--Names of employees working in department number 10 or 20 or 40 or employees working as clers,salesman or analyst
select empname from employee where deptno in(10,20,40) or job in ('CLERK','SALESMAN','ANALYST')

--Names of employees whose name start with alphabet S
select empname from employee where empname like 'S%'

--Names of employees whose names end with alphabet S
select empname from employee where empname like '%S'

--Names of employees whose names have second alphabet A in their names
select empname from employee where empname like '_A%'

--Names of employees whose name is exactly five characters in length
select empname from employee where empname like '_____'

--Names of all employees who are not working as salesman or clerk or analyst
select empname from employee where job not in ('salesman','clerk','analyst')

--Total number of employees working in the company
select count(*) as TotalEmployeesCount from employee  

--Total salary of all employees
select sum(sal) as TotalSalary from employee

--Max salary 
select max(sal) as MAXsalary from employee

--Min salary 
select min(sal) from employee

--Average salary
select avg(sal) from employee

--Maximum salary being paid to clerk
select max(sal) as ClerkMaxSal from employee where job='clerk'

--maximum salary being paid in department number 20
select max(sal) from employee where deptno=20

--Minimum salary being paid to any salesman
select min(sal) from employee where job='salesman'

--Average salary drawn by managers
select avg(sal) from employee where job='manager'

--Names of employees in order of salary
select empname from employee order by sal

--Name of employee in descending order of salary
select empname from employee order by sal desc

--Department numbers and total number of employees working in each department
select deptno,count(*) from employee group by deptno

--various jobs and total number of employees working in each job group
select job,count(*) from employee group by job

--department numbers and and total salary for each department
select deptno,sum(sal) from employee group by deptno

--deptno and max salary of each department
select deptno,max(sal) from employee group by deptno

--various jobs and total salary of each job
select job,sum(sal) from employee group by job

--each job along with minimum of salary being paid in each job group
select job,min(sal) from employee group by job

--display department number with more than three employees in each department
select deptno,count(*) from employee group by deptno having count(*)>3

--display various jobs alsong with total salary for each of the job where total salary is greater than 4000
select job,sum(sal) from employee group by job having sum(sal)>4000
