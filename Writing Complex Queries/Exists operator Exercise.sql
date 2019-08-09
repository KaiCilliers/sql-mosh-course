-- Find the products that have never been ordered
USE sql_store;

SELECT *
FROM products p
WHERE product_id NOT IN( -- returns a list of ID's
	SELECT DISTINCT product_id
	FROM order_items
)

SELECT *
FROM products p
WHERE NOT EXISTS ( -- returns true and false for each record in products
	SELECT DISTINCT product_id
	FROM order_items
    WHERE product_id = p.product_id
)