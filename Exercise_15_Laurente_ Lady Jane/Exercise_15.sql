-- Adding new field date_of_birth
ALTER TABLE employee_data ADD date_of_birth DATE NULL AFTER email;
-- END --

-- Populating all employees with date_of_birth based on their age
UPDATE employee_data as e set date_of_birth = (SELECT
    DATE_SUB(
        DATE_SUB(
            DATE_SUB(CURDATE(), INTERVAL e.age YEAR),
            INTERVAL FLOOR(RAND() * (12 - 1 + 1) + 1) MONTH
        ),
        INTERVAL FLOOR(RAND() * (30 - 1 + 1) + 30) DAY
    ));
-- END --

-- NOTE:  Some data directly updated so that the query would return a value.

-- #1
SELECT id, date_of_birth FROM employee_data WHERE YEAR(date_of_birth) < 1965

-- #2
SELECT id, date_of_birth FROM employee_data WHERE YEAR(date_of_birth) IN (1970, 1972) OR YEAR(date_of_birth) BETWEEN 1970 AND 1972;


