-- REGEXP : Regular Expression

SELECT *
FROM customers
WHERE last_name LIKE '%field%';

-- Now using Reg Exp
SELECT *
FROM customers
WHERE last_name REGEXP 'field';

-- ^ : represents the beginning of the string
-- last name begins with field
SELECT *
FROM customers
WHERE last_name REGEXP '^field';

-- $ : represents the end of the string
-- last name ends with field
SELECT *
FROM customers
WHERE last_name REGEXP 'field$';

-- | : for multiple queries
-- Customers with last_name containing field or Mac or rose
SELECT *
FROM customers
WHERE last_name REGEXP 'field|mac|rose';

-- Customers with last_name ending with field or containing or Mac or rose
SELECT *
FROM customers
WHERE last_name REGEXP 'field$|mac|rose';

-- Customers with last_name includes a pattern either ge,ie or me
SELECT *
FROM customers
WHERE last_name REGEXP '[gim]e';
-- It will be decoded to ge, ie and me

-- Customers with last_name includes a pattern either el,em or eq
SELECT *
FROM customers
WHERE last_name REGEXP 'e[lmq]';
-- It will be decoded to ge, ie and me

-- Customers with last_name includes a pattern either (a to h)e
SELECT *
FROM customers
WHERE last_name REGEXP '[a-h]e';
-- It will be decoded to ae, be, ce ... he

-- EXERCISE
-- Get the customers whose :

-- 1. first names are ELKA or AMBUR
SELECT *
from customers
where first_name REGEXP '^ELKA$|^AMBUR$';

-- 2. last names end with EY or ON
SELECT *
from customers
where last_name REGEXP 'EY$|ON$';

-- 3. last names start with MY or contains SE
SELECT *
from customers
where last_name REGEXP '^MY|SE';

-- 4. last names contain B followed by R or U
SELECT *
from customers
where last_name REGEXP 'B[RU]';