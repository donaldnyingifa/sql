-- SELECT * FROM orders WHERE orderDate >= '2005-01-01'
USE classicmodels;
-- SELECT * 
-- FROM products
-- WHERE quantityInStock = 68 OR quantityInStock = 1049 OR quantityInStock = 6125;
-- WHERE quantityInStock IN (6125, 1049, 68);
 
--  SELECT * 
--  FROM payments
--  WHERE paymentDate >= '2003-06-06' AND paymentDate <= '2005-01-01'
-- WHERE paymentDate BETWEEN '2004-06-06' AND '2005-01-01'

--  SELECT * 
--  FROM customers
--  WHERE (customerName LIKE '%Co_'
--  OR contactFirstName LIKE 'Ma%')
--  AND phone LIKE '%1555'

-- SELECT *
-- FROM customers
-- WHERE contactFirstName REGEXP '^[a-h]e'
-- WHERE contactFirstName REGEXP 'helen|Jean'
-- WHERE contactFirstName REGEXP '^ar|er$'
-- WHERE contactFirstName REGEXP '^B[R|E]'
-- WHERE contactFirstName REGEXP '^ja|an'
-- ^ beginning
-- $ end
-- | logical or
-- [abcd]
-- [a-f]

-- SELECT *
-- FROM customers
-- WHERE salesRepEmployeeNumber IS NULL

-- SELECT orderNumber, productCode, quantityOrdered * priceEach AS price
-- FROM orderdetails
-- WHERE orderNumber = 10100
-- ORDER BY price DESC

-- SELECT * 
-- FROM orders
-- LIMIT 6, 4
-- LIMIT 4

SELECT *
FROM customers
ORDER BY creditLimit DESC
LIMIT 4