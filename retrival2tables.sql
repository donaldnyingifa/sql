USE classicmodels;

-- Same database
-- SELECT o.orderNumber, orderDate, quantityOrdered, comments
-- FROM orders o
-- JOIN orderdetails ON o.orderNumber = orderdetails.orderNumber
-- WHERE comments IS NOT NULL
-- LIMIT 4

-- Different database
-- SELECT o.orderNumber, orderDate, quantityOrdered, comments
-- FROM orders o
-- JOIN sql_inventory.orderdetails ON o.orderNumber = orderdetails.orderNumber
-- WHERE comments IS NOT NULL
-- LIMIT 5

-- SELECT 
-- 	e.employeeNumber, 
--     e.firstName, 
--     m.firstName manager 
-- FROM employees AS e
-- JOIN employees AS m 
-- 	ON e.reportsTo = m.employeeNumber

-- Join 3 tables
-- SELECT o.orderNumber, c.customerName, od.priceEach
-- FROM orders o
-- JOIN customers c 
-- ON o.customerNumber = c.customerNumber
-- JOIN orderdetails od 
-- ON o.orderNumber = od.orderNumber

-- SELECT 
-- 	od.quantityOrdered,
--     c.customerName , 
--     o.status, 
--     p.productDescription 
-- FROM orderdetails od
-- JOIN orders o ON o.orderNumber = od.orderNumber
-- JOIN products p ON p.productCode = od.productCode
-- JOIN customers c ON o.customerNumber = c.customerNumber

-- Outer Join

-- USE sql_inventory;

-- SELECT o.orderNumber, c.customerName, o.shippedDate
-- FROM customers c
-- LEFT JOIN orders o ON c.customerNumber = o.customerNumber

-- SELECT o.orderNumber, c.customerName, o.shippedDate, od.quantityOrdered
-- FROM customers c
-- LEFT JOIN orders o ON c.customerNumber = o.customerNumber
-- LEFT JOIN orderdetails od ON o.orderNumber = od.orderNumber

-- SELECT e.firstName, e.jobTitle, m.firstName manager
-- FROM employees e
-- LEFT JOIN employees m ON e.reportsTo = m.employeeNumber

-- SELECT p.paymentDate, p.amount, c.customerName, o.shippedDate
-- FROM payments p
-- JOIN customers c USING(customerNumber)
-- JOIN orders o USING(customerNumber)

-- SELECT p.paymentDate, p.amount, c.customerName, o.shippedDate
-- FROM payments p
-- NATURAL JOIN customers c 
-- NATURAL JOIN orders o 

-- SELECT o.shippedDate, od.priceEach
-- FROM orders o
-- CROSS JOIN orderdetails od

-- SELECT od.productCode pCode, o.shippedDate, od.priceEach
-- FROM orders o, orderdetails od
-- ORDER BY pCode
-- LIMIT 10

-- SELECT contactFirstName, creditLimit, 'Gold' type
-- FROM customers
-- WHERE creditLimit >= 120400.00
-- UNION
-- SELECT contactFirstName, creditLimit, 'Silver' type
-- FROM customers
-- WHERE creditLimit BETWEEN 120400.00 AND 80400.00
-- UNION
-- SELECT contactFirstName, creditLimit, 'Bronze' type
-- FROM customers
-- WHERE creditLimit < 80400.00
-- ORDER BY contactFirstName

-- INSERT INTO offices 
-- VALUES 
-- 	(8, 'Port Harcout', '+234 9035096583', 'close 7', 'Block 4', 'PH', 'Nigeria', 0000, 'Africa'),
-- 	(9, 'Bayelsa', '+234 78678796583', 'close 8', 'Block 5', 'BY', 'Nigeria', 0010, 'Africa'),
-- 	('10', 'Oyo', '+234 8945096583', 'close 9', 'Block 6', 'AB', 'Nigeria', 1000, 'Africa')

-- Duplicate a table
-- CREATE TABLE ordersAchived AS
-- SELECT * FROM orders

-- INSERT INTO ordertest
-- SELECT o.orderNumber, o.comments, c.customerName 
-- FROM orders o
-- JOIN customers c WHERE o.customerNumber = c.customerNumber
-- LIMIT 10, 20

-- INSERT INTO ordertest
-- SELECT o.orderNumber, o.comments, c.customerName 
-- FROM orders o
-- JOIN customers c USING(customerNumber)
-- WHERE comments IS  NOT NULL
-- LIMIT 30, 10

-- UPDATE customers 
-- SET
-- 	creditLimit = creditLimit +50.05
-- -- WHERE state = CA
-- WHERE customerNumber = 103
-- give all customers living in CA 50 EXTRA CREDIT LIMIT

-- UPDATE customers 
-- SET
-- 	creditLimit = creditLimit +50.05
-- WHERE customerNumber = 
-- 		-- subquery if subquery returns multiple values, change = to IN
-- 		(SELECT customerNumber
-- 		FROM customers
-- 		WHERE customerName = 'Atelier graphique')
