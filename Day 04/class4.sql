--select and clause

CRETAE DATABASE zfcollage ;
USE zfcollage;
CREATE TABLE students (
    id INT  PRIMARY KEY,
    name VARCHAR(100) ,
    age INT,
    grade VARCHAR(10),
    marks INT NOT NULL,
    city VARCHAR(20)
);

INSERT INTO students (id , name, age, grade, marks, city)
VALUES 
    (01,'haider', 16, '2nd', 89 , 'patna'),
    (02,'irfan', 17, '1st', 94 ,'delhi'),
    (03,'rizwan', 15, '3rd', 81 , 'mumbai')
    (04, 'mizan', 18 , '4th', 76 , 'banguluru')
    (05, 'farhan',17 , '5th', 74 , 'patna');

SELECT * FROM student; --* (total column select)

SELECT DISTINCT city FROM student ;  --distinct means unique

--clause :
--1. where clause (select col1 ,col2 from table_name where condition )

SELECT * FROM student WHERE marks > 80 AND city = 'patna'; --(multipal condition )

--where clause operator : 
 --1. arithmatic (add ,sub , mul , div , mod)

 SELECT * FROM student WHERE marks+20 > 100; 

--2. comparison operator (= , != , > , < , >= , <=)

SELECT * FROM student WHERE marks = 94 ;
 
 --3. logical (AND , OR , NOT , IN , BETWEEN , ALL , LIKE , ANY)

--AND OPERATOIR (both condition to be true )
SELECT * FROM student WHERE marks > 85 AND name = 'haider' ;

--OR OPERATOR (one of the condition to be true )
 SELECT * FROM student WHERE marks =74 OR name = 'mizan' ;

 --BETWEEN OPERATOR (SELECT FROM A GIVEN RANGE ) 
 SELECT * FROM student WHERE marks BETWEEN 80 AND 90 ;

 --IN OPERATOR (MATCH ANY VALUE IN THE LIST)
 SELECT * FROM student WHERE city IN ('patna','mumbai');

 --NOT OPERATOR 
SELECT * FROM student WHERE city NOT IN ('dlehi','mumbai');

-- 2. LIMIT CLAUSE 

SELECT * FROM student LIMIT 2; --(ITS MEAN IT SHOW ONLY 2 ROW FROM THE STUDENT TABLE )

--3. ORDER BY CLUASE (ASC or DESC)
SELECT * FROM student ORDER BY name ASC; 