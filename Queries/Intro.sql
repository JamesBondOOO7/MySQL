use sql_store;

-- SELECT all customers

SELECT *
FROM customers;

-- WHERE clause

SELECT *
FROM customers
where customer_id = 1;

-- ORDER BY clause ( for sorting )

SELECT *
FROM customers
ORDER BY first_name;

-- Order really matters !!
-- Select -> where -> order