 -- Common Types of Constraints in SQL

--1. NOT NULL
   
   CREATE TABLE worker(
       id INT NOT NULL,
       Name VARCHAR(100) NOT NULL
   );
   

--2. UNIQUE
   
   CREATE TABLE Users (
       Email VARCHAR(255) UNIQUE
   );
   

--3. PRIMARY KEY
   
   CREATE TABLE Students (
       Studentid INT PRIMARY KEY,
       Name VARCHAR(100)
   );
   

--4. FOREIGN KEY
   
   CREATE TABLE Orders (
       Orderid INT PRIMARY KEY,
       Customerid INT,
       FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
   );
   

--5. CHECK

   CREATE TABLE Products (
       Price DECIMAL CHECK (Price > 0)
   );


--6. DEFAULT
   
   CREATE TABLE Employees (
       Status VARCHAR(20) DEFAULT 'Active'
   );

-- these are the constraint in sql 