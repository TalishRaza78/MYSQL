-- JOIN IN SQL (JOIN IS USED TO COMBINE ROWS FROM TWO OR MORE TABLES)
--TYPES OF JOIN 
--1. INNER JOIN 
--2. OUTER JOIN : a. left join  b.right join  c. full join 

--INNER JOIN (RETURN RECORDS THAT HAVE MATCHING VALUES IN BOTH TABLE )
--SYNTAX
SELECT COLUMN(S) FROM tableA INNER JOIN tableB 
ON tableA.col_name = tableB.col_name 

customers 

| CustomerID | Name    | City     |
| ---------- | ------- | -------- |
| 1          | Alice   | New York |
| 2          | Bob     | Chicago  |
| 3          | Charlie | Boston   |

orders

| OrderID | CustomerID | Product    |
| ------- | ---------- | ---------- |
| 101     | 1          | Laptop     |
| 102     | 2          | Smartphone |
| 103     | 4          | Tablet     |

SELECT * FROM customers INNER JOIN orders
ON customers.customerID = orders.customerID ; 

--output =
| CustomerID | Name  | City     | OrderID | CustomerID | Product    |
| ---------- | ----- | -------- | ------- | ---------- | ---------- |
| 1          | Alice | New York | 101     | 1          | Laptop     |
| 2          | Bob   | Chicago  | 102     | 2          | Smartphone |


-- OUTER JOIN (LEFT JOIN ) 
--RETURN ALL THE RECORD FROM THE LEFT TABLE , AND THE MATCHED RECORD FROM THE RIGHT TABLE

customers 

| CustomerID | Name    | City     |
| ---------- | ------- | -------- |
| 1          | Alice   | New York |
| 2          | Bob     | Chicago  |
| 3          | Charlie | Boston   |

orders

| OrderID | CustomerID | Product    |
| ------- | ---------- | ---------- |
| 101     | 1          | Laptop     |
| 102     | 2          | Smartphone |
| 103     | 4          | Tablet     |

SELECT * FROM customers 
LEFT JOIN orders 
ON customers.CustomerID = orders.CustomerID;

--output =
| CustomerID | Name    | City     | OrderID | CustomerID | Product    |
| ---------- | ------- | -------- | ------- | ---------- | ---------- |
| 1          | Alice   | New York | 101     | 1          | Laptop     |
| 2          | Bob     | Chicago  | 102     | 2          | Smartphone |
| 3          | Charlie | Boston   | NULL    | NULL       | NULL       |

--OUTER JOIN (RIGHT JOIN )
-- RETURN ALL THE RECORD FROM THE RIGHT TABLE , AND THE MATCHED FROM THE LEFT TABLE 
--SYNTAX 
SELECT * FROM customers
RIGHT JOIN orders
ON customers.CustomerID = orders.CustomerID;

--output = 
| CustomerID | Name  | City     | OrderID | CustomerID | Product    |
| ---------- | ----- | -------- | ------- | ---------- | ---------- |
| 1          | Alice | New York | 101     | 1          | Laptop     |
| 2          | Bob   | Chicago  | 102     | 2          | Smartphone |
| NULL       | NULL  | NULL     | 103     | 4          | Tablet     |

--OUTER JOIN (FULL JOIN )
--RETURN WHEN THERE IS A MATCH IN EITHER LEFT OR RIGHT TABLE 
 --SYNTAX
SELECT * FROM customers 
LEFT JOIN orders 
ON customers.CustomerID = orders.CustomerID
UNION
SELECT * FROM customers
RIGHT JOIN orders
ON customers.CustomerID = orders.CustomerID ;

-- OUTPUT =
| CustomerID | Name    | City     | OrderID | CustomerID | Product    |
| ---------- | ------- | -------- | ------- | ---------- | ---------- |
| 1          | Alice   | New York | 101     | 1          | Laptop     |
| 2          | Bob     | Chicago  | 102     | 2          | Smartphone |
| 3          | Charlie | Boston   | NULL    | NULL       | NULL       |
| NULL       | NULL    | NULL     | 103     | 4          | Tablet     |

-- NOW SOME MORE JOIN IN SQL 
--1.LEFT EXCLUSIVE JOIN(returns only the rows from the left table that do not have a matching row in the right table.)
--2.RIGHT EXCLUSIVE JOIN(returns only the rows from the RIGHT table that do not have a matching row in the LEFT table) 
--SYNTAX (L.E.J)
SELECT * FROM customers
LEFT JOIN orders
ON customers.CustomerID = orders.CustomerID
WHERE orders.CustomerID IS NULL;
--OUTPUT = 
| CustomerID | Name    | City   |
| ---------- | ------- | ------ |
| 3          | Charlie | Boston |

--SYNTAX (R.E.J)
SELECT * FROM customers
RIGHT JOIN orders
ON customers.CustomerID = orders.CustomerID
WHERE customers.CustomerID IS NULL;
--output =
| OrderID | CustomerID | Product |
| ------- | ---------- | ------- |
| 103     | 4          | Tablet  |
