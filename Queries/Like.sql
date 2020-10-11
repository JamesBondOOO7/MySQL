-- LIKE Operator

-- Selecting those customers whose last name starts with b
SELECT *
FROM customers
WHERE last_name LIKE 'b%';

-- Selecting those customers whose last name starts with brush
SELECT *
FROM customers
WHERE last_name LIKE 'brush%';

-- Selecting those customers whose last name includes the character b
SELECT *
FROM customers
WHERE last_name LIKE '%b%';

-- Selecting those customers whose last name ends with y
SELECT *
FROM customers
WHERE last_name LIKE '%y';

-- Selecting those customers whose last name ends with y and is a 6 letter word ( 5 _ and y )
SELECT *
FROM customers
WHERE last_name LIKE '_____y';

-- Selecting those customers whose last name ends with y and
-- begins with b and
-- is a 6 letter word ( b and 4 _ and y )
SELECT *
FROM customers
WHERE last_name LIKE 'b____y';

-- % : to represent any number of characters
-- _ : to represent a character

-- EXERCISE
-- Get the customers whose :
-- 1. addresses contains  TRAIL or AVENUE
SELECT *
FROM customers
WHERE address LIKE '%TRAIL%' OR address LIKE '%AVENUE%';

-- 2. phone number ends with 9
SELECT *
FROM customers
WHERE phone LIKE '%9';

-- 3. phone number doesn't ends with 9
SELECT *
FROM customers
WHERE phone NOT LIKE '%9';