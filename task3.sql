CREATE DATABASE mydatabase;
USE mydatabase;
CREATE TABLE employees (
  id INT,
  name VARCHAR(50),
  age INT,
  department VARCHAR(50)
);
INSERT INTO employees (id, name, age, department)
VALUES (1, 'John Doe', 30, 'Sales');
	SELECT * FROM employees;
INSERT INTO employees (id, name, age, department)
VALUES (2, 'Jane Smith', 28, 'HR');
SELECT * FROM employees;
SELECT name, age FROM employees WHERE department = 'Sales';
UPDATE employees SET age = 31 WHERE id = 1;
SELECT * FROM employees;
DELETE FROM employees WHERE id = 2;
SELECT * FROM employees;
