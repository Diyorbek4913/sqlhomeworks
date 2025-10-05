1. Select top 5 employees
SELECT TOP 5 *
FROM Employees;
2. SELECT DISTINCT – unique Category values from Products table
SELECT DISTINCT Category
FROM Products;
3. Filter Products where Price > 100
SELECT *
FROM Products
WHERE Price > 100;
4. Select all Customers whose FirstName starts with 'A' (LIKE operator)
SELECT *
FROM Customers
WHERE FirstName LIKE 'A%';
5. Order Products by Price in ascending order
SELECT *
FROM Products
ORDER BY Price ASC;
6. WHERE clause — employees with Salary >= 60000 and DepartmentName = 'HR'
SELECT *
FROM Employees
WHERE Salary >= 60000
  AND DepartmentName = 'HR';
7. Replace NULL Email values with "noemail@example.com"
SELECT 
    EmployeeID,
    FirstName,
    LastName,
    ISNULL(Email, 'noemail@example.com') AS Email
FROM Employees;
8. Show all products with Price BETWEEN 50 AND 100
SELECT *
FROM Products
WHERE Price BETWEEN 50 AND 100;
9. SELECT DISTINCT on two columns (Category, ProductName)
SELECT DISTINCT Category, ProductName
FROM Products;
10. SELECT DISTINCT Category, ProductName and order by ProductName DESC
SELECT DISTINCT Category, ProductName
FROM Products
ORDER BY ProductName DESC;
11. Select the top 10 products ordered by Price (DESC)
SELECT TOP 10 *
FROM Products
ORDER BY Price DESC;
12. Use COALESCE to return the first non-NULL value (FirstName or LastName)
SELECT 
    EmpID,
    COALESCE(FirstName, LastName) AS PreferredName
FROM Employees;
13. Select distinct Category and Price from Products table
SELECT DISTINCT Category, Price
FROM Products;
14. Filter Employees whose Age is between 30 and 40 OR DepartmentName = 'Marketing'
SELECT *
FROM Employees
WHERE (Age BETWEEN 30 AND 40)
   OR DepartmentName = 'Marketing';
15. Select rows 11 to 20 from Employees ordered by Salary (DESC)
SELECT *
FROM Employees
ORDER BY Salary DESC
OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;
16. Display all Products with Price ≤ 1000 and StockQuantity > 50 (order by Stock asc)
SELECT *
FROM Products
WHERE Price <= 1000
  AND StockQuantity > 50
ORDER BY StockQuantity ASC;
17. Filter Products whose ProductName contains the letter 'e'
SELECT *
FROM Products
WHERE ProductName LIKE '%e%';
18. Use IN operator to get employees in HR, IT, or Finance
SELECT *
FROM Employees
WHERE DepartmentName IN ('HR', 'IT', 'Finance');
19.Order Customers by City (ASC) and PostalCode (DESC)
SELECT *
FROM Customers
ORDER BY City ASC, PostalCode DESC;
20. Top 5 products with the highest sales
  SELECT TOP (5) *
FROM Products
ORDER BY SaleAmount DESC;
21. Combine FirstName and LastName into FullName
SELECT 
    EmpID,
    FirstName + ' ' + LastName AS FullName,
    DepartmentName,
    Salary
FROM Employees;
22. Select DISTINCT Category, ProductName, and Price for products priced above $50
SELECT DISTINCT Category, ProductName, Price
FROM Products
WHERE Price > 50;
23. Products whose price < 10% of average product price
SELECT *
FROM Products
WHERE Price < 0.1 * (SELECT AVG(Price) FROM Products);
24. Employees younger than 30 and in HR or IT
SELECT *
FROM Employees
WHERE Age < 30
  AND DepartmentName IN ('HR', 'IT');
25. Customers whose Email contains '@gmail.com'
SELECT *
FROM Customers
WHERE Email LIKE '%@gmail.com%';
26. Employees whose salary is greater than ALL employees in Sales department
