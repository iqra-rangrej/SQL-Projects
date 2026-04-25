# Project - 1 Data Digger :-

CREATE DATABASE data_digger;
USE data_digger;

# Customers Table :
CREATE TABLE Customers (
	Customer_id INT PRIMARY KEY,
    Name VARCHAR (50),
    Email VARCHAR (50),
    Address VARCHAR (50)
);

# Inserting 5 entries in the table :
INSERT INTO Customers VALUES
(1, 'Alice', 'alice@gmail.com', 'Mumbai'),
(2, 'Bob', 'bob@gmail.com', 'Delhi'),
(3, 'Charlie', 'charlie@gmail.com', 'Pune'),
(4, 'David', 'david@gmail.com', 'Surat'),
(5, 'Alice', 'alice2@gmail.com', 'Ahmedabad');

# Retrieve all customers details : 
SELECT * FROM Customers;

# Update a customers address :
UPDATE customers 
SET Address = 'kolkata'
WHERE Customer_id = 3;

# Delete a customer using the CustomerID :
DELETE FROM customers
WHERE Customer_id = 4;

# Display all customers whose name is "Alice" :
SELECT * FROM customers
WHERE NAME = "Alice";

# Orders table :
CREATE TABLE Orders (
	Order_id INT PRIMARY KEY,
    Customer_id INT,
    Order_date DATE,
    Total_amount DECIMAL (10,2),
    FOREIGN KEY (Customer_id) REFERENCES customers (Customer_id)
);

# Inserting entries :
INSERT INTO Orders VALUES
(101, 1, '2026-04-01', 1500),
(102, 2, '2026-04-10', 2500),
(103, 3, '2026-04-15', 1000),
(104, 1, '2026-03-25', 3000),
(105, 5, '2026-04-12', 2000);

SELECT * FROM Orders; 

# Retrieve orders by a specific customers :
SELECT * FROM Orders
WHERE Customer_id = 1;

# Update an orders total amount :
UPDATE Orders
SET Total_amount = 3500
WHERE Order_id = 102;

# Delete an order using its orderid :
DELETE FROM Orders
WHERE Order_id = 104;

# Retrieve orders placed in the last 30 days :
SELECT * FROM Orders
WHERE Order_date >= curdate() - interval 30 day;

# Retrieve the highest, lowest, average order amount using aggregate function :
SELECT 
MAX(Total_amount) AS Highest,
MIN(Total_amount) AS Lowest,
AVG(Total_amount) AS Average
FROM Orders;

# Products Table :
CREATE TABLE Product (
	Product_id INT PRIMARY KEY,
    Product_name VARCHAR (50),
	Price DECIMAL (10,2),
    Stock INT
);

# Inserting entries :
INSERT INTO Product VALUES
(1, 'Laptop', 50000, 10),
(2, 'Mobile', 20000, 15),
(3, 'Headphones', 1500, 0),
(4, 'Keyboard', 33000, 20),
(5, 'Mouse', 40000, 25);

SELECT * FROM Product;

# Sort by price in descending order :
SELECT * FROM Product 
ORDER BY Price DESC;

# Update the price of the specific product :
UPDATE Product
SET Price = 3000
WHERE Product_id = 4;

# Delete a product if its out of stock :
DELETE FROM Product
WHERE Stock = 0;

# Retrieve a product whose price is between Rs.500 and Rs.2000 :
SELECT * FROM Product
WHERE Price BETWEEN 500 AND 2000;

# Retrieve the most expensive and cheapest product using MAX() and MIN() :
SELECT
MAX(Price) AS Expensive,
MIN(Price) AS Cheapest
FROM Product; 

# Orders Details Table :
CREATE TABLE Orders_details (
	Orderdetails_id INT PRIMARY KEY,
    Order_id INT,
    Product_id INT,
    Quantity INT,
    Sub_total DECIMAL (10,2),
    FOREIGN KEY (Order_id) REFERENCES Orders (Order_id),
	FOREIGN KEY (Product_id) REFERENCES Product (Product_id)
);

# Inserting entries :
INSERT INTO Orders_details VALUES
(1, 101, 1, 1, 50000),
(2, 102, 2, 1, 20000),
(3, 103, 3, 2, 3000),
(4, 105, 4, 3, 2400),
(5, 103, 5, 2, 800);

SELECT * FROM Orders_details;

# Retrieve all order details for a specific order :
SELECT * FROM Orders_details
WHERE Order_id = 102;

# Calculate the total revenue generated from all orders using SUM() :
SELECT 
SUM(Sub_total) AS Total_revenue 
FROM  Orders_details;

# Retrieve top 3 most ordered products :
SELECT Product_id, SUM(Quantity) AS Total_Quantity
FROM Orders_details
GROUP BY Product_id
ORDER BY Total_Quantity DESC
LIMIT 3;

# Count how many times a specific product has been sold using COUNT() :
SELECT Product_id , COUNT(*) AS Times_sold
FROM Orders_details
WHERE Product_id = 4
GROUP BY Product_id ;




