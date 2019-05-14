create table null_test(
col1 VARCHAR2(20) not null,
col2 VARCHAR2(20) null,
col3 VARCHAR2(20)
);

insert into null_test(col1, col2)
values ('aa', 'bb');

select * from null_test;

insert into null_test(col2, col3)
values ('cc', 'dd');

create table unique_test(
col1 VARCHAR2(20) unique not null,
col2 VARCHAR2(20) unique,
col3 VARCHAR2(20) not null,
col4 VARCHAR2(20) not null,
constraints temp_unique unique(col3, col4)
);

insert into unique_test(col1, col2, col3,col4)
values('aa', 'bb', 'cc', 'dd');

insert into unique_test(col1, col2, col3,col4)
values('a2', 'b2', 'c2', 'd2');

select * from unique_test;

update unique_test
set col1 = 'aa'
where col2 = 'b2';

insert into unique_test(col1, col2, col3,col4)
values('a3', '', 'c3', 'd3');

insert into unique_test(col1, col2, col3,col4)
values('a4', '', 'c4', 'd4');

create table primary_test(
student_id number(10) primary key,
name varchar2(20)
);

create table primary_test(
student_id number(10),
name varchar2(20),
constraints student_pk primary
key(student_id)
);

create table primary_test(
student_id number(10),
name varchar2(20),
);

alter table primary
add constraints "�⺻Ű �̸�" primary key
(�ʵ��);

create table foreign_key(
department_id,
constraints dept_fk
foreign key(department_id)
references departments(department_id)
);

alter table foreign_key
add constraints dept_fk foreign key
(department_id)
references departments (department_id)

create table check_test(
gender varchar2(10) not null
constraints check_sex check (gender in ('M','F'));
);

create table check_test(
gender varchar2(10) not null
constraints check_sex check (gender in ('����','����'));
);

insert into check_test VALUE('����');

insert into check_test value('����');

create view v_emp(emp_id, first_name,
job_id, hiredate, dept_id) as
select employee_id, first_name,job_id,
hire_date, department_id
from employees
where job_id = 'ST_CLERK';

select * from v_emp;

create view v_emp1(emp_id, first_name,
job_id, hiredate, dept_id)as
select employee_id, first_name, job_id,
hire_date, department_id
from employee 
where job_id = 'SH_CLERK';

drop view v_emp1;

create or replace view v_emp(emp_id, 
first_name, job_id, hiredate, dept_id)as
select employee_id, first_name, job_id,
hire_date, department_id
from employee 
where job_id = 'ST_CLERK';

create or replace view v_emp3(emp_id, 
first_name, job_id, hiredate, dept_id)as
select nvl(employee_id, null),
nvl(first_name,null), job_id, hire_date, 
department_id
from employee 
where job_id = 'SH_CLERK';

desc v_emp3;

update v_emp3 set first_name = 'kim'
where first_name = 'Julia';

update v_emp set first_name = 'kim'
where first_name = 'Julia';

create view v_emp_salary(emp_id,
last_name, annual_sal)as
select employee_id, last_name,
(salary+nvl(commission_pct,0))*12
from employees;

select * from v_emp_salary;

create view v_emp_readonly(emp_id,
last_name, annual_sal)as
select employee_id, last_name,
(salary+nvl(commission_pct,0))*12
from employees;
with read only;

desc v_emp_readonly;

select * from v_emp_readonly;
 
update v_emp_readonly set last_name = 'kim'
where last_name ='Grant';

create or REPLACE view v_samp1 as
select employee_id, last_name,
department_id, hire_date
from employees

where (salary + nvl(commission_pct,0))*12
>40000
and department_id = 50
and job_id = 'ST_CLERK'
and sysdate - 365 * 5> hire_date;

select * from v_samp1;

create view ���(���, �̸�, �μ���ȣ, �Ի���)as
select employee_id, first_name||'
'||last_name, department_id, hire_date
from employees
where department_id = 50;

select * from ���;

create view v_join(���, �̸�, �μ���ȣ, �μ���, �Ի���)as
select emp.employee_id, emp.first_name||'
'||emp.last_name, emp.department_id, 
dept.department_name, emp.hire_date
from employees emp, departments dept
where emp.department_id =
dept.department_id;

select * from v_join;







