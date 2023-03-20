-- "employees" table
-- a. query to select all columns and rows from the employees table
SELECT * FROM employees;

-- b. query to select only the name and salary columns of all employees with a salary greater than 50000
SELECT name, salary FROM employees WHERE salary > 50000;

-- c. query to calculate the average salary of all employees
SELECT AVG(salary) FROM employees;

-- d. query to count the number of employees who work in the "Marketing" department
SELECT COUNT(*) FROM employees WHERE department = 'Marketing';

-- e. query to update the salary column of the employee with an id of 1001 to 60000
UPDATE employees SET salary = 60000 WHERE id = 1001;

-- f. query to delete all employees whose salary is less than 30000
DELETE FROM employees WHERE salary < 30000;


-- "departments" table
-- a. query to select all columns and rows from the departments table
SELECT * FROM departments;

-- b. query to select only the name and manager columns of the "Finance" department
SELECT name, manager FROM departments WHERE name = 'Finance';

-- c. query to calculate the total number of employees in each department
SELECT COUNT(*) FROM employees WHERE department = 'Marketing';

-- d. query to insert a new department called "Research" with a manager named "John Doe"
INSERT INTO departments (name, manager) VALUES ('Research', 'John Doe');
