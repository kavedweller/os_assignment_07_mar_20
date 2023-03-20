-- Data Definition Language (DDL) queries for creating a database and tables
-- create database named XYZ Corp.
CREATE DATABASE `XYZ Corp.`;

-- employees(id, name, age, salary, department_id)
-- Please disable foreign key checks before running this query.
USE `XYZ Corp.`;
CREATE TABLE `employees` (
    `id` INT NOT NULL,
    `name` VARCHAR(255),
    `age` INT,
    `salary` INT,
    `department_id` INT,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)  
);

-- departments(id, name, manager)
-- Please disable foreign key checks before running this query.
USE `XYZ Corp.`;
CREATE TABLE `departments` (
    `id` INT NOT NULL,
    `name` VARCHAR(255),
    `manager` VARCHAR(255),
    PRIMARY KEY (`id`)
);


-- Data Manipulation Language (DML) queries:

-- "employees" table
-- a. query to select all columns and rows from the employees table
SELECT * FROM `employees`;

-- b. query to select only the name and salary columns of all employees with a salary greater than 50000
SELECT `name`, `salary` FROM `employees` WHERE `salary` > 50000;

-- c. query to calculate the average salary of all employees
SELECT AVG(`salary`) FROM `employees`;

-- d. query to count the number of employees who work in the "Marketing" department
SELECT COUNT(*) FROM `employees` e, `departments` d
WHERE e.department_id = d.id AND d.name = 'Marketing';

-- e. query to update the salary column of the employee with an id of 1001 to 60000
UPDATE `employees` SET `salary` = 60000 WHERE `id` = 1001;

-- f. query to delete all employees whose salary is less than 30000
DELETE FROM `employees` WHERE `salary` < 30000;


-- "departments" table
-- a. query to select all columns and rows from the departments table
SELECT * FROM `departments`;

-- b. query to select only the name and manager columns of the "Finance" department
SELECT `name`, `manager` FROM `departments` WHERE `name` = 'Finance';

-- c. query to calculate the total number of employees in each department
SELECT d.name AS 'Department'
    ,COUNT(e.id) AS 'Employees' 
FROM departments d 
LEFT OUTER JOIN employees e 
    ON e.department_id = d.id 
GROUP BY d.name;


-- d. query to insert a new department called "Research" with a manager named "John Doe"
INSERT INTO `departments` (`id`, `name`, `manager`) VALUES (2, 'Research', 'John Doe');