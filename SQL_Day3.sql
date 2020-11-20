


select upper(first_name) , lower(last_name) , substr(first_name , 1,1) from employees;
select upper(first_name) , lower(last_name) , substr(first_name , 1,1)||substr(last_name , 1,1)As initials from employees;

