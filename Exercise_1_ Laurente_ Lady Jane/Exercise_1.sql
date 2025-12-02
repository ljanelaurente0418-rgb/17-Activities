-- #1
create database addressbook;

-- #2
DESCRIBE statement

-- #3
SHOW DATABASES;

-- Create the table
CREATE TABLE employee_data (
    id int auto_increment primary key,
    f_name VARCHAR(250),
    l_name VARCHAR(250),
    title VARCHAR(250),
    age INT,
    years_of_service INT,
    salary INT,
    perks INT,
    email VARCHAR(250)
);

-- END --

-- #4
insert into employee_data values(null,"Rudolf","Reindeer","Business Analyst","34","2","95000","17000","rudolf@bugnet.com");


-- Additional insert queries to populate the table

insert into employee_data values(null,"John","MacFarLand","Senior Programmer","34","2","80000","10000","macfarland@gmail.com");
insert into employee_data values(null,"Hassan","Rajabi","Multimedia Programmer","33","2","90000","20000","rajabi@gmail.com");
insert into employee_data values(null,"Paul","Simon","Multimedia Programmer","43","2","85000","30000","simon@gmail.com");
insert into employee_data values(null,"Roger","Lewis","System Administration","32","2","100000","40000","lewis@gmail.com");
insert into employee_data values(null,"Danny","Gibson","System Administration","34","2","90000","50000","gibson@gmail.com");
insert into employee_data values(null,"Mike","Harper","Senior Marketing Executive","36","2","120000","60000","harper@gmail.com");
insert into employee_data values(null,"Peter","Champion","Finance Manager","36","2","120000","70000","champion@gmail.com");

--- END ---

-- #5
SELECT * from employee_data;
SELECT f_name, l_name, title, age, yos, salary, perks, email from employee_data;

-- #7
SELECT salary, perks, yos from employee_data;

-- #8
select count(id) as number_of_rows from employee_data;

