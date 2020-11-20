


select upper(first_name) , lower(last_name) , substr(first_name , 1,1) from employees;
select upper(first_name) , lower(last_name) , substr(first_name , 1,1)||substr(last_name , 1,1)As initials from employees;

select first_name, last_name from employees where lower(first_name) like '%mi%' or upper(last_name) like '%MI%';

select hire_date , substr(hire_date, 4,6) from employees;

select hire_date, substr(hire_date, 4,3) as hire_month from employees;
select first_name , hire_date from employees where substr(hire_date, 4,3) = 'JAN';

select salary , salary + 1000 as after_raise, salary/4 as weekly , round(salary /30, 1) 
as daily, round(salary/30) as rounded_daily from employees;

select count(*) from employees ;
select count(*) as country_count from job_history ;
select count(*) from jobs ;

select count (first_name) from employees;

select min(salary) from employees;
select sum(salary) from employees;
select round(avg(salary), 2)as twoDigit,round(avg(salary)) as no_digit  from employees;

select count (*) as employee_count , max(salary) as max_salary, min(salary) as min_salary 
from employees;

select department_id, count(*)  from employees group by department_id;

select job_id, count(*)  from employees group by job_id;
select hire_date, count(*) as zort from employees group by hire_date;

select max(salary), department_id  from employees group by department_id;
select sum(salary), department_id  from employees group by department_id;
select round (avg(salary)) as avg, department_id  from employees group by department_id;

select round (avg(salary)) as avg, department_id  from employees group by department_id having count(*)>10;
select round (avg(salary)) as avg, department_id  from employees group by department_id having min(salary)>9000;

select * from employees
order by salary ASC;

select * from employees
order by salary DESC;





