-- #1
SELECT MIN(perks) FROM employee_data;

-- #2
SELECT MAX(salary) FROM employee_data WHERE title like "%programmer%";

-- #3
SELECT MAX(age) FROM employee_data WHERE title like "Marketing Executive";

-- #4
SELECT f_name, l_name FROM employee_data WHERE age = (select max(age) from employee_data);