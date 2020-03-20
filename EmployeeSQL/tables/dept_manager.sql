-- Drop table if exists
DROP TABLE dept_manager;

-- Create the players table
CREATE TABLE dept_manager (
	dept_no VARCHAR(30),
	emp_no INT NOT NULL,
	from_date DATE,
	to_date DATE
);

--import csv

SELECT *
FROM dept_manager;
