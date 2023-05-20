CREATE DATABASE mydatabase4;
USE mydatabase4;
CREATE TABLE employees (
  id INT,
  name VARCHAR(50),
  age INT,
  department VARCHAR(50)
);

CREATE TABLE departments (
  id INT,
  name VARCHAR(50),
  location VARCHAR(50)
);
INSERT INTO employees (id, name, age, department)
VALUES (1, 'John Doe', 30, 'Sales');

INSERT INTO departments (id, name, location)
VALUES (1, 'Sales', 'New York');

SELECT employees.name, departments.location
FROM employees
JOIN departments ON employees.department = departments.name;

SELECT department, SUM(age) AS total_age
FROM employees
GROUP BY department;




