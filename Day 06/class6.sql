-- HAVING CLAUSE (IT APPLY CONDITION ON GROUP)
--QUESTION : COUNT NO. OF STUDENT IN EACH CITY WHERE MAX MARKS CROSS 90

SELECT city , COUNT(name) FROM student GROUP BY city HAVING MAX(marks) > 90 ;

--  question 
orders

| order\_id | customer\_id | amount |
| --------- | ------------ | ------ |
| 1         | 101          | 250    |
| 2         | 102          | 450    |
| 3         | 101          | 300    |
| 4         | 103          | 150    |
| 5         | 102          | 200    |


SELECT customer_id, SUM(amount) AS total_amount
FROM orders
GROUP BY customer_id
HAVING SUM(amount) > 500;

--GENERAL ORDER 
SELECT column(s)
FROM table_name 
WHERE condition 
GROUP BY column(s)
HAVING condition 
ORDER BY column(s) ASC ;