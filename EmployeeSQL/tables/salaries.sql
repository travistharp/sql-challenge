-- Drop table if exists
DROP TABLE salaries;

-- Create the players table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT,
	from_date DATE,
	to_date DATE
);

--import csv

SELECT *
FROM salaries;
