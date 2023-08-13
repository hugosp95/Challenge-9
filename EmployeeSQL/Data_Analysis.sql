--List the employee number, last name, first name, sex, and salary of each employee (2 points)
SELECT employees.emp_no,employees.last_name,employees.first_name,employees.sex, salaries.salary FROM employees
INNER JOIN salaries ON salaries.emp_no=employees.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date LIKE '%1986';

--List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
SELECT  dept_manager.dept_no, departments.dept_name, employees.emp_no,employees.last_name,employees.first_name FROM dept_manager
INNER JOIN departments ON dept_manager.dept_no=departments.dept_no
INNER JOIN employees ON dept_manager.emp_no=employees.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
SELECT dept_emp.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name FROM dept_emp
INNER JOIN employees ON dept_emp.emp_no=employees.emp_no
INNER JOIN departments ON dept_emp.dept_no=departments.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND  last_name LIKE 'B%';
	
--List each employee in the Sales department, including their employee number, last name, and first name (2 points)
SELECT dept_emp.dept_no,dept_emp.emp_no, employees.last_name, employees.first_name FROM dept_emp
INNER JOIN employees ON dept_emp.emp_no=employees.emp_no
WHERE dept_emp.dept_no = 'd007';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name FROM dept_emp
INNER JOIN employees ON dept_emp.emp_no=employees.emp_no
INNER JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE dept_emp.dept_no = 'd007' OR dept_emp.dept_no = 'd005';

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)

