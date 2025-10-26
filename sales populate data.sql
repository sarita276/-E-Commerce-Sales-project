use salesreport;

-- Categories
INSERT INTO Categories (CategoryName) VALUES
('Skincare'), ('Makeup'), ('Fragrance'), ('Haircare'), ('Accessories');

-- Customers
INSERT INTO Customers (CustomerName, Email, Phone, City, JoinDate) VALUES
('Aarav Sharma','aarav@gmail.com','9876543210','Mumbai','2024-01-15'),
('Isha Patel','isha@gmail.com','9998887776','Delhi','2024-02-10'),
('Rohan Mehta','rohan@gmail.com','9123456789','Bangalore','2024-03-05'),
('Priya Nair','priya@gmail.com','9887766554','Kochi','2024-04-22'),
('Aditya Verma','aditya@gmail.com','9654321890','Pune','2024-05-12');

-- Products
INSERT INTO Products (ProductName, CategoryID, Price, Stock) VALUES
('Aloe Vera Face Cream',1,499.00,100),
('Lipstick Set',2,899.00,50),
('Perfume Mist',3,1199.00,80),
('Shampoo',4,349.00,120),
('Makeup Brush',5,299.00,150);

-- Orders
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1,'2024-06-01',1498.00),
(2,'2024-06-02',299.00),
(3,'2024-06-05',899.00),
(4,'2024-06-06',1548.00),
(5,'2024-06-07',349.00);

-- OrderItems
INSERT INTO OrderItems (OrderID, ProductID, Quantity, Subtotal) VALUES
(1,1,2,998.00),
(1,3,1,1199.00),
(2,5,1,299.00),
(3,2,1,899.00),
(4,4,2,698.00),
(4,3,1,1199.00),
(5,4,1,349.00);

-- Payments
INSERT INTO Payments (OrderID, PaymentDate, PaymentMode, Amount) VALUES
(1,'2024-06-01','UPI',1498.00),
(2,'2024-06-02','Cash',299.00),
(3,'2024-06-05','Credit Card',899.00),
(4,'2024-06-06','Net Banking',1548.00),
(5,'2024-06-07','UPI',349.00);
