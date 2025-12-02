-- NOTE: Some data directly updated so that the query would return a value.

-- #1
SELECT id, spouse FROM employee_data WHERE spouse is not null and TRIM(spouse) != "";

-- #2
SELECT id, spouse FROM employee_data WHERE spouse is not null and TRIM(spouse) != "" ORDER BY spouse;

-- Added new fields "sex" and "children"
ALTER TABLE `employee_data` ADD `sex` VARCHAR(6) NOT NULL AFTER `spouse`;
ALTER TABLE `employee_data` ADD `children` INT NOT NULL AFTER `sex`;

-- #3
SELECT sex, count(id) as count FROM employee_data GROUP BY sex;

-- #4
SELECT (SELECT count(spouse) FROM employee_data WHERE spouse is not null and TRIM(spouse) != "") as married, (SELECT count(spouse) FROM employee_data WHERE spouse is null or TRIM(spouse) = "") as not_married;

-- #5
SELECT sum(children) as total_children from employee_data;

-- #6
SELECT sum(children) as total_children from employee_data GROUP BY id ORDER BY total_children DESC;

