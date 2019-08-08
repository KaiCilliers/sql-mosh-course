-- Find items that have never been ordered
-- USE sql_store;

-- SELECT *
-- FROM products
-- WHERE product_id NOT IN (
-- 	SELECT DISTINCT product_id
-- 	FROM order_items
-- ) 

-- EXERCISE
-- find clients without invoices

USE sql_invoicing;

-- Solution 1
SELECT *
FROM clients
WHERE client_id NOT IN (
	SELECT client_id
	FROM invoices
	GROUP BY client_id
)

-- Solution 2
SELECT *
FROM clients
WHERE client_id NOT IN (
	SELECT DISTINCT client_id
	FROM invoices
)