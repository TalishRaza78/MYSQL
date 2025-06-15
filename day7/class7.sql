---UPDATE QUERY IN SQL

---BASIC SYNTAX
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

---UPDATE SINGLE COLUMN
UPDATE employees
SET salary = 60000
WHERE employee_id = 101;

---UPDATE MULTIPLE COLUMN 
UPDATE employees
SET salary = 60000, department = 'Marketing'
WHERE employee_id = 101;

--- Update Based on Another Table (Subquery)
UPDATE employees
SET salary = (
    SELECT AVG(salary)
    FROM employees
    WHERE department = 'IT'
)
WHERE department = 'HR';