-- SELF JOIN IN SQL 
--IT IS REGULAR JOIN BUT THE TABLE IS JOINED WITH IT SELF 
--SYNTAX 
SELECT A.column_name, B.column_name
FROM table_name A
JOIN table_name B ON A.common_field = B.common_field
WHERE condition;

--lets take a question

| emp\_id | name  | manager\_id |
| ------- | ----- | ----------- |
| 1       | Alice | NULL        |
| 2       | Bob   | 1           |
| 3       | Carol | 1           |
| 4       | Dave  | 2           |
--find : get employee with their manager name 

SELECT 
    E.name AS Employee,
    M.name AS Manager
FROM 
    employees E
JOIN 
    employees M ON E.manager_id = M.emp_id;
    --output =
    | Employee | Manager |
| -------- | ------- |
| Bob      | Alice   |
| Carol    | Alice   |
| Dave     | Bob     |

-- UNION IN SQL(TO COMBINE THE RESULT-SET OF TWO OR MORE SELECT STATEMENT)
--SYNTAX 
SELECT column(s) FROM tableA 
UNION
SELECT column(s) FROM tableB

--question 
customers_north --(tableA)
|  customer\_id | name  |
| ------------ | ----- |
| 1            | Alice |
| 2            | Bob   |

customers_south --(tableB)
| customer\_id | name  |
| ------------ | ----- |
| 3            | Carol |
| 2            | Bob   |

SELECT name FROM customers_north
UNION
SELECT name FROM customers_south;

--output =
| name  |
| ----- |
| Alice |
| Bob   |
| Carol |

--SQL SUB QUERIES
--A SUBQUERY IS A QUERY WITHOUT ANOTHER SQL QUERY.IT INVOLVE 2 SELECT STATEMENT

--SYNTAX 
SELECT column(s)
FROM table_name
WHERE col_name operator (subquery);

--QUESTION : FIND EMPLOYEE WITH THE HIGHEST SALARY

employee 
| emp\_id | name  | salary |
| ------- | ----- | ------ |
| 1       | Alice | 5000   |
| 2       | Bob   | 7000   |
| 3       | Carol | 7000   |
| 4       | Dave  | 6000   |

SELECT name , salary FROM employee 
WHERE salary = (SELECT max(salary)) FROM employee);
--output =
| name  | salary |
| ----- | ------ |
| Bob   | 7000   |
| Carol | 7000   |

--this all i learn in sql 

