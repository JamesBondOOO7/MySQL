-- IN operator

SELECT *
FROM customers
where state = 'VA' OR state = 'GA' OR state = 'FL';

-- A Shorter way to write the above condition

SELECT *
FROM customers
where state IN ('VA','GA','FL');

-- Using NOT with IN opertor

SELECT *
FROM customers
where state NOT IN ('VA','GA','FL');

-- EXERCISE
-- Return products with
-- quantity in stock equal to 49, 38, 72

SELECT *
FROM products
where quantity_in_stock IN (49, 38, 72);