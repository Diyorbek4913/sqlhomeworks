Define and explain the purpose of BULK INSERT in SQL Server.
BULK INSERT Products
FROM 'C:\Data\products.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
2. List four file formats that can be imported into SQL Server
CSV (Comma Separated Values)
TXT (Text files)
XML (Extensible Markup Language)
JSON (JavaScript Object Notation)
3. Create a table Products
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)-- This query selects all products that cost more than $50
SELECT * FROM Products
WHERE Price > 50;

);
4. Insert three records into the Products table
INSERT INTO Products (ProductID, ProductName, Price) VALUES
(1, 'Laptop', 1200.00),
(2, 'Mouse', 25.50),
(3, 'Keyboard', 45.99);
5. Explain the difference between NULL and NOT NULL
| Term         | Explanation                                                                     |
| ------------ | ------------------------------------------------------------------------------- |
| **NULL**     | Ma’lumot mavjud emasligini yoki noma’lum qiymatni bildiradi.                    |
| **NOT NULL** | Ustun (column) **bo‘sh bo‘lishi mumkin emas** — har doim qiymat bo‘lishi shart. |
ProductName VARCHAR(50) NOT NULL
6. Add a UNIQUE constraint to ProductName column
ALTER TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);
7. Write a comment in a SQL query explaining its purpose
-- This query selects all products that cost more than $50
SELECT * FROM Products
WHERE Price > 50;
8. Add CategoryID column to the Products table
ALTER TABLE Products
ADD CategoryID INT;
9. Create a table Categories
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) UNIQUE
);
10. Explain the purpose of the IDENTITY column in SQL Server
CREATE TABLE Employees (
    EmpID INT IDENTITY(1,1) PRIMARY KEY,
    EmpName VARCHAR(50)
);
11. Use BULK INSERT to import data from a text file into the Products table
BULK INSERT Products
FROM 'C:\Data\products.txt'
WITH (
    FIELDTERMINATOR = ',',   -- ustunlar orasidagi ajratuvchi belgi
    ROWTERMINATOR = '\n',    -- satr tugash belgisi
    FIRSTROW = 2             -- agar 1-qatorda sarlavha bo‘lsa
);
12.Create a FOREIGN KEY in the Products table that references the Categories table
ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID);
13. Explain the differences between PRIMARY KEY and UNIQUE KEY
| Xususiyat         | PRIMARY KEY                                    | UNIQUE KEY                                             |
| ----------------- | ---------------------------------------------- | ------------------------------------------------------ |
| **Vazifasi**      | Har bir satrni **aniq identifikatsiya** qiladi | Ustundagi qiymatlar **takrorlanmasligini** ta’minlaydi |
| **NULL ruxsat**   | Yo‘q, **NULL bo‘lishi mumkin emas**            | Ha, **bitta NULL** bo‘lishi mumkin                     |
| **Jadvalda soni** | Faqat **bitta PRIMARY KEY** bo‘ladi            | **Bir nechta UNIQUE KEY** bo‘lishi mumkin              |
| **Index turi**    | Clustered Index                                | Non-clustered Index                                    |
14.Add a CHECK constraint to the Products table ensuring Price > 0
ALTER TABLE Products
ADD CONSTRAINT CHK_Price_Positive CHECK (Price > 0);
15. Modify the Products table to add a column Stock (INT, NOT NULL)
ALTER TABLE Products
ADD Stock INT NOT NULL DEFAULT 0;
16. Use the ISNULL function to replace NULL values in Price column with 0
SELECT ProductID, ProductName, ISNULL(Price, 0) AS Price
FROM Products;
17. Describe the purpose and usage of FOREIGN KEY constraints in SQL
ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID)
ON DELETE CASCADE
ON UPDATE CASCADE;
18. Create a Customers table with a CHECK constraint ensuring Age >= 18
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(50),
    Age INT CHECK (Age >= 18)
);
19. Create a table with an IDENTITY column starting at 100 and incrementing by 10
CREATE TABLE Invoice (
    InvoiceID INT IDENTITY(100, 10) PRIMARY KEY,
    CustomerName VARCHAR(50),
    Amount DECIMAL(10,2)
);
20. Create a composite PRIMARY KEY in a new table OrderDetails
CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID)
);
21. Explain the use of COALESCE and ISNULL functions for handling NULL values
| Funksiya       | Maqsadi                                                        | Sintaksis                             | Misol                                                                       |
| -------------- | -------------------------------------------------------------- | ------------------------------------- | --------------------------------------------------------------------------- |
| **ISNULL()**   | Faqat 2 ta qiymatni tekshiradi                                 | `ISNULL(expression, replacement)`     | `ISNULL(Salary, 0)` — agar `Salary` NULL bo‘lsa, `0` qaytaradi              |
| **COALESCE()** | Bir nechta qiymat ichidan birinchi NULL bo‘lmaganini qaytaradi | `COALESCE(value1, value2, value3, …)` | `COALESCE(Phone, Email, 'No Contact')` — birinchi mavjud qiymatni qaytaradi |
22. Create a table Employees with both PRIMARY KEY on EmpID and UNIQUE KEY on Email
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

    Salary DECIMAL(10,2)
);
23. Create a FOREIGN KEY with ON DELETE CASCADE and ON UPDATE CASCADE options
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
