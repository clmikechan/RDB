--01
select ename, hiredate
from emp e1
where deptno= (select deptno
             from emp e2
			 where e2.ename='Blake');
--02
select ename, hiredate
from emp e1
where	hiredate > (select hiredate
		from emp e2
		where e2.ename = 'Blake');
--03
select empno, ename, sal
from emp
where sal > (select avg(sal)
             from emp)
order by sal desc;
--04
select empno, ename
from emp e1
where deptno in (select deptno
              from emp e2
			  where ename like '%T%');
--05
select e.ename, e.deptno, e.job
from emp e join dept d on (e.deptno=d.deptno)
where d.loc= 'Dallas';
--06
select e.ename, e.sal
from emp e join emp m on (e.mgr=m.empno)
where m.ename='King';
--07
select e.deptno, e.ename, e.job
from emp e join dept d on(e.deptno=d.deptno)
where d.dname='Sales';
--08
select e1.empno, e1.ename, e1.sal
from emp e1
where e1.sal>	(select avg(e2.sal)
			from emp e2)
and
			e1.deptno in (select e3.deptno
			from emp e3
			where e3.ename like'%T%');
--09
select e1.ename, e1.deptno, e1.sal
from emp e1
where convert(varchar,e1.deptno)+convert(varchar,e1.sal) in (select  convert(varchar,e2.deptno)+convert(varchar,e2.sal)
	from emp e2
	where e2.comm>0);
--10
select e1.ename, e1.deptno, e1.sal
from emp e1
where convert(varchar,e1.sal)+convert(varchar,isnull(e1.comm,-1)) in (select convert(varchar,e2.sal)+convert(varchar,isnull(e2.comm,-1))
	from emp e2 join dept d on (e2.deptno= d.deptno)
	where d.loc='Dallas');
--exclude comm is null:
select e1.ename, e1.deptno, e1.sal
from emp e1
where convert(varchar,e1.sal)+convert(varchar,e1.comm) in (select convert(varchar,e2.sal)+convert(varchar,e2.comm)
	from emp e2 join dept d on (e2.deptno= d.deptno)
	where d.loc='Dallas');
--11
select e1.ename, e1.hiredate, e1.sal
from emp e1
where convert(varchar,e1.sal)+convert(varchar,isnull(e1.comm,-1)) in (select convert(varchar,e2.sal)+convert(varchar,isnull(e2.comm,-1))
	from emp e2
	where e2.ename='Scott')
and e1.ename !='Scott';
--exclude comm is null:
select e1.ename, e1.hiredate, e1.sal
from emp e1
where convert(varchar,e1.sal)+convert(varchar,e1.comm) in (select convert(varchar,e2.sal)+convert(varchar,e2.comm)
	from emp e2
	where e2.ename='Scott')
and e1.ename !='Scott';
--12
select e1.ename, e1.hiredate, e1.sal
from emp e1
where sal > all (select e2.sal
	from emp e2
	where e2.job='Clerk')
order by sal desc;