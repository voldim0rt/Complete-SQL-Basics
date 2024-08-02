-- PRACTICE QUESTION
-- Create a database for you company named XYZ. 
-- Step 1: Create a table inside this DB to store employee info(id, name and salary).
-- Step 2: Add following information in DB.
-- 1, "adam", 25000
-- 2, "bob", 30000
-- 3, "casey", 40000
-- Select and view all your table data.

CREATE DATABASE company;
USE company;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
salary int);

INSERT INTO employee
(id, name, salary)
VALUES
(1, "adam", 25000),
(2, "bob", 30000),
(3, "casey", 40000);

SELECT *
FROM employee;