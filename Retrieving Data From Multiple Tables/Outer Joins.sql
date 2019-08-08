
-- SELECT
-- 	c.customer_id,
--     c.first_name,
--     o.order_id
-- FROM customers c
-- LEFT JOIN orders o
-- 	ON c.customer_id = o.customer_id
-- order by c.customer_id

-- SELECT
-- 	c.customer_id,
--     c.first_name,
--     o.order_id
-- FROM orders o
-- LEFT JOIN customers c
-- 	ON c.customer_id = o.customer_id
-- order by c.customer_id

-- Exercise
-- show all products regardless of not having been ordered
-- products table, orders item
-- show product id, product name, quantity