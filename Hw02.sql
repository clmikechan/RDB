--01
select * from DEPT;
--02
select empno, ename,job,hiredate from emp ;
--03
select distinct job from emp;
--04
select empno Emp#, ename Employee, job Job, hiredate "Hire Date" from emp;
--05
select ename+',  '+job "Employee and Title" from emp;