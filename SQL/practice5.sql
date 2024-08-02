-- Find the names of all students with even roll no numbers;
-- step 1: Find the even roll numbers;
-- step 2: Find the names of students with even roll nos.

-- step 1
SELECT rollno
FROM student
where rollno % 2 = 0;

-- step 2
SELECT name, rollno
FROM student
where rollno % 2 = 0;


SELECT name, rollno
FROM student
where rollno IN (
	SELECT rollno
	FROM student
	where rollno % 2 = 0);
