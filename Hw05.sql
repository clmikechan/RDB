--01
select convert(int,round(max(sal),0)) Maximum, convert(int,round(min(sal),0)) Minimum, convert(int,round(sum(sal),0)) Sum, convert(int,round(avg(sal),0)) Average
from emp;
--02
select job, min(sal) Minimum,max(sal) Maximum,sum(sal) Sum,avg(sal) Average
from emp
group by job;
--03
select job,count(*) number
from emp
group by job;
--04
select count(*) "Number of Managers"
from emp
where job like 'Manager%';
--05
select max(sal)-min(sal) DIFFERENCE
from emp;
--06 
select mgr, min(sal) Minimum
from emp
group by mgr
having min(sal) >= 1000 and mgr is not null
order by min(sal) desc;
--07
select year(hiredate) "到職年",count(*) "人數"
from emp
group by year(hiredate)
having year(hiredate) in (1980,1981,1982,1983);