select * from tab;
select * from EMPLOYEES;
select employee_id, LAST_NAME
from EMPLOYEES 
where LAST_NAME='Smith';

desc employees;

SELECT * FROM EMPLOYEES;

select employee_id, salary
from EMPLOYEES
where LAST_NAME = 'Smith';

select employee_id "ID", FIRST_name, salsry
from employees
where LAST_NAME = 'Smith';

SELECT employee_id "ID", salary "SAL"
from EMPLOYEES;

select distinct job_id from EMPLOYEES;

select first_name, Last_name, salary
from EMPLOYEES where SALARY >= 5000;

SELECT first_name, Last_name, hire_date
from EMPLOYEES
where HIRE_DATE >='04/01/01';

select first_name, Last_name, job_id,
department_id
from EMPLOYEES
where DEPARTMENT_ID = 50
and JOB_ID ='SH_CLERK';

select first_name, Last_name,
manager_id, department_id
from EMPLOYEES
where DEPARTMENT_ID =50
or MANAGER_ID = 100;

select first_name, Last_name,
department_id
from EMPLOYEES
where not(DEPARTMENT_ID=50);

select first_name, Last_name,
department_id
from EMPLOYEES
where DEPARTMENT_ID <>50;

select first_name, Last_name, salary
from EMPLOYEES
where Salary >=4000 and Salary <=8000;

select first_name, Last_name, salary
from EMPLOYEES
where Salary between 4000 and 8000;

select first_name, Last_name, salary
from EMPLOYEES
where salary =6500 or SALARY = 7700
or SALARY = 13000;

select first_name, Last_name, salary
from EMPLOYEES
where SALARY in (6500, 7700, 13000);

select first_name, Last_name
from EMPLOYEES
where FIRST_NAME like 'D%';

select first_name, Last_name
from EMPLOYEES
where FIRST_NAME like '%d';

select first_name, Last_name
from EMPLOYEES
where FIRST_NAME like '__a%';

select first_name, Last_name,
commission_pct
from EMPLOYEES
where commission_pct is null;

select first_name, Last_name,
commission_pct
from EMPLOYEES
where commission_pct is not null;

select EMPLOYEE_ID, Last_name
from EMPLOYEES
order by EMPLOYEE_ID;

select EMPLOYEE_ID, Last_name
from EMPLOYEES
order by EMPLOYEE_ID desc;
