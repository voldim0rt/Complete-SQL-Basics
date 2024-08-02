CREATE DATABASE emp;
USE emp;
CREATE TABLE emp (
id INT,
salary INT DEFAULT 25000);

INSERT INTO emp (id) VALUES (101);  -- the value will be 25000 by default

SELECT * FROM emp;