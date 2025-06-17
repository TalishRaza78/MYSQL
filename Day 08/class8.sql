--REVISITING FOREIGN KEY 

CREATE DATABASE school ;
USE school;
CREATE TABLE course (
id INT PRIMARY KEY ,
name VARCHAR (20)    
);
 
CREATE TABLE teacher (
    id INT ,
    name VARCHAR (20),
    course_id INT,
    FOREIGN KEY course_id REFERENCES course(id)
);
SELECT * FROM table_name ;

-- CASCADING FOR FOREIGN KEY 
--(in this if you change any data in your primary key table then automatically change in foreign key table data )

CREATE DATABASE school ;
USE school;
CREATE TABLE course (
id INT PRIMARY KEY ,
name VARCHAR (20)    
);
 
INSERT INTO course
(id , name ) 
VALUES
(01 , "english"),
(02 ,  "math");

SELECT * FROM course ; 
UPDATE course SET id = 03 WHERE id = 02 --This query change the data from both table 

CREATE TABLE teacher (
    id INT PRIMARY KEY ,
    name VARCHAR (20),
    course_id INT,
    FOREIGN KEY course_id REFERENCES course(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE

);
INSERT INTO teacher 
(id , name , course_id )
VALUES
(1, "talish" , 01 ),
(2, "irfan" , 02);

SELECT * FROM teacher ;