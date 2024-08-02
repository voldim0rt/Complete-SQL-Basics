-- PRACTICE 3
--  In the student table
-- a. Change the name of COLUMN "name" to "full_name"
-- b. Delete all the students who scored marks less than 80
-- c. Delete the columns for grades.

-- a.
ALTER TABLE student
CHANGE name full_name VARCHAR(50);

-- b.
INSERT INTO student
(rollno, full_name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"),
(102, "sunil", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhurv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "Nitin", 82, "B", "Delhi");

-- DISABLE THE SAFE UPDATE MODE FIRST
SET SQL_SAFE_UPDATES = 0;


DELETE FROM student
WHERE marks <80;


-- C.

ALTER TABLE student
DROP COLUMN grade;

SELECT * FROM student;