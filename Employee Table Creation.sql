--Creating Department Table

create table department(
			deptno int,
			deptname varchar(15),
			loc varchar(15),
			constraint pk_department primary key(deptno)
			)


--Creating Employee Table

create table employee(
			empno int,
			empname varchar(50),
			job varchar(10),
			sal decimal,
			deptno int,
			age int,
			constraint pk_employee primary key(empno),
			constraint fk_deptno foreign key(deptno) references department(deptno)   
			)


--Insert values into the Department Table

Insert into department(deptno,deptname,loc)
values(10, 'ACCOUNTING', 'NEWYORK')

insert into department values
	(20, 'RESEARCH', 'DALLAS'),
	(30, 'SALES', 'CHICAGO'),
	(40, 'OPERATIONS', 'BOSTON'),
	(50, 'DVELOPMENT','UK')

--Insert values into the employee table

insert into employee values(7839, 'KING', 'PRESIDENT',5000, 10,41)
insert into employee values(7987,'JOHN','MANAGER',6000,20,32)
insert into employee values(7698, 'BLAKE', 'MANAGER', 7839,30,32)

--insert multiple rows
insert into employee values
(7782, 'CLARES', 'MANAGER', 7839,10,38), 
(7566, 'JONES', 'MANAGER', 6839,20,40),
(7788, 'SCOTT', 'ANALYST', 4566,20,44),
(7902, 'FAIRY', 'ANALYST', 3566,20,26),
(7369, 'SMITH', 'CLERK', 1902,20,23),
(7499, 'ALLEN', 'SALESMAN', 3698,30,24),
(7623, 'JENNY', 'DVELOPMENT', 7023,50,28),
(7521, 'WARD', 'SALESMAN',1250,30,27),
(7654, 'MARTIN', 'SALESMAN',1250,30,26),
(7844, 'TURNER', 'SALESMAN',1500,30,24),
(7876, 'ADAMS', 'CLERK',1100,20,21),
(7900, 'JAMES', 'CLERK',950,30,21),
(7934, 'MILLER', 'CLERK',1300,10,22)
--13 rows affected

/*
select * from employee
empno   empname job        sal     deptno   age
7369	SMITH	CLERK	   1902	    20		23
7499	ALLEN	SALESMAN   3698		30		24
7521	WARD	SALESMAN   1250		30		27
7566	JONES	MANAGER	   6839		20		40
7623	JENNY	DVELOPMENT 7023		50		28
7654	MARTIN	SALESMAN   1250		30		26
7698	BLAKE	MANAGER	   7839		30		32
7782	CLARES	MANAGER	   7839		10		38
7788	SCOTT	ANALYST	   4566		20		44
7839	KING	PRESIDENT  5000		10		41
7844	TURNER	SALESMAN   1500		30		24
7876	ADAMS	CLERK	   1100		20		21
7900	JAMES	CLERK	   950		30		21
7902	FAIRY	ANALYST	   3566		20		26
7934	MILLER	CLERK	   1300		10		22
7987	JOHN	MANAGER	   6000		20		32


select * from department

deptno deptname     loc
10	   ACCOUNTING	NEWYORK
20	   RESEARCH	    DALLAS
30	   SALES	    CHICAGO
40	   OPERATIONS	BOSTON
50	   DVELOPMENT	UK
*/
