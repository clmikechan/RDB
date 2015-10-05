--01
select e.ename, e.deptno, d.dname, d.loc
from emp e join dept d on e.deptno=d.deptno;
--02
select e.ename, e.comm, d.dname, d.loc
from emp e join dept d on e.deptno=d.deptno
where e.comm is not null;
--03
select e.ename, d.dname
from emp e join dept d on e.deptno=d.deptno
where e.ename like 'A%';
--04
select e.ename, e.job, e.deptno, d.dname
from emp e join dept d on e.deptno=d.deptno
where d.loc like 'DALLAS';
--05
select e.ename EMPLOYEE, e.empno Emp#, m.ename Manager,e.mgr Mgr#
from emp e join dept d on e.deptno=d.deptno
           left join emp m on e.mgr=m.empno;
--06
select * from salgrade;
select e.ename, e.job, d.dname, e.sal, s.grade
from emp e join dept d on e.deptno=d.deptno
           join salgrade s on e.sal between s.losal and s.hisal;
--07
select e.ename Employee, e.hiredate "Emp Hiredate", m.ename Manager, m.hiredate "Mgr Hiredate"
from emp e join emp m on e.mgr=m.empno
where e.hiredate < m.hiredate;
--08
select d.dname dname, d.loc loc, count(*) "Number of People", convert(decimal(10,2),round(avg(sal),2)) Salary
from emp e join dept d on e.deptno=d.deptno
group by d.dname, d.loc;