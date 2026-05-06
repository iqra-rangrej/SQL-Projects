# E-Commerce Order Management System :-

CREATE DATABASE Ecommerce;
USE Ecommerce;

# Category Table :
CREATE TABLE Categories (
	Category_id INT PRIMARY KEY,
    Category_name VARCHAR (50)
);

# Products Table :
CREATE TABLE Products (
	Product_id INT PRIMARY KEY,
    Name VARCHAR (50),
    Category_id INT,
    Price DECIMAL (10,2),
    Stock_quantity INT,
    Added_date DATE,
    FOREIGN KEY (Category_id) REFERENCES Categories (Category_id)
);

# Customers Table :
CREATE TABLE Customers (
	Customer_id INT PRIMARY KEY,
    Name VARCHAR (50),
    Email VARCHAR (50) UNIQUE,
    Phone_number VARCHAR (15),
    Address VARCHAR (100),
    Registration_date DATE
);

# Orders Table :
CREATE TABLE Orders (
	Order_id INT PRIMARY KEY,
    Customer_id INT,
    Order_date DATE,
    Total_amount DECIMAL (10,2),
    Status VARCHAR (20),
    FOREIGN KEY (Customer_id) REFERENCES Customers (Customer_id)
);

# Order items Table :
CREATE TABLE Order_item (
	Order_item_id INT PRIMARY KEY,
    Order_id INT,
    Product_id INT,
    Quantity INT,
    Sub_total DECIMAL (10,2),
    FOREIGN KEY (Order_id) REFERENCES Orders (Order_id),
    FOREIGN KEY (Product_id) REFERENCES Products (Product_id)
);

# Payments Table :
CREATE TABLE Payments (
	Payment_id INT PRIMARY KEY,
    Order_id INT,
    Payment_date DATE,
    Payment_method VARCHAR (50),
    Payment_status VARCHAR (20),
    FOREIGN KEY (Order_id) REFERENCES Orders (Order_id)
);

# Shipping Table :
CREATE TABLE Shipping (
	Shipping_id INT PRIMARY KEy,
    Order_id INT,
    Shipping_date DATE,
    Delievery_date DATE,
    Shipping_status VARCHAR (50),
    FOREIGN KEY (Order_id) REFERENCES Orders (Order_id)
);

INSERT INTO Categories VALUES
(1,'Electronics'),
(2,'Clothing'),
(3,'Books'),
(4,'Home Appliances'),
(5,'Sports');

INSERT INTO Products VALUES
(1,'Laptop',1,55000,10,'2023-01-10'),
(2,'Phone',1,30000,0,'2023-02-15'),
(3,'T-shirt',2,500,100,'2023-03-10'),
(4,'Jeans',2,1500,50,'2023-04-01'),
(5,'Novel',3,300,200,'2023-01-20'),
(6,'Mixer',4,2500,30,'2023-05-05'),
(7,'Football',5,800,0,'2023-06-01'),
(8,'Tablet',1,20000,25,'2023-07-01'),
(9,'Jacket',2,2500,15,'2023-08-01'),
(10,'Cricket Bat',5,3500,40,'2023-09-01');

INSERT INTO Customers VALUES
(1,'Aman','a@gmail.com','111','Delhi','2021-01-01'),
(2,'Sara','s@gmail.com','222','Mumbai','2023-02-01'),
(3,'John',NULL,'333','Pune','2022-05-01'),
(4,'Ali','a2@gmail.com','444','Ahmedabad','2024-01-01'),
(5,'Riya','r@gmail.com','555','Surat','2020-01-01');

INSERT INTO Orders VALUES
(1,1,'2024-01-01',60000,'Pending'),
(2,2,'2024-02-01',30000,'Shipped'),
(3,3,'2024-03-01',2000,'Delivered'),
(4,1,'2024-04-01',800,'Cancelled'),
(5,4,'2024-05-01',2500,'Pending'),
(6,2,'2024-06-01',70000,'Delivered');

INSERT INTO  Order_item  VALUES
(1,1,1,1,55000),   
(2,1,3,2,1000),    
(3,2,2,1,30000),  
(4,3,4,1,1500),    
(5,3,5,2,600),    
(6,4,7,1,800),     
(7,5,6,1,2500),    
(8,6,1,1,55000),   
(9,6,10,1,3500),   
(10,5,9,1,2500),   
(11,2,8,1,20000),  
(12,3,3,3,1500);  

INSERT INTO Payments VALUES
(1,1,'2024-01-02','UPI','Paid'),
(2,2,'2024-02-02','Card','Paid'),
(3,3,'2024-03-02','UPI','Paid'),
(4,4,'2024-04-02','UPI','Failed'),
(5,5,'2024-05-02','Card','Pending'),
(6,6,'2024-06-02','UPI','Paid');

INSERT INTO Shipping VALUES
(1,1,'2024-01-03','2024-01-05','Dispatched'),
(2,2,'2024-02-03','2024-02-06','In Transit'),
(3,3,'2024-03-03','2024-03-05','Delivered'),
(4,5,'2024-05-03',NULL,'In Transit');

SELECT * FROM Categories;
SELECT * FROM Customers;
SELECT * FROM Order_item;
SELECT * FROM Orders;
SELECT * FROM Payments;
SELECT * FROM Products;
SELECT * FROM Shipping;

# CRUD Operation :
# Create :
INSERT INTO Products VALUES 
(11, 'Shoes', 2,2000, 20, '2024-07-13');
INSERT INTO Customers VALUES
(6, 'Jack', 'j12@gamil.com', 233, 'Goa', '2023-06-11');
INSERT INTO Orders VALUES
(7,6,'2024-01-11',2400,'Shipped');

# Update :
UPDATE Products
SET stock_quantity = 3
WHERE Product_id =1;

# Delete : (Child Table must be deleted first)
DELETE FROM Orders 
WHERE Status = 'Cancelled'
AND Order_date < CURDATE() - INTERVAL 30 DAY;

# SQL CLauses (WHERE, HAVING, LIMIT) : 
# WHERE :
SELECT * FROM Orders
WHERE Order_date >= CURDATE() - INTERVAL 6 MONTH;

# LIMIT :
SELECT * FROM Products 
ORDER BY Price DESC
LIMIT 5;

# HAVING :
SELECT Customer_id, COUNT(*) AS Total_orders
FROM Orders
GROUP BY Customer_id
HAVING COUNT(*) > 3;

# Apply SQL Operators (AND, OR, NOT) :
# AND :
SELECT * FROM Orders AS O
JOIN Payments AS P ON 
O.Order_id = P.Order_id
WHERE O.Status = ' Pending' AND 
P.Payment_status = 'Paid';

# Not :
SELECT * FROM Products
WHERE  Stock_quantity !=  0;

# OR :
SELECT * FROM Customers 
WHERE Registration_date > '2022-01-01'
OR Customer_id IN (
	SELECT Customer_id FROM Orders 
	WHERE Total_amount > 10000);
    
# Sorting and Grouping Data (ORDER BY, GROUP BY) :
# ORDER BY :
SELECT * FROM Products
ORDER BY Price DESC;

# GROUP BY :
SELECT Customer_id, COUNT(Order_id)
FROM Orders
GROUP BY Customer_id;

# Show Total Revenue generated per category :
SELECT c.Category_name, SUM(O.Sub_total) revenue
FROM Order_item AS O
JOIN Products p ON O.product_id=p.product_id
JOIN Categories c ON p.category_id=c.category_id
GROUP BY c.category_name;

# Use Aggregate functions (SUM, COUNT, MIN, MAX, AVG) :
# Find the total revenue generated by the store :
SELECT SUM(Total_amount) AS Total_revenue 
FROM Orders;

# Identify the most purchased product :
SELECT Product_id, SUM(Quantity) total
FROM Order_item
GROUP BY Product_id
ORDER BY Total DESC
LIMIT 1;

# Calculate the average order value :
SELECT AVG(Total_amount) AS Avg_order_value
FROM Orders;

# Implement Joins :
# Retrieve a list of Products along with their category name using INNER JOIN :
SELECT P.Name, C.Category_name
FROM Products P 
INNER JOIN Categories C ON
P.Category_id = C.Category_id;

# Get all orders with customer details using LEFT JOIN :
SELECT O.Order_id, C.Name
FROM Orders AS O
LEFT JOIN Customers AS C ON
O.Customer_id = C.Customer_id;

# Find orders that havent been shipped using RIGHT JOIN :
SELECT o.Order_id, s.Shipping_status
FROM Orders AS o
RIGHT JOIN Shipping AS s ON
o.Order_id = s.Order_id;

# Show customers who have never placed order using FULL OUTER JOIN :
SELECT C.Name 
FROM Customers AS C
LEFT JOIN Orders AS O ON
C.Customer_id = O.Customer_id
WHERE O.Order_id IS NULL;

# Use Subqueries :
# Find the order placed by customers who registared after 2022 :
SELECT * FROM Orders
WHERE Customer_id IN (
	SELECT Customer_id FROM Customers
    WHERE Registration_Date > '2022-01-01'
);

# Identify the customer who has spent the most :
SELECT Customer_id 
FROM Orders
GROUP BY Customer_id
ORDER BY SUM(TOtal_amount) DESC
LIMIT 1;

# Get products thet have never been ordered : 
SELECT * FROM Products
WHERE Product_id IN (
	SELECT Product_id FROM Order_item
);

# Implement Date and Time Functions :
# Extract the month from Order_date to count orders per month :
SELECT MONTH(Order_date), COUNT(*) AS Orders_per_month
FROM Orders
GROUP BY MONTH(Order_date);

# Calculate the deleivery time by finding the difference between shipping_date and delievery_date :
SELECT Order_id, 
DATEDIFF(Delievery_date, Shipping_date)
FROM Shipping;

# Format Order_date to DD-MM-YYYY :
SELECT 
Date_format(Order_date,'%d-%m-%Y')
FROM Orders;

# Use string manipulation functions :
# Convert all product names to uppercase :
SELECT UPPER(Name) 
FROM Products;

# Trim whitespace from customer names :
SELECT TRIM(Name)
FROM Customers;

# Replace missing email values with 'Not Provided' :
SELECT IFNULL(Email, 'Not Provided')
FROM Customers;

# Implement Window Function :
# Rank Customers based on total spending :
SELECT Customer_id,
RANK() OVER (ORDER BY SUM(Total_amount) DESC) AS Rank_no
FROM Orders
GROUP BY Customer_id;

# Show the cumulative total revenue per month :
SELECT Order_date,
SUM(Total_amount) OVER (ORDER BY Order_date) AS Total_revenue_per_month
FROM Orders;

# Display the running total of orders placed :
SELECT Order_date,
COUNT(*) OVER (ORDER BY Order_date) AS Running_total
FROM Orders;


# Apply SQL Case Expression :
# Assign a Loyalty_status to customers : (Gold, Silver, Bronze) :
SELECT Customer_id,
CASE
WHEN SUM(Total_amount) > 50000 THEN 'GOLD'
WHEN SUM(Total_amount) BETWEEN 20000 AND 50000 THEN 'SILVER'
ELSE 'BRONZE'
END AS Loyalty_status
FROM Orders
GROUP BY Customer_id;

# Categorize Products :
SELECT Name,
CASE 
WHEN Stock_quantity > 500 THEN 'Best Seller'
WHEN Stock_quantity BETWEEN 200 AND 500 THEN 'Popular'
ELSE 'Regular'
END AS Categorize_products
FROM Products;