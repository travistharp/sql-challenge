-- Drop table if exists
DROP TABLE dept_emp;

-- Create the players table
CREATE TABLE dept_emp (
	emp_no SERIAL PRIMARY KEY,
	dept_no VARCHAR(30),
	from_date DATE,
	to_date DATE
);

--import csv

SELECT *
FROM dept_emp;
