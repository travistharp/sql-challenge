-- Drop table if exists
DROP TABLE titles;

-- Create the players table
CREATE TABLE titles (
	emp_no INT NOT NULL,
	title VARCHAR,
	from_date DATE,
	to_date DATE
);

--import csv

SELECT *
FROM titles;
