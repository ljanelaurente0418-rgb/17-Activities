-- #1
SELECT title, AVG(age) as avg_age FROM employee_data GROUP BY title HAVING avg_age > 30;
