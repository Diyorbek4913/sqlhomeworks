1. SELECT Products.ProductName, Suppliers.SupplierName
FROM Products
CROSS JOIN Suppliers;
2. SELECT Departments.DepartmentName, Employees.EmployeeName
FROM Departments
CROSS JOIN Employees;SELECT Orders.OrderID, Payments.PaymentID
FROM Payments
JOIN Orders ON Payments.OrderID = Orders.OrderID;

3. SELECT Suppliers.SupplierName, Products.ProductName
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;
4. SELECT Customers.CustomerName, Orders.OrderID
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
5. SELECT Students.StudentName, Courses.CourseName
FROM Students
CROSS JOIN Courses;
6. SELECT Products.ProductName, Orders.OrderID
FROM Products
JOIN Orders ON Products.ProductID = Orders.ProductID;
7. SELECT Employees.EmployeeName, Departments.DepartmentName
FROM Employees
JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
8. SELECT Students.StudentName, Enrollments.CourseID
FROM Enrollments
JOIN Students ON Enrollments.StudentID = Students.StudentID;
9. SELECT Orders.OrderID, Payments.PaymentID
FROM Payments
JOIN Orders ON Payments.OrderID = Orders.OrderID;
10. SELECT Orders.OrderID, Products.ProductName, Products.Price
FROM Orders
JOIN Products ON Orders.ProductID = Products.ProductID
WHERE Products.Price > 100;
11. SELECT Employees.EmployeeName, Departments.DepartmentName
FROM Employees
CROSS JOIN Departments
WHERE Employees.DepartmentID <> Departments.DepartmentID;
12. SELECT Orders.OrderID, Products.ProductName, Orders.Quantity, Products.Stock
FROM Orders
JOIN Products ON Orders.ProductID = Products.ProductID
WHERE Orders.Quantity > Products.Stock;
13.SELECT Customers.CustomerName, Sales.ProductID, Sales.Amount
FROM Sales
JOIN Customers ON Sales.CustomerID = Customers.CustomerID
WHERE Sales.Amount >= 500;
14. SELECT Students.StudentName, Courses.CourseName
FROM Enrollments
JOIN Students ON Enrollments.StudentID = Students.StudentID
JOIN Courses ON Enrollments.CourseID = Courses.CourseID;
15. SELECT Products.ProductName, Suppliers.SupplierName
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Suppliers.SupplierName LIKE '%Tech%';
16. SELECT Orders.OrderID, Orders.TotalAmount, Payments.Amount AS PaymentAmount
FROM Orders
JOIN Payments ON Orders.OrderID = Payments.OrderID
WHERE Payments.Amount < Orders.TotalAmount;
17. SELECT Employees.EmployeeName, Departments.DepartmentName
FROM Employees
JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
18. SELECT Products.ProductName, Categories.CategoryName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName IN ('Electronics', 'Furniture');
19. SELECT Sales.SaleID, Customers.CustomerName, Sales.ProductID, Sales.Amount
FROM Sales
JOIN Customers ON Sales.CustomerID = Customers.CustomerID
WHERE Customers.Country = 'USA';
20. SELECT Orders.OrderID, Customers.CustomerName, Orders.TotalAmount
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE Customers.Country = 'Germany'
  AND Orders.TotalAmount > 100;
21. SELECT E1.EmployeeName AS Employee1, E2.EmployeeName AS Employee2
FROM Employees E1
JOIN Employees E2 ON E1.EmployeeID <> E2.EmployeeID
WHERE E1.DepartmentID <> E2.DepartmentID;
22. SELECT Payments.PaymentID, Orders.OrderID, Payments.Amount AS PaidAmount,
       Orders.Quantity, Products.Price, (Orders.Quantity * Products.Price) AS ExpectedAmount
FROM Payments
JOIN Orders ON Payments.OrderID = Orders.OrderID
JOIN Products ON Orders.ProductID = Products.ProductID
WHERE Payments.Amount <> Orders.Quantity * Products.Price;
23. SELECT Students.StudentID, Students.StudentName
FROM Students
LEFT JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
WHERE Enrollments.StudentID IS NULL;
14. SELECT Manager.EmployeeName AS ManagerName, Employee.EmployeeName AS EmployeeName,
       Manager.Salary AS ManagerSalary, Employee.Salary AS EmployeeSalary
FROM Employees Manager
JOIN Employees Employee ON Employee.ManagerID = Manager.EmployeeID
WHERE Manager.Salary <= Employee.Salary;
25. SELECT DISTINCT Customers.CustomerID, Customers.CustomerName, Orders.OrderID
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
LEFT JOIN Payments ON Orders.OrderID = Payments.OrderID
WHERE Payments.PaymentID IS NULL;
