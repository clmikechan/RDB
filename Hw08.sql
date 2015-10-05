delete my_emp;
--01
insert into my_emp
values(1, 'Patel','Ralph','rpatel',795);
--02
insert into my_emp(id, last_name, first_name, userid, salary)
values(2, 'Dancs','Betty','bdance',860);
--03
insert into my_emp
values(3, 'Biri','Ben','bbiri',1100),
(4, 'Newman','Chad','cnewman',750);
--04
update my_emp
set last_name= 'Drexler'
where id= 3;
--05
update my_emp
set salary =1000
where salary< 900;
--06
select * from my_emp;
--07
delete my_emp
where last_name='Dancs' and first_name='Betty';
--08
begin transaction;
update my_emp
set salary= salary*1.1;
save transaction tr1;
delete my_emp;
select * from my_emp;
rollback;
