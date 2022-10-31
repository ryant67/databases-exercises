USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name', hire_date AS 'Hire Date'
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);

SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name', titles.title AS 'Title'
FROM employees
JOIN titles ON employees.emp_no = titles.emp_no
WHERE titles.title IN (
    SELECT titles.title
    FROM titles
    WHERE first_name = 'Aamod'
);

SELECT first_name AS 'First Name', last_name AS 'Last Name'
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE departments.dept_name IN (
    SELECT departments.dept_name
    FROM departments
    WHERE YEAR(dept_manager.to_date) = 9999 AND employees.gender = 'F'
);