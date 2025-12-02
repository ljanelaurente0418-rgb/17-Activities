-- #1
SELECT count(id) from employee_data where yos >= 4;

-- #2
SELECT count(id) as count, age from employee_data GROUP BY age;

-- #3
SELECT count(id) as count, age from employee_data GROUP BY age ORDER BY count DESC;

-- #4
SELECT AVG(age) as avg_age, title from employee_data GROUP BY title;

-- #5
SELECT AVG(age) as avg_age, title from employee_data GROUP BY title ORDER BY avg_age DESC;

-- #6
SELECT CONCAT((perks/(salary*100))*100, "%") as perks_percentage from employee_data ORDER BY perks_percentage DESC;
