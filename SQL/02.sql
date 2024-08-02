CREATE DATABASE college;
USE college;

CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);



INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "sunil", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhurv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "Nitin", 82, "B", "Delhi");


SELECT * FROM student;
SELECT city FROM student;    -- only city list
SELECT DISTINCT city FROM student; -- will give Pune, Mumbai Delhi (unique)

-- > < OPERATORS
SELECT marks FROM student
WHERE marks > 80;

SELECT marks FROM student
WHERE marks > 80 AND city = "Mumbai";

-- OR OPERATOR
SELECT marks FROM student
WHERE marks > 80 OR city = "Mumbai";

-- AND OPERATOR
SELECT marks FROM student
WHERE marks BETWEEN 80 AND 90;

SELECT marks FROM student
WHERE marks+10>100;

-- IN
SELECT * FROM student
WHERE city IN ("Mumbai", "Delhi");

-- NOT IN
SELECT * FROM student
WHERE city NOT IN ("Mumbai", "Delhi");

-- LIMIT
SELECT * FROM student
LIMIT 3;

-- conditions to limit
SELECT * FROM student
WHERE marks > 80
LIMIT 3;

 -- Order by clause
-- To sort ascending (ASC) or descending order (DESC)

-- ASC
SELECT * FROM student
ORDER BY city ASC;

SELECT * FROM student
ORDER BY rollno ASC;

-- DESC
SELECT * FROM student
ORDER BY city DESC;

SELECT * FROM student
ORDER BY rollno DESC;

SELECT * FROM student
ORDER BY city DESC
LIMIT 3; 

-- Aggregate Functions
-- COUNT()
-- MAX()
-- MIN()
-- SUM()
-- AVG()

SELECT COUNT(rollno)
FROM student;

SELECT MAX(marks)
FROM student;

SELECT MIN(marks)
FROM student;

SELECT SUM(marks)
FROM student;

SELECT AVG(marks)
FROM student;

-- GROUP BY clause

SELECT city, name, COUNT(marks)
FROM student
GROUP BY city, name;   -- must all the columns mentioned in a select statement 

SELECT city, AVG(marks)
FROM student
GROUP BY city;




SELECT city, AVG(marks) 
FROM student
GROUP BY city ASC;