CREATE TABLE Employees (
    EmpID INT,
    Name VARCHAR(50),
    Salary DECIMAL(10,2)
);
INSERT INTO Employees (EmpID, Name, Salary)
VALUES (1, 'Ali', 5000.00);
INSERT INTO Employees
VALUES (2, 'Laylo', 6000.00);
INSERT INTO Employees (EmpID, Name, Salary)
VALUES 
(3, 'Jasur', 5500.00),
(4, 'Dilnoza', 6500.00);
UPDATE Employees
SET Salary = 7000
WHERE EmpID = 1;
DELETE FROM Employees
WHERE EmpID = 2;
DELETE → Jadvaldan ma’lumotlarni o‘chiradi, lekin jadval tuzilishi saqlanib qoladi. (WHERE sharti bilan ishlaydi).

TRUNCATE → Jadvaldagi barcha ma’lumotlarni o‘chiradi, lekin tuzilishi qoladi. (Tezroq ishlaydi, WHERE ishlamaydi).

DROP → Jadvalning tuzilishini ham, ma’lumotlarini ham butunlay o‘chiradi.
ALTER TABLE Employees
ALTER COLUMN Name VARCHAR(100);
ALTER TABLE Employees
ADD Department VARCHAR(50);
ALTER TABLE Employees
ALTER COLUMN Salary FLOAT;
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
TRUNCATE TABLE Employees;
Intermediate
1.INSERT INTO Departments (DepartmentID, DepartmentName)
SELECT 1, 'HR' UNION ALL
SELECT 2, 'Finance' UNION ALL
SELECT 3, 'IT' UNION ALL
SELECT 4, 'Marketing' UNION ALL
SELECT 5, 'Operations';
2. UPDATE Employees
SET Department = 'Management'
WHERE Salary > 5000;
3. TRUNCATE TABLE Employees;
4. ALTER TABLE Employees
DROP COLUMN Department;
5. EXEC sp_rename 'Employees', 'StaffMembers';
RENAME TABLE Employees TO StaffMembers;
6. DROP TABLE Departments;
7. CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2) CHECK (Price > 0), -- narx har doim 0 dan katta bo‘lishi kerak
    Supplier VARCHAR(50)
);
8. ALTER TABLE Products
ADD StockQuantity INT DEFAULT 50;
9. EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN';
10. INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, Supplier, StockQuantity)
VALUES 
(1, 'Laptop', 'Electronics', 1200.00, 'TechSupplier', 100),
(2, 'Phone', 'Electronics', 800.00, 'MobileWorld', 200),
(3, 'Desk', 'Furniture', 250.00, 'HomeStyle', 50),
(4, 'Chair', 'Furniture', 120.00, 'OfficePro', 75),
(5, 'Book', 'Stationery', 15.00, 'BookHouse', 300);
11. SELECT *
INTO Products_Backup
FROM Products;
12. EXEC sp_rename 'Products', 'Inventory';
13. ALTER TABLE Inventory
ALTER COLUMN Price FLOAT;
14. ALTER TABLE Inventory
ADD ProductCode INT IDENTITY(1000,5);



