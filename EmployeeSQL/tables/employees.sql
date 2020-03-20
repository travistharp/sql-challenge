-- Drop table if exists
DROP TABLE employees;

-- Create the players table
CREATE TABLE employees (
	emp_no INT NOT NULL,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date DATE
);

--import csv

SELECT *
FROM employees;
