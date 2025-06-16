-- ALTER QUERY (TO CHANGE THE SCHEMA)

--ADD CLOUMN 
--DROP COLUMN
--MODIFY COLUMN 
--CHANGE COLUMN 
--RENAME TABLE

CRETAE DATABASE zfcollage ;
USE zfcollage;
CREATE TABLE students (
    id INT  PRIMARY KEY,
    name VARCHAR(30) ,
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

    SELECT* FROM student ; 

    --1. 
    ALTER TABLE student ADD COLUMN gender VARCHAR(10) NOT NULL DEFAULT male ;

    --2. 
    ALTER TABLE student CHANGE name stu_name VARCHAR(30);

    --3. 
    ALTER TABLE student MODIFY age VARCHAR(2);

    --4. 
    ALTER TABLE student DROP COLUMN gender;

    --5. 
    ALTER TABLE student RENAME stud ;

    --QUESTION 1. CHANGE THE NAME OF COLUMN "NAME" TO "FULL_NAME" 

    SELECT * FROM student ;
    ALTER TABLE student CHANGE name full_name VARCHAR (30);

    --QUESTION 2. DELETE ALL THE STUDENT WHO SCORED MARKS LESS THAN 80 

    SELECT * FROM student ;
    DELETE FROM student WHERE marks <80 ; 

    --QUESTION 3. DELETE THE COLUMN FOR GRADE 

    SELECT * FROM stuent ;
    ALTER TABLE student DROP COLUMN grade ;

    -- TRINCATE QUERY (TO DELETE THE TABLE'S DATA)
SELECT * FROM student ;
TRUNCATE TABLE student ;

