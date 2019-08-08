-- Find items that have never been ordered
USE sql_store;

SELECT *
FROM products
WHERE product_id NOT IN (
	SELECT DISTINCT product_id
	FROM order_items
) 

-- EXERCISE
-- find clients without invoices