--MS SQL Server, T-SQL
--Creating DB, tables

CREATE DATABASE ElectronicsStore;
USE ElectronicsStore;

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    CategoryName VARCHAR(50)
);
GO

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(100),
    CategoryID INT,
    Price DECIMAL(10, 2),
    StockQuantity INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);
GO

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    AddressID INT,
    FOREIGN KEY (AddressID) REFERENCES Addresses(AddressID)
);
GO

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
GO

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
GO

CREATE TABLE Countries (
    CountryID INT PRIMARY KEY IDENTITY(1,1),
    CountryName VARCHAR(50)
);
GO

CREATE TABLE States (
    StateID INT PRIMARY KEY IDENTITY(1,1),
    StateName VARCHAR(50),
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES Countries(CountryID)
);
GO

CREATE TABLE Addresses (
    AddressID INT PRIMARY KEY IDENTITY(1,1),
    Street VARCHAR(100),
    City VARCHAR(50),
    StateID INT,
    PostalCode VARCHAR(10),
    FOREIGN KEY (StateID) REFERENCES States(StateID)
);
GO

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY IDENTITY(1,1),
    SupplierName VARCHAR(100),
    ContactName VARCHAR(50),
    Phone VARCHAR(15),
    Email VARCHAR(100),
    AddressID INT,
    FOREIGN KEY (AddressID) REFERENCES Addresses(AddressID)
);
GO

CREATE TABLE ProductSuppliers (
    ProductSupplierID INT PRIMARY KEY IDENTITY(1,1),
    ProductID INT,
    SupplierID INT,
    SupplyPrice DECIMAL(10, 2),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);
GO

CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY IDENTITY(1,1),
    ProductID INT,
    CustomerID INT,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Comment TEXT,
    ReviewDate DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
GO

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT,
    PaymentDate DATE,
    Amount DECIMAL(10, 2),
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
GO

CREATE TABLE Shipping (
    ShippingID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT,
    ShippingDate DATE,
    ShippingMethod VARCHAR(50),
    TrackingNumber VARCHAR(50),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
GO

CREATE TABLE Discounts (
    DiscountID INT PRIMARY KEY IDENTITY(1,1),
    ProductID INT,
    DiscountPercentage DECIMAL(5, 2),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
GO

CREATE TABLE Wishlists (
    WishlistID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT,
    ProductID INT,
    DateAdded DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
GO
