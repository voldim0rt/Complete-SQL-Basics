-- SQL Sub Queries
-- Get names of all students who scored more than class average
-- step 1: Find avg of class
-- step 2: Find the names of students with marks > avg;


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

-- step 1:
SELECT AVG(marks)
FROM student;

-- step 2:
SELECT name, marks
FROM student
WHERE marks > 74.333;


-- By using Sub Query method
-- This is dynamic method
SELECT name, marks
FROM student
WHERE marks > (SELECT AVG(marks)
FROM student);