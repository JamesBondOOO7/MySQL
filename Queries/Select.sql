-- SELECT CLAUSE

use sql_store;

-- Selecting specific columns
SELECT first_name, last_name, points
from customers;

-- performing simple arithmetic operations
SELECT first_name, last_name, points + 10
from customers;

SELECT first_name, last_name, points, points * 10 + 100
from customers;

-- BODMAS rule is used

-- using Column alias ( giving a name to the result set )
SELECT first_name, last_name, points, ( points + 10 ) * 100 AS 'discount factor'
from customers; 

-- SELECT clause all the rows ( including duplicates )

-- For distinct values use the DISTICT clause

SELECT DISTINCT state
from customers;

-- EXECISE 
-- Return all the products with name , unit price and new price ( unit price * 1.1 )
-- from PRODUCTS table

SELECT name , unit_price, unit_price*1.1 as 'new price'
from products;