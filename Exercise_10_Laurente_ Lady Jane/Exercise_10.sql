-- #1
SELECT SUM(age) FROM employee_data;

-- #2
SELECT SUM(yos) FROM employee_data;

-- #3
SELECT SUM(salary), AVG(age) FROM employee_data WHERE title like "Programmer";
