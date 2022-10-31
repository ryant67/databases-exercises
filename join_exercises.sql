USE employees;

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS Department_Manager
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE YEAR(dept_manager.to_date) = 9999
ORDER BY dept_name;

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name)
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE YEAR(dept_manager.to_date) = 9999 AND employees.gender = 'F'
ORDER BY dept_name;

SELECT titles.title AS Title, COUNT(titles.title) AS Total
FROM employees
JOIN titles ON employees.emp_no = titles.emp_no
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE YEAR(titles.to_date) = 9999 AND YEAR(dept_emp.to_date) = 9999 AND departments.dept_name = 'Customer Service'
GROUP BY titles.title;

SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager', salaries.salary AS 'Salary'
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE YEAR(dept_manager.to_date) = 9999 AND YEAR(salaries.to_date) = 9999
ORDER BY dept_name;