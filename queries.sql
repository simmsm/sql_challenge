-- List the employee number, last name, first name, sex, and salary of each employee.
Select employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM employees
INNER JOIN salaries ON 
employees.emp_no=salaries.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
Select employees.first_name,
	employees.last_name, 
	employees.hire_date
FROM employees
WHERE hire_date >= '1986-01-01' 
AND hire_date <= '1986-12-31'

--List the manager of each department along with their department number, department name, employee number,
--last name, and first name.
SELECT dept_manager.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	employees.last_name,
	employees.first_name
FROM dept_manager
INNER JOIN departments ON
departments.dept_no = dept_manager.dept_no 
INNER JOIN employees ON 
employees.emp_no =dept_manager.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, 
-- first name, and department name.
SELECT employees.last_name,
	employees.first_name,
	dept_emp.emp_no,
	departments.dept_no,
	departments.dept_name
FROM dept_emp
INNER JOIN employees ON 
dept_emp.emp_no= employees.emp_no
INNER JOIN departments ON 
dept_emp.dept_no= departments.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules
-- and whose last name begins with the letter B.
SELECT employees.first_name,
	employees.last_name,
	employees.sex
FROM employees 
WHERE first_name ='Hercules'
AND last_name LIKE 'B%'

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT employees.last_name,
	employees.first_name,
	dept_emp.emp_no,
	departments.dept_name 
FROM dept_emp
INNER JOIN employees ON 
dept_emp.emp_no= employees.emp_no
INNER JOIN departments ON 
dept_emp.dept_no= departments.dept_no
WHERE departments.dept_no= 'd007'

--List each employee in the Sales and Development departments, including their employee number, last name,
--first name, and department name.
SELECT employees.last_name,
	employees.first_name,
	dept_emp.emp_no,
	departments.dept_name 
FROM dept_emp
INNER JOIN employees ON 
dept_emp.emp_no= employees.emp_no
INNER JOIN departments ON 
dept_emp.dept_no= departments.dept_no
WHERE departments.dept_no= 'd007'
OR departments.dept_no ='d005'

--List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name).
SELECT last_name, COUNT (last_name) FROM employees
GROUP BY last_name
ORDER BY (count) desc









