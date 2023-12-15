--ALTER DATABASE "sql_challenge" set datestyle to "ISO, MDY";  
--  1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.employee_number, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON employees.employee_number = salaries.employee_number;

--  2. List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;


-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT department_manager.department_no, departments.department_name, department_manager.employee_number, employees.last_name, employees.first_name
FROM department_manager
JOIN departments ON department_manager.department_no= departments.department_number
JOIN employees ON department_manager.employee_number = employees.employee_number
ORDER BY employee_number;

--  4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name. 

SELECT employees.employee_number, employees.last_name, employees.first_name, departments.department_name
FROM employees
JOIN employee_numbers ON employees.employee_number = employee_numbers.employee_number
JOIN departments ON employee_numbers.department_no = departments.department_number
ORDER BY employee_number;

--  5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.

SELECT * FROM departments;
-- The department number of Sales department is d007
SELECT employees.employee_number, employees.last_name, employees.first_name, departments.department_name
FROM employees
JOIN employee_numbers ON employees.employee_number = employee_numbers.employee_number
JOIN departments ON employee_numbers.department_no = departments.department_number
WHERE departments.department_number = 'd007';

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT * FROM departments;
-- The department numbers of Sales and Development departments are d007 and d005
SELECT employees.employee_number, employees.last_name, employees.first_name, departments.department_name
FROM employees
JOIN employee_numbers ON employees.employee_number = employee_numbers.employee_number
JOIN departments ON employee_numbers.department_no = departments.department_number
WHERE departments.department_number = 'd005' or departments.department_number = 'd007';

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS "Frequency count"
FROM employees
GROUP BY last_name
ORDER BY "Frequency count" DESC;