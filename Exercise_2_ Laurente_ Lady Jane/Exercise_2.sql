
-- Additional insert queries to populate the table

insert into employee_data values(null,"Manish","Sharma","CEO","28","3","80000","10000","Sharma@gmail.com");
insert into employee_data values(null,"Mary","Anchor","Web Designer","26","3","85000","10000","Anchor@gmail.com");
insert into employee_data values(null,"Anamika","Pandit","Web Designer","25","1","70000","10000","Pandit@gmail.com");

--- END ----------------------

-- #1
SELECT * FROM employee_data WHERE age > 30;

-- #2
SELECT  f_name, l_name FROM employee_data WHERE title = "Web Designer"

-- #4
SELECT salary, perks from employee_data WHERE perks > 16000;

-- #5
SELECT l_name, f_name FROM employee_data WHERE title = "Marketing Executive"