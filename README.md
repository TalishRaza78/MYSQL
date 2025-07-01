# ✅ SQL 

### 🧠 Full Definition of SQL:

**SQL** stands for **Structured Query Language**. It is a **standard programming language** specifically designed for **managing and manipulating relational databases**.

---

### 📌 Key Points:

| Feature             | Description                                                              |
| ------------------- | ------------------------------------------------------------------------ |
| **Full Form**       | Structured Query Language                                                |
| **Purpose**         | To create, read, update, and delete data in a database (CRUD operations) |
| **Type**            | Declarative language (you specify *what* you want, not *how* to do it)   |
| **Standardized by** | ANSI (American National Standards Institute) and ISO                     |
| **Used In**         | MySQL, PostgreSQL, Oracle, SQL Server, SQLite, MariaDB, and others       |

---

### 🧱 Core Components of SQL:

| Category                             | Commands                                             |
| ------------------------------------ | ---------------------------------------------------- |
| **Data Definition Language (DDL)**   | `CREATE`, `ALTER`, `DROP`, `TRUNCATE`                |
| **Data Manipulation Language (DML)** | `SELECT`, `INSERT`, `UPDATE`, `DELETE`               |
| **Data Control Language (DCL)**      | `GRANT`, `REVOKE`                                    |
| **Transaction Control (TCL)**        | `COMMIT`, `ROLLBACK`, `SAVEPOINT`, `SET TRANSACTION` |
| **Data Query Language (DQL)**        | `SELECT`                                             |

---

### ✅ Example SQL Query:

```sql
SELECT name, rollno 
FROM student 
WHERE department = 'Computer Science';
```

This query **retrieves the names and roll numbers** of students in the Computer Science department.

---

### 🔧 What Can You Do With SQL?

* Create databases and tables
* Insert, update, or delete data
* Query data using filters, joins, sorting, and aggregation
* Enforce data integrity with keys and constraints
* Control access with permissions

---
## 🗃️ SQL Clauses Overview

SQL (Structured Query Language) is used to manage and manipulate relational databases. Clauses in SQL are components of SQL statements that define how data is queried or modified.

---

## 📌 Common SQL Clauses

### 🔍 `SELECT`
Used to fetch data from a database.
sql
SELECT column1, column2 FROM table_name;
📦 FROM
Specifies the table to select or delete data from.

sql
Copy
Edit
SELECT * FROM employees;
📄 WHERE
Filters records that meet certain conditions.

sql
Copy
Edit
SELECT * FROM employees WHERE salary > 50000;
🧮 GROUP BY
Groups rows that have the same values into summary rows.

sql
Copy
Edit
SELECT department, COUNT(*) FROM employees GROUP BY department;
✅ HAVING
Used with GROUP BY to filter groups based on a condition.

sql
Copy
Edit
SELECT department, COUNT(*) 
FROM employees 
GROUP BY department 
HAVING COUNT(*) > 5;
📊 ORDER BY
Sorts the result set in ascending or descending order.

sql
Copy
Edit
SELECT * FROM employees ORDER BY salary DESC;

## 🧠 General Order of SQL Execution

When writing SQL queries, the order in which you write the clauses is different from the order in which SQL executes them. Understanding this logical processing order helps in writing more efficient and accurate queries.

---

### ✅ Logical Order of SQL Clauses

1. **`FROM`** – Specifies the table(s) to retrieve data from.
2. **`JOIN`** – Combines rows from multiple tables.
3. **`WHERE`** – Filters rows before grouping.
4. **`GROUP BY`** – Groups rows sharing a property.
5. **`HAVING`** – Filters groups after grouping.
6. **`SELECT`** – Chooses the columns to return.
7. **`DISTINCT`** – Removes duplicate rows.
8. **`ORDER BY`** – Sorts the final result set.
9. **`LIMIT` / `OFFSET`** – Limits the number of rows returned.

---


