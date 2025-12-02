-- NOTE: Some data directly updated so that the query would return a value.

-- #1
SELECT id, date_of_birth, email FROM employee_data WHERE MONTH(date_of_birth) = 4;

-- Added new field "spouse" --
ALTER TABLE `employee_data` ADD `spouse` VARCHAR(250) NOT NULL AFTER `date_of_birth`;
-- END --

-- #2
SELECT id, date_of_birth, spouse FROM employee_data WHERE YEAR(date_of_birth) = 1969 ORDER BY spouse;

-- #3
SELECT id FROM employee_data WHERE MONTH(date_of_birth) = MONTH(CURDATE());

-- #4
SELECT count(DISTINCT date_of_birth) as count FROM employee_data;

-- #5
SELECT date_of_birth, count(date_of_birth) as count FROM employee_data GROUP BY date_of_birth;

-- #6
SELECT MONTHNAME(date_of_birth) as MONTH, count(date_of_birth) as count FROM employee_data GROUP BY MONTHNAME(date_of_birth) ORDER BY count DESC;




