### Common Types of Constraints in SQL:

1. **NOT NULL**
   Ensures that a column cannot have a `NULL` value.

   ```sql
   CREATE TABLE Employees (
       ID INT NOT NULL,
       Name VARCHAR(100) NOT NULL
   );
   ```

2. **UNIQUE**
   Ensures that all values in a column are unique.

   ```sql
   CREATE TABLE Users (
       Email VARCHAR(255) UNIQUE
   );
   ```

3. **PRIMARY KEY**
   A combination of `NOT NULL` and `UNIQUE`. Each table should have a primary key.

   ```sql
   CREATE TABLE Students (
       StudentID INT PRIMARY KEY,
       Name VARCHAR(100)
   );
   ```

4. **FOREIGN KEY**
   Ensures that the value in one column matches a value in another table (used for relationships).

   ```sql
   CREATE TABLE Orders (
       OrderID INT PRIMARY KEY,
       CustomerID INT,
       FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
   );
   ```

5. **CHECK**
   Ensures that all values in a column satisfy a specific condition.

   ```sql
   CREATE TABLE Products (
       Price DECIMAL CHECK (Price > 0)
   );
   ```

6. **DEFAULT**
   Sets a default value for a column if none is provided.

   ```sql
   CREATE TABLE Employees (
       Status VARCHAR(20) DEFAULT 'Active'
   );
   ```
