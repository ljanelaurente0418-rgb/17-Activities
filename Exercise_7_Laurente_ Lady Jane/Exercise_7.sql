-- #1
SELECT * FROM employee_data ORDER BY age LIMIT 5

-- #2
SELECT * FROM employee_data LIMIT 5 OFFSET 9;

-- #3
SELECT f_name,l_name, salary FROM employee_data where salary=(select max(salary) from employee_data);