--AGGREGATE FUNCTION 
--1. COUNT()
--2. MAX()
--3. MIN()
--4. SUM()
--5. AVG()
SELECT MAX(marks) FROM student;
SELECT COUNT(name) FROM student;

--GROUP BY CLAUSE : (GENERALLY WE USE GROUP BY CLAUSE WITH SOME AGGREGATE FUNCTION)
 --question : count no. of student in each city

 SELECT city, COUNT(name) FROM student GROUP BY city;

 --find average marks in each city in ascending order 

 SELECT city , AVG(marks) FROM student GROUP BY city ORDER BY ASC;
