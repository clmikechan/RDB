--01
create view EMP_VU
AS
select empno, ename EMPLOYEE, deptno
from emp;
--02
select *
from emp_vu;
--03
select employee, deptno
from emp_vu;
--04
create view DEPT20
AS
select empno EMPLOYEE_ID, ename EMPLOYEE, deptno DEPARTMENT_ID
from emp
where emp.deptno=20
with check option;
--05
exec sp_help dept20;
select * 
from dept20;
--06
update DEPT20
set department_id=30
where employee='SMITH';
--07
create view SALARY_VU(Employee, Department, Salary, Grade)
AS
select e.ename, d.dname, e.sal, s.grade
from emp e join dept d on (e.deptno=d.deptno)
           join salgrade s on (e.sal between s.losal and s.hisal);
		   select * from salary_vu;
--08
create index emp_deptno_idx on emp(deptno);
--09
create sequence DEPT_ID_SEQ
as int start with 60
increment by 10
maxvalue 200
no cache
no cycle;
--10
insert into dept(deptno, dname)
values (next value for dept_id_seq, 'Education'),
        (next value for dept_id_seq, 'Administration');