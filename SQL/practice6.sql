-- Find the max marks from the students of Delhi
-- Step 1: Find the students of Delhi
-- Step 2: Find their max marks using the sublist in step 1

-- step 1
SELECT name	
FROM student
WHERE city = "Delhi";


-- step 2
SELECT MAX(marks)
from student
where city = "Delhi";


-- subquery 
-- FROM 
SELECT MAX(marks)
FROM (
	SELECT *	
	FROM student
	WHERE city = "Delhi") AS temp;
    
    
-- We can use subquery in select(but in general we don't use)
SELECT (SELECT MAX(marks) FROM student), name
from student;