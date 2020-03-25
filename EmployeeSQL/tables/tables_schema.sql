-- DB Diagram--
--https://app.quickdatabasediagrams.com/#/d/jtVGfS
------------------------------------------------------
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE salaries;
DROP TABLE titles;
DROP TABLE employees;
DROP TABLE departments;

-- Create the employees table
CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date DATE
);
-- Create the departments table
CREATE TABLE departments (
	dept_no VARCHAR NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

-- Create the dept_emp table
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(30),
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create the dept_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR(30),
	emp_no INT NOT NULL,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create the salaries table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create the titles table
CREATE TABLE titles (
	emp_no INT NOT NULL,
	title VARCHAR,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- import csvs for each table
-- display each table

SELECT * FROM departments;

SELECT * FROM dept_emp;

SELECT * FROM dept_manager;

SELECT * FROM employees;

SELECT * FROM salaries;

SELECT * FROM titles;

