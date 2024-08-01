USE ElectronicsStore;


INSERT INTO Addresses (Street, City, StateID, PostalCode)
VALUES 
('123 Tech Street', 'Tech City', 1, '12345'),
('456 Gadget Road', 'Gadget Town', 2, '67890'),
('789 Innovation Ave', 'Inno City', 3, '11223'),
('101 Future Blvd', 'Future City', 1, '44556'),
('202 Quantum Dr', 'Quantum Town', 2, '77889'),
('303 Pixel Ln', 'Pixelville', 3, '99001'),
('404 Digital Pkwy', 'Digital City', 1, '22334'),
('505 Gadget St', 'Gadget City', 2, '55667'),
('606 Tech Way', 'Techville', 3, '88990'),
('707 Cyberspace Rd', 'Cyber Town', 1, '33445');


INSERT INTO Customers (FirstName, LastName, Email, Phone, AddressID)
VALUES 
('John', 'Doe', 'john.doe@example.com', '555-1234', 1),
('Jane', 'Smith', 'jane.smith@example.com', '555-5678', 2),
('Alice', 'Johnson', 'alice.johnson@example.com', '555-8765', 3),
('Bob', 'Williams', 'bob.williams@example.com', '555-4321', 4),
('Charlie', 'Brown', 'charlie.brown@example.com', '555-6789', 5),
('Diana', 'Miller', 'diana.miller@example.com', '555-2345', 6),
('Eve', 'Davis', 'eve.davis@example.com', '555-3456', 7),
('Frank', 'Garcia', 'frank.garcia@example.com', '555-4567', 8),
('Grace', 'Wilson', 'grace.wilson@example.com', '555-5670', 9),
('Hank', 'Martinez', 'hank.martinez@example.com', '555-6781', 10),
('Ivy', 'Anderson', 'ivy.anderson@example.com', '555-7892', 1),
('Jack', 'Taylor', 'jack.taylor@example.com', '555-8903', 2),
('Karen', 'Thomas', 'karen.thomas@example.com', '555-9014', 3),
('Larry', 'Moore', 'larry.moore@example.com', '555-0125', 4),
('Mona', 'Jackson', 'mona.jackson@example.com', '555-1236', 5),
('Nina', 'White', 'nina.white@example.com', '555-2347', 6),
('Oscar', 'Harris', 'oscar.harris@example.com', '555-3458', 7),
('Paul', 'Clark', 'paul.clark@example.com', '555-4569', 8),
('Quinn', 'Lewis', 'quinn.lewis@example.com', '555-5671', 9),
('Rita', 'Walker', 'rita.walker@example.com', '555-6782', 10);


INSERT INTO Products (ProductName, CategoryID, Price, StockQuantity)
VALUES 
('Smartphone X', 1, 699.99, 50),
('Laptop Y', 2, 1299.99, 30),
('Tablet Z', 1, 499.99, 40),
('Headphones A', 3, 199.99, 100),
('Smartwatch B', 1, 299.99, 60),
('Printer C', 2, 149.99, 20),
('Camera D', 3, 899.99, 25),
('Monitor E', 2, 349.99, 35),
('Keyboard F', 3, 79.99, 150),
('Mouse G', 3, 59.99, 200),
('Router H', 2, 129.99, 45),
('Smart Speaker I', 1, 99.99, 80),
('Charging Station J', 1, 89.99, 70),
('External Hard Drive K', 2, 129.99, 50),
('Docking Station L', 2, 199.99, 30);


INSERT INTO Categories (CategoryName)
VALUES 
('Smartphones'),
('Laptops'),
('Accessories');


INSERT INTO Orders (CustomerID, OrderDate, TotalAmount)
VALUES 
(1, '2024-07-01', 699.99),
(2, '2024-07-02', 1299.99),
(3, '2024-07-03', 499.99),
(4, '2024-07-04', 199.99),
(5, '2024-07-05', 299.99),
(6, '2024-07-06', 149.99),
(7, '2024-07-07', 899.99),
(8, '2024-07-08', 349.99),
(9, '2024-07-09', 79.99),
(10, '2024-07-10', 59.99);


INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES 
(1, 1, 1, 699.99),
(2, 2, 1, 1299.99),
(3, 3, 1, 499.99),
(4, 4, 2, 199.99),
(5, 5, 1, 299.99),
(6, 6, 1, 149.99),
(7, 7, 1, 899.99),
(8, 8, 1, 349.99),
(9, 9, 1, 79.99),
(10, 10, 1, 59.99),
(1, 11, 2, 199.99),
(2, 12, 1, 99.99),
(3, 13, 1, 89.99),
(4, 14, 1, 129.99),
(5, 15, 1, 199.99),
(6, 1, 1, 699.99),
(7, 2, 1, 1299.99),
(8, 3, 1, 499.99),
(9, 4, 1, 199.99),
(10, 5, 1, 299.99);


INSERT INTO Suppliers (SupplierName, ContactName, Phone, Email, AddressID)
VALUES 
('Tech Supply Co.', 'Alice Green', '555-9876', 'contact@techsupply.com', 1),
('Gadget Wholesalers', 'Bob Blue', '555-8765', 'sales@gadgetwholesalers.com', 2),
('InnoTech Ltd.', 'Charlie Red', '555-7654', 'info@innotech.com', 3),
('Future Supplies', 'Diana Yellow', '555-6543', 'support@futuresupplies.com', 4),
('Quantum Goods', 'Eve Orange', '555-5432', 'orders@quantumgoods.com', 5);


INSERT INTO ProductSuppliers (ProductID, SupplierID, SupplyPrice)
VALUES 
(1, 1, 650.00),
(2, 2, 1200.00),
(3, 3, 470.00),
(4, 4, 180.00),
(5, 5, 290.00),
(6, 4, 140.00),
(7, 1, 850.00),
(8, 2, 340.00),
(9, 3, 70.00),
(10, 5, 55.00);


INSERT INTO Reviews (ProductID, CustomerID, Rating, Comment, ReviewDate)
VALUES 
(1, 1, 5, 'Excellent smartphone!', '2024-07-01'),
(2, 2, 4, 'Great laptop, but a bit pricey.', '2024-07-02'),
(3, 3, 5, 'Love this tablet, very useful.', '2024-07-03'),
(4, 4, 3, 'Average headphones, sound could be better.', '2024-07-04'),
(5, 5, 4, 'Nice smartwatch, very handy.', '2024-07-05'),
(6, 6, 5, 'Good printer for the price.', '2024-07-06'),
(7, 7, 4, 'Great camera, but a bit heavy.', '2024-07-07'),
(8, 8, 5, 'Excellent monitor, very clear display.', '2024-07-08'),
(9, 9, 4, 'Good keyboard, comfortable to type.', '2024-07-09'),
(10, 10, 3, 'Average mouse, could be more responsive.', '2024-07-10'),
(11, 11, 5, 'Fast router, very reliable.', '2024-07-11'),
(12, 12, 5, 'Smart speaker with excellent sound quality.', '2024-07-12'),
(13, 13, 4, 'Useful charging station.', '2024-07-13'),
(14, 14, 5, 'Great external hard drive, lots of space.', '2024-07-14'),
(15, 15, 3, 'Docking station could have more ports.', '2024-07-15');


INSERT INTO Payments (OrderID, PaymentDate, Amount, PaymentMethod)
VALUES 
(1, '2024-07-01', 699.99, 'Credit Card'),
(2, '2024-07-02', 1299.99, 'PayPal'),
(3, '2024-07-03', 499.99, 'Credit Card'),
(4, '2024-07-04', 199.99, 'Bank Transfer'),
(5, '2024-07-05', 299.99, 'Credit Card'),
(6, '2024-07-06', 149.99, 'PayPal'),
(7, '2024-07-07', 899.99, 'Credit Card'),
(8, '2024-07-08', 349.99, 'Bank Transfer'),
(9, '2024-07-09', 79.99, 'Credit Card'),
(10, '2024-07-10', 59.99, 'PayPal');


INSERT INTO Shipping (OrderID, ShippingDate, ShippingMethod, TrackingNumber)
VALUES 
(1, '2024-07-02', 'Standard', 'TRACK12345'),
(2, '2024-07-03', 'Express', 'TRACK67890'),
(3, '2024-07-04', 'Standard', 'TRACK11223'),
(4, '2024-07-05', 'Express', 'TRACK44556'),
(5, '2024-07-06', 'Standard', 'TRACK77889'),
(6, '2024-07-07', 'Express', 'TRACK99001'),
(7, '2024-07-08', 'Standard', 'TRACK22334'),
(8, '2024-07-09', 'Express', 'TRACK55667'),
(9, '2024-07-10', 'Standard', 'TRACK88990'),
(10, '2024-07-11', 'Express', 'TRACK33445');


INSERT INTO Discounts (ProductID, DiscountPercentage, StartDate, EndDate)
VALUES 
(1, 10.00, '2024-07-01', '2024-07-10'),
(2, 15.00, '2024-07-05', '2024-07-15'),
(3, 20.00, '2024-07-10', '2024-07-20'),
(4, 5.00, '2024-07-15', '2024-07-25'),
(5, 25.00, '2024-07-20', '2024-07-30');


INSERT INTO Wishlists (CustomerID, ProductID, DateAdded)
VALUES 
(1, 1, '2024-07-01'),
(2, 2, '2024-07-02'),
(3, 3, '2024-07-03'),
(4, 4, '2024-07-04'),
(5, 5, '2024-07-05'),
(6, 6, '2024-07-06'),
(7, 7, '2024-07-07'),
(8, 8, '2024-07-08'),
(9, 9, '2024-07-09'),
(10, 10, '2024-07-10');


INSERT INTO Employees (FirstName, LastName, Email, Phone, HireDate, Position, Salary, AddressID)
VALUES 
('Alice', 'Green', 'alice.green@techstore.com', '555-9876', '2022-01-01', 'Manager', 60000.00, 1),
('Bob', 'Blue', 'bob.blue@techstore.com', '555-8765', '2022-02-01', 'Salesperson', 45000.00, 2),
('Charlie', 'Red', 'charlie.red@techstore.com', '555-7654', '2022-03-01', 'Technician', 50000.00, 3),
('Diana', 'Yellow', 'diana.yellow@techstore.com', '555-6543', '2022-04-01', 'Customer Service', 40000.00, 4),
('Eve', 'Orange', 'eve.orange@techstore.com', '555-5432', '2022-05-01', 'Warehouse Manager', 55000.00, 5);


INSERT INTO ProductReturns (OrderID, ProductID, ReturnDate, Quantity, Reason)
VALUES 
(1, 1, '2024-07-05', 1, 'Defective product'),
(2, 2, '2024-07-06', 1, 'Not as described'),
(3, 3, '2024-07-07', 1, 'Changed mind'),
(4, 4, '2024-07-08', 2, 'Received wrong item'),
(5, 5, '2024-07-09', 1, 'Product damaged');


INSERT INTO PurchaseOrders (SupplierID, OrderDate, TotalAmount)
VALUES 
(1, '2024-07-01', 2000.00),
(2, '2024-07-02', 3000.00),
(3, '2024-07-03', 1500.00),
(4, '2024-07-04', 2500.00),
(5, '2024-07-05', 3500.00);


INSERT INTO PurchaseOrderDetails (PurchaseOrderID, ProductID, Quantity, UnitPrice)
VALUES 
(1, 1, 10, 650.00),
(1, 2, 5, 1200.00),
(2, 3, 15, 470.00),
(2, 4, 20, 180.00),
(3, 5, 10, 290.00),
(3, 6, 20, 140.00),
(4, 7, 5, 850.00),
(4, 8, 10, 340.00),
(5, 9, 30, 70.00),
(5, 10, 25, 55.00);


INSERT INTO Inventory (ProductID, Quantity, LastUpdated)
VALUES 
(1, 100, '2024-07-01'),
(2, 150, '2024-07-02'),
(3, 200, '2024-07-03'),
(4, 250, '2024-07-04'),
(5, 300, '2024-07-05'),
(6, 350, '2024-07-06'),
(7, 400, '2024-07-07'),
(8, 450, '2024-07-08'),
(9, 500, '2024-07-09'),
(10, 550, '2024-07-10');


INSERT INTO Coupons (Code, DiscountPercentage, ExpiryDate, MinPurchaseAmount)
VALUES 
('SUMMER10', 10.00, '2024-08-01', 100.00),
('BACK2SCHOOL', 15.00, '2024-09-01', 200.00),
('FALL20', 20.00, '2024-10-01', 150.00),
('WINTER25', 25.00, '2024-11-01', 250.00),
('NEWYEAR30', 30.00, '2024-12-31', 300.00);


INSERT INTO Cart (CustomerID, ProductID, Quantity, DateAdded)
VALUES 
(1, 1, 2, '2024-07-01'),
(2, 2, 1, '2024-07-02'),
(3, 3, 3, '2024-07-03'),
(4, 4, 1, '2024-07-04'),
(5, 5, 2, '2024-07-05'),
(6, 6, 1, '2024-07-06'),
(7, 7, 2, '2024-07-07'),
(8, 8, 1, '2024-07-08'),
(9, 9, 2, '2024-07-09'),
(10, 10, 1, '2024-07-10');
