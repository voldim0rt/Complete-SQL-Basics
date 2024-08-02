-- FOREIGN KEY 	

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

CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(20)
);

INSERT INTO dept
(id, name)
VALUES
(101, "English"),
(102, "IT");

UPDATE dept
SET id  = 105
WHERE id = 101;

SELECT * FROM dept;

CREATE TABLE teacher (
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO teacher
VALUES
(101, "adam", 101),
(102, "eve", 102);

SELECT * FROM teacher;


DROP TABLE dept;
DROP TABLE TEACHER;




-- Table Related Queries 
-- Alter (to change the schema)

-- ADD COLUMN
ALTER TABLE student
ADD COLUMN age INT;

-- DROP COLUMN
ALTER TABLE student
DROP COLUMN age;

-- RENAME TABLE
ALTER TABLE student
RENAME TO students;

-- RENAMED AGAIN TO AVOID ERRORS
ALTER TABLE students
RENAME TO student;

-- ADD COLUMN
ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

-- MODIFY COLUMN 
ALTER TABLE student
MODIFY age VARCHAR(2);

-- CHANGE COLUMN (RENAME)
ALTER TABLE student
CHANGE age stud_age INT;

ALTER TABLE student
CHANGE stud_age age INT;

-- DROP COLUMN
ALTER TABLE student
DROP COLUMN age;

-- RENAME TABLE
ALTER TABLE student
RENAME TO stud;

-- RENAME
ALTER TABLE stud
RENAME TO student;

TRUNCATE TABLE student;   -- DELETES ALL THE RECORD NOT COLUMNS.

-- INSERTING RECORDS AGAIN
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