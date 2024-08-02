-- Write SQL commands to display right exclusive join

-- LEFT EXCLUSIVE JOIN
SELECT *
FROM student AS s
LEFT JOIN course AS c
ON s.student_id = c.student_id
WHERE c.student_id IS NULL;

-- RIGHT EXCLUSIVE JOIN
SELECT *
FROM student AS s
RIGHT JOIN course AS c
ON s.student_id = c.student_id
WHERE s.student_id IS NULL;	

-- FULL EXCLUSIVE JOIN
SELECT *
FROM student AS s
LEFT JOIN course AS c
ON s.student_id = c.student_id
WHERE c.student_id IS NULL
UNION
SELECT *
FROM student AS s
RIGHT JOIN course AS c
ON s.student_id = c.student_id
WHERE s.student_id IS NULL;

-- SELF JOIN


CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
manager_id INT);

INSERT INTO employee
(id, name, manager_id)
VALUES
(101, "adam", 103),
(102, "bob", 104),
(103, "casey", NULL),
(104, "donald", 103);

-- SELF JOIN
SELECT a.name AS manager_name, b.name
FROM employee a
JOIN employee b
ON a.id = b.manager_id;

-- UNION -> GIVES UNIQUE RECORDS

SELECT name FROM employee
UNION
SELECT name FROM employee;

-- FOR GETTING DUPLICATE DATA ALSO
SELECT name FROM employee
UNION ALL
SELECT name FROM employee;