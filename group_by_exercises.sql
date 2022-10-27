USE employees;

SELECT DISTINCT title FROM titles;

SELECT last_name FROM employees WHERE last_name LIKE 'E%' and last_name LIKE '%E' GROUP BY last_name;

SELECT first_name, last_name FROM employees WHERE last_name LIKE 'E%' and last_name LIKE '%E' GROUP BY last_name, first_name;

SELECT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;

SELECT COUNT(last_name) AS Count, last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;

SELECT COUNT(gender) AS Gender_Count, gender FROM employees WHERE first_name = 'Irena' OR first_name ='Vidya' OR first_name = 'Maya' GROUP BY gender;
