-- #1
SELECT f_name, l_name FROM employee_data WHERE salary <= 90000 and (title not like "Programmer" or title not like "Senior Programmers" or title not like "Multimedia Programmers");

-- #3
SELECT id, f_name, l_name FROM employee_data WHERE age BETWEEN 32 AND 40

-- #4
SELECT f_name, l_name FROM employee_data WHERE age = 32 AND title not like "%programmer%";
