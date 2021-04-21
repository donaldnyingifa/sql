USE classicmodels;

SELECT DISTINCT city, customerNumber, state, postalCode, country, postalCode + 1
FROM customers
WHERE postalCode > 90000
-- WHERE country = Russia
AND customerNumber < 200
ORDER BY contactFirstName