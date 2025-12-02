-- #1
SELECT * FROM employee_data ORDER BY salary;

-- #2
SELECT * FROM employee_data ORDER BY yos DESC;

-- #3
SELECT l_name, f_name FROM `employee_data` WHERE title IN("Programmer","Web Designer") ORDER BY l_name