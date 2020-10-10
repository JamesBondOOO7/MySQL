-- WHERE Clause
use sql_store;

SELECT * 
FROM Customers
WHERE points > 3000;

SELECT * 
FROM Customers
WHERE state = 'VA';

SELECT * 
FROM Customers
WHERE state != 'VA';

-- != can also be written as <>
SELECT * 
FROM Customers
WHERE state <> 'VA';

-- Date :: YYYY-MM-DD
SELECT * 
FROM Customers
WHERE birth_date > '1990-01-01';

-- EXERCISE
-- Get the orders placed this year

SELECT * 
FROM Orders
WHERE order_date >= '2020-01-01';