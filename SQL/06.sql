-- Joins in SQL

-- INNER JOIN
CREATE TABLE student(
student_id INT PRIMARY KEY,
name VARCHAR(20)
);
INSERT INTO student
(student_id, name)
VALUES
(101, "adam"),
(102, "bob"),
(103, "casey");


SELECT * FROM student;



CREATE TABLE course (
student_id 	INT PRIMARY KEY,
course VARCHAR(50)
);

INSERT INTO course
(student_id, course)
VALUES
(102, "english"),
(105, "math"),
(103, "science"),
(107, "computer science");

SELECT * FROM student;
SELECT * FROM course;

SELECT *
FROM student
INNER JOIN course
ON student.student_id = course.student_id; 


-- alias that means alternate names
SELECT *
FROM student AS s
INNER JOIN course AS c
ON s.student_id = c.student_id; 

-- both works same
SELECT *
FROM course AS c
INNER JOIN student AS s
ON c.student_id = s.student_id; 
	
-- LEFT JOIN
SELECT *
FROM student AS s
LEFT JOIN course AS c
ON s.student_id = c.student_id;

-- RIGHT JOIN
SELECT *
FROM course AS c
RIGHT JOIN student AS s
ON c.student_id = s.student_id; 

-- FULL JOIN -> LEFT JOIN UNION RIGHT JOIN
SELECT * 
FROM student AS s
LEFT JOIN course AS c
ON s.student_id = c.student_id
UNION
SELECT *
FROM student AS s
RIGHT JOIN course AS c
ON s.student_id = c.student_id;