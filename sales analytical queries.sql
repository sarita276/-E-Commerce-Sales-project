use salesreport;

-- Top 5 Customers by Total Spending
SELECT 
    c.CustomerName,
    SUM(o.TotalAmount) AS TotalSpent
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID, c.CustomerName
ORDER BY TotalSpent DESC
LIMIT 5;

-- Best-Selling Products
SELECT 
    p.ProductName,
    SUM(oi.Quantity) AS TotalSold
FROM OrderItems oi
JOIN Products p ON oi.ProductID = p.ProductID
GROUP BY p.ProductID, p.ProductName
ORDER BY TotalSold DESC
LIMIT 5;

-- Monthly Sales Summary
SELECT 
    DATE_FORMAT(OrderDate, '%Y-%m') AS Month,
    SUM(TotalAmount) AS MonthlyRevenue
FROM Orders
GROUP BY Month
ORDER BY Month;

-- Most Popular Payment Mode
SELECT 
    PaymentMode,
    COUNT(*) AS UsageCount
FROM Payments
GROUP BY PaymentMode
ORDER BY UsageCount DESC;

-- Repeat Buyers
SELECT 
    c.CustomerID,
    c.CustomerName,
    COUNT(o.OrderID) AS TotalOrders
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustomerName
HAVING COUNT(o.OrderID) > 1
ORDER BY TotalOrders DESC;

-- Average Items per Order
SELECT 
    o.OrderID,
    COUNT(oi.ProductID) AS TotalItems,
    ROUND(SUM(oi.Subtotal),2) AS OrderValue
FROM Orders o
JOIN OrderItems oi ON o.OrderID = oi.OrderID
GROUP BY o.OrderID
ORDER BY TotalItems DESC;
