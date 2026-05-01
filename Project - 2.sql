# Project - 2 DATA TRANSFORMER :-

CREATE DATABASE Data_transformer;
USE Data_transformer;

# Customers Table :
CREATE TABLE CUSTOMERS (
		Customer_id INT PRIMARY KEY,
        First_name VARCHAR (50),
        Last_name VARCHAR (50),
        Email VARCHAR(50) UNIQUE,
        Registration_date DATE 
);

# Orders Table : 
CREATE TABLE ORDERS (
	Order_id INT PRIMARY KEY,
    Customer_id INT,
    Order_date date,
    Total_amount DECIMAL (10,2),
    FOREIGN KEY (Customer_id) REFERENCES CUSTOMERS (Customer_id)
);

# Employees Table :
CREATE TABLE EMPLOYEES (
	Employee_id INT PRIMARY KEY,
    first_name VARCHAR (50),
    last_name VARCHAR (50),
    Department VARCHAR (50),
    Hire_date DATE,
    Salary DECIMAL (10,2)
);

INSERT INTO CUSTOMERS VALUES
(1,'Aarav','Sharma','aarav.sharma@gmail.com','2022-01-10'),
(2,'Vivaan','Patel','vivaan.patel@gmail.com','2021-11-05'),
(3,'Aditya','Verma','aditya.verma@gmail.com','2022-03-15'),
(4,'Reyansh','Gupta','reyansh.gupta@gmail.com','2020-07-21'),
(5,'Arjun','Mehta','arjun.mehta@gmail.com','2023-02-11'),
(6,'Kabir','Nair','kabir.nair@gmail.com','2021-09-18'),
(7,'Ishaan','Kapoor','ishaan.kapoor@gmail.com','2022-05-25'),
(8,'Rohan','Das','rohan.das@gmail.com','2020-12-30'),
(9,'Yash','Joshi','yash.joshi@gmail.com','2023-01-14'),
(10,'Kunal','Reddy','kunal.reddy@gmail.com','2021-06-06'),
(11,'Ananya','Shah','ananya.shah@gmail.com','2022-08-19'),
(12,'Diya','Agarwal','diya.agarwal@gmail.com','2023-03-10'),
(13,'Saanvi','Iyer','saanvi.iyer@gmail.com','2020-04-22'),
(14,'Meera','Chopra','meera.chopra@gmail.com','2021-12-01'),
(15,'Aisha','Khan','aisha.khan@gmail.com','2022-07-07'),
(16,'Priya','Singh','priya.singh@gmail.com','2023-02-20'),
(17,'Neha','Bansal','neha.bansal@gmail.com','2020-10-05'),
(18,'Pooja','Malhotra','pooja.malhotra@gmail.com','2021-03-11'),
(19,'Sneha','Kulkarni','sneha.k@gmail.com','2022-06-15'),
(20,'Riya','Pandey','riya.pandey@gmail.com','2023-01-28'),
(21,'John','Doe','john.doe@gmail.com','2022-03-15'),
(22,'Jane','Smith','jane.smith@gmail.com','2021-11-02'),
(23,'Michael','Brown','michael.brown@gmail.com','2022-09-09'),
(24,'Emily','Davis','emily.davis@gmail.com','2023-02-01'),
(25,'David','Wilson','david.wilson@gmail.com','2020-05-19'),
(26,'Sophia','Taylor','sophia.taylor@gmail.com','2021-08-30'),
(27,'Daniel','Anderson','daniel.a@gmail.com','2022-10-12'),
(28,'Olivia','Thomas','olivia.t@gmail.com','2023-03-25'),
(29,'James','Jackson','james.j@gmail.com','2021-07-07'),
(30,'Isabella','White','isabella.w@gmail.com','2022-11-11');

INSERT INTO ORDERS VALUES
(101,1,'2023-07-01',150.50),
(102,2,'2023-07-03',200.75),
(103,3,'2023-07-05',500.00),
(104,4,'2023-07-06',750.25),
(105,5,'2023-07-08',1200.00),
(106,6,'2023-07-10',300.40),
(107,7,'2023-07-11',450.00),
(108,8,'2023-07-12',900.90),
(109,9,'2023-07-13',1100.00),
(110,10,'2023-07-14',250.60),
(111,11,'2023-07-15',600.00),
(112,12,'2023-07-16',800.00),
(113,13,'2023-07-17',950.00),
(114,14,'2023-07-18',400.00),
(115,15,'2023-07-19',1300.00),
(116,16,'2023-07-20',700.00),
(117,17,'2023-07-21',100.00),
(118,18,'2023-07-22',2000.00),
(119,19,'2023-07-23',350.00),
(120,20,'2023-07-24',650.00),
(121,21,'2023-07-25',500.00),
(122,22,'2023-07-26',720.00),
(123,23,'2023-07-27',820.00),
(124,24,'2023-07-28',910.00),
(125,25,'2023-07-29',1000.00),
(126,26,'2023-07-30',1500.00),
(127,27,'2023-07-31',300.00),
(128,28,'2023-08-01',450.00),
(129,29,'2023-08-02',600.00),
(130,30,'2023-08-03',750.00);

INSERT INTO EMPLOYEES VALUES
(1,'Rahul','Sharma','Sales','2020-01-15',50000),
(2,'Ankit','Verma','HR','2021-03-20',55000),
(3,'Neeraj','Gupta','IT','2019-07-11',60000),
(4,'Pankaj','Singh','Finance','2018-05-25',65000),
(5,'Amit','Kumar','Sales','2020-09-30',48000),
(6,'Ravi','Yadav','IT','2021-12-01',70000),
(7,'Suresh','Patel','HR','2019-02-18',52000),
(8,'Manish','Shah','Finance','2020-11-21',58000),
(9,'Kiran','Desai','IT','2022-01-10',62000),
(10,'Deepak','Mehta','Sales','2018-08-08',54000),
(11,'Sunil','Reddy','HR','2021-04-14',51000),
(12,'Vikas','Nair','IT','2019-10-19',72000),
(13,'Arvind','Kapoor','Finance','2020-06-05',66000),
(14,'Harsh','Joshi','Sales','2022-02-22',47000),
(15,'Tarun','Bansal','IT','2021-07-07',68000),
(16,'Mohit','Malhotra','HR','2020-03-03',53000),
(17,'Rakesh','Iyer','Finance','2019-09-09',61000),
(18,'Gaurav','Pandey','IT','2022-05-12',75000),
(19,'Nitin','Kulkarni','Sales','2018-12-20',49000),
(20,'Ajay','Chopra','HR','2021-01-01',56000),
(21,'Mark','Johnson','Sales','2020-01-15',50000),
(22,'Susan','Lee','HR','2021-03-20',55000),
(23,'James','Brown','IT','2019-06-10',65000),
(24,'Linda','White','Finance','2018-04-18',70000),
(25,'Robert','Hall','Sales','2020-10-05',48000),
(26,'Patricia','Allen','IT','2021-09-09',72000),
(27,'Michael','Young','HR','2019-11-11',53000),
(28,'Barbara','King','Finance','2020-07-07',60000),
(29,'William','Scott','IT','2022-02-14',74000),
(30,'Elizabeth','Green','Sales','2018-03-03',52000);  

SELECT * FROM CUSTOMERS;

SELECT * FROM ORDERS;

SELECT * FROM EMPLOYEES;

# Retrive all orders and customer details where orders exist :
SELECT C.* , O.*
FROM CUSTOMERS C
INNER JOIN ORDERS O
ON C.Customer_id = O.Customer_id;

# Retrieve all customers and their corresponding orders :
SELECT C.* , O.*
FROM CUSTOMERS C
LEFT JOIN ORDERS O
ON C.Customer_id = O.Customer_id;

# Retrieve all orders and their corresponding orders :
SELECT C.* , O.*
FROM CUSTOMERS C
RIGHT JOIN ORDERS O
ON C.Customer_id = O.Customer_id;

# Retrieve all customers and all orders, regardless of matching :
SELECT C.* , O.*
FROM CUSTOMERS C
LEFT JOIN ORDERS O
ON C.Customer_id = O.Customer_id
UNION
SELECT C.* , O.*
FROM CUSTOMERS C
RIGHT JOIN ORDERS O
ON C.Customer_id = O.Customer_id;

# Customers who have placed orders worth more than the average amount :
SELECT * FROM CUSTOMERS
WHERE Customer_id IN (
	SELECT Customer_id 
    FROM ORDERS
    WHERE Total_amount > (SELECT AVG (Total_amount) FROM ORDERS)
);

# Find employees with salary above the average salary :
SELECT * FROM EMPLOYEES 
WHERE Salary > (SELECT AVG (Salary) FROM EMPLOYEES) ;

# Extract the year and month from the order date :
SELECT Order_id, 
YEAR (Order_date) AS YEAR,
MONTH (Order_date) AS MONTH
FROM Orders;

# Calculate the difference in days between two dates :
SELECT Order_id ,
DATEDIFF (Current_date, Order_date) AS DaysDifference 
FROM ORDERS;

# Formate the order date to a more readable format :
SELECT Order_date ,
DATE_FORMAT (Order_date, '%d- %m- %Y') AS Formatted_date
FROM ORDERS;

# Concate Firstname and Lastname to form a fullname :
SELECT CONCAT (First_name , ' ', Last_name) AS Full_name
FROM CUSTOMERS;

# Replace part of a string :
SELECT REPLACE (First_name, 'James', 'Jack') 
AS Updated_name 
FROM CUSTOMERS;

# Convert Firstname to uppercase and lastname to lowercase :
SELECT 
UPPER (First_name) AS First_name_upper,
LOWER (Last_name) AS Last_name_lower
FROM CUSTOMERS;

# Trim extra spaces from EMAIL field :
SELECT TRIM (Email) AS CleanEmail
FROM CUSTOMERS;

# Calculate the running total of total amount for each other :
SELECT Order_id, Total_amount,
SUM(Total_amount)
OVER (ORDER BY Order_id) AS Running_total
FROM ORDERS;

# Rank orders based on TotalAmount using the RANK() function :
SELECT Order_id , Total_amount, 
RANK () OVER (ORDER BY Total_amount DESC) AS Rank_order
FROM ORDERS;

# Assign a discount based on TotalAmount in Orders :
SELECT Order_id, Total_amount,
CASE 
WHEN Total_amount > 1000 THEN '10% Discount'
WHEN Total_amount > 500 THEN '5% Discount'
ELSE 'No Discount'
END AS Discount
FROM ORDERS; 

# Categorize employees salaries as high, medium or low :
SELECT Employee_id, Salary,
CASE
WHEN Salary > 60000 THEN 'HIGH'
WHEN Salary > 50000 THEN 'MEDIUM'
ELSE 'LOW'
END AS Salary_category
FROM EMPLOYEES;