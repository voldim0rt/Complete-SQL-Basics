-- Practice 2
-- Write the Query to find avg marks in each city in ascending order

SELECT city, AVG(marks)
FROM student
GROUP BY city
ORDER BY city ASC;

 