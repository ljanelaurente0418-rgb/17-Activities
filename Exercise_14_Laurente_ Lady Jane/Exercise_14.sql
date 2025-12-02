-- #1
UPDATE employee_data set l_name="Sharma" where f_name="Anamika" and l_name="Pandit";
SELECT * FROM employee_data;

-- #2
UPDATE employee_data set title="Multimedia Specialist" where title="Multimedia Programmer";
SELECT * FROM employee_data;

-- #3
UPDATE employee_data set salary=salary + 10000 where title NOT LIKE "CEO";
SELECT * FROM employee_data;

