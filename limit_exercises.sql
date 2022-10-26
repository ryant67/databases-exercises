USE employees;

SELECT DISTINCT last_name FROM employees order by last_name DESC LIMIT 10;

SELECT emp_no FROM salaries order by salary DESC LIMIT 5;

SELECT emp_no FROM salaries order by salary DESC LIMIT 4 OFFSET 46;