--01
select getdate() 系統日期;
--02
select empno ,ename,sal ,cast(sal*1.15 as int) "New Salary"
from emp;
--03
select empno ,ename,sal ,cast(sal*1.15 as int) "New Salary", cast(sal*1.15 as int)-sal Increase
from emp;
--04
select ename, round(datediff(month,hiredate,getdate()),0) MONTHS_WORKED
from emp;
--05
select ename +' earns '+convert(varchar,sal)+'monthly but wants '+convert(varchar,sal*3)+'.' "Dream Salaries"
from emp;
--06
select ename+' $'+convert(char(15), sal) SALARY
from emp;
--07
select ename, isnull(convert(varchar,comm), 'No Commision') COMMISION
from emp;
--08
select ename+' '+choose(convert(int,sal/1000)+1,'','**********','********************','******************************','****************************************','**************************************************')++choose(convert(int,sal/100)-(convert(int,sal/1000))*10+1,'','*','**','***','****','*****','******','******','********','*********') EMPLOYEE_AND_THEIS_SALARIES
from emp 
order by sal desc;