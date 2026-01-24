CREATE DATABASE RetailAnalyticsDB;
GO
USE RetailAnalyticsDB;
GO


CREATE TABLE DimProducts (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(100),
    Category NVARCHAR(50),       
    SubCategory NVARCHAR(50),    
    Brand NVARCHAR(50),          
    UnitCost DECIMAL(10, 2),     
    UnitPrice DECIMAL(10, 2),   
    IsActive BIT                 
);


CREATE TABLE DimCustomers (
    CustomerID INT PRIMARY KEY,
    CustomerName NVARCHAR(100),
    City NVARCHAR(50),
    Region NVARCHAR(50),         
    Country NVARCHAR(50),
    Segment NVARCHAR(50),        
    IncomeGroup NVARCHAR(20)     
);


CREATE TABLE DimStores (
    StoreID INT PRIMARY KEY,
    StoreName NVARCHAR(100),
    StoreType NVARCHAR(50),      
    City NVARCHAR(50),
    ManagerName NVARCHAR(50)
);


CREATE TABLE FactSales (
    TransactionID INT PRIMARY KEY,
    Date DATE,
    CustomerID INT,
    ProductID INT,
    StoreID INT,
    Quantity INT,
    ActualSalePrice DECIMAL(10, 2), 
    DiscountApplied DECIMAL(10, 2), 
    IsReturned BIT,                
    
    
    CONSTRAINT FK_Sales_Products FOREIGN KEY (ProductID) REFERENCES DimProducts(ProductID),
    CONSTRAINT FK_Sales_Customers FOREIGN KEY (CustomerID) REFERENCES DimCustomers(CustomerID),
    CONSTRAINT FK_Sales_Stores FOREIGN KEY (StoreID) REFERENCES DimStores(StoreID)
);
GO



INSERT INTO DimProducts VALUES 
(101, 'Pro Laptop X1', 'Electronics', 'Laptops', 'TechPro', 800.00, 1200.00, 1),
(102, 'Gaming Mouse', 'Electronics', 'Accessories', 'LogiTech', 15.00, 40.00, 1),
(103, 'Ergo Chair', 'Furniture', 'Chairs', 'Comfi', 100.00, 250.00, 1),
(104, '4K Monitor', 'Electronics', 'Displays', 'Vision', 200.00, 450.00, 1),
(105, 'Wooden Desk', 'Furniture', 'Tables', 'WoodWorks', 150.00, 300.00, 0); 

INSERT INTO DimCustomers VALUES 
(1, 'Alpha Corp', 'New York', 'East', 'USA', 'Corporate', 'High'),
(2, 'Jane Doe', 'London', 'Europe', 'UK', 'Consumer', 'Medium'),
(3, 'StartUp Inc', 'San Francisco', 'West', 'USA', 'Small Business', 'High'),
(4, 'John Smith', 'Manchester', 'Europe', 'UK', 'Consumer', 'Low'),
(5, 'Mega Trade', 'Dubai', 'ME', 'UAE', 'Corporate', 'High');


INSERT INTO DimStores VALUES
(901, 'NY Flagship', 'Flagship', 'New York', 'Sarah Connor'),
(902, 'London Central', 'Outlet', 'London', 'James Bond'),
(903, 'SF TechHub', 'Flagship', 'San Francisco', 'Tony Stark'),
(904, 'Web Store', 'Online', 'Internet', 'AI Bot');


INSERT INTO FactSales VALUES 
(1001, '2023-01-10', 1, 101, 901, 5, 1200.00, 0.00, 0),    
(1002, '2023-02-15', 2, 102, 902, 1, 40.00, 0.00, 0),     
(1003, '2023-03-20', 3, 103, 903, 10, 220.00, 300.00, 0), 
(1004, '2023-05-05', 4, 102, 904, 1, 40.00, 0.00, 1),     
(1005, '2023-11-25', 1, 104, 901, 2, 450.00, 0.00, 0),    
(1006, '2024-01-10', 5, 101, 904, 3, 1150.00, 150.00, 0), 
(1007, '2024-02-14', 2, 104, 902, 1, 400.00, 50.00, 0),   
(1008, '2024-03-01', 3, 105, 903, 2, 250.00, 100.00, 0);  
GO