create database EntityRelationship2;
use EntityRelationship;

-- Create the Customer table
CREATE TABLE Customer3 (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(50),
    ZipCode VARCHAR(10)
);

-- Inserting data into the Customer table
INSERT INTO Customer3 (CustomerID, FirstName, LastName, Email, Phone, Address, City, State, ZipCode)
VALUES
    (1, 'hari', 'naidu', 'hareesh@email.com', '123-456-7890', '123 Main St', 'Anytown', 'CA', '12345'),
    (2, 'sai1', 'krishna2', 'sai1@email.com', '987-654-3210', '456 Elm St', 'Othertown', 'NY', '54321'),
    (3, 'royal', 'Santhosh', 'battusanthosh@email.com', '555-123-7890', '789 Oak St', 'AnotherTown', 'TX', '67890');

-- Create the Orders table
CREATE TABLE Orders2 (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    Status VARCHAR(20),
    PaymentMethod VARCHAR(50),
    CustomerID INT, -- Foreign Key
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Inserting sample data into the Orders table
INSERT INTO Orders2 (OrderID, OrderDate, TotalAmount, Status, PaymentMethod, CustomerID)
VALUES
    (1, '2023-10-20', 100.50, 'Pending', 'Credit Card', 1),  
    (2, '2023-10-21', 75.25, 'Shipped', 'PayPal', 2),       
    (3, '2023-10-22', 200.00, 'Delivered', 'Cash', 1);       

-- Retrieve data
SELECT * FROM Orders2;
SELECT * FROM Customer3;