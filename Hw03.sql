--01
select ename, sal from emp where (sal >= 2850);
--02
select ename, deptno from emp where (empno = 7566);
--03
select ename, sal from emp where sal not between 1500 and 2850;
--04
select ename, job, hiredate from emp where hiredate between '19810220' and '19810501' order by hiredate;
--05
select ename, deptno from emp where deptno in (10, 30) order by ename;
--06
select ename Employee, sal "Monthly Salary" from emp where (sal>1500) and deptno in (10, 30);
--07
select ename, job, hiredate from emp where hiredate between '19820101' and '19821231';
--08
select ename, job from emp where mgr is null;
--9
select ename, sal, comm from emp  where comm is not null order by sal desc, comm desc;	--It is better to use where comm > 0
--10
select ename, job from emp where ename like '__A%';		--There are two '_' in like clause; it can also use substring(ename,3,1)='A'
--11(1)
select ename, mgr, empno, deptno from emp where (ename like '%L%L%' and deptno in (30)) or mgr in (7782);
--11(2)
select ename, mgr, empno, deptno from emp where ename like '%L%L%' and (deptno in (30) or mgr in (7782));
--12
select ename, job, sal from emp where job in ('Clerk','Analyst') and sal not in (1000, 3000, 5000);
--13
select ename, sal, comm from emp where comm >= sal*1.1;