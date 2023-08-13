DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;



--Employees
CREATE TABLE employees (
	emp_no integer NOT NULL PRIMARY KEY ,
	emp_title_id varchar(5) NOT NULL, 
	birth_date date,
	first_name varchar(30),
	last_name varchar(30),
	sex varchar(1),
	hire_Date date
	);

--COPY employees(emp_no, emp_title_id,birth_date,first_name,last_name,sex,hire_Date)
--FROM 'C:\Users\husaavedrapacheco\Documents\GitHub\Challenge-9\Starter_Code\Starter_Code\data\employees.csv' DELIMITER ',' CSV HEADER;


--SELECT * FROM employees;

--Title
CREATE TABLE titles(
	title_id varchar(5) NOT NULL PRIMARY KEY,
	title varchar(30) NOT NULL
	);

	
--COPY titles(title_id, title)
--FROM 'C:\Users\husaavedrapacheco\Documents\GitHub\Challenge-9\Starter_Code\Starter_Code\data\titles.csv' DELIMITER ',' CSV HEADER;
--SELECT * FROM titles;

--Salaries
CREATE TABLE salaries(
	emp_no integer NOT NULL, 
	salary integer NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);
	
--COPY salaries(emp_no, salary)
--FROM 'C:\Users\husaavedrapacheco\Documents\GitHub\Challenge-9\Starter_Code\Starter_Code\data\salaries.csv' DELIMITER ',' CSV HEADER;	

--SELECT * FROM salaries;

--departments	
CREATE TABLE departments(
	dept_no varchar(4) NOT NULL PRIMARY KEY,
	dept_name varchar(30) NOT NULL
	);
	
--COPY departments(dept_no, dept_name)
--FROM 'C:\Users\husaavedrapacheco\Documents\GitHub\Challenge-9\Starter_Code\Starter_Code\data\departments.csv' DELIMITER ',' CSV HEADER;	

--SELECT * FROM departments;
	
-- dept_emp	
CREATE TABLE dept_emp(
	emp_no integer NOT NULL,
	dept_no varchar(4) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);
	
--COPY dept_emp(emp_no, dept_no)
--FROM 'C:\Users\husaavedrapacheco\Documents\GitHub\Challenge-9\Starter_Code\Starter_Code\data\dept_emp.csv' DELIMITER ',' CSV HEADER;	

--SELECT * FROM dept_employee;	
	
--dept_manager
CREATE TABLE dept_manager(
	dept_no varchar(4) NOT NULL,
	emp_no integer NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);
	
--COPY dept_manager(dept_no, emp_no)
--FROM 'C:\Users\husaavedrapacheco\Documents\GitHub\Challenge-9\Starter_Code\Starter_Code\data\dept_manager.csv' DELIMITER ',' CSV HEADER;	

--SELECT * FROM dept_manager;

--SELECT emp_no,last_name,first_name,sex FROM employees;