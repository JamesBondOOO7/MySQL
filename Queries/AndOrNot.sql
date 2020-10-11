-- AND Operator

SELECT * 
FROM Customers
WHERE birth_date >= '1990-01-01' AND points > 1000;

-- OR Operator

SELECT * 
FROM Customers
WHERE birth_date >= '1990-01-01' OR points > 1000;

-- Birth in year 1990 or points > 1000 and State = VA

SELECT * 
FROM Customers
WHERE ( birth_date >= '1990-01-01' OR points > 1000 )
AND state = 'VA';

-- AND has higher precedence than OR
-- Brackets can override any operator
-- In the above example AND is prevented from 
-- interfering because of the brackets

-- NOT opertor

SELECT * 
FROM Customers
WHERE NOT ( birth_date >= '1990-01-01' OR points > 1000 );

-- The above statement can be written as 
SELECT * 
FROM Customers
WHERE ( birth_date < '1990-01-01' AND points <= 1000 );

-- EXERCISE
-- From the order_items table, get the items
-- for order#6
-- where the total price is greater than 30

SELECT * 
FROM order_items
WHERE ( order_id = 6 AND quantity*unit_price  > 30 );