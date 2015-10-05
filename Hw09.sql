--01
create table DEPARTMENT(
id numeric(7) not null,
name varchar(24) not null
);
--02
insert into department
values(741013, 'Mike Chan');
select * from department;
--03
create table EMPLOYEE(
id numeric(7) not null,
last_name varchar(24) not null,
first_name varchar(24),
dept_id numeric
);
--04
alter table employee
alter column last_name varchar(40);
--05
select empno ID, ename LAST_NAME, deptno DEPT_ID
into EMPLOYEE2
from emp;
--06
drop table EMPLOYEE;
--07
exec sp_rename 'EMPLOYEE2','EMPLOYEE';
--08
alter table employee
drop column last_name;
--09
alter table employee
add SALARY numeric(7);
--10
alter table employee
add constraint employee_id_pk PRIMARY KEY(ID);
--11
alter table employee
add constraint employee_id_fk FOREIGN KEY(DEPT_ID) REFERENCES dept(deptno);
